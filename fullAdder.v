`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module full_adder_struc_tb;

wire t_out_sum, t_out_carry;
reg t_a, t_b, t_c;
full_adder_struc uut(.a(t_a), .b(t_b), .c_in(t_c), .sum(t_out_sum), .c_out(t_out_carry));
initial
begin // 1 
t_a = 1'b0; 
t_b = 1'b0; 
t_c = 1'b0;
#5 //2 
t_a = 1'b0; 
t_b = 1'b0; 
t_c = 1'b1;
#5 //3 
t_a = 1'b0; 
t_b = 1'b1; 
t_c = 1'b0;
#5 //4 
t_a = 1'b0; 
t_b = 1'b1; 
t_c = 1'b1;
#5 //5 
t_a = 1'b1; 
t_b = 1'b0; 
t_c = 1'b0;
#5 //6 
t_a = 1'b1; 
t_b = 1'b0; 
t_c = 1'b1;
#5 //7 
t_a = 1'b1; 
t_b = 1'b1; 
t_c = 1'b0;
#5 //8
t_a = 1'b1; 
t_b = 1'b1; 
t_c = 1'b1;
end

endmodule 
