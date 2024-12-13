module top_module ( input clk, input d, output q );
    wire ff1,ff2;
    my_dff d_flop1(clk,d,ff1);
    my_dff d_flop2(clk,ff1,ff2);
    my_dff d_flop3(clk,ff2,q);
endmodule
