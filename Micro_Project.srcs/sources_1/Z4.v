module AC(Q, INR, Data, LD, CLK, CLR);

	output reg [15:0] Q;
	input [15:0] Data;
	input INR, LD, CLK, CLR;
	
   initial
    begin 
    Q = 16'h0000;
    end 
	always @(posedge CLK)
		begin
			if(CLR)
				Q = 16'b0;
			else if(LD)
				Q = Data;
			else if (INR)
			    Q = Q+1;
		end	
		
endmodule
