library verilog;
use verilog.vl_types.all;
entity rising_edg is
    port(
        \in\            : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        rise_edg        : out    vl_logic
    );
end rising_edg;
