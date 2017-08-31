# vim: sw=2
function sd -d "interactive directory selection"
  if test (count $FASD_FILTER_FUNCTION) -gt 0
    set -l _ret (fasd -Rdl | eval $FASD_FILTER_FUNCTION)
    test (count $_ret) -eq 1
    and test -d $_ret
    and printf "%s" $_ret
  else
    command fasd -sid $argv
  end
end
