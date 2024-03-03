// testbench for de0_1hclock.
// integration test for de0_1hclock.
// author:yukinagata3184

module de0_1hclock_tb;

parameter CYCLE = 100;
parameter HALF_CYCLE = 50;
parameter DELAY = 10;

reg CLK, RST;
wire [6:0] nSEG0, nSEG1, nSEG2, nSEG3;

de0_1hclock de0_1hclock(.CLK(CLK), .RST(RST),
                        .nSEG0(nSEG0), .nSEG1(nSEG1), .nSEG2(nSEG2), .nSEG3(nSEG3));

always begin
    CLK = 1'b1;
#HALF_CYCLE CLK = 1'b0;
#HALF_CYCLE;
end

initial begin
// nSEG0~3 are 100_0000(0) when RST rises
       RST = 1'b0;
// Prevent racing
#DELAY RST = 1'b1;
#CYCLE RST = 1'b0;
// nSEG0 is 111_1001(1) when seclow 4'd1 (gen1hz HIGH)
// nSEG0 is 010_0100(2) when seclow 4'd2 (gen1hz HIGH)
repeat(3) begin
    #(2*CYCLE);
        force de0_1hclock.cnt1sec.cnt50mhz = 26'd49_999_998;
        release de0_1hclock.cnt1sec.cnt50mhz;
end
// nSEG0 is 001_0000(9) when seclow 4'd9 (gen1hz HIGH)
#(2*CYCLE);
    force de0_1hclock.cntsec.digitlow = 4'd9;
    release de0_1hclock.cntsec.digitlow;
    force de0_1hclock.cnt1sec.cnt50mhz = 26'd49_999_998;
    release de0_1hclock.cnt1sec.cnt50mhz;
// nSEG0 is 100_0000(0) and nSEG1 is 111_1001(1) when seclow 4'd0 and secup 3'd1 (gen1hz HIGH)
#(2*CYCLE);
    force de0_1hclock.cnt1sec.cnt50mhz = 26'd49_999_998;
    release de0_1hclock.cnt1sec.cnt50mhz;
// nSEG0 is 001_0000(9) and nSEG1 is 001_0010(5) when seclow 4'd9 and secup 3'd5 (gen1hz HIGH)
#(2*CYCLE);
    force de0_1hclock.cntsec.digitlow = 4'd9;
    release de0_1hclock.cntsec.digitlow;
    force de0_1hclock.cntsec.digitup = 4'd5;
    release de0_1hclock.cntsec.digitup;
    force de0_1hclock.cnt1sec.cnt50mhz = 26'd49_999_998;
    release de0_1hclock.cnt1sec.cnt50mhz;
// nSEG2 is 111_1001(1) when minlow 4'd1 (gen1hz HIGH)
#(2*CYCLE);
    force de0_1hclock.cnt1sec.cnt50mhz = 26'd49_999_998;
    release de0_1hclock.cnt1sec.cnt50mhz;
// nSEG2 is 010_0100(2) when minlow 4'd2 (gen1hz HIGH)
#(2*CYCLE);
    force de0_1hclock.cntmin.digitlow = 4'd2;
    release de0_1hclock.cntmin.digitlow;
// nSEG2 is 001_0000(9) when minlow 4'd9 (gen1hz HIGH)
#(2*CYCLE);
    force de0_1hclock.cntmin.digitlow = 4'd9;
    release de0_1hclock.cntmin.digitlow;
// nSEG2 is 100_0000(0) and nSEG3 is 111_1001(1) when minlow 4'd0 and minup 3'd1 (gen1hz HIGH)
#(2*CYCLE);
    force de0_1hclock.cntsec.digitlow = 4'd9;
    release de0_1hclock.cntsec.digitlow;
    force de0_1hclock.cntsec.digitup = 4'd5;
    release de0_1hclock.cntsec.digitup;
    force de0_1hclock.cnt1sec.cnt50mhz = 26'd49_999_998;
    release de0_1hclock.cnt1sec.cnt50mhz;
// nSEG2 is 001_0000(9) and nSEG3 is 001_0010(5) when minlow 4'd9 and minup 3'd5 (gen1hz HIGH)
#(2*CYCLE);
    force de0_1hclock.cntsec.digitlow = 4'd9;
    release de0_1hclock.cntsec.digitlow;
    force de0_1hclock.cntsec.digitup = 4'd5;
    release de0_1hclock.cntsec.digitup;
    force de0_1hclock.cntmin.digitlow = 4'd9;
    release de0_1hclock.cntmin.digitlow;
    force de0_1hclock.cntmin.digitup = 4'd5;
    release de0_1hclock.cntmin.digitup;
    force de0_1hclock.cnt1sec.cnt50mhz = 26'd49_999_998;
    release de0_1hclock.cnt1sec.cnt50mhz;
// nSEG2 is 100_0000(0) and nSEG3 is 100_0000(0) when minlow 4'd0 and minup 3'd0 (gen1hz HIGH)
#(2*CYCLE);
    force de0_1hclock.cnt1sec.cnt50mhz = 26'd49_999_998;
    release de0_1hclock.cnt1sec.cnt50mhz;
#(2*CYCLE) $stop;
end

endmodule