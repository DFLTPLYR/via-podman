FROM node:20

RUN curl -fsSL https://bun.sh/install | bash

# Add Bun to PATH
ENV PATH="/root/.bun/bin:${PATH}"

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 5173
CMD ["npm", "run", "dev"]
