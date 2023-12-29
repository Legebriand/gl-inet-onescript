#!/bin/sh
check_bash_installed() {
  if [ -x "/bin/bash" ]; then
    echo "downloading gl-inet.sh ......"
  else
    opkg update
    opkg install bash
  fi
}
check_bash_installed
wget -O /tmp/gl-inet.sh https://cdn.jsdelivr.net/gh/wukongdaily/gl-inet-onescript/gl-inet.sh && chmod +x /tmp/gl-inet.sh && /tmp/gl-inet.sh
