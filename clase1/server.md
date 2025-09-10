# chequear funcionamiento del servidor MySQL

> Una vez que instalamos el servidor de base de datos, de manera predeterminada este ya está iniciado (modo automático)
> Esta nota es para aprender a chequear si está funcionando, cómo iniciarlo y cómo detenerlo si es que necesitamos hacerlo

## Windows

> Para chequear si el servidor de base de datos está funcionando debo utilizar el administrador de servicios

1. Pulsar la combinación de teclas WIN + R
2. Esto abrirá la ventana ejecutar
3. Ahí vamos a escribir "services.msc" y luego pulsar OK
4. Se va a abrir el administrador de servicios
5. Buscar el servicio llamado MySQL80

## macOS

> En macOS vamos a ir a la Configuración del Sistema

1. ir a Configuración del Sistema
2. En el panel lateral izquierdo ir hacia abajo de todo
3. Ahí encontraremos el servicio MySQL
4. En la parte central tenemos las opciones para iniciar y detener

## Debian

> para iniciar el servidor de base de datos de MySQL en debian
> puedo utilizar una terminal de comandos

1. Abrir la Terminal
2. Ejecutar el siguiente comando:

   systemctl start mysql

> para detener el servicio, ejecutar:

    systemctl stop mysql

> para verificar el estado del servicio, ejecutar

    systemctl status mysql
