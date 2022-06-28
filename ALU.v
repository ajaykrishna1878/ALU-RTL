module ALU(
    input  [31:0] A,
    input  [31:0] B,
    input  [1:0] Op,
    output [31:0] C
);

    always @(A, B, Op) begin
        if(Op[1] == 0 && Op[0] == 1) begin
            subFPGA sF(
                .A(A),
                .B(B),
                .C(C)
            );
        end

        else if(Op[1] == 0 && Op[0] == 0) begin
            addFPGA aF(
                .A(A),
                .B(B),
                .C(C)
            );
        end
        else if(Op[1] == 1 && Op[0] == 1) begin
            divFPGA dF(
                .A(A),
                .B(B),
                .C(C)
            );
        end
        else if(Op[1] == 1 && Op[0] == 0) begin
            mulFPGA mF(
                .A(A),
                .B(B),
                .C(C)
            );
        end
    end

endmodule