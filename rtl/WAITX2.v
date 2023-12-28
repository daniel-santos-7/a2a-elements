module WAITX2 (
    input sig1,
    input sig2,
    input ctrl,
    input rst_n,
    output g1,
    output g2
);

    wire xctrl;

    wire wctrl1;
    wire wctrl2;

    wire xg1;
    wire xg2;

    wire san1;
    wire san2;

    WAITX U0 (
        .sig1(sig1),
        .sig2(sig2),
        .ctrl(xctrl),
        .rst_n(rst_n),
        .g1(xg1),
        .g2(xg2)
    );

    WAIT0 U1 (
        .sig(sig1),
        .ctrl(wctrl1),
        .san(san1)
    );

    WAIT0 U2 (
        .sig(sig2),
        .ctrl(wctrl2),
        .san(san2)
    );

    WAITX2_control U3 (
        .xg1(xg1), 
        .xg2(xg2), 
        .ctrl(ctrl), 
        .san1(san1), 
        .san2(san2), 
        .rst_n(rst_n), 
        .g1(g1), 
        .g2(g2), 
        .xctrl(xctrl), 
        .wctrl1(wctrl1), 
        .wctrl2(wctrl2)
    );

endmodule