#!/bin/bash
CMD=$1
shift

if [ $# -eq 0 ]; then
  BOXES='*/*'
else
  BOXES="$@"
fi

for i in $BOXES; do
  if [ -d "${i}" ]; then
    tag="${i//\//-}"
    tag="${tag//-base/}"

    case "${CMD}" in
    build)
      echo "Building ${i} (tag: ${tag})..."
      docker build -t makebox_${tag//-/_} $i/
      docker tag makebox_${tag//-/_} ghetzel/makebox:${tag}
      ;;
    push)
      docker push ghetzel/makebox:${tag}
      ;;
    esac
  fi
done
