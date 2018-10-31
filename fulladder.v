// A module that implements full Adder circuit of two four-bit numbers
module FA(A,B,C_prev,S,C_next);
input A,B,C_prev;
output S,C_next;
wire A,B,C_prev,s,c_next,tmpC,tmpS;
HA HA1(.A(A),.B(B),.sum(tmpS),.carry(tmpC));
HA HA2(.A(tmpS),.B(C_prev),.sum(S),.carry(tmpC));
assign C_next=(A&B)|(tmpS&C_prev);
endmodule