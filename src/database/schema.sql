CREATE DATABASE users;

\c users;

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    photo TEXT
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    user_id INTEGER REFERENCES usuarios(id) ON DELETE CASCADE
);

INSERT INTO usuarios (name, email, password, photo) VALUES 
('Arthur', 'Luiz123ao00@gmail.com', 'w143513513455ow', NULL),
('Bruna', 'caio23@gmail.com', 'am314513451345315ods', NULL),
('Carlos', 'pdi232ddy@gmail.com', 'amoda123421351345asdads', NULL),
('Daniela', 'Lui323zao00@gmail.com', 'w1231231231ow', NULL),
('Eduardo', 'ca232323io@gmail.com', 'am213213131313ods', NULL),
('Fernanda', 'Luiz23232ao00@gmail.com', 'w123123123123ow', NULL),
('Gustavo', 'ca32323io@gmail.com', 'am31313131313ods', NULL),
('Helena', 'pdid232323dy@gmail.com', 'amo1313131daasdads', NULL),
('Igor', 'Luiza2323o00@gmail.com', 'w12312313ow', NULL),
('Juliana', 'ca3223232io@gmail.com', 'a123123132mods', NULL),
('Karen', 'Luiz323232ao00@gmail.com', 'wo12312312312313w', NULL),
('Lucas', 'ca3232321io@gmail.com', 'am12312313123123123123123ods', NULL),
('Marina', 'pdi31313ddy@gmail.com', 'amodaa123123123sdads', NULL),
('Nathan', 'Lu131313izao00@gmail.com', 'wo131313123123w', NULL),
('Olívia', 'cai13131o@gmail.com', 'amo1313131313ds', NULL),
('Pedro', 'Luiz12341ao00@gmail.com', 'w212312313ow', NULL),
('Quésia', 'caio@gmail.com', 'amo12312313ds', NULL),
('Rafael', 'pd2341vrewriddy@gmail.com', 'amo123123daasdads', NULL),
('Sofia', 'Luizw3rfwr3ao00@gmail.com', 'w123123123213ow', NULL),
('Tiago', 'rf3wfer3caio@gmail.com', 'amo1313231231323ds', NULL),
('Ursula', 'Luwefr3wefrizao00@gmail.com', 'w1313131313ow', NULL),
('Victor', 'caiw3fero@gmail.com', 'amod3232321s', NULL),
('Wesley', 'pdid3wferf3wdy@gmail.com', 'amoda123123asdads', NULL),
('Xuxa', 'Lufer3fwefrizao00@gmail.com', 'wo1231231231w', NULL),
('Yuri', 'ca3wferf3wio@gmail.com', 'am123123123ods', NULL),
('Zara', 'Luiferf3wfezao00@gmail.com', 'w12312313123ow', NULL),
('Alan', 'cairf3wferf3o@gmail.com', 'amo131313ds', NULL),
('Bianca', 'pdiddwferf3wy@gmail.com', 'amoda13131313asdads', NULL),
('Cael', 'Luferf3wfeizao00@gmail.com', 'w132131313ow', NULL),
('Diana', 'cair3wfefr3o@gmail.com', 'am123123ods', NULL),
('Elias', 'Luiwferf3wferzao00@gmail.com', 'w1123ow', NULL),
('Fabiana', 'f3wferf3caio@gmail.com', 'am13132ods', NULL),
('Gabriel', 'pdidwferf3wdy@gmail.com', 'amodaa131313sdads', NULL),
('Hugo', 'Luiefr3wfezao00@gmail.com', 'wo12312313w', NULL),
('Isis', 'cairf3wferf3wo@gmail.com', 'amod12312313s', NULL),
('Jonas', 'Luizafer3fwerfo00@gmail.com', 'wo1231213w', NULL),
('Kamila', 'ca3wferf3weio@gmail.com', 'amo123123123ds', NULL),
('Leonardo', 'pdgwerwtgwiddy@gmail.com', 'amo3123123daasdads', NULL),
('Melissa', 'Luiertgewrtzao00@gmail.com', 'w231231ow', NULL),
('Nayara', 'caigerwto@gmail.com', 'am1231231ods', NULL),
('Otávio', 'Luigwegtzao00@gmail.com', 'wo23123123w', NULL),
('Paula', 'caietrgreo@gmail.com', 'am231231ods', NULL),
('Renato', 'pdwrgtweriddy@gmail.com', 'amodaasdads', NULL),
('Samira', 'Lutgwertgizao00@gmail.com', 'wo1231231231w', NULL),
('Thiago', 'caewtrgewio@gmail.com', 'am32132132ods', NULL),
('Úrsula', 'Lugwertgweizao00@gmail.com', 'wo3123121w', NULL),
('Vera', 'caiorgwertgwegt@gmail.com', 'am12312312ods', NULL),
('Willian', 'pwertgewtgrdiddy@gmail.com', 'amodaasdads', NULL),
('Yasmin', 'Luizaewrgwergtewgo00@gmail.com', 'wo123123123w', NULL),
('Zion', 'caregtetgeio@gmail.com', 'a123123ods', NULL);


INSERT INTO post (title, content, user_id) VALUES 
    ('Post 1', 'Conteúdo do post 1', 1),
    ('Post 2', 'Conteúdo do post 2', 2),
    ('Post 3', 'Conteúdo do post 3', 3);