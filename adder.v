module adder(output reg [7:0]result, input [7:0]input1, input2, input [1:0]opcode);
    always@(input1 or input2 or opcode)

begin
    if(opcode == 0) begin
        result = 0; //no op
    end
        else if(opcode == 1) begin //addition
            result = input1 + input2;
    end
        if(opcode == 2) begin //subtraction4
            result = input1 - input2;
    end
end
endmodule
