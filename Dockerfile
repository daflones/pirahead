FROM node:18-alpine

# Instalar dependências do sistema
RUN apk add --no-cache libc6-compat

# Criar diretório do projeto
WORKDIR /app

# Copiar package.json e package-lock.json
COPY package*.json ./

# Instalar dependências
RUN npm ci

# Copiar o código fonte
COPY . .

# Build do projeto
RUN npm run build

# Expor a porta 3000
EXPOSE 3000

# Comando para iniciar o servidor
CMD ["npm", "run", "start"]
