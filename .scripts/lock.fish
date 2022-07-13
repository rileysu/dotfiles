#!/usr/bin/fish

# i3lock blurred screen inspired by /u/patopop007 and the blog post
# http://plankenau.com/blog/post-10/gaussianlock

# Timings are on an Intel i7-2630QM @ 2.00GHz

# Dependencies:
# imagemagick
# i3lock
# scrot (optional but default)

# Alternate screenshot method with imagemagick. NOTE: it is much slower
# SCREENSHOT="import -window root $IMAGE" # 1.35s

# Here are some imagemagick blur types
# Uncomment one to use, if you have multiple, the last one will be used

# All options are here: http://www.imagemagick.org/Usage/blur/#blur_args
#BLURTYPE="0x9" # 7.52s
#BLURTYPE="0x2" # 4.39s
#BLURTYPE="5x2" # 3.80s
set -l blur_type "2x8" # 2.90s
#BLURTYPE="2x3" # 2.92s

for output in (swaymsg -t get_outputs | jq -r '.[].name')
    set -l image "/tmp/$output-lock.png"
    grim -o $output $image
    convert $image -scale 6.25% -interpolate Integer -filter point -resize 1600% $image
    set -a lockargs --image "$output:$image"
end

swaylock --daemonize --indicator-radius 200 $lockargs
