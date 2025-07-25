# Imagen base con Python 3.9 ya incluido
FROM python:3.9-slim

LABEL maintainer="Ilse Zubieta <werliix@gmail.com>"

# Evita interacciones durante instalación
ENV DEBIAN_FRONTEND=noninteractive

# Instala dependencias del sistema (incluye nodejs 16 y npm)
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    build-essential \
    python3-dev \
    && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Crea directorio de trabajo
WORKDIR /opt/flask-app

# Copia el código de la aplicación
COPY flask-app/ /opt/flask-app/

# Instala dependencias de npm (frontend)
RUN npm install && npm run build

# Instala dependencias de Python
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Expone el puerto 5000 para Flask
EXPOSE 5000

# Ejecuta la app
CMD ["python", "app.py"]
