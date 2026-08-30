Divide-by-8 Clock Divider – Vivado Simulation

Aim

To design and simulate a divide-by-8 clock divider using flip-flops and verify its output waveform using Xilinx Vivado.

Software Used

Xilinx Vivado 2026.1
Verilog HDL
Description

A clock divider reduces the frequency of an input clock signal.

In this design, three flip-flop stages are connected in cascade. Each flip-flop divides the input frequency by 2.

Therefore:

Input clock → Q1 → Q2 → Q3

The final output Q3 provides a divide-by-8 frequency.

Frequency Calculation

Input clock frequency:

f_in = 100 MHz

After first flip-flop:

f_Q1 = 100/2 = 50 MHz

After second flip-flop:

f_Q2 = 50/2 = 25 MHz

After third flip-flop:

f_Q3 = 25/2 = 12.5 MHz

Therefore:

f_out = f_in / 8

f_out = 100 MHz / 8

f_out = 12.5 MHz

Simulation

The design was simulated using Vivado Behavioral Simulation.

The waveform shows:

clk – input clock
reset – reset signal
q1 – divide-by-2 output
q2 – divide-by-4 output
q3 – divide-by-8 output
Simulation Result

The simulated output confirms that the final output q3 has one-eighth of the input clock frequency.

Result

The divide-by-8 clock divider was successfully designed, synthesized, and simulated in Vivado.

The final output frequency is:

12.5 MHz
