module WAITX (
    input sig1,
    input sig2,
    input ctrl,
    input rst_n,
    output g1,
    output g2
);

    wire wctrl1;
    wire wctrl2;

    wire san1;
    wire san2;

    wire win1;
    wire win2;

    RWAIT U0 (
        .sig(sig1),
        .frc(win2),
        .ctrl(wctrl1),
        .san(san1)
    );

    RWAIT U1 (
        .sig(sig2),
        .frc(win1),
        .ctrl(wctrl2),
        .san(san2)
    );

    MUTEX ME0 (
        .r1(san1),
        .r2(san2),
        .g1(win1),
        .g2(win2)
    );

    WAITX_control U2 (
        .ctrl(ctrl), 
        .san1(san1), 
        .san2(san2), 
        .win1(win1), 
        .win2(win2), 
        .rst_n(rst_n), 
        .g1(g1), 
        .g2(g2), 
        .wctrl1(wctrl1), 
        .wctrl2(wctrl2)
    );

endmodule