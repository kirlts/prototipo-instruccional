# Usar la imagen oficial de n8n como base
FROM docker.n8n.io/n8nio/n8n

# Cambiar temporalmente al usuario root para poder instalar paquetes
USER root

# Instalar las utilidades para convertir PDF (poppler-utils) y DOCX (pandoc)
# --no-cache evita guardar archivos de caché de instalación, manteniendo la imagen ligera
RUN apk add --no-cache poppler-utils pandoc

# Devolver el control al usuario 'node' por seguridad, como en la imagen original
USER node