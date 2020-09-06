library verilog;
use verilog.vl_types.all;
entity main is
    port(
        tb_reset        : in     vl_logic;
        mclk            : in     vl_logic;
        MOSI            : in     vl_logic;
        SCK             : in     vl_logic;
        CS              : in     vl_logic;
        MISO            : out    vl_logic;
        SEG             : out    vl_logic_vector(7 downto 0);
        DEG             : out    vl_logic_vector(7 downto 0)
    );
end main;
