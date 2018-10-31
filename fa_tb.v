// Test bench for full Adder;
module fa_test();
reg A=0,B=0,C=0;
wire exptS,exptC,opS,opC;
assign exptS=((A^B)^C);
assign exptC=(A&B)+((A^B)&C);
initial begin
$dumpfile("FAdump.vcd");
$dumpvars(0,fa_test);
#2;
A=0;B=0;C=0;
#2;
A=0;B=0;C=1;
#2;
A=0;B=1;C=0;
#2;
A=0;B=1;C=1;
#2;
A=1;B=0;C=0;
#2;
A=1;B=0;C=1;
#2;
A=1;B=1;C=0;
#2;
A=1;B=1;C=1;
#8;
end
FA test(A,B,C,opS,opC);
endmodule 