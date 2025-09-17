--CRIAÇÃO DE TABELA
CREATE TABLE USUARIO (
    ID_USUARIO NUMBER PRIMARY KEY,
    NOME_USUARIO VARCHAR2(100),
    EMAIL VARCHAR2(100),
    DT_NASC DATE
);

/*apagando as regras da tabela em cascata (apaga todas as refs relacionadas a tabela, objeto)
DROP TABLE USUARIO CASCADE CONSTRAINTS; (regras e obrigatoriedades): pk, fk... */

--run script: roda tudo independente de onde esteja

SELECT * FROM USUARIO;
INSERT INTO USUARIO VALUES (1, 'JOSE MARIA', 'jm@gmail.com', '01/05/2000');
INSERT INTO USUARIO VALUES (2, 'JOSE MARIA', 'jm@gmail.com', '01/05/2000');

--INFORMA O FORMATO DA DATA
SELECT SYSDATE FROM DUAL;

--ALTERA O FORMATO DA DATA
ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YYYY'; --SÓ ALTERA A VISUALIZAÇÃO DO DADO INTERNA (NÃO DO BD ORIGINAL)