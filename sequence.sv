/*====================================
File name: sequence.sv
Date created: 18 March 2025
Description: sequence component
====================================*/

class our_sequence extends uvm_sequence;
    //register to factory
    'uvm_object_utils(our_sequence);

    our_packet pkt;

    //constructor
    function new(string name = "our_sequence");
        super.new(name);
    endfunction

    task body();
        pkt = our_packet::type_id::create("Our_packet");

        repeat(10) begin
            start_item(pkt);
            pkt.randomized();
            finish_item(pkt);
        end
    endtask
endclass