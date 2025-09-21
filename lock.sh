#!/bin/bash

# Ruta donde se guardará la captura de pantalla temporalmente
TMP_IMG="/tmp/screen.png"

# Tomar la captura de pantalla
scrot -o "$TMP_IMG"

# Aplicar el efecto de desenfoque con imagemagick
# El valor '0x8' controla la intensidad del desenfoque. Puedes ajustarlo.
convert "$TMP_IMG" -scale 10% -scale 1000% -blur 0x8 "$TMP_IMG"

# Ejecutar i3lock con la imagen desenfocada
# --nofork para que el script espere a que se desbloquee
i3lock -i "$TMP_IMG" --nofork

# Opcional: Borrar la imagen temporal después de desbloquear
rm "$TMP_IMG"
