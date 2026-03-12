module full_adder_using_half_adder(
    input A,
    input B,
    input Cin,
    output SUM,
    output CARRY
);

wire SUM1;
wire CARRY1;
wire CARRY2;

half_adder HA1(
    .A(A),
    .B(B),
    .SUM(SUM1),
    .CARRY(CARRY1)
);

half_adder HA2(
    .A(SUM1),
    .B(Cin),
    .SUM(SUM),
    .CARRY(CARRY2)
);

assign CARRY = CARRY1 | CARRY2;

endmodule