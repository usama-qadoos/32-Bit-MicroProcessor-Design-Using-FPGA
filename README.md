# 32-Bit-MicroProcessor-Design-Using-FPGA
**Assignment Status:**
Assignment is fully completed and has been tested on FPGA as well as through Timing Waveforms. It’s 
fully pipelined and performs operations on the provided instruction set.
Deliverables completed:
• Our Design can operate on all the instructions provided for Tesbench testing.
• Our Design is effectively pipelined, all outputs and inputs are registered as well as the 
intermediate output
• Our implemented architecture will reset the program counter as well as the program once all 
the instructions in our instructions file (memory.dat file) are executed, so the HEX displays are 
cleared as well as the Registers and program counter is reset.
• Pressing reset at any point in program execution will automatically reset the program counter
and the registers, as well as the HEX displays.

**Description:** 
The project is focused on implementing a pipelined 32-bit microprocessor design based on a provided instruction set. The design follows a standard pipelined architecture, incorporating various modules to handle different aspects of the processor's operation.

At the top level, the project utilizes a Program Counter (PC) module to keep track of the current instruction address. The PC returns a 5-bit value representing the count, which is then passed to the Instruction Queue (IQ) module. The IQ module reads instructions from a memory.dat file based on the value received from the PC. It fetches the instruction pointed to by the PC's 5-bit value and passes it to the Instruction Update (IU) module.

The IU module is responsible for updating the flags associated with the register operands, namely Register A and Register B. These flags are essential for the Register module, as they help determine whether to clear a register, read a value from a specific memory location, or store a value.

The next module in the pipeline is the Decoder module, which dissects the 39-bit instruction and extracts the relevant data based on the instruction type. For example, if the instruction involves storing a value in an address for Register A, the Decoder module extracts the value and address parts and feeds them into the respective registers as outputs. These registers are then used by the Register A and Register B modules to update the register files based on the instruction type and register flags.

Finally, the Arithmetic Logic Unit (ALU) module is instantiated to perform operations on the operands, Register A and Register B, according to the given instruction.

The design also includes mapping certain inputs and outputs. KEY-0 is used as the clock input, and KEY-1 is used for the reset signal. The HEX display is utilized to show the contents of various registers and the ALU's output register. Specifically, HEX0 and HEX1 display Register A, HEX2 and HEX3 display Register B, and HEX4 and HEX5 display the contents of the ALU's output register.

Overall, this project aims to create an efficient pipelined microprocessor design with optimized instruction execution and effective register handling.
**RTL:**
![image](https://github.com/usama-qadoos/32-Bit-MicroProcessor-Design-Using-FPGA/assets/115080912/54411c04-1a94-4842-b030-6d6d1caa8f0e)

**Waveform Simulation:**
Clock Time Period: 10ns
Total Simulation period: 1us
Instructions executed: All 41 instructions provided for the testbench, last instruction will automatically 
reset the whole program, clearing Register A and Register B as well as the ALU output Register and the 
program counter.
Flow of Program: To track the flow of program through simulation, we can inspect the outputs of 
Data_A which represents the contents of Register A and similarly Data_B and the output result after 
operation in the result register. The LEDR displays a flag which shows if the ALU performed any action on 
the two operands i.e., if the instruction required just storing or reading of values in one of the two 
registers. 1 value of this LEDR shows that no operation was performed by ALU i.e., it was a read/write 
instruction and 0 value shows that an operation was performed by ALU and the output is showed in 
‘result’ register.

![image](https://github.com/usama-qadoos/32-Bit-MicroProcessor-Design-Using-FPGA/assets/115080912/95386414-3507-4c3a-a88a-05d615cd9a74)
![image](https://github.com/usama-qadoos/32-Bit-MicroProcessor-Design-Using-FPGA/assets/115080912/404381e1-f044-4eea-8b9c-f6a7dd208555)
![image](https://github.com/usama-qadoos/32-Bit-MicroProcessor-Design-Using-FPGA/assets/115080912/fc34c18e-add6-4af2-a523-93934f73d89d)
![image](https://github.com/usama-qadoos/32-Bit-MicroProcessor-Design-Using-FPGA/assets/115080912/b5cb744c-9c16-432c-9693-e80dfae94d26)
![image](https://github.com/usama-qadoos/32-Bit-MicroProcessor-Design-Using-FPGA/assets/115080912/b90903ec-ef5f-4e62-ad62-add188267abf)
![image](https://github.com/usama-qadoos/32-Bit-MicroProcessor-Design-Using-FPGA/assets/115080912/4a5d86d1-33a7-4525-8c66-ca0411526d76)
![image](https://github.com/usama-qadoos/32-Bit-MicroProcessor-Design-Using-FPGA/assets/115080912/cb63ffc1-8ade-4f5e-a3fe-13d1d2b27d14)
![image](https://github.com/usama-qadoos/32-Bit-MicroProcessor-Design-Using-FPGA/assets/115080912/ae91e37c-1897-42f5-8b77-b8cca0828535)
![image](https://github.com/usama-qadoos/32-Bit-MicroProcessor-Design-Using-FPGA/assets/115080912/e0130da1-e516-4b2b-9755-dad30e075422)
![image](https://github.com/usama-qadoos/32-Bit-MicroProcessor-Design-Using-FPGA/assets/115080912/25888f95-be0e-42da-a845-bcad190e619a)


**FPGA Demo Pictures: **




**Conclusion:**
In this assignment we summed up all the hardware design components into making of a 32-bit 
Microprocessor using the provided instruction set. We were able to demonstrate the concepts 
of pipelining and timed instruction execution and once all the instructions were executed, the 
microprocessor resets and the displays for Register A and Register B as well as the output 
register cleared and starts the execution of program from the start, i.e., the first instruction in
instruction Queue. Furthermore, in our implementation we were able to model our circuit 
design as per our Datapath. We got to see the process of how instructions are executed within 
our microprocessor and how the Arithmetic Logic unit (ALU) operates on two operands.
