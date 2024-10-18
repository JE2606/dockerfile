# Usa una imagen base de Node.js
FROM node:20

WORKDIR /app

# Copia el archivo de configuración y las dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos de la aplicación
COPY . .

# Expone el puerto en el que la aplicación escucha
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["node", "server.js"]
