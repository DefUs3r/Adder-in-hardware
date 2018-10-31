// A test bench to verify 4 bit RCA
module RCA_test();
reg [3:0]A;
reg [3:0]B;
wire [3:0]Sum;
wire [4:0]Carry;
reg C;
wire finalCarry;
RCA test(.A(A),.B(B),.C(C),.Sum(Sum),.finalCarry(finalCarry));
initial begin
  $dumpfile("RCA4bit_dump.vcd");
  $dumpvars(0,RCA_test);
  A=4'b0;B=4'b0;C=1'b0;
  #100;
  A=4'b0001;B=4'b0010;C=1'b1;
   #100;
   A=4'b0010;B=4'b0100;C=1'b0;
   #100;
   A=4'b1001;B=4'b0010;C=1'b1;
   #100;
   A=4'b1100;B=4'b0011;C=1'b0;
   #100;
   $display("time = %b, Sum = %b, Carry = %b",$time,Sum,finalCarry);
  #10;
end
// RCA test(A,B,C,opS,opC);

endmodule 