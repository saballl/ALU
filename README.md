Sabals_ALU
Sabals_ALU is a Verilog module that implements an Arithmetic Logic Unit (ALU) with various arithmetic and logical operations. It takes two 8-bit inputs (in1 and in2) and a 4-bit control signal (select) to perform the desired operation. The result is provided as a 16-bit output (out).

Operations
The Sabals_ALU module supports the following operations based on the select control signal:

select = 0: Output out is equal to input in1.
select = 1: Output out is equal to input in2.
select = 2: Output out is the sum of inputs in1 and in2.
select = 3: Output out is the difference between inputs in1 and in2.
select = 4: Output out is the division of input in1 by in2.
select = 5: Output out is the modulus of input in1 by in2.
select = 6: Output out is the left shift of input in1 by 1 bit.
select = 7: Output out is the right shift of input in1 by 1 bit.
select = 8: Output out is 31 if in1 is greater than in2, otherwise 0.
select = 9: Output out is 31 if in1 is equal to in2, otherwise 0.
select = 10: Output out is the product of inputs in1 and in2.
select = 11: Output out is the bitwise AND of inputs in1 and in2.
select = 12: Output out is the bitwise OR of inputs in1 and in2.
select = 13: Output out is the bitwise XOR of inputs in1 and in2.
select = 14: Output out is the concatenation of inputs in1 and in2.
select = 15: Output out is the average of inputs in1 and in2.
Usage
To use the Sabals_ALU module in your Verilog design, follow these steps:

Download the sabals_alu.v file and add it to your Verilog project directory.

Instantiate the Sabals_ALU module in your design hierarchy, providing the necessary input and output connections.

Example:

verilog
Copy code
Sabals_ALU my_alu (
  .out(alu_out),
  .in1(alu_in1),
  .in2(alu_in2),
  .select(alu_select)
);
Connect appropriate signals to the in1, in2, and select inputs of the ALU module.

Use the out output of the ALU module in your design for further processing or output.

Simulate or synthesize your Verilog design using a compatible tool or simulator.

For a complete example of how to use the Sabals_ALU module, refer to the included Sabals_ALU_TB.v test bench.

Contributing
Contributions to the Sabals_ALU module are welcome! If you find any issues or
