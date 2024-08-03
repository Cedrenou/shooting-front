# Nuxt 3 Minimal Starter

Look at the [Nuxt 3 documentation](https://nuxt.com/docs/getting-started/introduction) to learn more.

## Setup

Make sure to install the dependencies:

```bash
# npm
npm install
```

## Development Server

Start the development server on `http://localhost:3000`:

```bash
# npm
npm run dev
```

## Production

Build the application for production:

```bash
# npm
npm run build
```

Locally preview production build:

```bash
# npm
npm run preview
```

Check out the [deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.

# shooting-front

```

1. Deposé le projet sur le serveur 
2. allez dans le dossier shooting-front
3. lancer la commande docker build -t shooting-front .
4. Stoppé le container docker stop shooting-front
5. Supprimé le container docker rm shooting-front
6. Lancer le container docker run -d -p 3000:3000 --name shooting-front --restart unless-stopped shooting-front

```