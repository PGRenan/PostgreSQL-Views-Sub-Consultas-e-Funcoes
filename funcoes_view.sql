SELECT * FROM aluno;

--manipulando strings

SELECT (primeiro_nome juntar com ultimo_nome) AS nome_completo FROM aluno;

SELECT (primeiro_nome || ' ' || ultimo_nome) AS nome_completo FROM aluno;

SELECT CONCAT('Vinicius', ' ', 'Dias');

SELECT UPPER CONCAT('Vinicius', ' ', 'Dias');

SELECT UPPER( CONCAT('Vinicius', ' ', 'Dias') || ' ');

SELECT (primeiro_nome || ultimo_nome) AS nome_completo, NOW(), data_nascimento FROM aluno;

SELECT (primeiro_nome || ultimo_nome) AS nome_completo, NOW()::DATE, data_nascimento FROM aluno;

SELECT (primeiro_nome || ultimo_nome) AS nome_completo,
    (NOW()::DATE - data_nascimento) / 365  FROM aluno;

SELECT (primeiro_nome || ultimo_nome) AS nome_completo,
    AGE(data_nascimento) AS idade
  FROM aluno;
  
  SELECT (primeiro_nome || ultimo_nome) AS nome_completo,
    EXTRACT(YEAR FROM AGE(data_nascimento)) AS idade
  FROM aluno;
  
  CREATE VIEW vw_cursos_por_categoria
    AS SELECT categoria.nome AS categoria,
       COUNT(curso.id) as numero_cursos
   FROM categoria
   JOIN curso ON curso.categoria_id = categoria.id
GROUP BY categoria;
SELECT * FROM vw_cursos_por_categoria 




