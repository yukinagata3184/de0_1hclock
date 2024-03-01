// testbench for cnt60
// Verify that digitlow and digitup will countup.
// author:yukinagata3184

module cnt60_tb;

parameter CYCLE = 100;
parameter HALF_CYCLE = 50;
parameter DELAY = 10;

reg CLK, RST;
reg cnten;

cnt60 cnt60(.CLK(CLK), .RST(RST), .cnten(cnten));

always begin
    CLK = 1'b1;
#HALF_CYCLE CLK = 1'b0;
#HALF_CYCLE;
end

initial begin
       RST = 1'b0;
// Prevent racing
#DELAY RST = 1'b1;
#CYCLE RST = 1'b0;
       cnten = 1'b1;
// Check digitlow
#(10*CYCLE);
// Check digitup
repeat(5) begin
    #CYCLE force cnt60.digitlow = 4'd9;
           release cnt60.digitlow;
    #(2*CYCLE);
end
#CYCLE $stop;
end

endmodule