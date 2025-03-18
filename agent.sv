/*====================================
File name: agent.sv
Date created: 18 March 2025
Description: agent component
====================================*/

class our_agent extends uvm_agent;
    //register in the factory 
    'uvm_component_utils(our_agent);

    //instantiate classes
    our_sequencer sequencer;
    our_driver driver;
    our_monitor monitor;

    //constructor
    function new(string name = "our_agent", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    //build phase: happened in zero simulation time
    function void build_phase(uvm_phase phase);
        //build other component
        //build sequencer, driver, and monitor
        sequencer = our_sequencer::type_id::create("sequencer", this);
        driver = our_driver::type_id::create("driver", this);
        monitor = our_monitor::type_id::create("monitor", this);
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