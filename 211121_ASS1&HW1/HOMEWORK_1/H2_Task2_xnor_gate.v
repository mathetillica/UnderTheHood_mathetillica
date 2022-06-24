`timescale 1ns/1ns 

module xnorgate(
    input A,B,
    output C
);
    assign C = (A&B)|((~A)&(~B));
endmodule


module tb;

    reg A, B;
    wire C;
    xnorgate ans(A, B, C);

    initial begin
        A = 1;
        B = 1;
        #2;
        $display("A = %b, B = %b, C = %b", A, B, C);
        #10;
        A = 0;
        B = 1;
        #2;
        $display("A = %b, B = %b, C = %b", A, B, C);
        #10;
        A=1;
        B=0;
        #2;
        $display("A = %b, B = %b, C = %b", A, B, C);
        #10;
        A = 0;
        B = 0;
        #2;
        $display("A = %b, B = %b, C = %b", A, B, C);
    end
endmodule
