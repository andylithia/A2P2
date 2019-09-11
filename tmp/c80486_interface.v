`timescale 1ns / 1ps

module c80486_interface (
	input			clk,			
	input			clk2x,

	// Misc
	input			c_clk,			// Clock
	output			c_stpclk_n,		// Stop Clock
	output			c_clkmul,		// Clock Multiplier
	output			c_a20m_n,		// Address Bit 30 Mask
	output			c_up_n,			// Upgrade Present
	input			c_voldet,		// Voltage Detect

	// Address/Data Bus
	inout [29:0]	c_a,			// Address Lines A31-A2
	input [3:0]		c_be_n,			// Byte Enable
	inout [31:0]	c_d,			// Data Lines

	// Data Parity
	inout [3:0]		c_dp,			// Data Parity
	input			c_pchk_n,		// Parity Status

	// Bus Cycle Control
	output			c_bs8_n,		// Bus Size 8
	output			c_bs16_n,		// Bus Size 16
	input			c_ads_n,		// Address Status
	output			c_rdy_n,		// Non-Burst Ready

	// Bus Cycle Definition
	input			c_m_ion,		// Memory/IO
	input			c_d_cn,			// Data/Control
	input			c_w_rn,			// Write/Read
	input			c_lock_n,		// Bus Lock
	input			c_plock_n,		// Pseudo-Lock

	// Interrupts
	output			c_intr,			// Maskable Interrupt
	output			c_nmi,			// Non-Maskable Interrupt
	output			c_reset,		// Reset
	output			c_sreset,		// Soft Reset

	// Bus Arbitration
	input			c_breq,			// Internal Cycle Pending
	output			c_hold,			// Bus Hold Request
	input			c_hlda,			// Hold Acknowledge
	output			c_boff_n,		// Back Off

	// Burst Control
	output			c_brdy_n,		// Burst Ready
	input			c_blast_n,		// Burst Last
	input			c_cache_n,		// Internal Cacheability

	// SMM
	output			c_smi_n,		// SMM Interrupt
	input			c_smiact_n,		// SMM Interrupt Active

	// Page Cacheability
	input			c_pwt,			// Page Write-Through
	input			c_pcd,			// Page Cache Disable

	// Cache Control / Invalidation
	output			c_wb_wtn,		// Write-Back/Write-Through
	output			c_inv,			// Invalidate
	output			c_ken_n,		// Cache Enable
	output			c_flush_n,		// Cache Flush
	output			c_ahold,		// Address Hold
	output			c_eads_n,		// External Address Strobe
	input			c_hitm_n,		// Hit Modified Line

	// Numeric Error Reporting
	output			c_ignne_n,		// Ignore Numeric Error
	input			c_ferr_n		// Floating-Point Error
);

endmodule