library verilog;
use verilog.vl_types.all;
entity SPI is
    port(
        MOSI            : in     vl_logic;
        clk             : in     vl_logic;
        SCK             : in     vl_logic;
        CS              : in     vl_logic;
        MISO            : out    vl_logic;
        DATR            : out    vl_logic;
        datr_clr        : in     vl_logic;
        tx_load_data    : in     vl_logic_vector(7 downto 0);
        tx_load_ctrl    : in     vl_logic;
        rx_read_data    : out    vl_logic_vector(7 downto 0)
    );
end SPI;
