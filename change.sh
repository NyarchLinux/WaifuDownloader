#!/bin/sh
OLD="moe.nyarchlinux.waifudownloader"
NEW=$1
OLD2="${OLD//./\\.}"
OLD3="${OLD//.//}"
OLD4="${OLD//./\\/}"
NEW4="${NEW//./\\/}"
for s in $(find -name "*$OLD*"); do mv $s "${s/$OLD/$NEW}"; done
for s in $(grep -rIl $OLD2); do sed -i "s/$OLD2/$NEW/g" $s; done
for s in $(grep -rIl $OLD3); do sed -i "s/$OLD4/$NEW4/g" $s; done