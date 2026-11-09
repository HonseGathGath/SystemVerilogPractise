module sillyfunction_tb;
  reg a, b, c;
  wire y;

  sillyfunction dut (
      .a(a),
      .b(b),
      .c(c),
      .y(y)
  );

  initial begin
    $dumpfile("sillyfunction.vcd");
    $dumpvars(0, sillyfunction_tb);

    a = 0;
    b = 1;
    c = 1;
    $display("a=%b b=%b c=%b -> out=%b", a, b, c, y);
    a = 1;
    $display("a=%b b=%b c=%b -> out=%b", a, b, c, y);
    a = 0;
    b = 0;
    c = 0;
    $display("a=%b b=%b c=%b -> out=%b", a, b, c, y);

    $finish;

  end
endmodule
