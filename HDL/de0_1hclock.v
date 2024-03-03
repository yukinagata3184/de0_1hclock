// Top module of de0_1hclock
// author:yukinagata3184

module de0_1hclock(
    input CLK, RST,
    output [6:0] nSEG0, nSEG1, nSEG2, nSEG3
);

wire gen1hz;
cnt1sec cnt1sec(.CLK(CLK), .RST(RST), .gen1hz(gen1hz));

wire secca, minca;
wire [2:0] secup, minup;
wire [3:0] seclow, minlow;
cnt60 cntsec(.CLK(CLK), .RST(RST), .cnten(gen1hz), .ca(secca),
             .digitup(secup), .digitlow(seclow));
cnt60 cntmin(.CLK(CLK), .RST(RST), .cnten(secca), .ca(minca),
             .digitup(minup), .digitlow(minlow));

seg7dec segsec(.dinup(secup), .dinlow(seclow), .nSEGUP(nSEG1), .nSEGLOW(nSEG0));
seg7dec segmin(.dinup(minup), .dinlow(minlow), .nSEGUP(nSEG3), .nSEGLOW(nSEG2));

endmodule