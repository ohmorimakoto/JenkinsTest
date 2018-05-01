#!/bin/sh

for filepath in 'git status -s | grep -e ".unity3d$" -e ".unity3d.manifest$"'
  do
    n=${#TARGETS[@]}
    n=$((n-1))

    while [ $n -ge 0];do
      if [ ${INPUT_PATH} == "ALL"]; then
      #パス指定でない場合、modifiedあたりが紛れ込むため、再度grepして弾く
        if [ 'echo ${filepath} | grep -e ".unity3d$" -e ".unity3d.manifest$"']; then
          CP_PATH=`echo ${EXPORT_DIR}/${filepath} | sed 's@0\.0\.1@'${targetVersion}'@g`
            cp -r ${filepath} ${CP_PATH}
            break
        fi
      elif [`echo ${filepath} | grep ${TARGETS[$n]}`]; then
        CP_PATH=`echo ${EXPORT_DIR}/${filepath} | sed 's@0\.0\.1@'${targetVersion}'@g`
        cp -r ${filepath} ${CP_PATH}
        break
      fi
      n=$((n-1))
    done
  done


echo "foreach終了"
