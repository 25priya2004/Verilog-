module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0]ff1,ff2,ff3;
    my_dff8 d_flop1(clk,d,ff1);
    my_dff8 d_flop2(clk,ff1,ff2);
    my_dff8 d_flop3(clk,ff2,ff3);
    always @(*)
        case(sel)
            0:q=d;
            1:q=ff1;
            2:q=ff2;
            3:q=ff3;
        endcase

endmodule
