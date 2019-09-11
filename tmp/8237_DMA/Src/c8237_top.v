`timescale 1ns / 1ps

module c8237_top (
	// TIMING AND CONTROL
	input			EOP_ni,	// End of Process
	output			EOP_no,	// /
	input			RESET,	// Reset
	input			CS_n,	// Chip Select
	input			CLK,	// Clock Input
	output			AEN,	// Address Enable
	output			ADSTB,	// Address Strobe
	output			MEMR_n,	// Memory Read
	output			MEMW_n,	// Memory Write
	input			IOR_ni,	// I/O Read
	output			IOR_no,	// /
	input			IOW_ni, // I/O Write
	output			IOW_no,	// /
	// PRIORITY ENCODER AND ROTATING PRIORITY LOGIC
	input [3:0]		DREQ,	// DMA Request
	input			HLDA,	// Hold Acknowledge
	output			HRQ,	// Hold Request
	output [3:0]	DACK,	// DMA Acknowledge
	// I/O BUFFER, OUTPUT BUFFER
	output	[3:0]	AH,		// Address
	output [3:0]	AL_o,	// 
	input [3:0]		AL_i,	// /
	output [7:0]	DB_o,	// Data Bus
	input [7:0]		DB_i	// /
);



endmodule