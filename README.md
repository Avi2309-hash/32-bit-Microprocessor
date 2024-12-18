# 32-bit Microprocessor

This project implements a simple 32-bit microprocessor in SystemVerilog with the following features:
- A Program Counter (PC) that increments by 4 on every clock cycle.
- Reset functionality to initialize the PC to 0.

## Files
- **Microprocessor.sv**: The design of the microprocessor.
- **Microprocessor_tb.sv**: Testbench to simulate the design.

## Simulation
- Use [EDA Playground](https://www.edaplayground.com/) or a SystemVerilog-compatible simulator like Icarus Verilog.
- The output demonstrates the Program Counter incrementing at every positive clock edge.

## Output Example
Time: 0 | PC: 00000000 Time: 15 | PC: 00000000 Time: 25 | PC: 00000004 Time: 35 | PC: 00000008 Time:45


## Tools
- **Language**: SystemVerilog
- **Simulator**: Icarus Verilog

Stage the files:
git add Microprocessor.sv Microprocessor_tb.sv 

Commit the files:
git commit -m "Add 32-bit Microprocessor design and testbench"

Push the files to GitHub:
git push origin main
