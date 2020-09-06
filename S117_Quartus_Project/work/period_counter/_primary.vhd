library verilog;
use verilog.vl_types.all;
entity period_counter is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        rdy             : out    vl_logic;
        start           : in     vl_logic;
        rise_edg        : in     vl_logic;
        count_ms        : out    vl_logic_vector(3 downto 0);
        count_ns        : out    vl_logic_vector(15 downto 0);
        pc_done_tick    : out    vl_logic
    );
end period_counter;
