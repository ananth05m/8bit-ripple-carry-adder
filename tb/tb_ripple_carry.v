`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 18:52:52
// Design Name: 
// Module Name: tb_ripple_carry
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_ripple_carry;

reg [7:0] a, b;
reg cin;
wire [7:0] sum;
wire cout;

ripple_carry_adder_8bit uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);
initial begin
    a = 8'b00000000; b = 8'b00000000; cin = 0;
    #10;

    a = 8'b00001111; b = 8'b00000001; cin = 0;
    #10;

    a = 8'b11111111; b = 8'b00000001; cin = 0;
    #10;

    a = 8'b10101010; b = 8'b01010101; cin = 0;
    #10;
    a = 8'b11110000; b = 8'b00001111; cin = 1;
    #10;
    $finish;
end
endmodule
