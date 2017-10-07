function __fasd_print_completions
  set cmd (commandline -po)
  if test (count $cmd) -le 1
    return 0
  end
  fasd $argv $cmd[2..-1] -l
end
