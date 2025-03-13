LIBRARY IEEE;
USE IEEE.Std_logic_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY creadBuffer IS
    PORT (
        writeClk : IN STD_LOGIC;
        readClk  : IN STD_LOGIC;

        dataIn       : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        writeAddress : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
        writeEnable  : IN STD_LOGIC;

        dataOut     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        readAddress : IN STD_LOGIC_VECTOR(8 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE Behavioral OF creadBuffer IS
    TYPE ramType IS ARRAY (0 TO 511) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL readBufferRAM : ramType;

    SIGNAL dataOutReg : STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN
    -- write process
    PROCESS (writeClk)
    BEGIN
        IF falling_edge(writeClk) THEN
            IF writeEnable = '1' THEN
                readBufferRAM(to_integer(unsigned(writeAddress))) <= dataIn;
            END IF;
        END IF;
    END PROCESS;

    -- read process
    PROCESS (readClk)
    BEGIN
        IF rising_edge(readClk) THEN
            dataOutReg <= readBufferRAM(to_integer(unsigned(readAddress)));
        END IF;
    END PROCESS;

    dataOut <= dataOutReg;

END Behavioral;