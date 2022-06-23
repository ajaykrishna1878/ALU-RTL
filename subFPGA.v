module subFPGA(
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] c
);
    reg [31:0] res;
    assign res = c;

    assign @(a, b) begin
        if(a[31:0] < b[31:0]) begin
            res[31:0] = b[31:0] - a[31:0];
        end

        else if(a[31:0] >= b[31:0]) begin
            res[31:0] = a[31:0] - b[31:0];
        end
    end

endmodule