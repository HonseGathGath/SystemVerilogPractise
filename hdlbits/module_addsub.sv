`default_nettype none
module top_module (
    input [31:0] a,
    b,
    input sub,
    output [31:0] sum
);
  wire [15:0] sum1, sum2, a1, a2, b1, b2;
  wire inter, dump;
  wire [31:0] int_b;

  assign int_b = b ^ {32{sub}};
  assign {a2, a1} = a;
  assign {b2, b1} = int_b;

  add16 low_half (
      .a(a1),
      .b(b1),
      .cin(sub),
      .cout(inter),
      .sum(sum1)
  );
  add16 higher_half (
      .a(a2),
      .b(b2),
      .cin(inter),
      .cout(dump),
      .sum(sum2)
  );

  assign sum = {sum2, sum1};

endmodule

