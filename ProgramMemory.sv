module ProgramMemory (
    input logic [31:0] address,
    output logic [31:0] instruction
);
    logic [31:0] memory [0:255]; // 256 words of program memory

    initial begin
        // Example program (hardcoded instructions)
        memory[0] = 32'hAABBCCDD;
        memory[1] = 32'h12345678;
        memory[2] = 32'h87654321;
        memory[3] = 32'h00000000;
    end

    assign instruction = memory[address >> 2]; // Address divided by 4
endmodule
