import random


# Función para verificar si el usuario quiere volver a jugar
def volver_a_jugar():
    respuesta = (
        input("¿Deseas volver a jugar? (s para sí, n para no): ").strip().lower()
    )
    while respuesta not in ["s", "n"]:
        print("Opción no válida. Escoge 's' para sí o 'n' para no.")
        respuesta = (
            input("¿Deseas volver a jugar? (s para sí, n para no): ").strip().lower()
        )
    return respuesta


# Definir las adivinanzas, las opciones y las respuestas
adivinanzas = [
    {
        "pregunta": "Antes que nazca la madre, anda el hijo por la calle. Elige una opción:",
        "opciones": "a) Aire\nb) Nube\nc) Humo",
        "respuesta": "c",
    },
    {
        "pregunta": "¿Cuándo es, no es, y solo es si no es, ¿Qué es? Elige una opción:",
        "opciones": "a) la ira\nb) la mentira\nc) la inquietud",
        "respuesta": "b",
    },
    {
        "pregunta": "¿Qué se humedece en el secado? Elige una opción:",
        "opciones": "a) El pelo\nb) La cara\nc) la toalla",
        "respuesta": "c",
    },
]

# Bucle para jugar
while True:
    # Inicializar la puntuación del usuario
    puntuacion = 0

    # Seleccionar dos adivinanzas aleatoriamente sin repeticiones
    dos_adivinanzas = random.sample(adivinanzas, 2)

    # Iterar a través de las adivinanzas seleccionadas aleatoriamente
    for adivinanza in dos_adivinanzas:
        print(adivinanza["pregunta"])
        print(adivinanza["opciones"])

        respuesta = (
            input("Escribe la letra de tu respuesta (a, b o c): ").strip().lower()
        )

        # Validar que la respuesta sea a, b o c
        while respuesta not in ["a", "b", "c"]:
            print("Respuesta no válida. Por favor, ingresa a, b o c.")
            respuesta = (
                input("Escribe la letra de tu respuesta (a, b o c): ").strip().lower()
            )

        if respuesta == adivinanza["respuesta"]:
            print("¡Correcto! Ganaste 10 puntos.")
            puntuacion += 10
        else:
            print(
                f"Respuesta incorrecta. La respuesta correcta es '{adivinanza['respuesta']}'. Perdiste 5 puntos."
            )
            puntuacion -= 5

    # Imprimir la puntuación final del usuario
    print(f"Tu puntuación actual es: {puntuacion} puntos.")

    # Preguntar al usuario si desea volver a jugar
    jugar_de_nuevo = volver_a_jugar()

    if jugar_de_nuevo == "n":
        break

print("¡Gracias por jugar!")
