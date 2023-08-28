`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2022 19:04:33
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [11:0] BUS_INPUT,
    input clk
    );
    
    
    reg [3:0] A;
    reg [3:0] B;
    
    parameter ADD = 0, SUB = 1, INC = 2, DEC = 3, COMP = 4;
    wire OP_CODE;
    
    assign OP_CODE = BUS_INPUT[11:8];
    
    always @ (BUS_INPUT)
        begin
            A = BUS_INPUT[7:4];
            B = BUS_INPUT[3:0];
        end
    
    always @ (posedge clk)
        begin
            case(OP_CODE)
               ADD: begin
                        A <= A + B;
                    end
               SUB: begin
                        A <= A - B;
                    end
            endcase
        end
    
    
endmodule
