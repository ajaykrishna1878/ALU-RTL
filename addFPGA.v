module addFPGA(
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] c
);
    reg [31:0] res;
    assign res = c[31:0];

    always @(a, b) begin
        res[31:0] = a[31:0] + b[31:0];
    end

endmodule