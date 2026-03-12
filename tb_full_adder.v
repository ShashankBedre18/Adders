`timescale 1ns / 1ps

module tb_full_adder;

reg A;
reg B;
reg Cin;

wire SUM;
wire CARRY;

full_adder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .SUM(SUM),
    .CARRY(CARRY)
);

integer i;

initial begin

$display("A B Cin | SUM CARRY");
$monitor("%b %b %b | %b %b", A, B, Cin, SUM, CARRY);

for(i=0; i<8; i=i+1) begin
    {A,B,Cin} = i;
    #10;
end

end

endmodule