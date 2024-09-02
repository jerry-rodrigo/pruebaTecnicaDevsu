use cuenta_movimiento_db;

CREATE TABLE cuentas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    numero_cuenta VARCHAR(255) NOT NULL UNIQUE,
    tipo_cuenta VARCHAR(50) NOT NULL,
    saldo_inicial DOUBLE NOT NULL,
    saldo_actual DOUBLE,
    estado BOOLEAN NOT null,
    cliente_id BIGINT NOT NULL
);

CREATE TABLE movimientos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    tipo_movimiento VARCHAR(50) NOT NULL,
    valor DOUBLE NOT NULL,
    saldo DOUBLE NOT NULL,
    cuenta_id BIGINT NOT NULL,
    FOREIGN KEY (cuenta_id) REFERENCES cuentas(id)
);

#Para facilitar la creación de índices y optimizar las consultas, podrías considerar agregar índices adicionales a las tablas
--cuentas
CREATE INDEX idx_cliente_nombre ON cuentas(clienteNombre);
CREATE INDEX idx_fecha ON cuentas(fecha);

--movimientos
CREATE INDEX idx_cuenta_id_fecha ON movimientos(cuentaId, fecha);

select * from cuentas;

select * from movimientos;

-----------------------------------------------------------------------------------------

SELECT
    c.numero_cuenta,
    c.tipo_cuenta,
    c.saldo_inicial,
    m.fecha,
    m.tipo_movimiento,
    m.valor,
    m.saldo
FROM
    cuentas c
JOIN
    movimientos m ON c.id = m.cuenta_id
WHERE
    m.fecha BETWEEN '2024-08-01' AND '2024-08-31';

