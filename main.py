from fastapi import FastAPI
import uvicorn

# Tạo một ứng dụng FastAPI
app = FastAPI()

# Định nghĩa route để trả về "Hello, World!"
@app.get("/")
def read_root():
    return {"message": "Hello, Nguyen Chi Dat v1!"}

# Block if __name__ == "__main__"
if __name__ == "__main__":
    # Chạy Uvicorn với host và port tùy chỉnh nếu cần
    uvicorn.run(app, host="127.0.0.1", port=8000)
