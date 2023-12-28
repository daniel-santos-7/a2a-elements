module WAIT2 (
    input sig,
    input ctrl,
    input rst_n,
    output san
);
    
    wire ctrl0;
    wire ctrl1;
    wire san0;
    wire san1;

    WAIT0 U0 (
        .sig(sig),
        .ctrl(ctrl0),
        .san(san0)
    );

    WAIT U1 (
        .sig(sig),
        .ctrl(ctrl1),
        .san(san1)
    );

    WAIT2_control U2 (
        .ctrl(ctrl), 
        .san0(san0), 
        .san1(san1), 
        .rst_n(rst_n), 
        .san(san), 
        .ctrl0(ctrl0), 
        .ctrl1(ctrl1)
    );

endmodule