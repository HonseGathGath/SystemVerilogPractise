`default_nettype none
module top_module (
    input a,
    b,
    c,
    d,
    e,
    output [24:0] out
);
  wire [4:0] bus = {a, b, c, d, e};
  assign out = {{5{~a}} ^ bus, {5{~b}} ^ bus, {5{~c}} ^ bus, {5{~d}} ^ bus, {5{~e}} ^ bus};

endmodule
