/*====================================
File name: env.sv
Date created: 18 March 2025
Description: env component
====================================*/

class our_env extends uvm_env;

    //register in the factory
    'uvm_component_utils(our_env);

    //instantiate class
    our_agent agent;

    //constructor
    function new(string name = "our_env", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    //build phase
    function void build_phase(uvm_phase phase);
        //build other component
        //build agent class
        agent = our_agent::type_id::create("agent", this);
    endfunction 

    //connect phase 
    function void connect_phase(uvm_phase phase);
        //connect necesary connections
    endfunction

    //run phase
    task run_phase(uvm_phase phase);
        //main logic
    endtask
endclass