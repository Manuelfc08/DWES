import random


def obtener_nombre_jugada(jugada):
    if jugada == "a":
        return "piedra"
    elif jugada == "b":
        return "papel"
    elif jugada == "c":
        return "tijera"


def jugar_piedra_papel_tijera():
    puntaje_usuario = 0
    puntaje_programa = 0
    rondas = 5

    while rondas > 0:
        rondas -= 1

        jugada_usuario = input(
            "Elige una jugada (a para piedra, b para papel, c para tijera): "
        ).lower()

        # Validación de la entrada del usuario
        while jugada_usuario not in ("a", "b", "c"):
            print("Opción no válida. Por favor, elige a, b o c.")
            jugada_usuario = input(
                "Elige una jugada (a para piedra, b para papel, c para tijera): "
            ).lower()

        jugada_aleatoria = random.choice(["a", "b", "c"])
        nombre_jugada_usuario = obtener_nombre_jugada(jugada_usuario)
        nombre_jugada_aleatoria = obtener_nombre_jugada(jugada_aleatoria)

        # Muestra las jugadas seleccionadas por el usuario y el programa
        print(f"Has escogido {nombre_jugada_usuario}")
        print(f"El programa ha escogido {nombre_jugada_aleatoria}")

        # Determina el resultado de la ronda y muestra un mensaje descriptivo
        if jugada_usuario == jugada_aleatoria:
            print(f"Ambos escogieron {nombre_jugada_usuario}. Es un empate.")
        elif (
            (jugada_usuario == "a" and jugada_aleatoria == "c")
            or (jugada_usuario == "b" and jugada_aleatoria == "a")
            or (jugada_usuario == "c" and jugada_aleatoria == "b")
        ):
            print(
                f"¡Has ganado! {nombre_jugada_usuario} gana a {nombre_jugada_aleatoria}."
            )
            puntaje_usuario += 1
        else:
            print(
                f"Has perdido. {nombre_jugada_aleatoria} gana a {nombre_jugada_usuario}."
            )
            puntaje_programa += 1

    # Muestra el resultado final del juego y el puntaje
    print(f"Terminaron las 5 rondas.")
    print(f"Puntaje del usuario: {puntaje_usuario} puntos")
    print(f"Puntaje del programa: {puntaje_programa} puntos")

    if puntaje_usuario > puntaje_programa:
        print("¡Has ganado el juego!")
    elif puntaje_usuario < puntaje_programa:
        print("Has perdido el juego.")
    else:
        print("El juego terminó en empate.")


def main():
    while True:
        jugar_piedra_papel_tijera()
        respuesta = input("¿Deseas jugar de nuevo? (s/n): ").lower()
        while respuesta not in ("s", "n"):
            print(
                "Por favor, la opción seleccionada no es correcta. Pulsa s para sí o n para no."
            )
            respuesta = input("¿Deseas jugar de nuevo? (s/n): ").lower()
        if respuesta != "s":
            break


if __name__ == "__main__":
    main()
