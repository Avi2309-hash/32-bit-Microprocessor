module InstructionRegister (
    input logic clk, reset, load,
    input logic [31:0] instruction_in,
    output logic [31:0] instruction_out
);
    logic [31:0] instruction_reg;

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            instruction_reg <= 32'd0;
        else if (load)
            instruction_reg <= instruction_in;
    end

    assign instruction_out = instruction_reg;
endmodule
