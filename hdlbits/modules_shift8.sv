module top_module (
    input clk,
    input [7:0] d,
    input [1:0] sel,
    output [7:0] q
);
  wire [7:0] int1, int2, int3;
  my_dff8 legrand (
      .clk(clk),
      .d  (d),
      .q  (int1)
  );
  my_dff8 middleman (
      .clk(clk),
      .d  (int1),
      .q  (int2)
  );
  my_dff8 smallman (
      .clk(clk),
      .d  (int2),
      .q  (int3)
  );

  always @(*) begin
    case (sel)
      2'b00: q = d;
      2'b01: q = int1;
      2'b10: q = int2;
      2'b11: q = int3;
    endcase
  end

endmodule
