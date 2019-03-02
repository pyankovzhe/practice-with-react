FROM node:9.11-alpine
RUN apk --update add git
RUN npm i -g npm@6.1

WORKDIR /opt/app

COPY package.json /opt/app/
RUN npm i

COPY . /opt/app/

# # 2. Сборка -------------------------
# FROM development AS builder
# RUN npm run build

# # 3. Релиз -------------------------
# FROM nginx:alpine AS release

# RUN mkdir /app
# WORKDIR /app
# COPY nginx.conf /etc/nginx/conf.d/default.conf
# COPY --from=builder /opt/portal/build /app
