module tinyALU(
	input clk,
	input reset,
	input [7:0] A,
	input [7:0] B, 
	input  [3:0] ALU_Sel, 
	output  [7:0] ALU_Out, 
	output Carryout
);
	parameter add = 4'b0000, minus = 4'b0001, mult = 4'b0010, divid = 4'b0011;
	
	wire [7:0] r_alu_out;
	wire r_carry_out;
	
	always@(posedg clk) begin
		if(reset == 1) begin
			ALU_Out <= 8'b0;
			Carryout <= 1'b0;
		end else begin
			ALU_Out <= r_alu_out;
			Carryout <= r_carry_out;
		end
	end
	
	always@(*) begin
		case ALU_Sel
			add: begin
				{Carryout, ALU_Out} = A + B;
			end
			minus: begin
				ALU_Out = A - B;
			end
			mult begin
				{Carryout, ALU_Out} = A * B;
			end
			divid: begin
				ALU_Out = A/B;
			end
			default:
				$display("Error!");
				ALU_Out = 8'b0;
				Carryout = 1'b0;
			end
		endcase
	end

endmodule