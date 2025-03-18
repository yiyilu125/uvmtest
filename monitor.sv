/*====================================
File name: monitor.sv
Date created: 18 March 2025
Description: monitor component
====================================*/
class our_monitor extends uvm_monitor;

    //register in factory
    'uvm_component_utils(our_monitor);

    //constructor
    function new(string name = "our_monitor", uvm_component parent = null);
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