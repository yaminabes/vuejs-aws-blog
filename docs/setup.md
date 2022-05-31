# Create project in container
run tmp container
```sh
docker run -it --rm -v /home/mina/Documents/blog_vuejs/blog_frontend/src:/app -p 8008:8080 node:16.13-bullseye-slim bash
```
install vue-cli into container
```sh
npm install -g @vue/cli
```
create project
```sh
vue create blog_frontend
```
