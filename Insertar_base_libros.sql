use control_de_libros;
insert into autor values(
'PL001' , 'Pablo', 'Lopez', '1960/08/19', 'Colombiana',54),
('CM002' , 'Claudia', 'Martinez', '1970/06/10', 'Salvadorena',45),
('PM003' , 'Patricio', 'Murry', '1967/12/12', 'Espanola',47),
('NH004' , 'Nuria', 'Hernandez', '1980/09/03', 'Colombiana',34),
('HM005' , 'Helen', 'Martinez', '1980/11/02', 'Espanola',34),
('JR006' , 'Jose', 'Roldan', '1967/09/13', 'Colombiana',54);

-- ALTER TABLE libro MODIFY COLUMN ano_edicion YEAR;

insert into editorial values(
'ED001', 'Omega 2000', 'Colombia'),
('ED002', 'Anaya Multimedia', 'Espana'),
('ED003', 'McGrawHill', 'Inglaterra'),
('ED004', 'Reyes', 'Mexico'),
('ED005', 'Prentice Hall', 'Inglaterra');

insert into libro values(
'BDCOL00001','Fundamentos de Base de Datos', '12333-8999988', '2004', 'ED001'),
('BDESP00002','La Biblia de SQL Server 2008', '3444-99888-88', '2008', 'ED002'),
('PRCOL00002','Programacion Orientada a Objetos', '8999-9999444', '2011', 'ED001'),
('DWING00003','Diseno Web y Hojas de Estilo', '300096-99999', '2010', 'ED003'),
('PRING00003','Programacion en C/C++', '45667-87878', '2009', 'ED005'),
('HJMEX00005','Uso de hojas de estilo con JavaScript', '0990-87878787', '2008', 'ED004'),
('ABESP00006','Administracion de Base de Datos', '585885-88484848', '2010', 'ED002');

insert into detalle_aut_lib values(
'PL001','BDCOL00001' ),
('NH004','BDCOL00001' ),
('CM002','PRCOL00002' ),
('PM003','BDESP00002' ),
('PM003','DWING00003' ),
('HM005','PRING00003' ),
('CM002','ABESP00006' ),
('NH004','HJMEX00005' ),
('JR006','DWING00003' );




