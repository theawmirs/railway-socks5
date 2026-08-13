# Railway Dual Proxy (HTTP & SOCKS5)

- **SOCKS5 Port:**  (or  env)
- **HTTP Port:**  (or  env)

## Railway Setup
1. Deploy repository.
2. In Railway settings -> **Networking**, add two **TCP Proxies**:
   - One pointing to port  (SOCKS5)
   - One pointing to port  (HTTP)
