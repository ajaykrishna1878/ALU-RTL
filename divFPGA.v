module divFPGA(
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] c
);
    reg [31:0] res;
    reg [31:0] diff;
    assign res = c;

    integer i, j;
    always @(b) begin
        j = b;
    end

    always @(a, b) begin
        res[31:0] = 0;
        diff[31:0] = a[31:0];
        for(i = 0; i < j; i++) begin
            if(diff[31:0] >= b[31:0]) begin
                diff[31:0] = diff[31:0] - b[31:0];
                res[31:0] += 1;
            end
        end
    end

endmodule