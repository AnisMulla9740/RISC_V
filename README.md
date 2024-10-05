**Overview**
This project implements a RISC-V processor using Verilog. The processor is designed as a modular system with key components responsible for various stages of instruction execution. The design includes ALU, control logic, instruction fetching, datapath, and memory handling modules. This project also provides a testbench to simulate and verify the functionality of the processor.

**File Structure**
The project contains the following main files:

**ALU (alu.v)**
The Arithmetic Logic Unit (ALU) is responsible for performing arithmetic and logical operations. It supports basic operations such as addition, subtraction, AND, OR, etc., as specified by RISC-V instructions.

**Instruction Fetch Unit (ifu.v)**
The Instruction Fetch Unit (IFU) fetches instructions from the instruction memory. It controls the program counter (PC) and handles the sequential flow of instructions.

**Control Unit (control.v)**
The Control Unit decodes the opcode from the instruction and generates the necessary control signals to drive other parts of the processor, such as the ALU and register file.

**Datapath (datapath.v)**
The Datapath contains the various registers, ALU, control signals, and data flow for executing instructions. It manages the flow of data between the ALU, register file, and memory.

**Instruction Memory (instruction_memory.v)**
The Instruction Memory stores the program instructions. It is read-only and delivers instructions to the IFU based on the program counter's value.

**Processor (processor.v)**
This is the top-level module that integrates all the components of the RISC-V processor. It connects the control unit, datapath, instruction memory, and ALU to form a complete working processor.

**Processor Testbench (processor_tb.v)**
The Testbench is used to simulate the RISC-V processor. It provides test inputs to the processor and checks the output for correctness. This is crucial for verifying the processor's functionality through simulation.

**Register File (regfile.v)**
The Register File contains the general-purpose registers used in the processor. It supports read and write operations and provides data to the datapath during instruction execution.


**Future Enhancements**

**Data Memory:** Currently, the design only includes instruction memory. Data memory can be added to handle load and store instructions.

**Pipeline Stages:** This implementation is single-cycle. In the future, pipelining can be added to improve performance.

**More Instructions:** Support for more complex instructions can be added to the ALU and control unit.
