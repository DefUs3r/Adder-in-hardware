// A module that implements sum of two numbers
module HA(A,B,sum,carry);
input A,B;
output sum,carry;
wire A,B,sum,carry;
assign sum=A^B;
assign carry=A&B;
endmodule