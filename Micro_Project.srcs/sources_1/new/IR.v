module IR(Q, Data, LD, CLK);

	output reg [15:0] Q;
	input [15:0] Data;
	input  CLK, LD;
	
   initial
    begin 
    Q = 16'h0000;
    end 
	always @(posedge CLK)
		begin
			 if(LD)
				Q = Data;
		end	
		
endmodule