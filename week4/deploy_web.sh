#!/bin/bash
# ==================================================
# SESSION 11: THE DISPOSABLE WEB SERVER
# Operator Deployment Script
# ==================================================

echo "[*] Initiating Container Deployment..."

# INSTRUCTION: Write the exact Docker command below to run the nginx image in detached mode,
# name it "training-web", and map port 8080 on the host to port 80 on the container.
sudo docker run -d --name training-web -p 8080:80 nginx


echo "[+] Deployment command executed."
