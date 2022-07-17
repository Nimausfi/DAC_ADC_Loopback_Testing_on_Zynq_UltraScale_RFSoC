//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Sat Apr 16 08:39:27 2022
//Host        : build-srv running 64-bit unknown
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module fpga_top (
  input [0:0]FPGA_REFCLK_clk_n,
  input [0:0]FPGA_REFCLK_clk_p,
  input [0:0]SYSREF_FPGA_clk_n,
  input [0:0]SYSREF_FPGA_clk_p,
  input adc0_clk_clk_n,
  input adc0_clk_clk_p,
  input adc1_clk_clk_n,
  input adc1_clk_clk_p,
  input adc2_clk_clk_n,
  input adc2_clk_clk_p,
  input adc3_clk_clk_n,
  input adc3_clk_clk_p,
  input dac0_clk_clk_n,
  input dac0_clk_clk_p,
  input dac1_clk_clk_n,
  input dac1_clk_clk_p,
  input dac2_clk_clk_n,
  input dac2_clk_clk_p,
  input dac3_clk_clk_n,
  input dac3_clk_clk_p,
  input sysref_in_diff_n,
  input sysref_in_diff_p,
  input vin00_v_n,
  input vin00_v_p,
  input vin01_v_n,
  input vin01_v_p,
  input vin02_v_n,
  input vin02_v_p,
  input vin03_v_n,
  input vin03_v_p,
  input vin10_v_n,
  input vin10_v_p,
  input vin11_v_n,
  input vin11_v_p,
  input vin12_v_n,
  input vin12_v_p,
  input vin13_v_n,
  input vin13_v_p,
  input vin20_v_n,
  input vin20_v_p,
  input vin21_v_n,
  input vin21_v_p,
  input vin22_v_n,
  input vin22_v_p,
  input vin23_v_n,
  input vin23_v_p,
  input vin30_v_n,
  input vin30_v_p,
  input vin31_v_n,
  input vin31_v_p,
  input vin32_v_n,
  input vin32_v_p,
  input vin33_v_n,
  input vin33_v_p,
  output vout00_v_n,
  output vout00_v_p,
  output vout01_v_n,
  output vout01_v_p,
  output vout02_v_n,
  output vout02_v_p,
  output vout03_v_n,
  output vout03_v_p,
  output vout10_v_n,
  output vout10_v_p,
  output vout11_v_n,
  output vout11_v_p,
  output vout12_v_n,
  output vout12_v_p,
  output vout13_v_n,
  output vout13_v_p,
  output vout20_v_n,
  output vout20_v_p,
  output vout21_v_n,
  output vout21_v_p,
  output vout22_v_n,
  output vout22_v_p,
  output vout23_v_n,
  output vout23_v_p,
  output vout30_v_n,
  output vout30_v_p,
  output vout31_v_n,
  output vout31_v_p,
  output vout32_v_n,
  output vout32_v_p,
  output vout33_v_n,
  output vout33_v_p,
  output LED
);


  reg [31:0]scratch_reg;
  reg [31:0]M_AVALON_readdata;
  reg M_AVALON_readdatavalid;

  wire [31:0] build_ts;

  wire [31:0]M_AVALON_address;
  wire M_AVALON_read;
  wire M_AVALON_waitrequest;
  wire M_AVALON_write;
  wire [31:0]M_AVALON_writedata;
  wire axi_aclk;
  wire [0:0]axi_aresetn;
  wire clk_adc0_mon;
  wire clk_adc1_mon;
  wire clk_adc2_mon;
  wire clk_adc3_mon;
  wire clk_dac0_mon;
  wire clk_dac1_mon;
  wire clk_dac2_mon;
  wire clk_dac3_mon;
  wire [127:0]m00_axis_tdata;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [127:0]m01_axis_tdata;
  wire m01_axis_tready;
  wire m01_axis_tvalid;
  wire [127:0]m02_axis_tdata;
  wire m02_axis_tready;
  wire m02_axis_tvalid;
  wire [127:0]m03_axis_tdata;
  wire m03_axis_tready;
  wire m03_axis_tvalid;
  wire [127:0]m10_axis_tdata;
  wire m10_axis_tready;
  wire m10_axis_tvalid;
  wire [127:0]m11_axis_tdata;
  wire m11_axis_tready;
  wire m11_axis_tvalid;
  wire [127:0]m12_axis_tdata;
  wire m12_axis_tready;
  wire m12_axis_tvalid;
  wire [127:0]m13_axis_tdata;
  wire m13_axis_tready;
  wire m13_axis_tvalid;
  wire [127:0]m20_axis_tdata;
  wire m20_axis_tready;
  wire m20_axis_tvalid;
  wire [127:0]m21_axis_tdata;
  wire m21_axis_tready;
  wire m21_axis_tvalid;
  wire [127:0]m22_axis_tdata;
  wire m22_axis_tready;
  wire m22_axis_tvalid;
  wire [127:0]m23_axis_tdata;
  wire m23_axis_tready;
  wire m23_axis_tvalid;
  wire [127:0]m30_axis_tdata;
  wire m30_axis_tready;
  wire m30_axis_tvalid;
  wire [127:0]m31_axis_tdata;
  wire m31_axis_tready;
  wire m31_axis_tvalid;
  wire [127:0]m32_axis_tdata;
  wire m32_axis_tready;
  wire m32_axis_tvalid;
  wire [127:0]m33_axis_tdata;
  wire m33_axis_tready;
  wire m33_axis_tvalid;
  wire [0:0]pl_sysref;
  wire pl_clk;
  wire [127:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire [127:0]s01_axis_tdata;
  wire s01_axis_tready;
  wire s01_axis_tvalid;
  wire [127:0]s02_axis_tdata;
  wire s02_axis_tready;
  wire s02_axis_tvalid;
  wire [127:0]s03_axis_tdata;
  wire s03_axis_tready;
  wire s03_axis_tvalid;
  wire [127:0]s10_axis_tdata;
  wire s10_axis_tready;
  wire s10_axis_tvalid;
  wire [127:0]s11_axis_tdata;
  wire s11_axis_tready;
  wire s11_axis_tvalid;
  wire [127:0]s12_axis_tdata;
  wire s12_axis_tready;
  wire s12_axis_tvalid;
  wire [127:0]s13_axis_tdata;
  wire s13_axis_tready;
  wire s13_axis_tvalid;
  wire [127:0]s20_axis_tdata;
  wire s20_axis_tready;
  wire s20_axis_tvalid;
  wire [127:0]s21_axis_tdata;
  wire s21_axis_tready;
  wire s21_axis_tvalid;
  wire [127:0]s22_axis_tdata;
  wire s22_axis_tready;
  wire s22_axis_tvalid;
  wire [127:0]s23_axis_tdata;
  wire s23_axis_tready;
  wire s23_axis_tvalid;
  wire [127:0]s30_axis_tdata;
  wire s30_axis_tready;
  wire s30_axis_tvalid;
  wire [127:0]s31_axis_tdata;
  wire s31_axis_tready;
  wire s31_axis_tvalid;
  wire [127:0]s32_axis_tdata;
  wire s32_axis_tready;
  wire s32_axis_tvalid;
  wire [127:0]s33_axis_tdata;
  wire s33_axis_tready;
  wire s33_axis_tvalid;
  wire sysref_in_diff_n;
  wire sysref_in_diff_p;

  USR_ACCESSE2 USR_ACCESSE2_inst (
        .CFGCLK         (),
        .DATA           (build_ts),
        .DATAVALID      ()
  );

  design_1 design_1_i (
        .FPGA_REFCLK_clk_n(FPGA_REFCLK_clk_n),
        .FPGA_REFCLK_clk_p(FPGA_REFCLK_clk_p),
        .M_AVALON_address(M_AVALON_address),
        .M_AVALON_read(M_AVALON_read),
        .M_AVALON_readdata(M_AVALON_readdata),
        .M_AVALON_readdatavalid(M_AVALON_readdatavalid),
        .M_AVALON_waitrequest(M_AVALON_waitrequest),
        .M_AVALON_write(M_AVALON_write),
        .M_AVALON_writedata(M_AVALON_writedata),
        .SYSREF_FPGA_clk_n(SYSREF_FPGA_clk_n),
        .SYSREF_FPGA_clk_p(SYSREF_FPGA_clk_p),
        .adc0_clk_clk_n(adc0_clk_clk_n),
        .adc0_clk_clk_p(adc0_clk_clk_p),
        .adc1_clk_clk_n(adc1_clk_clk_n),
        .adc1_clk_clk_p(adc1_clk_clk_p),
        .adc2_clk_clk_n(adc2_clk_clk_n),
        .adc2_clk_clk_p(adc2_clk_clk_p),
        .adc3_clk_clk_n(adc3_clk_clk_n),
        .adc3_clk_clk_p(adc3_clk_clk_p),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .clk_adc0_mon(clk_adc0_mon),
        .clk_adc1_mon(clk_adc1_mon),
        .clk_adc2_mon(clk_adc2_mon),
        .clk_adc3_mon(clk_adc3_mon),
        .clk_dac0_mon(clk_dac0_mon),
        .clk_dac1_mon(clk_dac1_mon),
        .clk_dac2_mon(clk_dac2_mon),
        .clk_dac3_mon(clk_dac3_mon),
        .dac0_clk_clk_n(dac0_clk_clk_n),
        .dac0_clk_clk_p(dac0_clk_clk_p),
        .dac1_clk_clk_n(dac1_clk_clk_n),
        .dac1_clk_clk_p(dac1_clk_clk_p),
        .dac2_clk_clk_n(dac2_clk_clk_n),
        .dac2_clk_clk_p(dac2_clk_clk_p),
        .dac3_clk_clk_n(dac3_clk_clk_n),
        .dac3_clk_clk_p(dac3_clk_clk_p),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .m01_axis_tdata(m01_axis_tdata),
        .m01_axis_tready(m01_axis_tready),
        .m01_axis_tvalid(m01_axis_tvalid),
        .m02_axis_tdata(m02_axis_tdata),
        .m02_axis_tready(m02_axis_tready),
        .m02_axis_tvalid(m02_axis_tvalid),
        .m03_axis_tdata(m03_axis_tdata),
        .m03_axis_tready(m03_axis_tready),
        .m03_axis_tvalid(m03_axis_tvalid),
        .m10_axis_tdata(m10_axis_tdata),
        .m10_axis_tready(m10_axis_tready),
        .m10_axis_tvalid(m10_axis_tvalid),
        .m11_axis_tdata(m11_axis_tdata),
        .m11_axis_tready(m11_axis_tready),
        .m11_axis_tvalid(m11_axis_tvalid),
        .m12_axis_tdata(m12_axis_tdata),
        .m12_axis_tready(m12_axis_tready),
        .m12_axis_tvalid(m12_axis_tvalid),
        .m13_axis_tdata(m13_axis_tdata),
        .m13_axis_tready(m13_axis_tready),
        .m13_axis_tvalid(m13_axis_tvalid),
        .m20_axis_tdata(m20_axis_tdata),
        .m20_axis_tready(m20_axis_tready),
        .m20_axis_tvalid(m20_axis_tvalid),
        .m21_axis_tdata(m21_axis_tdata),
        .m21_axis_tready(m21_axis_tready),
        .m21_axis_tvalid(m21_axis_tvalid),
        .m22_axis_tdata(m22_axis_tdata),
        .m22_axis_tready(m22_axis_tready),
        .m22_axis_tvalid(m22_axis_tvalid),
        .m23_axis_tdata(m23_axis_tdata),
        .m23_axis_tready(m23_axis_tready),
        .m23_axis_tvalid(m23_axis_tvalid),
        .m30_axis_tdata(m30_axis_tdata),
        .m30_axis_tready(m30_axis_tready),
        .m30_axis_tvalid(m30_axis_tvalid),
        .m31_axis_tdata(m31_axis_tdata),
        .m31_axis_tready(m31_axis_tready),
        .m31_axis_tvalid(m31_axis_tvalid),
        .m32_axis_tdata(m32_axis_tdata),
        .m32_axis_tready(m32_axis_tready),
        .m32_axis_tvalid(m32_axis_tvalid),
        .m33_axis_tdata(m33_axis_tdata),
        .m33_axis_tready(m33_axis_tready),
        .m33_axis_tvalid(m33_axis_tvalid),
        .pl_sysref(pl_sysref),
        .pl_clk(pl_clk),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid),
        .s01_axis_tdata(s01_axis_tdata),
        .s01_axis_tready(s01_axis_tready),
        .s01_axis_tvalid(s01_axis_tvalid),
        .s02_axis_tdata(s02_axis_tdata),
        .s02_axis_tready(s02_axis_tready),
        .s02_axis_tvalid(s02_axis_tvalid),
        .s03_axis_tdata(s03_axis_tdata),
        .s03_axis_tready(s03_axis_tready),
        .s03_axis_tvalid(s03_axis_tvalid),
        .s10_axis_tdata(s10_axis_tdata),
        .s10_axis_tready(s10_axis_tready),
        .s10_axis_tvalid(s10_axis_tvalid),
        .s11_axis_tdata(s11_axis_tdata),
        .s11_axis_tready(s11_axis_tready),
        .s11_axis_tvalid(s11_axis_tvalid),
        .s12_axis_tdata(s12_axis_tdata),
        .s12_axis_tready(s12_axis_tready),
        .s12_axis_tvalid(s12_axis_tvalid),
        .s13_axis_tdata(s13_axis_tdata),
        .s13_axis_tready(s13_axis_tready),
        .s13_axis_tvalid(s13_axis_tvalid),
        .s20_axis_tdata(s20_axis_tdata),
        .s20_axis_tready(s20_axis_tready),
        .s20_axis_tvalid(s20_axis_tvalid),
        .s21_axis_tdata(s21_axis_tdata),
        .s21_axis_tready(s21_axis_tready),
        .s21_axis_tvalid(s21_axis_tvalid),
        .s22_axis_tdata(s22_axis_tdata),
        .s22_axis_tready(s22_axis_tready),
        .s22_axis_tvalid(s22_axis_tvalid),
        .s23_axis_tdata(s23_axis_tdata),
        .s23_axis_tready(s23_axis_tready),
        .s23_axis_tvalid(s23_axis_tvalid),
        .s30_axis_tdata(s30_axis_tdata),
        .s30_axis_tready(s30_axis_tready),
        .s30_axis_tvalid(s30_axis_tvalid),
        .s31_axis_tdata(s31_axis_tdata),
        .s31_axis_tready(s31_axis_tready),
        .s31_axis_tvalid(s31_axis_tvalid),
        .s32_axis_tdata(s32_axis_tdata),
        .s32_axis_tready(s32_axis_tready),
        .s32_axis_tvalid(s32_axis_tvalid),
        .s33_axis_tdata(s33_axis_tdata),
        .s33_axis_tready(s33_axis_tready),
        .s33_axis_tvalid(s33_axis_tvalid),
        .sysref_in_diff_n(sysref_in_diff_n),
        .sysref_in_diff_p(sysref_in_diff_p),
        .vin00_v_n(vin00_v_n),
        .vin00_v_p(vin00_v_p),
        .vin01_v_n(vin01_v_n),
        .vin01_v_p(vin01_v_p),
        .vin02_v_n(vin02_v_n),
        .vin02_v_p(vin02_v_p),
        .vin03_v_n(vin03_v_n),
        .vin03_v_p(vin03_v_p),
        .vin10_v_n(vin10_v_n),
        .vin10_v_p(vin10_v_p),
        .vin11_v_n(vin11_v_n),
        .vin11_v_p(vin11_v_p),
        .vin12_v_n(vin12_v_n),
        .vin12_v_p(vin12_v_p),
        .vin13_v_n(vin13_v_n),
        .vin13_v_p(vin13_v_p),
        .vin20_v_n(vin20_v_n),
        .vin20_v_p(vin20_v_p),
        .vin21_v_n(vin21_v_n),
        .vin21_v_p(vin21_v_p),
        .vin22_v_n(vin22_v_n),
        .vin22_v_p(vin22_v_p),
        .vin23_v_n(vin23_v_n),
        .vin23_v_p(vin23_v_p),
        .vin30_v_n(vin30_v_n),
        .vin30_v_p(vin30_v_p),
        .vin31_v_n(vin31_v_n),
        .vin31_v_p(vin31_v_p),
        .vin32_v_n(vin32_v_n),
        .vin32_v_p(vin32_v_p),
        .vin33_v_n(vin33_v_n),
        .vin33_v_p(vin33_v_p),
        .vout00_v_n(vout00_v_n),
        .vout00_v_p(vout00_v_p),
        .vout01_v_n(vout01_v_n),
        .vout01_v_p(vout01_v_p),
        .vout02_v_n(vout02_v_n),
        .vout02_v_p(vout02_v_p),
        .vout03_v_n(vout03_v_n),
        .vout03_v_p(vout03_v_p),
        .vout10_v_n(vout10_v_n),
        .vout10_v_p(vout10_v_p),
        .vout11_v_n(vout11_v_n),
        .vout11_v_p(vout11_v_p),
        .vout12_v_n(vout12_v_n),
        .vout12_v_p(vout12_v_p),
        .vout13_v_n(vout13_v_n),
        .vout13_v_p(vout13_v_p),
        .vout20_v_n(vout20_v_n),
        .vout20_v_p(vout20_v_p),
        .vout21_v_n(vout21_v_n),
        .vout21_v_p(vout21_v_p),
        .vout22_v_n(vout22_v_n),
        .vout22_v_p(vout22_v_p),
        .vout23_v_n(vout23_v_n),
        .vout23_v_p(vout23_v_p),
        .vout30_v_n(vout30_v_n),
        .vout30_v_p(vout30_v_p),
        .vout31_v_n(vout31_v_n),
        .vout31_v_p(vout31_v_p),
        .vout32_v_n(vout32_v_n),
        .vout32_v_p(vout32_v_p),
        .vout33_v_n(vout33_v_n),
        .vout33_v_p(vout33_v_p)
  );

  assign m00_axis_tready = 1'b1;
  assign m01_axis_tready = 1'b1;
  assign m02_axis_tready = 1'b1;
  assign m03_axis_tready = 1'b1;
  assign m10_axis_tready = 1'b1;
  assign m11_axis_tready = 1'b1;
  assign m12_axis_tready = 1'b1;
  assign m13_axis_tready = 1'b1;
  assign m20_axis_tready = 1'b1;
  assign m21_axis_tready = 1'b1;
  assign m22_axis_tready = 1'b1;
  assign m23_axis_tready = 1'b1;
  assign m30_axis_tready = 1'b1;
  assign m31_axis_tready = 1'b1;
  assign m32_axis_tready = 1'b1;
  assign m33_axis_tready = 1'b1;

  assign s00_axis_tvalid = 1'b1;
  assign s01_axis_tvalid = 1'b1;
  assign s02_axis_tvalid = 1'b1;
  assign s03_axis_tvalid = 1'b1;
  assign s10_axis_tvalid = 1'b1;
  assign s11_axis_tvalid = 1'b1;
  assign s12_axis_tvalid = 1'b1;
  assign s13_axis_tvalid = 1'b1;
  assign s20_axis_tvalid = 1'b1;
  assign s21_axis_tvalid = 1'b1;
  assign s22_axis_tvalid = 1'b1;
  assign s23_axis_tvalid = 1'b1;
  assign s30_axis_tvalid = 1'b1;
  assign s31_axis_tvalid = 1'b1;
  assign s32_axis_tvalid = 1'b1;
  assign s33_axis_tvalid = 1'b1;

  // generate sine wave 62.5MHz
  reg [4:0] dcnt = 5'h0;
  reg [127:0] dac_tdata;
  always @(posedge pl_clk) begin
     dcnt <= dcnt + 1;
     case (dcnt[4:0])
//        2'h0: dac_tdata <= 128'h7D89_7640_6A6C_5A81_471C_30FB_18F8_0000;
//        2'h1: dac_tdata <= 128'h18F8_30FB_471C_5A81_6A6C_7640_7D89_7FFF;
//        2'h2: dac_tdata <= 128'h8276_89BF_9593_A57E_B8E3_CF04_E707_0000;
//        2'h3: dac_tdata <= 128'hE707_CF04_B8E3_A57E_9593_89BF_8276_8001;
        5'h0: dac_tdata <= 128'h0000_0000_7fff_7fff_7fff_7fff_7fff_7fff;
        default: dac_tdata <= 128'h0;
     endcase
  end

// DAC inputs
  assign s00_axis_tdata = dac_tdata;
  assign s01_axis_tdata = dac_tdata;
  assign s02_axis_tdata = dac_tdata;
  assign s03_axis_tdata = dac_tdata;
  assign s10_axis_tdata = dac_tdata;
  assign s11_axis_tdata = dac_tdata;
  assign s12_axis_tdata = dac_tdata;
  assign s13_axis_tdata = dac_tdata;
  assign s20_axis_tdata = dac_tdata;
  assign s21_axis_tdata = dac_tdata;
  assign s22_axis_tdata = dac_tdata;
  assign s23_axis_tdata = dac_tdata;
  assign s30_axis_tdata = dac_tdata;
  assign s31_axis_tdata = dac_tdata;
  assign s32_axis_tdata = dac_tdata;
  assign s33_axis_tdata = dac_tdata;


  always @(posedge axi_aclk)
          if (~axi_aresetn)
                  scratch_reg <= 32'h0;
          else if (M_AVALON_write && (M_AVALON_address[7:0] == 8'h4))
                  scratch_reg <= M_AVALON_writedata;

  always @(posedge axi_aclk)
          M_AVALON_readdatavalid <= M_AVALON_read;

  always @(posedge axi_aclk)
        case (M_AVALON_address[7:0])
                8'h0: M_AVALON_readdata <= build_ts;
                8'h4: M_AVALON_readdata <= scratch_reg;
                default: M_AVALON_readdata <= build_ts;
        endcase

  reg [6:0] cnt;
  reg tick_1us;

  always @(posedge axi_aclk)
    if (cnt == 7'd99) begin
        cnt <= 7'h0;
        tick_1us <= 1'b1;
    end else begin
        cnt <= cnt + 1;
        tick_1us <= 1'b0;
    end
    
  wire [8:0] mon_clk = { pl_sysref,
                         clk_adc0_mon,
                         clk_adc1_mon,
                         clk_adc2_mon,
                         clk_adc3_mon,
                         clk_dac0_mon,
                         clk_dac1_mon,
                         clk_dac2_mon,
                         clk_dac3_mon };


  reg [15:0] mon_cnt[8:0];
  reg [15:0] mon_cnt_lat[8:0];
  wire [8:0] tick_1us_sync;
  wire [15:0] mon_cnt_sync[8:0];
  
  generate
  for (genvar ii=0; ii<9; ii=ii+1) begin
   xpm_cdc_pulse #(
      .DEST_SYNC_FF(4),   // DECIMAL; range: 2-10
      .INIT_SYNC_FF(0),   // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
      .REG_OUTPUT(0),     // DECIMAL; 0=disable registered output, 1=enable registered output
      .RST_USED(0),       // DECIMAL; 0=no reset, 1=implement reset
      .SIM_ASSERT_CHK(0)  // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
   )
   xpm_cdc_pulse_inst (
      .dest_pulse(tick_1us_sync[ii]), // 1-bit output: Outputs a pulse the size of one dest_clk period when a pulse
      .dest_clk(mon_clk[ii]),     // 1-bit input: Destination clock.
      .dest_rst(1'b0),     // 1-bit input: optional; required when RST_USED = 1
      .src_clk(axi_aclk),       // 1-bit input: Source clock.
      .src_pulse(tick_1us),   // 1-bit input: Rising edge of this signal initiates a pulse transfer to the
      .src_rst(1'b0)        // 1-bit input: optional; required when RST_USED = 1
   );
      always @(posedge mon_clk[ii]) begin
              if (tick_1us_sync[ii]) begin
                      mon_cnt[ii] <= 16'h0;
                      mon_cnt_lat[ii] <= mon_cnt[ii];
              end else
                      mon_cnt[ii] <= mon_cnt[ii] + 1;
      end

  level_sync #(16,2) L1 (mon_cnt_lat[ii], axi_aclk, mon_cnt_sync[ii]);
  end
  endgenerate


  ila_0 ila_0 (
          .clk          (axi_aclk),       // 99.99 MHz
          .probe0       ({tick_1us,
                          mon_cnt_sync[0],
                          mon_cnt_sync[1],
                          mon_cnt_sync[2],
                          mon_cnt_sync[3],
                          mon_cnt_sync[4],
                          mon_cnt_sync[5],
                          mon_cnt_sync[6],
                          mon_cnt_sync[7],
                          mon_cnt_sync[8][14:0]
                        })
      );

  assign LED = cnt[6];



reg [127:0] m00_reg=128'd0;
reg [127:0] m01_reg=128'd0;
reg [127:0] m02_reg=128'd0;
reg [127:0] m03_reg=128'd0;
reg [127:0] m10_reg=128'd0;
reg [127:0] m11_reg=128'd0;
reg [127:0] m12_reg=128'd0;
reg [127:0] m13_reg=128'd0;
reg [127:0] m20_reg=128'd0;
reg [127:0] m21_reg=128'd0;
reg [127:0] m22_reg=128'd0;
reg [127:0] m23_reg=128'd0;
reg [127:0] m30_reg=128'd0;
reg [127:0] m31_reg=128'd0;
reg [127:0] m32_reg=128'd0;
reg [127:0] m33_reg=128'd0;


always @(posedge pl_clk)    
    if(m00_axis_tvalid)    
       m00_reg <= m00_axis_tdata;

always @(posedge pl_clk)    
    if(m01_axis_tvalid)    
       m01_reg <= m01_axis_tdata;

always @(posedge pl_clk)    
    if(m02_axis_tvalid)    
       m02_reg <= m02_axis_tdata;
       
always @(posedge pl_clk)    
    if(m03_axis_tvalid)    
       m03_reg <= m03_axis_tdata;

always @(posedge pl_clk)    
    if(m10_axis_tvalid)    
       m10_reg <= m10_axis_tdata;

always @(posedge pl_clk)    
    if(m11_axis_tvalid)    
       m11_reg <= m11_axis_tdata;
       
always @(posedge pl_clk)    
    if(m12_axis_tvalid)    
       m12_reg <= m12_axis_tdata;
       
always @(posedge pl_clk)    
    if(m13_axis_tvalid)    
       m13_reg <= m13_axis_tdata;
       
always @(posedge pl_clk)    
    if(m20_axis_tvalid)    
       m20_reg <= m20_axis_tdata;                     

always @(posedge pl_clk)    
    if(m21_axis_tvalid)    
       m21_reg <= m21_axis_tdata;

always @(posedge pl_clk)    
    if(m22_axis_tvalid)    
       m22_reg <= m22_axis_tdata;
       
always @(posedge pl_clk)    
    if(m23_axis_tvalid)    
       m23_reg <= m23_axis_tdata;
       
always @(posedge pl_clk)    
    if(m30_axis_tvalid)    
       m30_reg <= m30_axis_tdata;              
       
always @(posedge pl_clk)    
    if(m31_axis_tvalid)    
       m31_reg <= m31_axis_tdata; 
       
always @(posedge pl_clk)    
    if(m32_axis_tvalid)    
       m32_reg <= m32_axis_tdata; 
       
always @(posedge pl_clk)
    if(m33_axis_tvalid)    
       m33_reg <= m33_axis_tdata;                 


// 16 Channels ADC Output
ila_1 ila_adc_out (
	.clk(pl_clk), // input wire clk  245.76 MHz

	.probe0(m00_reg), // input wire [127:0]  probe0  
	.probe1(m01_reg), // input wire [127:0]  probe1 
	.probe2(m02_reg), // input wire [127:0]  probe2 
	.probe3(m03_reg), // input wire [127:0]  probe3 
	.probe4(m10_reg), // input wire [127:0]  probe4 
	.probe5(m11_reg), // input wire [127:0]  probe5 
	.probe6(m12_reg), // input wire [127:0]  probe6 
	.probe7(m13_reg), // input wire [127:0]  probe7 
	.probe8(m20_reg), // input wire [127:0]  probe8 
	.probe9(m21_reg), // input wire [127:0]  probe9 
	.probe10(m22_reg), // input wire [127:0]  probe10 
	.probe11(m23_reg), // input wire [127:0]  probe11 
	.probe12(m30_reg), // input wire [127:0]  probe12 
	.probe13(m31_reg), // input wire [127:0]  probe13 
	.probe14(m32_reg), // input wire [127:0]  probe14 
	.probe15(m33_reg), // input wire [127:0]  probe15 
	.probe16({m00_axis_tvalid, m01_axis_tvalid, m02_axis_tvalid, m03_axis_tvalid, m10_axis_tvalid, m11_axis_tvalid,
              m12_axis_tvalid, m13_axis_tvalid, m20_axis_tvalid, m21_axis_tvalid, m22_axis_tvalid, m23_axis_tvalid,
              m30_axis_tvalid, m31_axis_tvalid, m32_axis_tvalid, m33_axis_tvalid}) // input wire [15:0]  probe16
);


endmodule

