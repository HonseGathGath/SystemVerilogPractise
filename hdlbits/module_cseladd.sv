module top_module (
    input  [31:0] a,
    b,
    output [31:0] sum
);
  wire [15:0] sum1, sum2, a1, a2, b1, b2, sum3;
  wire dump, sel;
  assign {a2, a1} = a;
  assign {b2, b1} = b;

  add16 low_half (
      .a(a2),
      .b(b2),
      .cin(1'b0),
      .cout(dump),
      .sum(sum1)
  );
  add16 higher_half (
      .a(a2),
      .b(b2),
      .cin(1'b1),
      .cout(dump),
      .sum(sum2)
  );

  add16 master (
      .a(a1),
      .b(b1),
      .cin(1'b0),
      .cout(sel),
      .sum(sum3)
  );

  always @(*) begin
    case (sel)
      1'b0: sum = {sum1, sum3};
      1'b1: sum = {sum2, sum3};
    endcase
  end

endmodule
