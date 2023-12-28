module WAIT (
    input sig,
    input ctrl,
    output san
);

    wire r1;

    assign r1 = ~sig;

    MUTEX me (
        .r1(r1),
        .r2(ctrl),
        .g1(),
        .g2(san)
    );

endmodule