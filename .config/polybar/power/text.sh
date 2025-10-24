#!/bin/sh

# Polybar Player
# Copyright (C) 2021 Tim Clifford
#
# This program is free software: you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or (at your
# option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
# License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.

batdir="/sys/class/power_supply/BAT0"
pow=$(cat $batdir/capacity)

# notify if the time is low, only if discharging
if [ "$(cat $batdir/status)" = "Discharging" ]; then
    if [ "$(echo "$pow < 6" | bc -l)" = "1" ]; then
        dunstify -h string:x-dunst-stack-tag:battery --urgency=critical \
            "Critical battery, $pow % remaining"
    elif [ "$(echo "$pow < 16" | bc -l)" = "1" ]; then
        dunstify -h string:x-dunst-stack-tag:battery \
            "Low battery, $pow % remaining"
    fi
    echo -n "%{F#8BE9FD}BAT%{F-} $pow%"
else
    echo -n "%{F#8BE9FD}CHARGING%{F-} $pow%"
fi
