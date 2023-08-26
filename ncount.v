

module nupcount
					#(parameter n = 4)
					(
					input clk,reset_n,
					output reg [n-1:0] Q
					);
					
					
					always @ (posedge clk ,negedge reset_n)
					begin
							if (~reset_n)
								Q <= 'b0;
							else 
							   Q <= Q + 1;
					end 
				 	

endmodule


module ndowncount
					#(parameter n = 4)
					(
					input clk,reset_n,
					output reg [n-1:0] Q
					);
					
					
					always @ (posedge clk ,negedge reset_n)
					begin
							if (~reset_n)
								Q <= {n{1'b1}};
							else 
							   Q <= Q - 1;
					end 
				 	

endmodule
