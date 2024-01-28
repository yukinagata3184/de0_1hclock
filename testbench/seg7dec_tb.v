// testbench for seg7dec
// author:yukinagata3184

module seg7dec_tb;
reg [2:0] dinup, 
reg [3:0] dinlow;
wire nSEGUP, nSEGLOW;

initial begin
     dinup = 3'h0, dinlow = 4'h0;
#100 dinup = 3'h1, dinlow = 4'h1;
#100 dinup = 3'h2, dinlow = 4'h2;
#100 dinup = 3'h3, dinlow = 4'h3;
#100 dinup = 3'h4, dinlow = 4'h4;
#100 dinup = 3'h5, dinlow = 4'h5;
#100 dinup = 3'h6, dinlow = 4'h6;
#100 dinup = 3'h7, dinlow = 4'h7;
#100               dinlow = 4'h8;
#100               dinlow = 4'h9;
#100               dinlow = 4'ha;
#100               dinlow = 4'hb;
#100               dinlow = 4'hc;
#100               dinlow = 4'hd;
#100               dinlow = 4'he;
#100               dinlow = 4'hf;
end

endmodule