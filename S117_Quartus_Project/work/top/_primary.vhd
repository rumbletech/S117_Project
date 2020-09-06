library verilog;
use verilog.vl_types.all;
entity top is
    port(
        \in\            : in     vl_logic;
        clk             : in     vl_logic;
        start           : in     vl_logic;
        rst             : in     vl_logic;
        \out\           : out    vl_logic_vector(15 downto 0);
        out_ns          : out    vl_logic_vector(15 downto 0);
        rdy             : out    vl_logic
    );
end top;
