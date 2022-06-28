module ALU(
    input  [31:0] a,
    input  [31:0] b,
    input  [1:0] op,
    output [31:0] c
);

    always @(a, b, op) begin
        if(op[1] == 0 && op[0] == 1) begin
            subFPGA sF(
                .a(a),
                .b(b),
                .c(c)
            );
        end

        else if(op[1] == 0 && op[0] == 0) begin
            addFPGA aF(
                .a(a),
                .b(b),
                .c(c)
            );
        end
        else if(op[1] == 1 && op[0] == 1) begin
            divFPGA dF(
                .a(a),
                .b(b),
                .c(c)
            );
        end
        else if(op[1] == 1 && op[0] == 0) begin
            mulFPGA mF(
                .a(a),
                .b(b),
                .c(c)
            );
        end
    end

endmodule