/*====================================
File name: top.sv
Date created: 17 March 2025
Description: top of the uvm
====================================*/

'include "uvm_macros.svh" //files contains basic macros used in testbench 

import uvm_pkg::*;  /*factory package contains basic 
                    component classes like: test, env, agent, sequencor, driver, monitor...
                    object classes like: sequence, sequence item, packet
                    */

module  top ();
    our_design uut(); //instantiate our deisgn

    our_interface intf(); //instantiate our interface

    //set the interface
    initial begin
        //set
        uvm_config_db #(virtual our_interface)::set(null, "*", "intf", intf);
    end

    initial begin
        run_test("our_test");
    end
endmodule