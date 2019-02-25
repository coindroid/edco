#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

EDCOD=${EDCOD:-$BINDIR/edcod}
EDCOCLI=${EDCOCLI:-$BINDIR/edco-cli}
EDCOTX=${EDCOTX:-$BINDIR/edco-tx}
EDCOQT=${EDCOQT:-$BINDIR/qt/edco-qt}

[ ! -x $EDCOD ] && echo "$EDCOD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
EDCOVER=($($EDCOCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for edcod if --version-string is not set,
# but has different outcomes for edco-qt and edco-cli.
echo "[COPYRIGHT]" > footer.h2m
$EDCOD --version | sed -n '1!p' >> footer.h2m

for cmd in $EDCOD $EDCOCLI $EDCOTX $EDCOQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${EDCOVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${EDCOVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
