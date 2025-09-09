# ============================
# Base Stage
# ============================
FROM node:20-alpine AS base
WORKDIR /app
COPY package*.json ./

# ============================
# Development Stage
# ============================
FROM base AS development
RUN npm install
COPY . .
CMD ["npm", "run", "dev"]

# ============================
# Production Stage
# ============================
FROM base AS production
ENV NODE_ENV=production
RUN npm install --only=production && npm install pm2 -g
COPY . .
CMD ["pm2-runtime", "ecosystem.config.js"]

