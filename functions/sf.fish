function sf -d "interactive file selection"
  if test (count $FASD_FILTER_FUNCTION) -gt 0
    set -l _f (fasd -Rfl $argv | eval $FASD_FILTER_FUNCTION)
    test (count $_f) -eq 1
    and test -f $_f
    and printf "%s" $_f
  else
    command fasd -sif $argv
  end
end
