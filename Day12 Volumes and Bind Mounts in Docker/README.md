\# Day 12 — Volumes and Bind Mounts in Docker



---



\## 🎯 Objective



Understand \*\*data persistence\*\* in Docker by using \*\*Volumes\*\* and \*\*Bind Mounts\*\*.  

\- Create and use a \*\*Bind Mount\*\* to serve an HTML file from the host machine into a container.  

\- Create and use a \*\*Named Volume\*\* to persist container data even after the container is removed.  



---



\## 🛠️ Steps Followed



| Step | Command | Purpose |

|------|---------|---------|

| 1 | `mkdir docker-data-demo \&\& cd docker-data-demo` | Create and navigate to project directory |

| 2 | `echo "<h1>Hello from Docker Bind Mount!</h1>" > index.html` | Create an HTML file to serve |

| 3 | `docker run -d -p 8080:80 --name bind-demo -v $(pwd)/index.html:/usr/share/nginx/html/index.html nginx` | Run an Nginx container with a bind mount from host file to container HTML location |

| 4 | Visit `http://localhost:8080` | Verify content is served from local file |

| 5 | `docker volume create mydata` | Create a named volume |

| 6 | `docker run -d -p 8081:80 --name volume-demo -v mydata:/usr/share/nginx/html nginx` | Run container with named volume attached |

| 7 | `docker exec -it volume-demo bash` | Enter the container |

| 8 | `echo "<h1>Hello from Docker Volume!</h1>" > /usr/share/nginx/html/index.html` | Create HTML file inside container |

| 9 | Visit `http://localhost:8081` | Verify HTML served from Docker volume |

| 10 | `docker rm -f volume-demo` and `docker run -d -p 8081:80 --name volume-demo2 -v mydata:/usr/share/nginx/html nginx` | Restart with same volume to see data persists |



---



\## 📌 Key Learnings



\- \*\*Bind Mount\*\* → Links a specific file or folder from host to container. Changes are reflected instantly both ways.  

\- \*\*Named Volume\*\* → Managed by Docker, persists data even after container removal.  

\- \*\*Use Case\*\*: Bind mounts are great for development, volumes are better for persistent production data.  



---



\## 🌐 Output



✅ \*\*Bind Mount\*\*: HTML served from host file inside container.  

✅ \*\*Named Volume\*\*: Data persisted across container restarts.  



---



