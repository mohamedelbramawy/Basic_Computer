`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2024 10:01:22 AM
// Design Name: 
// Module Name: Main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Main();
    
   reg clk=0;
   always #5 clk = ~clk;
    
    
       wire [15:0] ALU_out;
       wire [15:0]Common_bus_out ;
      
      
     // Sequence counter 
       wire [2:0] SC_out;
       wire SC_clr;
       SC seq (clk,SC_clr,SC_out);
       
       // Timing decoder
        wire [7:0] T;
        Decoder  dec (SC_out,T);
      
     
     
     // Accumulator
        wire [15:0] AC_out;
        wire INR_AC, Load_AC, CLR_AC; 
        AC AC_Reg(AC_out,INR_AC, ALU_out, Load_AC, clk, CLR_AC);
        
        // Data Register
           wire [15:0] DR_out;
           wire INR_DR, Load_DR, CLR_DR; 
           DR DR_Reg(DR_out,INR_DR, Common_bus_out, Load_DR, clk, CLR_DR);
       
       // E Flag 
         wire E_clr ;
         wire E_cmp;
         wire E_out;
         wire ALU_E_out;
        E_Flag EFlag (ALU_E_out,clk,E_cmp,E_clr,E_out);
        
        
        
       // Instruction Register
         wire [15:0] IR_out;
         wire LD_IR;
         wire I_flag = IR_out[15];
       IR IR_Reg (IR_out,Common_bus_out,LD_IR,clk);
         
        // Addres  Register
          wire [11:0] AR_out;
          wire INR_AR, Load_AR, CLR_AR; 
          AR AR_Reg(AR_out,INR_AR, Common_bus_out [11:0], Load_AR, clk, CLR_AR);  
        
        
        // program counter
           wire [11:0] PC_out;   
           wire INR_PC, Load_PC, CLR_PC; 
           PC PC_Reg(PC_out,INR_PC, Common_bus_out [11:0], Load_PC, clk, CLR_PC);
         
        // RAM
               wire [15:0] MEM_out;   
               wire MEM_read,MEM_write;
             Memory MEM (clk,AR_out,Common_bus_out ,MEM_read,MEM_write,MEM_out);
           
        // op code decoder
              wire  [7:0] D ;   
              Decoder d (IR_out[14:12] ,D);
              
     
      // ALU
           wire ADD,AND,LDA,CIR,CIL,CMA;
           ALU ALU_P (AC_out,DR_out ,E_out,ALU_out,ADD,AND,LDA,CIR,CIL,CMA,clk,ALU_E_out);
       
       
       // Control source   
          wire [7:0] OUT_CS;
         Control_Source cs (IR_out[15],T,D,clk,OUT_CS);
        
       
      
        
    // Common bus
             
    Common_Bus CB (OUT_CS[7:0],MEM_out,AC_out,DR_out,PC_out,AR_out,IR_out,Common_bus_out,clk,T );
        
        
       
        
     // Contorl Unit   
    Control_Unit CU (T,D,IR_out[15],IR_out[11:0],clk,AC_out,E_out,DR_out,Load_AR,INR_AR,Load_PC,INR_PC,Load_DR,INR_DR,Load_AC,CLR_AC,INR_AC,LD_IR,SC_clr,MEM_write,MEM_read
    , AND,ADD,LDA,E_clr,CMA,E_cmp,CIR,CIL);
        
     
        
endmodule
