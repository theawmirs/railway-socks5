# Railway SOCKS5 Proxy

Lightweight SOCKS5 proxy built with `microsocks` for Railway deployment.

## Deploying on Railway

1. Connect this repository to **Railway**.
2. Under service settings (**Networking** tab), generate a **TCP Proxy** to expose the port.
3. (Optional) Set environment variables for auth:
   - `USER`: username
   - `PASS`: password
