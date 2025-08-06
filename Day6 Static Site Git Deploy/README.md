\#  Day 5 — Git Bare Repository \& Auto Deployment using Hooks



---



\## 🎯 Objective



Set up a local Git server that automatically deploys a static website to `/var/www/html` using a post-receive Git hook.



---





\## 🛠️ Commands Practiced



| Command                                           | Purpose                                                   |

|--------------------------------------------------|------------------------------------------------------------|

| `git init --bare`                                | Initialize a bare repo to act as a Git server             |

| `git clone <bare-repo-path>`                     | Clone the bare repo into a working directory              |

| `nano hooks/post-receive`                        | Create a Git hook to auto-deploy on push                 |

| `chmod +x post-receive`                          | Make the hook script executable                          |

| `git add . \&\& git commit -m "message"`           | Stage and commit changes                                 |

| `git push origin master`                         | Push changes to the Git server                           |

| `sudo systemctl start|stop apache2`              | Manage Apache server                                     |

| `ls /var/www/html` / `cat index.html`            | Verify deployment output                                 |



---

