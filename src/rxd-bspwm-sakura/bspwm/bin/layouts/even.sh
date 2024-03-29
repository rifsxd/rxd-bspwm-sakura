#!/usr/bin/env bash
export ROOT="$HOME";
export BIN=".config/bspwm/bin"

source "$ROOT/$BIN/utils/layout.sh";

execute_layout() {
  auto_balance '@/';
}

cmd=$1; shift;
case "$cmd" in
  run) execute_layout "$@" ;;
  *) ;;
esac;
