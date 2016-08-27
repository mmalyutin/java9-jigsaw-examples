. ../env.sh

echo "javac -Xmodule:modb --module-path mods -d patches/modb src/modb-patch/pkgb/B.java"
$JAVA_HOME/bin/javac -Xmodule:modb --module-path mods -d patches/modb src/modb-patch/pkgb/B.java 

pushd patches > /dev/null 2>&1 
for dir in */; 
do
    MODDIR=${dir%*/}
    echo "jar --create --file=../patchlib/${MODDIR}.jar -C ${MODDIR} ."
    $JAVA_HOME/bin/jar --create --file=../patchlib/${MODDIR}.jar -C ${MODDIR} .
done
popd >/dev/null 2>&1
