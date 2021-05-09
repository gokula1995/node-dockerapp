FROM node:16-alpine3.11 as builder


WORKDIR /app/

COPY . /app/

RUN  npm install

FROM node:16-alpine3.11

COPY --from=builder /app .

RUN apk add --no-cache tzdata && addgroup -S gokula && adduser -S gokula -G gokula
ENV TZ Asia/Dubai
USER gokula

ENTRYPOINT ["node", "./index.js"]

EXPOSE 8080
