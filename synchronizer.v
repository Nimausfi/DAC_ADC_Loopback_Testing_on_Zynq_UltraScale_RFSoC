
module level_sync # (
        parameter WIDTH = 1,
        parameter FLOPS = 2     // 2/3/4
) (
        input [WIDTH-1:0]       vec_in,
	input		        dst_clk,

        output reg [WIDTH-1:0]  vec_out
);

////////////////////////////////////////////////////////////////////////////////
//        
(* ASYNC_REG = "TRUE" *) reg [WIDTH-1:0] vec_in_s1;

////////////////////////////////////////////////////////////////////////////////
//        
generate 
if (FLOPS == 2) begin : stage2
    always @(posedge dst_clk) begin
        vec_in_s1 <= vec_in;
        vec_out   <= vec_in_s1;
    end
end
endgenerate


generate 
if (FLOPS == 3) begin : stage3
    reg [WIDTH-1:0] vec_in_s2;
    always @(posedge dst_clk) begin
        vec_in_s1 <= vec_in;
        vec_in_s2 <= vec_in_s1;
        vec_out   <= vec_in_s2;
    end
end
endgenerate

generate 
if (FLOPS == 4) begin : stage4
    reg [WIDTH-1:0] vec_in_s2;
    reg [WIDTH-1:0] vec_in_s3;
    always @(posedge dst_clk) begin
        vec_in_s1 <= vec_in;
        vec_in_s2 <= vec_in_s1;
        vec_in_s3 <= vec_in_s2;
        vec_out   <= vec_in_s3;
    end
end
endgenerate


endmodule

/*
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
module pulse_sync (
        input                   pulse_in,
	input		        src_clk,
	input		        dst_clk,

        output reg              pulse_out
);

////////////////////////////////////////////////////////////////////////////////
//        
reg             pulse_in_t = 1'b0;
reg             pulse_in_t_s2;
reg             pulse_in_t_s3;

(* ASYNC_REG = "TRUE" *) reg pulse_in_t_s1;

////////////////////////////////////////////////////////////////////////////////
//        
always @(posedge src_clk)
        if (pulse_in)
                pulse_in_t <= ~pulse_in_t;

always @(posedge dst_clk) begin
        pulse_in_t_s1 <= pulse_in_t;
        pulse_in_t_s2 <= pulse_in_t_s1;
        pulse_in_t_s3 <= pulse_in_t_s2;
        pulse_out     <= pulse_in_t_s2 ^ pulse_in_t_s3;
end

endmodule
*/

/*
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
module reset_sync (
        input                   reset_in,
	input		        dst_clk,

        output reg              reset_out
);

////////////////////////////////////////////////////////////////////////////////
//        
(* ASYNC_REG = "TRUE" *) reg reset_in_q;

////////////////////////////////////////////////////////////////////////////////
//
always @(posedge dst_clk or negedge reset_in)
        if (~reset_in) begin
                reset_in_q <= 1'b1;
                reset_out  <= 1'b1;
        end else begin
                reset_in_q <= 1'b0;
                reset_out  <= reset_in_q;
        end


endmodule
*/

