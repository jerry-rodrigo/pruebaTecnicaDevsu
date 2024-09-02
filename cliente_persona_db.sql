use cliente_persona_db;

CREATE TABLE personas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    genero VARCHAR(10) NOT NULL,
    edad INT NOT NULL,
    identificacion VARCHAR(255) UNIQUE NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    tipo_persona VARCHAR(31), -- Para diferenciar entre Persona y Cliente
    cliente_id CHAR(8) UNIQUE, -- Campo para Cliente con longitud fija de 8 caracteres
    contraseña VARCHAR(255),  -- Campo para Cliente
    estado BOOLEAN             -- Campo para Cliente
);

select * from personas; 

#delete from personas;

#DROP TABLE personas;