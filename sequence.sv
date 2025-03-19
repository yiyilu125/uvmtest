/*====================================
File name: sequence.sv
Date created: 18 March 2025
Description: sequence component
====================================*/

class our_sequence extends uvm_sequence;
    //register to factory
    'uvm_object_utils(our_sequence);

    //constructor
    function new(string name = "our_sequence");
        super.new(name);
    endfunction

    task body();

    endtask
endclass