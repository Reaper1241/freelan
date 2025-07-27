FROM node:20-slim AS builder

WORKDIR /app

# Кэширование зависимостей
COPY package*.json ./
RUN npm install

# Копирование исходников и сборка
COPY . .
RUN npm run build

# Финальный образ
FROM node:20-alpine
WORKDIR /app

COPY --from=builder /app/.output ./.output

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

EXPOSE 3000

CMD ["node", ".output/server/index.mjs"]