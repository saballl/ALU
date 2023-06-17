module Sabals_ALU_TB;
  
  reg [15:0] out;
  reg [7:0] a, b;
  reg [3:0] select;
  
  // Instantiate the Sabals_ALU module
  Sabals_ALU dut (
    .out(out),
    .in1(a),
    .in2(b),
    .select(select)
  );
  
  // Test input values
  initial begin
    // Initialize input values
    a = 8'd10;
    b = 8'd5;
    select = 4'b0000;
    
    // Delay to observe the output
    #10;
    
    // Test case 1
    select = 4'b0000; // Select input 1
    #10;
    
    select = 4'b0001; // Select input 2
    #10;
    
    select = 4'b0010; // Addition
    #10;
    
    select = 4'b0011; // Subtraction
    #10;
    
    select = 4'b0100; // Division
    #10;
    
    select = 4'b0101; // Modulus
    #10;
    
    select = 4'b0110; // Left shift
    #10;
    
    select = 4'b0111; // Right shift
    #10;
    
    select = 4'b1000; // Conditional assignment (a > b)
    #10;
    
    select = 4'b1001; // Conditional assignment (a == b)
    #10;
    
    select = 4'b1010; // Multiplication
    #10;
    
    select = 4'b1011; // Bitwise AND
    #10;
    
    select = 4'b1100; // Bitwise OR
    #10;
    
    select = 4'b1101; // Bitwise XOR
    #10;
    
    select = 4'b1110; // Concatenation
    #10;
    
    select = 4'b1111; // Average (a + b) / 2
    #10;
    
    $finish; // End simulation
  end
  
  // Display the output value
  always @(select, out) begin
    $monitor("a: %b | b: %b | select: %b | out: %b ",a,b,select,out);
	$dumpfile("counter.vcd");
	$dumpvars(1);
  end
  
endmodule
