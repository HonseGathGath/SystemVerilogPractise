module top_module (
    input  clk,
    d,
    output q
);
  wire int1, int2;
  my_dff lelarpeur (
      .clk(clk),
      .d  (d),
      .q  (int1)
  );
  my_dff omarbrika (
      .clk(clk),
      .d  (int1),
      .q  (int2)
  );
  my_dff wahchyyyy (
      .clk(clk),
      .d  (int2),
      .q  (q)
  );
endmodule
