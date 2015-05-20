dir = "/app/"

directory dir

workers ENV["PUMA_WORKERS"] || 0
threads 0, ENV["PUMA_MAX_THREADS"] || 16

# Specify path to socket puma listens to,
# we will use this in our nginx.conf later
bind "unix://#{ dir }tmp/sockets/puma.sock"

# Set process id path
pidfile "#{ dir }tmp/pids/puma.pid"

