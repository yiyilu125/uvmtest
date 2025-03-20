/*====================================
File name: monitor.sv
Date created: 18 March 2025
Description: monitor component
====================================*/
class our_monitor extends uvm_monitor;

    //register in factory
    'uvm_component_utils(our_monitor);

    our_interface intf; //instantiate the interface

    our_packet pkt;

    uvm_analysis_port #(our_packet) mon_port; //instantiate the port

    //constructor
    function new(string name = "our_monitor", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    //build phase: happened in zero simulation time
    function void build_phase(uvm_phase phase);
        //build other component
        pkt = our_packet::type_id::create("Our packet");

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
        forever begin
            $(posedge intf.clk)
                pkt.input_1 <= intf.input_1;
                pkt.input_2 <= intf.input_2;
        end
    endtask
endclass