module GeneralPurposeRegister (
    input logic clk, reset, write_enable,
    input logic [4:0] address_in, // 32 registers, 5-bit address
    input logic [31:0] data_in,
    output logic [31:0] data_out
);
    logic [31:0] registers [0:31]; // 32 general-purpose registers

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            for (int i = 0; i < 32; i++)
                registers[i] <= 32'd0;
        end else if (write_enable) begin
            registers[address_in] <= data_in;
        end
    end

    assign data_out = registers[address_in];
endmodule
