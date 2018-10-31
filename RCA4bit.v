// A module for 4-bit Ripple Carry Adder
module RCA(A,B,C,Sum,finalCarry);
input [3:0]A,B;
input C;
output [3:0]Sum;
wire [4:0]Carry;
output finalCarry;
wire [3:0]A,B; 
wire C,finalCarry;
wire [3:0]Sum;
assign Carry[0]=C;
// genvar j;
// generate
// for (j=1;j<=4;j=j+1 ) begin:assignment
//   assign Carry[j]=1'b0;
// end
// endgenerate
genvar i;
for (i=0;i<4;i=i+1) begin : loop
  FA fa1(.A(A[i]),.B(B[i]),.C_prev(Carry[i]),.S(Sum[i]),.C_next(Carry[i+1]));
end

assign finalCarry=Carry[4];
endmodule