# ExplorViz Reverse Proxy

Automated docker build for the ExplorViz reverse proxy.

Run with `docker run -d --name explorviz-reverse-proxy -p 8080:8080 explorviz/reverse-proxy`.

For local development with Eclipse (fixed port 8080), run with: Run with `docker run -d --network host --name explorviz-reverse-proxy explorviz/reverse-proxy`.