package com.example.common.dto.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * Data Transfer Object (DTO) para la respuesta de información de un cliente.
 * Contiene la información que se devuelve al cliente al consultar los detalles de un cliente.
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ClienteResponseDto {

    private String clienteId;
    private String nombre;
    private String identificacion;
    private Boolean estado;
}