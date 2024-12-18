module ALU (
    input logic [31:0] operand_a, operand_b,
    input logic [2:0] alu_control, // ALU operation selector
    output logic [31:0] alu_result,
    output logic zero
);
    always_comb begin
        case (alu_control)
            3'b000: alu_result = operand_a + operand_b; // Add
            3'b001: alu_result = operand_a - operand_b; // Subtract
            3'b010: alu_result = operand_a & operand_b; // AND
            3'b011: alu_result = operand_a | operand_b; // OR
            3'b100: alu_result = operand_a ^ operand_b; // XOR
            default: alu_result = 32'd0; // Default case
        endcase
    end

    assign zero = (alu_result == 32'd0);
endmodule
