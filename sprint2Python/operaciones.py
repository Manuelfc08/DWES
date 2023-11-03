# Función para realizar la suma
def suma(a, b):
    return a + b


# Función para realizar la resta
def resta(a, b):
    return a - b


# Función para realizar la multiplicación
def multiplicacion(a, b):
    return a * b


# Función para realizar la división con control de división por 0
def division(a, b):
    if b == 0:
        return "Error: No se puede dividir entre 0"
    else:
        return a / b


# Ejemplos de uso de las funciones
if __name__ == "__main__":
    num1 = float(input("Ingresa el primer número: "))
    num2 = float(input("Ingresa el segundo número: "))

    resultado_suma = suma(num1, num2)
    resultado_resta = resta(num1, num2)
    resultado_multiplicacion = multiplicacion(num1, num2)
    resultado_division = division(num1, num2)

    print(f"Suma: {resultado_suma}")
    print(f"Resta: {resultado_resta}")
    print(f"Multiplicación: {resultado_multiplicacion}")
    print(f"División: {resultado_division}")
