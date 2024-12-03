`timescale 1ns / 1ns
`include "sevenSeg.v"
`include "adder.v"

module sevenSeg_tb;

    // Inputs
    reg [3:0] Q;
    reg [7:0] input1;
    reg [7:0] input2;
    reg [1:0] opcode;

    // Outputs
    wire [6:0] A;
    wire [6:0] B;
    wire [7:0] result;

    // Instantiate the Test 
    sevenSeg sevenSeg_test (
        .Q(Q),
        .A(A),
        .B(B)
    );

    adder adder_test (
        .result(result),
        .input1(input1),
        .input2(input2),
        .opcode(opcode)
    );

    // Test sequence

    // Store reg from wire
    // https://stackoverflow.com/questions/29628469/how-to-store-input-into-reg-from-wire-in-verilog
    // When the adder module caculate the result the value is passed into the Q reg.
    // Once value is in Q reg output Reg A and B are assigned values from swich case.
    always @(result) begin
        Q <= result;
    end

    initial begin
        // Initialize inputs
        // #<number> time step
        Q = 4'b0000;
        #0 input1 = 2; input2 = 5; opcode = 1;
        #10 input1 = 5; input2 = 8; opcode = 1;
        #10 input1 = 5; input2 = 5; opcode = 1;
        #10 $finish;
    end

    // initial begin       
    //     #10 input1 = 1; input2 = 3; opcode = 1;
    // end

    // print outputs for debugging
    initial begin
        $monitor("Time: ", $time, "\t Input_1: ", input1, "\t Input_2: ", input2, "\t Opcode: ", opcode, "\t Result:", result , "\t-> A: %b B: %b", A, B);
        //$monitor("Time: %d, Q: %b -> A: %b, B: %b", $time, Q, A, B);
        $dumpfile("sevenSeg.vcd");
        $dumpvars(0, sevenSeg_tb);
    end


endmodule


// #10 Q = 4'b0000; // 0
        // #10 Q = 4'b0001; // 1
        // #10 Q = 4'b0010; // 2
        // #10 Q = 4'b0011; // 3
        // #10 Q = 4'b0100; // 4
        // #10 Q = 4'b0101; // 5
        // #10 Q = 4'b0110; // 6
        // #10 Q = 4'b0111; // 7
        // #10 Q = 4'b1000; // 8
        // #10 Q = 4'b1001; // 9
        // #10 Q = 4'b1010; // 10
        // #10 Q = 4'b1011; // 11
        // #10 Q = 4'b1100; // 12
        // #10 Q = 4'b1101; // 13
        // #10 Q = 4'b1110; // 14
        // #10 Q = 4'b1111; // 15  
        // End simulation