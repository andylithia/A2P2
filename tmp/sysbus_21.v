module sysbus_21 (
	input			clk,
	input			sysrst,

	// C-BUS SIGNALS
	// 1: Positive Logic (Active High), 0: Negative Logic (Active Low)
	inout [23:0]	CBUS_AB1,		// A4-A29 Address Bus
	output			CBUS_INT0,		// A30 Maskable Interrupt
	input			CBUS_IOCHK0,	// A32 External Non-maskable Interrupt
	inout			CBUS_IOR0,		// A33 I/O Read
	inout			CBUS_IOW0,		// A34 I/O Write
	inout			CBUS_MRC0,		// A35 Memory Read
	inout			CBUS_MWC0,		// A36 Memory Write
	inout			CBUS_INTA0,		// A37 Interrupt
	output			CBUS_NOWAIT0,	// A38
	inout			CBUS_SALE1,		// A39 Address Latch
	input			CBUS_MACS0,		// A40
	inout			CBUS_CPUENB0,	// A42
	output			CBUS_RFSH0,		// A43 Refresh Signal
	inout			CBUS_BHE0,		// A44 Data Bus High Enable
	input			CBUS_IORDY1,	// A45
	output			CBUS_SCLK1,		// A46 System Clock
	output			CBUS_S18CLK1,	// A47 307.2kHz
	output			CBUS_POWER0,	// A48 Power Valid

	inout [15:0]	CBUS_DB1,		// B4-B20 Data Bus
	input			CBUS_IR31,		// B24 INT0
	input			CBUS_IR51,		// B25 INT1
	input			CBUS_IR61,		// B26 INT2
	input			CBUS_IR91,		// B27 INT3  Hard Disk Drive
	input			CBUS_IR101,		// B28 INT41 640kB Floppy Disk Drive
	input			CBUS_IR121,		// B29 INT5
	input			CBUS_IR131,		// B30 INT6  Mouse
	output			CBUS_RESET0,	// B34 Reset
	output			CBUS_DACK00,	// B35 DMA Acknowledge 0
	output			CBUS_DACK30,	// B36 DMA Acknowledge 3
	input			CBUS_DRQ00,		// B37 DMA Request 0
	input			CBUS_DRQ30,		// B38 DMA Request 3
	input			CBUS_WORD0,		// B39
	input			CBUS_EXHRQ10,	// B40
	output			CBUS_EXHLA10,	// B42
	output			CBUS_DMATC0,	// B43
	output			CBUS_NMI0,		// B44 Non-maskable Interrupt
	inout			CBUS_MWE0,		// B45 Memory Write Enable
	output			CBUS_EXHLA20,	// B46
	input			CBUS_EXHRQ20,	// B47
	output			CBUS_SBUSRQ1,	// B48


	);
	
	// PC-9800 Technical Data Book HARDWARE 1993
	// Page 53
	wire [15:0] port_addr;
	wire en_pit_master;
	wire en_pit_slave;
	wire en_dma;
	wire en_cal;
	wire en_sio;
	wire en_sysb_pio;
	wire en_prt_pio;
	wire en_kb_pio;


endmodule : sysbus