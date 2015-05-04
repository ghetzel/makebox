#!/bin/bash
CMD=$1
shift

if [ $# -eq 0 ]; then
  BOXES='*/*'
else
  BOXES="$@"
fi

for i in $BOXES; do
  if [ -d "$i" ]; then
    case $CMD in
    build)
      echo "Building $i..."
      docker build -t makebox_${i//\//_} $i/
      docker tag makebox_${i//\//_} ghetzel/makebox:${i//\//-}
      ;;
    push)
      docker push ghetzel/makebox:${i//\//-}
      ;;
    esac
  fi
done
