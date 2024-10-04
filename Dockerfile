# Sử dụng image Python chính thức
FROM python:3.9-slim

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép tệp yêu cầu (requirements) vào container
COPY requirements.txt .

# Cài đặt các thư viện cần thiết
RUN pip install --no-cache-dir -r requirements.txt

# Sao chép toàn bộ mã nguồn vào thư mục /app trong container
COPY . .

# Mở cổng 8000
EXPOSE 8000

# Chạy lệnh khởi động FastAPI
CMD ["python", "app.py"]
