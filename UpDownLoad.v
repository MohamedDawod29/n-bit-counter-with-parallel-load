
module UpDownLoad	
						#(parameter n = 4)
						(
						input clk,reset_n,up_Down_n,load,
						input [n-1:0] D,
						output reg [n-1:0] Q
						);
						
						
						always @ (posedge clk , negedge reset_n)
						begin
							if (up_Down_n)
								Q <= 0;
							else
								Q <= {n{1'b1}};
							if (~reset_n)
								Q <= 0;
							else 
							 begin
							  casex ({load,up_Down_n})
								 2'b00: Q <= Q - 1;
								 2'b01: Q <= Q + 1;
								 2'b1x: Q <= D;
								 default : Q <= Q;
							  endcase
							 end
						end
endmodule 