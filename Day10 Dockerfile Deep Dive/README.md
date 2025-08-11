# Day 11 — Dockerfile Deep Dive – EXPOSE, CMD, ENV

---

## 🎯 Objective

Understand and implement **Dockerfile instructions** — `EXPOSE`, `CMD`, and `ENV` — by building a Node.js application, containerizing it, and running it with environment variable overrides.  
- Learn the purpose of `EXPOSE`, `CMD`, and `ENV` in Dockerfiles.  
- Build and run a Docker image for a sample application.  
- Override environment variables at runtime.

---

## 🛠️ Steps Followed

| Step                                                                                                    | Purpose                                                                                     |
|---------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------|
| `mkdir day11-dockerfile && cd day11-dockerfile`                                                         | Create and navigate to project folder                                                      |
| Create `app.js` with Node.js HTTP server code                                                           | Simple server that responds with a message and port number                                |
| Create `package.json`                                                                                   | Define Node.js project and start script                                                    |
| `npm init -y`                                                                                            | Initialize Node.js project                                                                 |
| Create `Dockerfile` with `FROM`, `WORKDIR`, `COPY`, `RUN`, `ENV`, `EXPOSE`, `CMD`                        | Define image build steps and container behavior                                            |
| `docker build -t day11-dockerfile .`                                                                     | Build Docker image from the Dockerfile                                                     |
| `docker run -p 4000:4000 day11-dockerfile`                                                               | Run container exposing default port from `ENV`                                             |
| `docker run -p 8080:8080 -e APP_PORT=8080 -e MESSAGE="Custom message from runtime" day11-dockerfile`     | Override environment variables at runtime                                                  |

---

## 🌐 Output

✅ **Dockerfile created** with `EXPOSE`, `CMD`, and `ENV` instructions.  
✅ **Node.js app containerized and running** on the specified port.  
✅ **Runtime environment variables** successfully overridden to customize container behavior.  

---
