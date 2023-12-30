module LOGIC0 (
    output O
);

    assign O = 1'b0;

endmodule

module BUF (
    input I,
    output O
);
    
    assign O = (I);

endmodule

module INV (
    input I,
    output ON
);
    
    assign ON = ~(I);

endmodule

module NAND2 (
    input A,
    input B,
    output ON
);
    
    assign ON = ~(A & B);

endmodule

module NAND2B (
    input AN,
    input B,
    output ON
);

    assign ON = ~(~AN & B);

endmodule

module AND2 (
    input A,
    input B,
    output O
);

    assign O = (A & B);

endmodule

module OR2 (
    input A,
    input B,
    output O
);

    assign O = (A | B);

endmodule

module NOR2 (
    input A,
    input B,
    output ON
);

    assign ON = ~(A | B);

endmodule

module NOR2B (
    input AN,
    input B,
    output ON
);

    assign ON = ~(~AN | B);

endmodule

module NOR3 (
    input A,
    input B,
    input C,
    output O
);

    assign O = ~(A | B | C);

endmodule

module NOR3B (
    input AN,
    input B,
    input C,
    output ON
);

    assign ON = ~(~AN | B | C);

endmodule

module NOR4B (
    input AN,
    input B,
    input C,
    input D,
    output ON
);

    assign ON = ~(~AN | B | C | D);

endmodule

module NOR4BB (
    input AN,
    input BN,
    input C,
    input D,
    output ON
);

    assign ON = ~(~AN | ~BN | C | D);

endmodule

module OA21 (
    input A1,
    input A2,
    input B,
    output O
);

    assign O = ((A1 | A2) & B);

endmodule

module OAI2BB1 (
    input A1N,
    input A2N,
    input B,
    output ON
);

    assign ON = ~((~A1N | ~A2N) & B);

endmodule

module AO22 (
    input A1,
    input A2,
    input B1,
    input B2,
    output O
);

    assign O = ((A1 & A2) | (B1 & B2));

endmodule

module AO21 (
    input A1,
    input A2,
    input B,
    output O
);

    assign O = ((A1 & A2) | B);

endmodule

module AOI2BB1 (
    input A1N,
    input A2N,
    input B,
    output ON
);

    assign ON = ~((~A1N & ~A2N) | B);

endmodule

module OAI21 (
    input A1,
    input A2,
    input B,
    output ON
);

    assign ON = ~((A1 | A2) & B);

endmodule

module OAI32 (
    input A1,
    input A2,
    input A3,
    input B1,
    input B2,
    output ON
);

    assign ON = ~((A1 | A2 | A3) & (B1 | B2));

endmodule

module C2 (
    input A,
    input B,
    output reg Q
);

    always @(A, B) begin
        if (A && B)
            Q <= 1'b1; 
        if (!A && !B)
            Q <= 1'b0;
    end

endmodule