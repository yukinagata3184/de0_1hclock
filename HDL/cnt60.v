// Count up to 59min or 59sec.
// author:yukinagata3184

module cnt60(
    input CLK, RST,
    input cnten,
    output ca,
    output reg [2:0] digitup,
    output reg [3:0] digitlow
);

// lower digit
always @(posedge CLK or posedge RST) begin
    if(RST)
        digitlow <= 4'd0;
    else if(cnten==1'b1 && digitlow!=4'd9)
        digitlow <= digitlow + 1'b1;
    else if(cnten==1'b1 && digitlow==4'd9)
        digitlow <= 4'd0;
end

// upper digit
always @(posedge CLK or posedge RST) begin
    if(RST)
        digitup <= 3'd0;
    else if(cnten==1'b1 && digitlow==4'd9 && digitup!=3'd5)
        digitup <= digitup + 1'b1;
    else if(cnten==1'b1 && digitlow==4'd5 && digitup==3'd5)
        digitup <= 3'd0;
end

// carry up
assign ca = (cnten==1'b1 && digitup==3'd5 && digitlow==4'd9);

endmodule