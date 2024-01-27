// 7 segment decoder
// author:yukinagata3184

module seg7dec(
    input [2:0] dinup, // the upper digit of time
    input [3:0] dinlow, // the lower digit of time
    output [6:0] nSEGUP, nSEGLOW // DE0's 7seg led is low active(fm user manual)
)

function [6:0] segdec;
input [3:0] din;
    case(din)
        4'h0:   segdec = 7'b100_0000;
        4'h1:   segdec = 7'b111_1001;
        4'h2:   segdec = 7'b010_0100;
        4'h3:   segdec = 7'b011_0000;
        4'h4:   segdec = 7'b001_1001;
        4'h5:   segdec = 7'b001_0010;
        4'h6:   segdec = 7'b000_0010;
        4'h7:   segdec = 7'b101_1000;
        4'h8:   segdec = 7'b000_0000;
        4'h9:   segdec = 7'b001_0000;
        default:segdec = 7'bxxx_xxxx;
    endcase
endfunction

assign nSEGUP = segdec({1'b0, dinup});
assign nSEGLOW = segdec(dinlow);

endmodule