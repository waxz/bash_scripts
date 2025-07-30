
cat << 'EOF' | tee -a $HOME/.bashrc

# Utility functions for managing processes
ps_kill() {
  echo "Number of arguments: $#"
  echo "All arguments as separate words: $@"
  echo "All arguments as a single string: $*"

  if [[ $# -ne 1 ]]; then
    echo "Please set program"
    return 1
  fi
  program="$1"

  ps -A -o tid,cmd  | grep -v grep | grep "$program" | awk '{print $1}' | xargs -I {} /bin/bash -c 'sudo kill -9  {} '
}
EOF
source $HOME/.bashrc