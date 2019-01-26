#!/bin/sh
#
# Written in 2016 by Sergei Eremenko <https://github.com/SmartFinn>
#
# To the extent possible under law, the author(s) have dedicated all copyright
# and related and neighboring rights to this software to the public domain
# worldwide. This software is distributed without any warranty.
#
# You should have received a copy of the CC0 Public Domain Dedication along
# with this software. If not, see
# <http://creativecommons.org/publicdomain/zero/1.0/>.
#
# Description:
#  This script looks in the SVG files for certain colors and replaces
#  them with the corresponding stylesheet class. Fixes a color scheme
#  after Inkscape.
#
# Limitations:
#  - works only with one element per line
#
# Usage:
#  _fix_color_scheme.sh FILE...

set -e

# Suru++
add_class() {
	# add the class if a value matches:
	sed -i -r \
		-e '/([^-]color|fill|stop-color|stroke):(#808080|#babdb6|#f7f7f7|#ffffff|#5c616c)/I s/(style="[^"]+")/\1 class="ColorScheme-Text"/' \
		-e '/([^-]color|fill|stop-color|stroke):(#5294e2|#3daee9|#1d99f3)/I s/(style="[^"]+")/\1 class="ColorScheme-Highlight"/' \
		-e '/([^-]color|fill|stop-color|stroke):#27ae60/I s/(style="[^"]+")/\1 class="ColorScheme-PositiveText"/' \
		-e '/([^-]color|fill|stop-color|stroke):#da4453/I s/(style="[^"]+")/\1 class="ColorScheme-NegativeText"/' \
		-e '/([^-]color|fill|stop-color|stroke):#f67400/I s/(style="[^"]+")/\1 class="ColorScheme-NeutralText"/' \
		-e '/([^-]color|fill|stop-color|stroke):#4f575f/I s/(style="[^"]+")/\1 class="ColorScheme-ViewBackground"/' \
		"$@"
}

replace_hex_to_current_color() {
	# if class exist:
	#   - remove color
	#   - replace fill=#HEXHEX to fill=currentColor
	sed -i -r \
		-e '/class="ColorScheme-/ s/([^-])color:#([[:xdigit:]]{3}|[[:xdigit:]]{6});?/\1/' \
		-e '/class="ColorScheme-/ s/fill:#([[:xdigit:]]{3}|[[:xdigit:]]{6});?/fill:currentColor;/' \
		-e '/class="ColorScheme-/ s/stroke:#([[:xdigit:]]{3}|[[:xdigit:]]{6});?/stroke:currentColor;/' \
		-e '/class="ColorScheme-/ s/stop-color:#([[:xdigit:]]{3}|[[:xdigit:]]{6});?/stop-color:currentColor;/' \
		"$@"
}

for file in "$@"; do
	# continue if it's a file
	[ -f "$file" ] || continue

	if grep -q -i 'id="current-color-scheme"' "$file"; then
		# the file has a color scheme

		replace_hex_to_current_color "$file"

		add_class "$file"

		replace_hex_to_current_color "$file"
	fi
done
