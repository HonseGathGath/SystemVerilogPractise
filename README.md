# SystemVerilogPractise

SystemVerilog practice and exercises, organized by source.

## Structure

- `comp_arch_book/` — examples from *Computer Architecture and Digital Design*, organized by chapter
- `hdlbits/` — solutions to [HDLBits](https://hdlbits.01xz.net/) problems
- `nvim-verilog-setup.pdf` — Neovim config notes for SystemVerilog (treesitter, LSP, lint, format)

## Running a testbench

```bash
iverilog -o sim module.v module_tb.v
vvp sim
gtkwave module.vcd   # optional, view waveform
```
