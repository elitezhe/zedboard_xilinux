//-----------------------------------------------------------------------------
// system_xillybus_0_wrapper.v
//-----------------------------------------------------------------------------

module system_xillybus_0_wrapper
  (
    S_AXI_ACLK,
    S_AXI_ARESETN,
    Interrupt,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_RREADY,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_AWREADY,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_arready,
    m_axi_arvalid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arprot,
    m_axi_arcache,
    m_axi_rready,
    m_axi_rvalid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_awready,
    m_axi_awvalid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awprot,
    m_axi_awcache,
    m_axi_wready,
    m_axi_wvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_bready,
    m_axi_bvalid,
    m_axi_bresp,
    xillybus_bus_clk,
    xillybus_bus_rst_n,
    xillybus_S_AXI_AWADDR,
    xillybus_S_AXI_AWVALID,
    xillybus_S_AXI_WDATA,
    xillybus_S_AXI_WSTRB,
    xillybus_S_AXI_WVALID,
    xillybus_S_AXI_BREADY,
    xillybus_S_AXI_ARADDR,
    xillybus_S_AXI_ARVALID,
    xillybus_S_AXI_RREADY,
    xillybus_S_AXI_ARREADY,
    xillybus_S_AXI_RDATA,
    xillybus_S_AXI_RRESP,
    xillybus_S_AXI_RVALID,
    xillybus_S_AXI_WREADY,
    xillybus_S_AXI_BRESP,
    xillybus_S_AXI_BVALID,
    xillybus_S_AXI_AWREADY,
    xillybus_M_AXI_ARREADY,
    xillybus_M_AXI_ARVALID,
    xillybus_M_AXI_ARADDR,
    xillybus_M_AXI_ARLEN,
    xillybus_M_AXI_ARSIZE,
    xillybus_M_AXI_ARBURST,
    xillybus_M_AXI_ARPROT,
    xillybus_M_AXI_ARCACHE,
    xillybus_M_AXI_RREADY,
    xillybus_M_AXI_RVALID,
    xillybus_M_AXI_RDATA,
    xillybus_M_AXI_RRESP,
    xillybus_M_AXI_RLAST,
    xillybus_M_AXI_AWREADY,
    xillybus_M_AXI_AWVALID,
    xillybus_M_AXI_AWADDR,
    xillybus_M_AXI_AWLEN,
    xillybus_M_AXI_AWSIZE,
    xillybus_M_AXI_AWBURST,
    xillybus_M_AXI_AWPROT,
    xillybus_M_AXI_AWCACHE,
    xillybus_M_AXI_WREADY,
    xillybus_M_AXI_WVALID,
    xillybus_M_AXI_WDATA,
    xillybus_M_AXI_WSTRB,
    xillybus_M_AXI_WLAST,
    xillybus_M_AXI_BREADY,
    xillybus_M_AXI_BVALID,
    xillybus_M_AXI_BRESP,
    xillybus_host_interrupt
  );
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  output Interrupt;
  input [31:0] S_AXI_AWADDR;
  input S_AXI_AWVALID;
  input [31:0] S_AXI_WDATA;
  input [3:0] S_AXI_WSTRB;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input [31:0] S_AXI_ARADDR;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;
  output S_AXI_ARREADY;
  output [31:0] S_AXI_RDATA;
  output [1:0] S_AXI_RRESP;
  output S_AXI_RVALID;
  output S_AXI_WREADY;
  output [1:0] S_AXI_BRESP;
  output S_AXI_BVALID;
  output S_AXI_AWREADY;
  input m_axi_aclk;
  input m_axi_aresetn;
  input m_axi_arready;
  output m_axi_arvalid;
  output [31:0] m_axi_araddr;
  output [3:0] m_axi_arlen;
  output [2:0] m_axi_arsize;
  output [1:0] m_axi_arburst;
  output [2:0] m_axi_arprot;
  output [3:0] m_axi_arcache;
  output m_axi_rready;
  input m_axi_rvalid;
  input [31:0] m_axi_rdata;
  input [1:0] m_axi_rresp;
  input m_axi_rlast;
  input m_axi_awready;
  output m_axi_awvalid;
  output [31:0] m_axi_awaddr;
  output [3:0] m_axi_awlen;
  output [2:0] m_axi_awsize;
  output [1:0] m_axi_awburst;
  output [2:0] m_axi_awprot;
  output [3:0] m_axi_awcache;
  input m_axi_wready;
  output m_axi_wvalid;
  output [31:0] m_axi_wdata;
  output [3:0] m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_bready;
  input m_axi_bvalid;
  input [1:0] m_axi_bresp;
  output xillybus_bus_clk;
  output xillybus_bus_rst_n;
  output [31:0] xillybus_S_AXI_AWADDR;
  output xillybus_S_AXI_AWVALID;
  output [31:0] xillybus_S_AXI_WDATA;
  output [3:0] xillybus_S_AXI_WSTRB;
  output xillybus_S_AXI_WVALID;
  output xillybus_S_AXI_BREADY;
  output [31:0] xillybus_S_AXI_ARADDR;
  output xillybus_S_AXI_ARVALID;
  output xillybus_S_AXI_RREADY;
  input xillybus_S_AXI_ARREADY;
  input [31:0] xillybus_S_AXI_RDATA;
  input [1:0] xillybus_S_AXI_RRESP;
  input xillybus_S_AXI_RVALID;
  input xillybus_S_AXI_WREADY;
  input [1:0] xillybus_S_AXI_BRESP;
  input xillybus_S_AXI_BVALID;
  input xillybus_S_AXI_AWREADY;
  output xillybus_M_AXI_ARREADY;
  input xillybus_M_AXI_ARVALID;
  input [31:0] xillybus_M_AXI_ARADDR;
  input [3:0] xillybus_M_AXI_ARLEN;
  input [2:0] xillybus_M_AXI_ARSIZE;
  input [1:0] xillybus_M_AXI_ARBURST;
  input [2:0] xillybus_M_AXI_ARPROT;
  input [3:0] xillybus_M_AXI_ARCACHE;
  input xillybus_M_AXI_RREADY;
  output xillybus_M_AXI_RVALID;
  output [31:0] xillybus_M_AXI_RDATA;
  output [1:0] xillybus_M_AXI_RRESP;
  output xillybus_M_AXI_RLAST;
  output xillybus_M_AXI_AWREADY;
  input xillybus_M_AXI_AWVALID;
  input [31:0] xillybus_M_AXI_AWADDR;
  input [3:0] xillybus_M_AXI_AWLEN;
  input [2:0] xillybus_M_AXI_AWSIZE;
  input [1:0] xillybus_M_AXI_AWBURST;
  input [2:0] xillybus_M_AXI_AWPROT;
  input [3:0] xillybus_M_AXI_AWCACHE;
  output xillybus_M_AXI_WREADY;
  input xillybus_M_AXI_WVALID;
  input [31:0] xillybus_M_AXI_WDATA;
  input [3:0] xillybus_M_AXI_WSTRB;
  input xillybus_M_AXI_WLAST;
  input xillybus_M_AXI_BREADY;
  output xillybus_M_AXI_BVALID;
  output [1:0] xillybus_M_AXI_BRESP;
  input xillybus_host_interrupt;

  xillybus
    #(
      .C_S_AXI_DATA_WIDTH ( 32 ),
      .C_S_AXI_ADDR_WIDTH ( 32 ),
      .C_S_AXI_MIN_SIZE ( 32'h000001ff ),
      .C_USE_WSTRB ( 1 ),
      .C_DPHASE_TIMEOUT ( 8 ),
      .C_BASEADDR ( 32'h50000000 ),
      .C_HIGHADDR ( 32'h50000FFF ),
      .C_SLV_AWIDTH ( 32 ),
      .C_SLV_DWIDTH ( 32 ),
      .C_M_AXI_ADDR_WIDTH ( 32 ),
      .C_M_AXI_DATA_WIDTH ( 32 ),
      .C_MAX_BURST_LEN ( 16 ),
      .C_NATIVE_DATA_WIDTH ( 32 )
    )
    xillybus_0 (
      .S_AXI_ACLK ( S_AXI_ACLK ),
      .S_AXI_ARESETN ( S_AXI_ARESETN ),
      .Interrupt ( Interrupt ),
      .S_AXI_AWADDR ( S_AXI_AWADDR ),
      .S_AXI_AWVALID ( S_AXI_AWVALID ),
      .S_AXI_WDATA ( S_AXI_WDATA ),
      .S_AXI_WSTRB ( S_AXI_WSTRB ),
      .S_AXI_WVALID ( S_AXI_WVALID ),
      .S_AXI_BREADY ( S_AXI_BREADY ),
      .S_AXI_ARADDR ( S_AXI_ARADDR ),
      .S_AXI_ARVALID ( S_AXI_ARVALID ),
      .S_AXI_RREADY ( S_AXI_RREADY ),
      .S_AXI_ARREADY ( S_AXI_ARREADY ),
      .S_AXI_RDATA ( S_AXI_RDATA ),
      .S_AXI_RRESP ( S_AXI_RRESP ),
      .S_AXI_RVALID ( S_AXI_RVALID ),
      .S_AXI_WREADY ( S_AXI_WREADY ),
      .S_AXI_BRESP ( S_AXI_BRESP ),
      .S_AXI_BVALID ( S_AXI_BVALID ),
      .S_AXI_AWREADY ( S_AXI_AWREADY ),
      .m_axi_aclk ( m_axi_aclk ),
      .m_axi_aresetn ( m_axi_aresetn ),
      .m_axi_arready ( m_axi_arready ),
      .m_axi_arvalid ( m_axi_arvalid ),
      .m_axi_araddr ( m_axi_araddr ),
      .m_axi_arlen ( m_axi_arlen ),
      .m_axi_arsize ( m_axi_arsize ),
      .m_axi_arburst ( m_axi_arburst ),
      .m_axi_arprot ( m_axi_arprot ),
      .m_axi_arcache ( m_axi_arcache ),
      .m_axi_rready ( m_axi_rready ),
      .m_axi_rvalid ( m_axi_rvalid ),
      .m_axi_rdata ( m_axi_rdata ),
      .m_axi_rresp ( m_axi_rresp ),
      .m_axi_rlast ( m_axi_rlast ),
      .m_axi_awready ( m_axi_awready ),
      .m_axi_awvalid ( m_axi_awvalid ),
      .m_axi_awaddr ( m_axi_awaddr ),
      .m_axi_awlen ( m_axi_awlen ),
      .m_axi_awsize ( m_axi_awsize ),
      .m_axi_awburst ( m_axi_awburst ),
      .m_axi_awprot ( m_axi_awprot ),
      .m_axi_awcache ( m_axi_awcache ),
      .m_axi_wready ( m_axi_wready ),
      .m_axi_wvalid ( m_axi_wvalid ),
      .m_axi_wdata ( m_axi_wdata ),
      .m_axi_wstrb ( m_axi_wstrb ),
      .m_axi_wlast ( m_axi_wlast ),
      .m_axi_bready ( m_axi_bready ),
      .m_axi_bvalid ( m_axi_bvalid ),
      .m_axi_bresp ( m_axi_bresp ),
      .xillybus_bus_clk ( xillybus_bus_clk ),
      .xillybus_bus_rst_n ( xillybus_bus_rst_n ),
      .xillybus_S_AXI_AWADDR ( xillybus_S_AXI_AWADDR ),
      .xillybus_S_AXI_AWVALID ( xillybus_S_AXI_AWVALID ),
      .xillybus_S_AXI_WDATA ( xillybus_S_AXI_WDATA ),
      .xillybus_S_AXI_WSTRB ( xillybus_S_AXI_WSTRB ),
      .xillybus_S_AXI_WVALID ( xillybus_S_AXI_WVALID ),
      .xillybus_S_AXI_BREADY ( xillybus_S_AXI_BREADY ),
      .xillybus_S_AXI_ARADDR ( xillybus_S_AXI_ARADDR ),
      .xillybus_S_AXI_ARVALID ( xillybus_S_AXI_ARVALID ),
      .xillybus_S_AXI_RREADY ( xillybus_S_AXI_RREADY ),
      .xillybus_S_AXI_ARREADY ( xillybus_S_AXI_ARREADY ),
      .xillybus_S_AXI_RDATA ( xillybus_S_AXI_RDATA ),
      .xillybus_S_AXI_RRESP ( xillybus_S_AXI_RRESP ),
      .xillybus_S_AXI_RVALID ( xillybus_S_AXI_RVALID ),
      .xillybus_S_AXI_WREADY ( xillybus_S_AXI_WREADY ),
      .xillybus_S_AXI_BRESP ( xillybus_S_AXI_BRESP ),
      .xillybus_S_AXI_BVALID ( xillybus_S_AXI_BVALID ),
      .xillybus_S_AXI_AWREADY ( xillybus_S_AXI_AWREADY ),
      .xillybus_M_AXI_ARREADY ( xillybus_M_AXI_ARREADY ),
      .xillybus_M_AXI_ARVALID ( xillybus_M_AXI_ARVALID ),
      .xillybus_M_AXI_ARADDR ( xillybus_M_AXI_ARADDR ),
      .xillybus_M_AXI_ARLEN ( xillybus_M_AXI_ARLEN ),
      .xillybus_M_AXI_ARSIZE ( xillybus_M_AXI_ARSIZE ),
      .xillybus_M_AXI_ARBURST ( xillybus_M_AXI_ARBURST ),
      .xillybus_M_AXI_ARPROT ( xillybus_M_AXI_ARPROT ),
      .xillybus_M_AXI_ARCACHE ( xillybus_M_AXI_ARCACHE ),
      .xillybus_M_AXI_RREADY ( xillybus_M_AXI_RREADY ),
      .xillybus_M_AXI_RVALID ( xillybus_M_AXI_RVALID ),
      .xillybus_M_AXI_RDATA ( xillybus_M_AXI_RDATA ),
      .xillybus_M_AXI_RRESP ( xillybus_M_AXI_RRESP ),
      .xillybus_M_AXI_RLAST ( xillybus_M_AXI_RLAST ),
      .xillybus_M_AXI_AWREADY ( xillybus_M_AXI_AWREADY ),
      .xillybus_M_AXI_AWVALID ( xillybus_M_AXI_AWVALID ),
      .xillybus_M_AXI_AWADDR ( xillybus_M_AXI_AWADDR ),
      .xillybus_M_AXI_AWLEN ( xillybus_M_AXI_AWLEN ),
      .xillybus_M_AXI_AWSIZE ( xillybus_M_AXI_AWSIZE ),
      .xillybus_M_AXI_AWBURST ( xillybus_M_AXI_AWBURST ),
      .xillybus_M_AXI_AWPROT ( xillybus_M_AXI_AWPROT ),
      .xillybus_M_AXI_AWCACHE ( xillybus_M_AXI_AWCACHE ),
      .xillybus_M_AXI_WREADY ( xillybus_M_AXI_WREADY ),
      .xillybus_M_AXI_WVALID ( xillybus_M_AXI_WVALID ),
      .xillybus_M_AXI_WDATA ( xillybus_M_AXI_WDATA ),
      .xillybus_M_AXI_WSTRB ( xillybus_M_AXI_WSTRB ),
      .xillybus_M_AXI_WLAST ( xillybus_M_AXI_WLAST ),
      .xillybus_M_AXI_BREADY ( xillybus_M_AXI_BREADY ),
      .xillybus_M_AXI_BVALID ( xillybus_M_AXI_BVALID ),
      .xillybus_M_AXI_BRESP ( xillybus_M_AXI_BRESP ),
      .xillybus_host_interrupt ( xillybus_host_interrupt )
    );

endmodule

