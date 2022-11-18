FROM node:latest

ENV PORT=3000
ENV NODE_ENV=production

COPY /bases-back /var/www/bases-back
WORKDIR /var/www/bases-back

RUN npm install
# RUN npm install --production
# RUN npm install -g pm2

# CMD [ "pm2-runtime", "start", "pm2.json" ]
CMD [ "npm", "start"]
EXPOSE 3000