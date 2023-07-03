Create TABLE tb_nomes(
	Name VARCHAR(15),
	ID INT,
	PRIMARY KEY (ID)
);

CREATE TABLE tb_valores (
    Date TIMESTAMP,
    Open Float,
    High Float,
    Low Float,
    Close Float,
    Volume Float,
    VWAP Float,
    TWAP Float,
	ID INT,
	índice int not null,
    PRIMARY KEY (índice),
	FOREIGN KEY (ID) REFERENCES tb_nomes
);

DROP Table tb_valores

COPY tb_nomes FROM 'C:\Users\HOME\Desktop\Dados banco m5\nomes.csv' DELIMITER ',' CSV HEADER;
COPY tb_valores FROM 'C:\Users\HOME\Desktop\Dados banco m5\criptotest.csv' DELIMITER ',' CSV HEADER;