\# Day 11 — Dockerize Static Website and Run Locally



---



\## 🎯 Objective



Containerize a \*\*static website\*\* using \*\*Nginx\*\* and run it locally in a Docker container.  

\- Create basic HTML and CSS files for the website.  

\- Write a Dockerfile to serve static files using the `nginx:alpine` image.  

\- Build and run the container, making the site accessible locally.



---



\## 🛠️ Steps Followed



| Step                                                                                  | Purpose                                                                 |

|---------------------------------------------------------------------------------------|-------------------------------------------------------------------------|

| `mkdir my-static-site \&\& cd my-static-site`                                           | Create and navigate to project folder                                  |

| `nano index.html`                                                                     | Create main homepage HTML file                                          |

| `nano about.html`                                                                     | Create "About" page HTML file                                           |

| `mkdir css \&\& nano css/style.css`                                                     | Create CSS folder and styling file                                      |

| Create `Dockerfile` with `FROM nginx:alpine`, `COPY`, and `EXPOSE` instructions       | Use Nginx base image and copy site files to `/usr/share/nginx/html`    |

| `docker build -t my-static-site .`                                                     | Build Docker image for the static website                              |

| `docker run -d -p 8080:80 my-static-site`                                              | Run container and map port 8080 to Nginx port 80                       |

| Visit `http://localhost:8080` in browser                                               | View the static website running locally                                |



---



\## 🌐 Output



✅ HTML and CSS files created for the static website.

✅ Dockerfile written to serve static content via Nginx.

✅ Docker image built and container running locally at http://localhost:8080.



---









