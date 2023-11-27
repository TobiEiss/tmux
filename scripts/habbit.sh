#!/usr/bin/env bash
# setting the locale, some users have issues with different locales, this forces the correct one
export LC_ALL=en_US.UTF-8

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $current_dir/utils.sh

main()
{
  input_date=$(get_tmux_option "@dracula-habbit-date" "2023-11-22")
  input_icon=$(get_tmux_option "@dracula-habbit-icon" "")
  echo $(printf '%d days %s' "$(( ($(date +%s)-$(date -jf "%Y-%m-%d" "$input_date" "+%s"))/86400 ))" "$input_icon")
}

#run main driver program
main

