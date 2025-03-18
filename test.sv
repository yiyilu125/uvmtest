/*====================================
File name: our_test.sv
Date created: 17 March 2025
Description: test component
====================================*/

class our_test extands uvm_test;

    //register our class with factory
    'uvm_component_utils(our_test); //test is a component so use 'uvm_componenet_utils

    //constructor
    function new(string name = "our_test", uvm_component parent=null);
        super new(name, parent);
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