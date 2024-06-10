# 使用官方的 Python 运行时作为父镜像  
FROM python:3.8-slim-buster  
  
# 设置工作目录为 /app  
WORKDIR /app  
  
# 将当前目录下的所有内容复制到容器的 /app 下  
COPY . /app  
  
# 安装任何需要的包  
# 这里使用了 pip，确保你的 requirements.txt 文件在 Dockerfile 所在的目录中  
RUN pip install --no-cache-dir -r requirements.txt  
  
# 容器启动时运行的命令  
CMD ["python", "app.py"]
