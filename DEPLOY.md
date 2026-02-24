# Instrucciones de Despliegue

1. **¿Qué contiene el archivo y cómo desarchivarlo?**
   El archivo `awesome-website.zip` contiene el directorio `dist/` con el sitio web estático generado y el binario `awesome-api`. Para desarchivarlo, ejecuta: `unzip awesome-website.zip`.

2. **¿Cuáles son los comandos para iniciar y detener la aplicación?**
   Al ser un sitio estático, puedes iniciarlo sirviendo la carpeta dist con un servidor web (ej. `python3 -m http.server --directory dist/`). Para detenerlo, cancela el proceso del servidor (Ctrl+C).

3. **¿Cómo personalizar dónde se escriben los registros de la aplicación?**
   Los registros del servidor web se pueden redirigir a un archivo específico usando: `python3 -m http.server --directory dist/ > /var/log/website.log 2>&1`.

4. **¿Cómo verificar "rápidamente" que la aplicación se está ejecutando (healthcheck)?**
   Haciendo una petición HTTP a la ruta principal: `curl -I http://localhost:8000`. Si devuelve HTTP 200 OK, está funcionando.
