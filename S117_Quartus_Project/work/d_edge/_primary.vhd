library verilog;
use verilog.vl_types.all;
entity d_edge is
    port(
        x               : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        y_rise          : out    vl_logic
    );
end d_edge;
