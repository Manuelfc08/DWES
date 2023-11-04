# Importamos las funciones necesarias desde operaciones.py
from operaciones import suma, resta, multiplicacion, division


# Función para obtener un número del usuario con manejo de errores
def obtener_numero_input(prompt):
    while True:
        try:
            num = float(input(prompt))
            return num
        except ValueError:
            print("Error: Ingresa un número válido.")


# Función para obtener la operación deseada del usuario
def obtener_operacion():
    while True:
        print("Selecciona una operación:")
        print("1. Suma")
        print("2. Resta")
        print("3. Multiplicación")
        print("4. División")
        opcion = input("Ingresa el número de la operación que deseas realizar: ")
        if opcion in ["1", "2", "3", "4"]:
            return opcion
        else:
            print("Error: Ingresa una opción válida.")


if __name__ == "__main__":
    while True:
        num1 = obtener_numero_input("Ingresa el primer número: ")
        num2 = obtener_numero_input("Ingresa el segundo número: ")

        operacion = obtener_operacion()

        if operacion == "4" and num2 == 0:
            print("Error: No se puede dividir entre cero. Intente una nueva operación.")
        else:
            if operacion == "1":
                resultado = suma(num1, num2)
            elif operacion == "2":
                resultado = resta(num1, num2)
            elif operacion == "3":
                resultado = multiplicacion(num1, num2)
            else:
                resultado = division(num1, num2)

            print(f"Resultado de la operación: {resultado}")

        while True:
            continuar = input("¿Quieres hacer más operaciones? (s/n): ").strip().lower()
            if continuar == "s":
                break
            elif continuar == "n":
                exit()
            else:
                print("Error: Ingresa 's' para continuar o 'n' para salir.")
