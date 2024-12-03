//seven segment
//inputs are Q (Q3, Q2, Q1, Q0)
//outputs are A (A0 to A6) and B (B0 to B6) to match your table
//the case statement allows you to perform different operations based on your input

module sevenSeg(input [3:0]Q, output reg [0:6] A, output reg [0:6] B);
	always @(Q) begin		//anytime the input Q changes
		case (Q)
		
		//abcdefg
		//this is dumb!!
			0: begin                //to display a 0
				A = 7'b1111111;       //A should be 1111111 (from your table) to turn off display
				B = 7'b0000001;       //B should be 0000001 (from your table) to display a 0
				end
			1: begin                //to display a 1
				A = 7'b1111111;       //A should be 1111111 (from your table) to turn off display
				B = 7'b1001111;       //B should be 1001111 (from your table) to display a 1
				end
			2: begin                //to display a 2
				A = 7'b1111111;       //A should be 1111111 (from your table) to turn off display
				B = 7'b0010010;       //B should be 0010010 (from your table) to display a 2
				end
			3: begin
				A = 7'b1111111;
				B = 7'b0000110;
				end
			4: begin
				A = 7'b1111111;
				B = 7'b0100100;
				end
			5: begin
				A = 7'b1111111;
				B = 7'b0100100;
				end
			6: begin
				A = 7'b1111111;
				B = 7'b0100000;
				end
			7: begin
				A = 7'b1111111;
				B = 7'b0100100;
				end
			8: begin
				A = 7'b1111111;
				B = 7'b0100100;
				end
			9: begin
				A = 7'b1111111;
				B = 7'b0000100;
				end
			10: begin
				A = 7'b1001111;
				B = 7'b1111111;
				end
			11: begin
				A = 7'b1001111;
				B = 7'b1001111;
				end
			12: begin
				A = 7'b1001111; //1
				B = 7'b0010010; //2
				end
			13: begin
				A = 7'b1001111; //1
				B = 7'b0000110; //3
				end
			14: begin
				A = 7'b1001111; //1
				B = 7'b0100100; //4
				end
			15: begin
				A = 7'b1001111; //1
				B = 7'b0100100; //5
				end
				
//			default : 
//				A = 7'b1111111;
//				B = 7'b1111111;
			//put in the remaining cases for 3 to 15
				
		endcase
	end
endmodule 	