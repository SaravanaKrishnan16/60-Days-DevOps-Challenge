\#  Day 8 — Git Hooks Automation – Pre-commit \& Post-receive



---



\## 🎯 Objective



Automate development workflow using \*\*Git Hooks\*\*:  

\- \*\*Pre-commit\*\*: Validate code before committing to ensure quality.  

\- \*\*Post-receive\*\*: Automatically deploy changes after pushing to the remote repository.



---



\## 🛠️ Steps Followed



| Step                                                                                          | Purpose                                                           |

|-----------------------------------------------------------------------------------------------|-------------------------------------------------------------------|

| `mkdir project-dev \&\& cd project-dev \&\& git init`                                             | Create a local development Git repository                        |

| `echo "<h1>Hello from Dev Repo</h1>" > index.html`                                            | Create initial HTML file for deployment                          |

| `nano .git/hooks/pre-commit`                                                                  | Create pre-commit hook script to run validations before commits  |

| `chmod +x .git/hooks/pre-commit`                                                              | Make pre-commit hook executable                                  |

| `mkdir ~/project-server.git \&\& cd ~/project-server.git \&\& git init --bare`                    | Create bare Git repository to act as remote server               |

| `nano ~/project-server.git/hooks/post-receive`                                                | Create post-receive hook to deploy code to `/var/www/html`       |

| `chmod +x ~/project-server.git/hooks/post-receive`                                            | Make post-receive hook executable                                |

| `cd ~/project-dev \&\& git remote add origin ~/project-server.git`                              | Link local repo to remote bare repo                              |

| `git add index.html \&\& git commit -m "Initial commit"`                                        | Commit changes (triggers pre-commit hook)                       |

| `git push origin master`                                                                      | Push changes (triggers post-receive hook to deploy)              |



---



\## 🌐 Output



✅ \*\*Pre-commit hook\*\* — Runs validation before allowing commits.  

✅ \*\*Post-receive hook\*\* — Deploys latest code to `/var/www/html` automatically.  





---





