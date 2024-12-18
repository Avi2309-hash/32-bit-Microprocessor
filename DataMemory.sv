module DataMemory (
    input logic clk, write_enable,
    input logic [31:0] address, write_data,
    output logic [31:0] read_data
);
    logic [31:0] memory [0:255]; // 256 words of memory

    always_ff @(posedge clk) begin
        if (write_enable)
            memory[address] <= write_data;
    end

    assign read_data = memory[address];
endmodule
