/*====================================
File name: driver.sv
Date created: 18 March 2025
Description: driver component
====================================*/

class our_driver extends uvm_driver #(our_packet);

    //register in factory
    'uvm_component_utils(our_driver);

    our_packet pkt;

    our_interface intf; //instantiate the interface

    //constructor
    function new(string name = "our_driver", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    //build phase: happened in zero simulation time
    function void build_phase(uvm_phase phase);
        //build other component
        pkt = our_packet::type_id::create("Our packet"); //!!!!!!!!!!!!!!!!!!!may not need!!!!!!!!!!!!!!!
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
            forever begin
                @(posedge intf.clk)
                    seq_item_port.get_next_item(pkt);

                    intf.input_1 <= pkt.input_1; //send data from transaction to the interface to DUT
                    intf.input_2 <= pkt.input_2;
                    seq_item_port.item_done();
            end
    endtask
endclass
