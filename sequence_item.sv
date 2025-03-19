/*====================================
File name: sequence_item.sv
Date created: 18 March 2025
Description: sequence_item component
====================================*/

class our_packet extends uvm_sequence_item;

    //register in the factory, its object so use this syntax
    'uvm_object_utils(our_project);

    /*
    in the Transaction Level Modeling: the initiaor always send the request
    first to the target, then the target reponse!!!
    */
    //request
    rand bit [7:0] input_1;
    rand bit [7:0] input_2;

    //response
    bit [15:0] output_3;

    //constructor
    function new(string name = "our_packet");
        super.new(name);
        
    endfunction

endclass