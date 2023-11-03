# Definir las adivinanzas, las opciones y las respuestas
adivinanzas = [
    {
        "pregunta": "¿Cuando es, no es, y solo es si no es, ¿qué es?:",
        "opciones": "a) la ira\nb) la mentira\nc) la inquietud",
        "respuesta": "b",
    },
    {
        "pregunta": "¿¿Qué se humedece en el secado?",
        "opciones": "a) El pelo\nb) La cara\nc) la toalla",
        "respuesta": "c",
    },
    {
        "pregunta": "Son 12 señoras con medias, pero sin zapatos, ¿quiénes son?",
        "opciones": "a) las brujas de Eastwick\nb) las horas de un reloj\nc) las monjas de un convento",
        "respuesta": "b",
    },
]

# Inicializar la puntuación del usuario
puntuacion = 0

# Iterar a través de las adivinanzas
for adivinanza in adivinanzas:
    print(adivinanza["pregunta"])
    print(adivinanza["opciones"])
    respuesta = input("Escribe la letra de tu respuesta (a, b o c): ").lower()

    if respuesta == adivinanza["respuesta"]:
        print("¡Correcto! Ganaste 10 puntos.")
        puntuacion += 10
    else:
        print(
            f"Respuesta incorrecta. La respuesta correcta es '{adivinanza['respuesta']}'. Perdiste 5 puntos."
        )
        puntuacion -= 5

# Imprimir la puntuación final del usuario
print(f"Tu puntuación final es: {puntuacion} puntos.")
