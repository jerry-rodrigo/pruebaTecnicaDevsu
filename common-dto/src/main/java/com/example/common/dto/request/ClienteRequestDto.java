package com.example.common.dto.request;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * Data Transfer Object (DTO) para la solicitud de creación o actualización de un cliente.
 * Contiene la información necesaria para crear o actualizar un cliente en la aplicación.
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ClienteRequestDto {

    @NotBlank(message = "El nombre no puede estar vacío.")
    @Size(min = 3, message = "El nombre debe tener al menos 3 caracteres.")
    private String nombre;

    @NotBlank(message = "El género no puede estar vacío.")
    private String genero;

    @NotNull(message = "La edad no puede ser nula.")
    private Integer edad;

    @NotBlank(message = "La identificación no puede estar vacía.")
    @Pattern(regexp = "\\d{8}", message = "La identificación debe tener 8 dígitos.")
    private String identificacion;

    @NotBlank(message = "La dirección no puede estar vacía.")
    private String direccion;

    @NotBlank(message = "El teléfono no puede estar vacío.")
    @Pattern(regexp = "\\d{1,9}", message = "El teléfono debe contener solo números y tener hasta 9 dígitos.")
    private String telefono;

    @NotBlank(message = "La contraseña no puede estar vacía.")
    private String contrasena;

    @NotNull(message = "El estado no puede ser nulo.")
    private Boolean estado;
}

