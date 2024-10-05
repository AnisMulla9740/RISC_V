`include "PROCESSOR.v"

module stimulus();
    reg clock;
    reg reset;
    wire zero;
    
    //Instantiating the processor
    PROCESSOR test_processor(clock, reset, zero);
    
    // Apply input stimuli (adjust as needed)
    reg [4:0] read_reg_num1, read_reg_num2, write_reg;
    reg [3:0] alu_control;
    reg regwrite;
    
    initial begin
        $dumpfile("output_wave.vcd");
        $dumpvars(0, stimulus);
    end
    
    initial begin
        reset = 1;
        #50 reset = 0;
        
        // Apply initial values to input signals
        read_reg_num1 = 5'b00001;
        read_reg_num2 = 5'b00010;
        write_reg = 5'b00011;
        alu_control = 4'b0010; // ADD
        regwrite = 1;

    end          
    
    initial begin
        clock = 0;
        forever #20 clock = ~clock;
    end
    
    always @(posedge clock) begin
        // Monitor the zero output
        if (zero) begin
            $display("Zero flag is set");
        end
    end
    
    initial
        #300 $finish;

endmodule
