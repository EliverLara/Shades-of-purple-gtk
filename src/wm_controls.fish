set -l  wm 'close' 'close_prelight' 'close_unfocused' 'min' 'min_prelight' 'maximize' 'maximize_prelight'
set -l path '../assets/'
for item in $wm
	inkscape $path$item.svg --export-filename $path$item.png; optipng -o7 --quiet $path$item.png
	inkscape $path$item.svg --export-filename $path$item@2.png --export-dpi=192; optipng -o7 --quiet $path$item@2.png 
end
