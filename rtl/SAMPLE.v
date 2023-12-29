module SAMPLE (
    input sig,
    input ctrl,
    input rst_n,
    output d0,
    output d1
);
    
    WAITX U0 (
        .sig1(~sig),
        .sig2(sig),
        .ctrl(ctrl),
        .rst_n(rst_n),
        .g1(d0),
        .g2(d1)
    );

endmodule