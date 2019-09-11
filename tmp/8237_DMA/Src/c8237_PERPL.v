
// 8237 PRIORITY ENCODER AND ROTATING PRIORITY LOGIC
module c8237_PERPL (
	input			RESET,
	input			CLK,
	input			cclr,

	input [3:0]		DREQ,		// DMA Request
	input [3:0]		mask,	
	input [3:0] 	request,
	input [7:0]		command
	input			dack_en,
	input			HLDA,		// Hold Acknowledge

	input [1:0]		channel_i,
	output [1:0]	channel_o,
	output			HRQ,		// Hold Request
	output [3:0]	DACK,		// DMA Acknowledge
);

	// INPUT SYNC
	wire dreq_sense_active_low = command[6];
	wire dack_sense_active_low = command[7];

	reg [1:0] dreq_sync[3:0];

	// REQUEST COMPOSITION
	reg request_comp;
	reg request_ch;
	always @ * begin
		if(RESET)
			request_comp = 4'b0000;
		else if(dreq_sense_active_low)
			request_comp = (~dreq_sync[1]&~mask)|request;
		else
			request_comp = (dreq_sync[1]&~mask)|request;
			
		request_ch = request_comp[channel_i];
	end

	// DACK CONTROL
	reg [3:0]	dack_next;
	reg [3:0]	dack_r;
	always @ * begin
		if(RESET)
			dack_next = 4'b1111;
		else if(dack_sense_active_low) begin
			if(dack_en) begin
				dack_next = 4'b0000;
				dack_next[channel_i] = 1'b1;
			end else
				dack_next = 4'b0000;
		end else begin
			if(dack_en) begin
				dack_next = 4'b1111;
				dack_next[channel_i] = 1'b0;
			end else
				dack_next = 4'b1111;
		end
	end

	assign DACK = dack_r;
	always @ (negedge CLK or posedge RESET) begin
		if(RESET)	dack_r = 4'b1111;
		else		dack_r = dack_next;
	end

endmodule