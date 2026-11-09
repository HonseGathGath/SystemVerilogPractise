module top_module (
    input  a,
    b,
    c,
    d,
    output out,
    out_n
);
  wire ab_and, dc_and;

  assign ab_and = a & b;
  assign dc_and = d & c;

  assign out = ab_and | dc_and;
  assign out_n = ~out;

endmodule
