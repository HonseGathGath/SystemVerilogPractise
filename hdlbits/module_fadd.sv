
module top_module (
    input  [31:0] a,
    b,
    output [31:0] sum
);
  wire [15:0] sum1, sum2, a1, a2, b1, b2;
  wire inter, dump;
  assign {a2, a1} = a;
  assign {b2, b1} = b;

  add16 low_half (
      .a(a1),
      .b(b1),
      .cin(0),
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

module add1 (
    input  a,
    b,
    cin,
    output sum,
    cout
);
  wire [1:0] int_sum;
  assign int_sum = a + b + cin;
  assign cout = int_sum[1];
  assign sum = int_sum[0];
endmodule
