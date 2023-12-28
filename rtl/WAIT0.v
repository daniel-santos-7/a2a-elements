module WAIT0 (
    input sig,
    input ctrl,
    output san
);

    MUTEX me (
        .r1(sig),
        .r2(ctrl),
        .g1(),
        .g2(san)
    );

endmodule