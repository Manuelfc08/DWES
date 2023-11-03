# Definir la adivinanza y las opciones
adivinanza = "Antes que nazca la madre, anda el hijo por la calle.:"
opciones = ("a) Aire\nb) Nube\nc) Humo",)

# Imprimir la adivinanza y las opciones
print(adivinanza)
print(opciones)

# Obtener la respuesta del usuario
respuesta = input("Escribe la letra de tu respuesta (a, b o c): ")

# Verificar si la respuesta es correcta
if respuesta.lower() == "c":
    print("¡Correcto! La respuesta es: humo.")

else:
    print("Respuesta incorrecta. La respuesta correcta es 'c) Humo'.")
