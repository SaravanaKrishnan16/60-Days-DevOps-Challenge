\# Day 9 — Install Docker on Linux + Hello World Container



---



\## 🎯 Objective



Install \*\*Docker\*\* on a Linux system and verify the setup by running the \*\*Hello World\*\* container.  

\- Install Docker Engine and CLI.  

\- Run a container to confirm Docker is working.  

\- (Optional) Configure Docker to run without `sudo`.



---



\## 🛠️ Steps Followed



| Step                                                                                          | Purpose                                                           |

|-----------------------------------------------------------------------------------------------|-------------------------------------------------------------------|

| `sudo apt update \&\& sudo apt upgrade -y`                                                      | Update system packages to the latest version                     |

| `sudo apt install apt-transport-https ca-certificates curl software-properties-common -y`     | Install required dependencies                                    |

| `curl -fsSL https://download.docker.com/linux/ubuntu/gpg \\| sudo gpg --dearmor -o /usr/share/keyrings/docker.gpg` | Add Docker’s official GPG key                                    |

| `echo "deb \[arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb\_release -cs) stable" \\| sudo tee /etc/apt/sources.list.d/docker.list > /dev/null` | Add Docker repository to package sources                         |

| `sudo apt update \&\& sudo apt install docker-ce docker-ce-cli containerd.io -y`                | Install Docker Engine and CLI                                    |

| `sudo systemctl start docker \&\& sudo systemctl enable docker`                                 | Start and enable Docker service at boot                          |

| `docker --version`                                                                            | Check Docker version to confirm installation                     |

| `sudo docker run hello-world`                                                                 | Run Hello World container to test Docker                         |

| `sudo usermod -aG docker $USER \&\& reboot`                                                      | (Optional) Add user to Docker group to run without `sudo`         |

| `docker run hello-world`                                                                       | Run Hello World container without `sudo`                         |



---



\## 🌐 Output



✅ \*\*Docker installed successfully\*\* on the Linux system.  

✅ \*\*Hello World container executed\*\* — confirming Docker functionality.  



---



&nbsp;



