library verilog;
use verilog.vl_types.all;
entity reg_file is
    generic(
        reg_size        : integer := 8
    );
    port(
        clk             : in     vl_logic;
        reg_addr        : in     vl_logic_vector(3 downto 0);
        wrd             : in     vl_logic;
        reg_output      : out    vl_logic_vector;
        reg_input       : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of reg_size : constant is 1;
end reg_file;
