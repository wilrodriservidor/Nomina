#!/bin/bash

# Crear directorios
mkdir -p bd logica acciones vistas

# Crear archivo en la raíz
touch index.php

# Crear archivos en /bd
touch bd/conexion.php

# Crear archivos en /logica
touch logica/usuario_logica.php \
      logica/asistencia_logica.php \
      logica/nomina_logica.php \
      logica/config_logica.php

# Crear archivos en /acciones
touch acciones/login.php \
      acciones/logout.php \
      acciones/guardar_asistencia.php \
      acciones/procesar_nomina.php \
      acciones/generar_desprendible.php

# Crear archivos en /vistas
touch vistas/login.php \
      vistas/dashboard.php \
      vistas/asistencia.php \
      vistas/nomina.php \
      vistas/historico.php \
      vistas/desprendible.php

echo "Estructura de archivos creada con éxito en /nominagit"
