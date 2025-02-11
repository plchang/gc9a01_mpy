#!/bin/sh


function put() {
	echo "Uploading $1"
	mpremote cp "$1" :
}

put bitarray.py
put fonts.py
put hello.py
put hershey.py
put noto_fonts.py
put rotation.py
put scroll.py

# ./jpg:

put jpg/alien.jpg
put jpg/alien.py
put jpg/bigbuckbunny.jpg
put jpg/bluemarble.jpg
put jpg/jpg.py

# ./prop_fonts:

put prop_fonts/chango_16.mpy
put prop_fonts/chango_32.mpy
put prop_fonts/chango_64.mpy
put prop_fonts/chango.py

# ./pbitmap:

cd pbitmap
# convert bluemarble.jpg to bitmap module
../../../utils/imgtobitmap.py bluemarble.jpg 8 >bluemarble.py

# use mpy-cross to precompile the bluemarble.py module to save memory
mpy-cross bluemarble.py

# upload the compiled bitmap module and example program
put pbitmap/bluemarble.mpy
put pbitmap/pbitmap.py

