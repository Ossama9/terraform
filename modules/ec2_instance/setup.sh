#!/bin/bash

# Mise à jour des paquets existants
sudo apt-get update

# Installation de Node.js et npm depuis les dépôts Ubuntu
sudo apt-get install -y nodejs npm

# Installation de nvm (Node Version Manager) pour gérer les versions de Node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Activation de nvm (vous pourriez devoir ouvrir une nouvelle session shell après cette commande)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Installation de la version de Node.js de votre choix, ici nous prenons la version stable la plus récente
nvm install node

# Vérification de l'installation de Node.js et npm
node -v
npm -v

# Clonage du dépôt Git contenant le code de l'application
git clone https://github.com/Ossama9/api_devops

# Déplacement dans le répertoire du projet
cd imple_node_api

# Installation des dépendances de votre projet
npm install

# Démarrage de l'application
node index.js