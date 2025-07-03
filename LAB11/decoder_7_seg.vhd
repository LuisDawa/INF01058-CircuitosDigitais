library ieee;
use ieee.std_logic_1164.all;

-- Este módulo decodificador converte sinais de controle do elevador
-- em códigos para um display de 7 segmentos.
-- Ele pode ser configurado para exibir o andar atual ou a ação atual.

entity decoder_7_seg is
    port (
        -- Sinais de entrada vindos do Controlador
        andar_atual  : in  std_logic; -- '0' ou '1'
        subir        : in  std_logic;
        descer       : in  std_logic;
        abrir_fechar : in  std_logic;
        
        -- Seletor para escolher qual informação mostrar
        -- '0' = Mostra Andar
        -- '1' = Mostra Ação
        display_select : in std_logic;

        -- Saída de 7 segmentos (ativo em alto)
        -- Mapeamento: (g f e d c b a)
        segmentos_out  : out std_logic_vector(6 downto 0)
    );
end decoder_7_seg;

architecture Behavioral of decoder_7_seg is

    -- Constantes para os códigos dos caracteres para facilitar a leitura.
    -- Formato: "gfedcba"
    constant CODE_0 : std_logic_vector(6 downto 0) := "1111110"; -- 0
    constant CODE_1 : std_logic_vector(6 downto 0) := "0110000"; -- 1
    constant CODE_S : std_logic_vector(6 downto 0) := "1011011"; -- S (parecido com 5)
    constant CODE_d : std_logic_vector(6 downto 0) := "0111101"; -- d
    constant CODE_A : std_logic_vector(6 downto 0) := "1110111"; -- A
    constant CODE_BLANK: std_logic_vector(6 downto 0) := "0000000"; -- Display apagado

begin

    -- Processo combinacional para traduzir as entradas para os segmentos
    process (andar_atual, subir, descer, abrir_fechar, display_select)
    begin
        if display_select = '0' then
            -- LÓGICA PARA O DISPLAY DE ANDAR
            if andar_atual = '0' then
                segmentos_out <= CODE_0;
            else -- andar_atual = '1'
                segmentos_out <= CODE_1;
            end if;
        else
            -- LÓGICA PARA O DISPLAY DE AÇÃO
            if subir = '1' then
                segmentos_out <= CODE_S;
            elsif descer = '1' then
                segmentos_out <= CODE_d;
            elsif abrir_fechar = '1' then
                segmentos_out <= CODE_A;
            else -- Nenhuma ação
                segmentos_out <= CODE_BLANK;
            end if;
        end if;
    end process;

end Behavioral;