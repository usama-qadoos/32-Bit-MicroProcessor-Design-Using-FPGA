module pipeline #(parameter n = 8)(in,clock,out);
input [n-1:0]in;
input clock;
output reg [n-1:0] out;


always @(posedge clock)
begin
out <= in;
end
endmodule
