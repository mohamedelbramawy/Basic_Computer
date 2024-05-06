module PC(Q, INR, Data, LD, CLK, CLR);

	output reg [11:0] Q;
	input [11:0] Data;
	input INR, LD, CLK, CLR;
	
   initial
    begin 
    Q = 12'h000;
    end 
	always @(posedge CLK)
		begin
			if(CLR)
				Q = 12'h000;
			else if(LD)
				Q = Data;
			else if ( INR == 1)
			    Q = Q+1;
		end	
		
endmodule