library verilog;
use verilog.vl_types.all;
entity divider is
    generic(
        N               : integer := 10
    );
    port(
        divdend         : in     vl_logic_vector;
        divisor         : in     vl_logic_vector;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        result          : out    vl_logic_vector;
        remainder       : out    vl_logic_vector;
        ready           : out    vl_logic;
        div_done        : out    vl_logic;
        start           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end divider;
