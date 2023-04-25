create table Productos
(

Nombre_producto varchar(200) primary key,
Fecha_vencimiento varchar(12) not null,
Precio int

);

create table Clientes
(
Nombre_cliente varchar(100) primary key,
Apellido_empleado varchar(100) not null,
Celular_cliente varchar(12)not null


);

create table Empleados
(
Id char(2) primary key,
Nombre_Empleado varchar(200) not null,
Apellido_Empleado varchar(200) not null,
celular_Empleado varchar(10)
);

create table Suplidores
(
Nombre varchar(100) primary key,
Producto varchar(200) not null,
Fecha_entrega varchar(12) not null
);

create table Pedidos
(
Nombre_cliente varchar(100) primary key,
Producto varchar(200) not null,
Fecha_compra varchar(12) not null

);


ALTER TABLE Pedidos
ADD CONSTRAINT fk_pedidos_clientes
FOREIGN KEY (Nombre_cliente)
REFERENCES Clientes(Nombre_cliente) 



INSERT INTO Productos( Nombre_producto,Fecha_vencimiento, Precio)
VALUES 
('Ibuprofen', '07-22-25', 100),
('Amoxicillin', '09-23-24',200 ),
('Omeprazole', '11-26-25', 300),
('Ciprofloxacin', '06-17-23',500 ),
('Albuterol', '03-14-25', 600),
('Fluoxetine', '02-02-24',1000),
('Hydrochlorothiazide', '08-30-26',123 ),
('Prednisone', '05-11-24',157 ),
('Lisinopril', '12-05-24', 199)

INSERT INTO Clientes(Nombre_cliente,Apellido_empleado,Celular_cliente)
VALUES 
('Miguel', 'García', '809-555-1234'),
('Laura', 'Martínez', '809-555-5678'),
('Juan', 'Sánchez', '809-555-9012'),
('Ana', 'González', '809-555-3456'),
('Diego', 'Hernández', '809-555-7890'),
('María', 'Pérez', '809-555-2345'),
('Javier', 'Ramírez', '809-555-6789'),
('Lucía', 'Vargas', '809-555-0123'),
('Carlos', 'Gómez', '809-555-4567'),
('Sofía', 'Díaz', '809-555-8901')

INSERT INTO Empleados(Id,Nombre_Empleado,Apellido_Empleado,celular_Empleado)
VALUES

('1','Luis', 'Herrera', '8291234567'),
('2','Camila', 'Santos', '8292345678'),
('3','Pedro', 'González', '8293456789'),
('4','Valeria', 'García', '8294567890'),
('5','Fernando', 'Morales', '8295678901'),
('6','Isabela', 'Castillo', '8296789012'),
('7','David', 'Vásquez', '8297890123'),
('8','Carolina', 'Rodríguez', '8298901234'),
('9','Sebastián', 'Peralta', '8299012345'),
('10','Esther', 'Ortega', '8290123456')

INSERT INTO Suplidores(Nombre,Producto,Fecha_entrega)
VALUES
 ('Laboquidon','Aspirina', '01-01-2024'),
 ('anacel','Paracetamol', '02-01-2024'),
 ('feltrx','Amoxicilina', '03-01-2024'),
 ('elipesa','Ibuprofeno', '04-01-2024'),
 ('Rjs','Atorvastatina', '05-01-2024'),
('Scj','Simvastatina', '06-01-2024'),
 ('mamey','Metformina', '07-01-2024'),
 ('Rhs','Losartan', '08-01-2024'),
 ('centum','Lisinopril', '09-01-2024'),
('dronena','Omeprazol', '10-01-2024')

INSERT INTO Pedidos(Nombre_cliente,Producto,Fecha_compra)
VALUES
('Miguel', 'Acetaminophen','12-12-13'),
('Laura', 'Amoxixilina','12-12-15'),
('Juan', 'Ibuprofeno','12-12-17'),
('Ana', 'Morfina','12-12-18'),
('Diego','Acetaminophen','12-11-15' ),
('María', 'Acetaminophen','12-12-15'),
('Javier','Acetaminophen','12-12-14'),
('Lucía', 'Acetaminophen','12-3-19'),
('Carlos','Acetaminophen','12-6-10' ),
('Sofía', 'Acetaminophen','12-6-15')
select * from Pedidos