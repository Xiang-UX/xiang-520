# 使用官方的nginx作为基础镜像  
FROM nginx:stable-alpine  
  
# 将本地目录中的文件复制到容器的/usr/share/nginx/html/  
# 假设你的HTML文件和其他资源都在当前Dockerfile的同级目录中  
COPY ./ /usr/share/nginx/html/  
  
# 如果你想设置nginx的配置，你可以复制一份自定义的配置文件  
# 例如: COPY nginx.conf /etc/nginx/nginx.conf  
  
# 暴露端口80  
EXPOSE 80  
  
# 设置默认启动命令  
CMD ["nginx", "-g", "daemon off;"]
