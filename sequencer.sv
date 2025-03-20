/*====================================
File name: sequencer.sv
Date created: 18 March 2025
Description: sequencer component
====================================*/

class our_sequencer extends uvm_sequencer #(our_packet);

    //register in the factory
    'uvm_component_utils(our_sequencer);

    //constructor
    function new(string name = "our_sequencer", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    //build phase: happened in zero simulation time
    function void build_phase(uvm_phase phase);
        //build other component
    endfunction

    //connect phase: happened in zero simulation time
    function void connect_phase(uvm_phase phase);
        //connect necessary conection
    endfunction

    //run phase: all time consuming statement are here, so task instead of function 
    task run_phase(uvm_phase phase);
            //main logic
    endtask

endclass