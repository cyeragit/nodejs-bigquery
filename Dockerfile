FROM base as build
COPY ./package.json ./
COPY ./.eslintrc.js ./
COPY ./tsconfig.json ./

RUN npm install

COPY . .

RUN npm run build
CMD [ "npm", "run", "start:prod" ]
