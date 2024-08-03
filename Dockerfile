# Utiliser l'image officielle Node.js 20 comme base
FROM node:20

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de package et installer les dépendances
COPY package*.json ./
RUN npm install --production

# Copier tout le code source dans le répertoire de travail
COPY . .

# Construire l'application Nuxt.js pour la production
RUN npm run build

# Exposer le port 3001
EXPOSE 3000

# Démarrer l'application Nuxt.js
CMD ["npm", "run", "start"]