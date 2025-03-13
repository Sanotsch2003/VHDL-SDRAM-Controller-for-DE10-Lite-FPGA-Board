LIBRARY IEEE;
USE IEEE.Std_logic_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY writeBuffer IS
    PORT (
        writeClk : IN STD_LOGIC;
        readClk  : IN STD_LOGIC;

        dataIn       : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        writeAddress : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
        writeEnable  : IN STD_LOGIC;

        dataOut     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        readAddress : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE Behavioral OF writeBuffer IS
    TYPE ramType IS ARRAY (0 TO 511) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL writeBufferRAM : ramType;

    SIGNAL dataOutReg        : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL readUpperBytesReg : STD_LOGIC;
BEGIN
    -- write process
    PROCESS (writeClk)
    BEGIN
        IF rising_edge(writeClk) THEN
            IF writeEnable = '1' THEN
                writeBufferRAM(to_integer(unsigned(writeAddress))) <= dataIn;
            END IF;
        END IF;
    END PROCESS;

    -- read process
    PROCESS (readClk)
    BEGIN
        IF falling_edge(readClk) THEN
            dataOutReg        <= writeBufferRAM(to_integer(unsigned(readAddress(9 DOWNTO 1))));
            readUpperBytesReg <= readAddress(0);
        END IF;
    END PROCESS;

    PROCESS (dataOutReg, readUpperBytesReg)
    BEGIN
        IF readUpperBytesReg = '0' THEN
            dataOut <= dataOutReg(31 DOWNTO 16);
        ELSE
            dataOut <= dataOutReg(15 DOWNTO 0);
        END IF;
    END PROCESS;
END Behavioral;