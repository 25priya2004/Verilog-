module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    wire w,x,y,z;
    assign w=!x3&x2&!x1;
    assign x=!x3&x2&x1;
    assign y=x3&!x2&x1;
    assign z=x3&x2&x1;
    assign f=w|x|y|z;
endmodule
