library verilog;
use verilog.vl_types.all;
entity binarytobcd is
    port(
        \in\            : in     vl_logic_vector(9 downto 0);
        start           : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        result          : out    vl_logic_vector(15 downto 0);
        ready           : out    vl_logic;
        done            : out    vl_logic
    );
end binarytobcd;
