echo 524288 | sudo tee /proc/sys/fs/inotify/max_user_watches

# echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf
# sudo sysctl -p

# 8192
# 16384
# 32768
# 65536
# 524288