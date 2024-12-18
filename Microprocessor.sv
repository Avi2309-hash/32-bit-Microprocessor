module Microprocessor (
    input logic clk, reset,
    output logic [31:0] pc_out, instruction_out
);
    logic [31:0] pc, instruction, alu_result, data_mem_out;
    logic [2:0] alu_control;
    logic [31:0] reg_data;

    // Program Counter
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            pc <= 32'd0;
        else
            pc <= pc + 32'd4; // Increment PC by 4
    end

    // Program Memory
    ProgramMemory pm (
        .address(pc),
        .instruction(instruction)
    );

    // Instruction Register
    InstructionRegister ir (
        .clk(clk),
        .reset(reset),
        .load(1'b1), // Always load
        .instruction_in(instruction),
        .instruction_out(instruction_out)
    );

    // ALU
    ALU alu (
        .operand_a(pc),
        .operand_b(32'd4),
        .alu_control(3'b000),
        .alu_result(alu_result),
        .zero()
    );

    assign pc_out = pc;
endmodule
