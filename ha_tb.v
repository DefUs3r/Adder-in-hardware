module ha_test();
reg A=0,B=0;
wire exptS,opS;
assign exptS=A^B;
wire exptC,opC;
assign exptC=A&B;
initial begin
  $dumpfile("HAdump.vcd");
  $dumpvars(0,ha_test);
  #2
  A=0;B=0;
  #2;
  A=1;B=0;
  #2;
  A=0;B=1;
  #2;
  A=1;B=1;
  #8;
end
HA test (A,B,opS,opC);
endmodule