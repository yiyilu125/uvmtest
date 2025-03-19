/*====================================
File name: driver.sv
Date created: 18 March 2025
Description: driver component
====================================*/

class our_driver extends uvm_driver;

    //register in factory
    'uvm_component_utils(our_driver);

    our_interface intf(); //instantiate the interface

    //constructor
    function new(string name = "our_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    //build phase: happened in zero simulation time
    function void build_phase(uvm_phase phase);
        //build other component
        //get interface
        uvm_config_db #(virtual our_interface)::get(null, "*", "intf", intf);
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
