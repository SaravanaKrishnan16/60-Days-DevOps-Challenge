#  Day 5 — Git Bare Repository & Auto Deployment using Hooks

---

## 🎯 Objective

Set up a local Git server that automatically deploys a static website to /var/www/html using a post-receive Git hook.

---

## 🛠️ Commands Practiced

| Command                                           | Purpose                                                   |
|--------------------------------------------------|------------------------------------------------------------|
| `git init --bare`                                | Initialize a bare Git repository to act as a server       |
| `git clone <bare-repo-path>`                     | Clone the bare repo into a working directory (client)     |
| `nano hooks/post-receive`                        | Create a Git hook to auto-deploy after each push          |
| `chmod +x post-receive`                          | Make the hook script executable                           |
| `git add . && git commit -m "message"`           | Stage and commit changes in the client repository         |
| `git push origin master`                         | Push changes to the bare Git server                       |
| `sudo systemctl start apache2` / `stop apache2`  | Start or stop the Apache web server                       |
| `ls /var/www/html` / `cat /var/www/html/index.html` | Verify that deployment was successful                   |

---

