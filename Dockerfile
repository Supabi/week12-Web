# Build Stage
FROM node:20-alpine AS build
WORKDIR /app

# คัดลอก package.json เพื่อติดตั้ง dependencies
COPY package*.json ./
RUN npm install

# คัดลอกซอร์สโค้ดทั้งหมดเข้ามาใน Container
COPY . .

# รันคำสั่ง Build ของ Vite
RUN npm run build

# Production Stage (ใช้ Nginx เสิร์ฟไฟล์ static)
FROM nginx:alpine

# คัดลอกไฟล์ที่ build เสร็จแล้วจากโฟลเดอร์ dist ไปไว้ที่ Nginx
COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]