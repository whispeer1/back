Param([string]$b)
$branch = $b

hg pull -b $branch
hg merge $branch --tool internal:fail