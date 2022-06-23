module mulFPGA(
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] c
);
    
    integer j, i;
    always @(b) begin
        j = b;
    end

    reg [31:0] res;
    assign res = c[31:0];

    always @(a, b) begin
        res[31:0] = a[31:0];
        for(i = 0; i < j; i++) begin
            res[31:0] = a[31:0] + res[31:0];
        end
    end

endmodule