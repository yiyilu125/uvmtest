/*====================================
File name: agent.sv
Date created: 18 March 2025
Description: agent component
====================================*/

class our_agent extends uvm_agent;
    //register in the factory 
    'uvm_component_utils(our_agent);

    //instantiate classes
    our_sequencer seqr;
    our_driver div;
    our_monitor mon;

    //constructor
    function new(string name = "our_agent", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    //build phase: happened in zero simulation time
    function void build_phase(uvm_phase phase);
        //build other component
        //build sequencer, driver, and monitor
        seqr = our_sequencer::type_id::create("seqr", this);
        div = our_driver::type_id::create("div", this);
        mon = our_monitor::type_id::create("mon", this);
    endfunction

    //connect phase: happened in zero simulation time
    function void connect_phase(uvm_phase phase);
        //connect necessary conection

        //connect the driver and sequencer: driver(port) --> sequencer(export)
        div.seq_item_port.connect(seqr.seq_item_export);
    endfunction

    //run phase: all time consuming statement are here, so task instead of function 
    task run_phase(uvm_phase phase);
            //main logic
    endtask
endclass