function zz -d "cd with interactive selection"
  if test (count $FASD_FILTER_FUNCTION) -gt 0
    set -l dir (fasd -Rdl $argv | eval $FASD_FILTER_FUNCTION)
    test (count $dir) -gt 0
    and test -d $dir
    and builtin cd $dir
  else
    fasd_cd -di $argv
  end
end
