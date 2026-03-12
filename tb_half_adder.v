`timescale 1ns / 1ps

module tb_half_adder;

reg A;
reg B;

wire SUM;
wire CARRY;

half_adder uut (
    .A(A),
    .B(B),
    .SUM(SUM),
    .CARRY(CARRY)
);

integer i;

initial begin

$display("A B | SUM CARRY");
$monitor("%b %b | %b %b", A, B, SUM, CARRY);

for(i=0; i<4; i=i+1) begin
    {A,B} = i;
    #10;
end

end

endmodule