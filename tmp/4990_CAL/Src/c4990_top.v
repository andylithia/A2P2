`timescale 1ns / 1ps

module c4990_top (
	input			OE,		// Output Control
	input			CLK,	// Shiftreg Clock
	input			DIN,	// Data Input
	input			CS,		// Chip Select
	input			STB,	// Strobe Input
	input			osc,	// 32.768kHz
	input [2:0]		C,		// Command Input

	output			DOUT,	// Data Output
	output			TP		// Timing Pulse
);



endmodule