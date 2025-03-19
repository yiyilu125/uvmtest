/*====================================
File name: monitor.sv
Date created: 18 March 2025
Description: monitor component
====================================*/
class our_monitor extends uvm_monitor;

    //register in factory
    'uvm_component_utils(our_monitor);

    our_interface intf(); //instantiate the interface

    uvm_analysis_port #(our_packet) mon_port; //instantiate the port

    //constructor
    function new(string name = "our_monitor", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    //build phase: happened in zero simulation time
    function void build_phase(uvm_phase phase);
        //build other component

        //get interface
        uvm_config_db #(virtual our_interface)::get(null, "*", "intf", intf);

        //build port
        mon_port = new("monitor port", this);
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