
module Control_Unit(t,D,I,B,clk,AC,E,DR,LD_AR,INC_AR,LD_PC,INC_PC,LD_DR,INC_DR,
LD_AC,CLR_AC,INC_AC,LD_IR,CLR_Sec,Write,Read,And,Add,LDA,E_clr,CMA,CME,CIR,CIL

    );
    
 input clk;
 input [11:0] B;
 input [15:0] AC;
 input [15:0] DR;
 input [7:0] t;
 input I,E;
 input [7:0] D;
 output reg LD_AR,INC_AR,LD_PC,INC_PC,LD_DR,INC_DR,LD_AC,CLR_AC,INC_AC,LD_IR,CLR_Sec,Write,Read,
 And,Add,E_clr,CMA,CME,CIR,CIL,LDA;  
 wire r = ~I && D[7] && ( t[3]);
 
 

 initial 
 begin 
  LD_AR <= 1'b0;
 INC_AR=  1'b0;
 LD_PC=  1'b0;
 INC_PC=  1'b0;
 LD_DR=  1'b0;
 INC_DR=  1'b0;
 LD_AC=  1'b0;
 CLR_AC=  1'b0;
 INC_AC =  1'b0;
 LD_IR =  1'b0;
 CLR_Sec =  1'b0;
 Write=  1'b0;
  Read =  1'b0;
  And =  1'b0;
  Add=  1'b0;
  E_clr=  1'b0;
  CME = 1'b0;
 CMA=  1'b0;   
 CIL=  1'b0;
  CIR=  1'b0;
  LDA = 1'b0;
 end 
 
 always @(t)
 
 
 

 
 if (t[0] )
 begin 
  LD_AR = 1'b1;
  
 INC_AR=  1'b0;
 LD_PC=  1'b0;
 INC_PC=  1'b0;
 LD_DR=  1'b0;
 INC_DR=  1'b0;
 LD_AC=  1'b0;
 CLR_AC=  1'b0;
 INC_AC =  1'b0;
 LD_IR =  1'b0;
 CLR_Sec =  1'b0;
 Write=  1'b0;
  Read =  1'b0;
  And =  1'b0;
  Add=  1'b0;
  E_clr=  1'b0;
  CME = 1'b0;
 CMA=  1'b0;   
 CIL=  1'b0;
  CIR=  1'b0;
  LDA = 1'b0;
 end 
 
 else if (t[1])
 begin 
 LD_IR =  1'b1;
 INC_PC=  1'b1;
  Read =  1'b1;
 
 
  LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
INC_AC =  1'b0;
CLR_Sec =  1'b0;
Write=  1'b0;

 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
 end 
 
 else if (t[2] )
 begin 
 LD_AR <= 1'b1;
 
 
 
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
CLR_Sec =  1'b0;
Write=  1'b0;
 Read =  1'b0;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
 end 
 
 else if (~D[7] && I && t[3])
 begin 
 LD_AR <= 1'b1;
 Read =  1'b1;
 
 
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
CLR_Sec =  1'b0;
Write=  1'b0;
 
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
 end 
 
 
else if  (D[0] && t[4])
begin 
LD_DR=  1'b1;


 LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;

INC_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
CLR_Sec =  1'b0;
Write=  1'b0;
 Read =  1'b1;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
end 

else if ( D[0] && t[5] )
begin 
And =  1'b1;
CLR_Sec =  1'b1;



 LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b1;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
Write=  1'b0;
 Read =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
end 


else if ( D[1] && t[4])
begin 
LD_DR=  1'b1;


 LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
CLR_Sec =  1'b0;
Write=  1'b0;
 Read =  1'b1;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
end 

else if (D[1] && t[5])
begin 

Add=  1'b1;
CLR_Sec =  1'b1;
 LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b1;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
Write=  1'b0;
 Read =  1'b0;
 And =  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
end 


else if ( D[2] && t[4])
begin 
LD_DR=  1'b1;


 LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
CLR_Sec =  1'b0;
Write=  1'b0;
 Read =  1'b1;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
end 

else if ( D[2] && t[5])
begin 
LDA = 1'b1;
 LD_AR <= 1'b0;
CLR_Sec =  1'b1;




INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b1;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
Write=  1'b0;
 Read =  1'b0;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;

end 


else if ( D[3] && t[4])
begin 
Write=  1'b1;
CLR_Sec =  1'b1;


 LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
 Read =  1'b0;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
end 

else if ( D[4] && t[4])
begin 
LD_PC=  1'b1;
CLR_Sec =  1'b1;


 LD_AR <= 1'b0;
INC_AR=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
Write=  1'b0;
 Read =  1'b0;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
end 

else if ( D[5] && t[4] )
begin 
Write=  1'b1;
INC_AR=  1'b1;

 LD_AR <= 1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
CLR_Sec =  1'b0;
 Read =  1'b0;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
end 

else if ( D[5] && t[5] )
begin 
LD_PC=  1'b1;
CLR_Sec =  1'b1;

 LD_AR <= 1'b0;
INC_AR=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
Write=  1'b0;
 Read =  1'b0;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
end 

else if ( D[6] && t[4] )
begin 
LD_DR=  1'b1;

 LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
CLR_Sec =  1'b0;
Write=  1'b0;
 Read =  1'b1;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
end 

else if ( D[6] && t[5] )
begin
INC_DR=  1'b0; 
 LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
CLR_Sec =  1'b0;
Write=  1'b0;
Read =  1'b0;
And =  1'b0;
Add=  1'b0;
E_clr=  1'b0;
CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
CIR=  1'b0;
LDA = 1'b0;
end 

else if ( D[6] && t[6] )
begin 
Write=  1'b1;
    if (DR == 0)
    begin 
     INC_PC=  1'b0;
    end 
 CLR_Sec =  1'b1;
 
 
  LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
 Read =  1'b0;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
end 



else if ( r && B[11])
begin 
CLR_AC=  1'b1;

 LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
CLR_Sec =  1'b1;
Write=  1'b0;
 Read =  1'b0;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
end 


else if ( r && B[10])
begin 
E_clr = 1'b1;

LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
CLR_Sec =  1'b1;
Write=  1'b0;
 Read =  1'b0;
 And =  1'b0;
 Add=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;

end 



else if ( r && B[9])
begin 
CMA = 1'b1;
LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b1;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
CLR_Sec =  1'b1;
Write=  1'b0;
 Read =  1'b0;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0; 
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
end 



else if ( r && B[8])
begin 
CME = 1'b1;
LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
CLR_Sec =  1'b1;
Write=  1'b0;
 Read =  1'b0;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
end 


else if ( r && B[7])
begin 
CIR = 1'b1;
LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b1;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
CLR_Sec =  1'b1;
Write=  1'b0;
 Read =  1'b0;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 LDA = 1'b0;
end 



else if ( r && B[6])
begin 
CIL = 1'b1;

LD_AR <= 1'b0;
INC_AR=  1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b1;
CLR_AC=  1'b0;
INC_AC =  1'b0;
LD_IR =  1'b0;
CLR_Sec =  1'b1;
Write=  1'b0;
 Read =  1'b0;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
 CIR=  1'b0;
 LDA = 1'b0;
end 



else if ( r && B[5])
begin 
INC_AC =  1'b1;
LD_AR = 1'b0;
LD_PC=  1'b0;
INC_PC=  1'b0;
LD_DR=  1'b0;
INC_DR=  1'b0;
LD_AC=  1'b0;
CLR_AC=  1'b0;
LD_IR =  1'b0;
CLR_Sec =  1'b1;
Write=  1'b0;
 Read =  1'b0;
 And =  1'b0;
 Add=  1'b0;
 E_clr=  1'b0;
 CME = 1'b0;
CMA=  1'b0;   
CIL=  1'b0;
 CIR=  1'b0;
 LDA = 1'b0;
end 


else if ( r && B[4])
begin 
    if (AC[15] == 0)
   begin 
    INC_PC=  1'b1;
     CLR_Sec =  1'b1;
   end 
   else 
   begin 
   LD_AR <= 1'b0;
   INC_AR=  1'b0;
   LD_PC=  1'b0;
   INC_PC=  1'b0;
   LD_DR=  1'b0;
   INC_DR=  1'b0;
   LD_AC=  1'b0;
   CLR_AC=  1'b0;
   INC_AC =  1'b0;
   LD_IR =  1'b0;
   CLR_Sec =  1'b1;
   Write=  1'b0;
    Read =  1'b0;
    And =  1'b0;
    Add=  1'b0;
    E_clr=  1'b0;
    CME = 1'b0;
   CMA=  1'b0;   
   CIL=  1'b0;
    CIR=  1'b0;
    LDA = 1'b0;
   
   end 
end 


else if ( r && B[3])
begin 
 if (AC[15] == 0)
   begin 
    INC_PC=  1'b1;
     CLR_Sec =  1'b1;
   end 
   else 
   begin 
   LD_AR <= 1'b0;
   INC_AR=  1'b0;
   LD_PC=  1'b0;
   INC_PC=  1'b0;
   LD_DR=  1'b0;
   INC_DR=  1'b0;
   LD_AC=  1'b0;
   CLR_AC=  1'b0;
   INC_AC =  1'b0;
   LD_IR =  1'b0;
   CLR_Sec =  1'b1;
   Write=  1'b0;
    Read =  1'b0;
    And =  1'b0;
    Add=  1'b0;
    E_clr=  1'b0;
    CME = 1'b0;
   CMA=  1'b0;   
   CIL=  1'b0;
    CIR=  1'b0;
    LDA = 1'b0;
    end 
end 


else if ( r && B[2])
begin 
     if (AC == 0)
   begin 
    INC_PC=  1'b1;
     CLR_Sec =  1'b1;
   end 
   else 
   begin 
   LD_AR <= 1'b0;
   INC_AR=  1'b0;
   LD_PC=  1'b0;
   INC_PC=  1'b0;
   LD_DR=  1'b0;
   INC_DR=  1'b0;
   LD_AC=  1'b0;
   CLR_AC=  1'b0;
   INC_AC =  1'b0;
   LD_IR =  1'b0;
  
   Write=  1'b0;
    Read =  1'b0;
    And =  1'b0;
    Add=  1'b0;
    E_clr=  1'b0;
    CME = 1'b0;
   CMA=  1'b0;   
   CIL=  1'b0;
    CIR=  1'b0;
    LDA = 1'b0;
    end 
end 


else if ( r && B[1])
begin 
    if (E == 0)
   begin 
    INC_PC=  1'b1;
   end 
   else 
   begin 
   LD_AR <= 1'b0;
   INC_AR=  1'b0;
   LD_PC=  1'b0;
   INC_PC=  1'b0;
   LD_DR=  1'b0;
   INC_DR=  1'b0;
   LD_AC=  1'b0;
   CLR_AC=  1'b0;
   INC_AC =  1'b0;
   LD_IR =  1'b0;
   CLR_Sec =  1'b1;
   Write=  1'b0;
    Read =  1'b0;
    And =  1'b0;
    Add=  1'b0;
    E_clr=  1'b0;
    CME = 1'b0;
   CMA=  1'b0;   
   CIL=  1'b0;
    CIR=  1'b0;
    LDA = 1'b0;
    end 
end 
 
else 
begin 
 LD_AR <= 1'b0;
  INC_AR=  1'b0;
  LD_PC=  1'b0;
  INC_PC=  1'b0;
  LD_DR=  1'b0;
  INC_DR=  1'b0;
  LD_AC=  1'b0;
  CLR_AC=  1'b0;
  INC_AC =  1'b0;
  LD_IR =  1'b0;
  CLR_Sec =  1'b0;
  Write=  1'b0;
   Read =  1'b0;
   And =  1'b0;
   Add=  1'b0;
   E_clr=  1'b0;
   CME = 1'b0;
  CMA=  1'b0;   
  CIL=  1'b0;
   CIR=  1'b0;
   LDA = 1'b0;

end


endmodule
