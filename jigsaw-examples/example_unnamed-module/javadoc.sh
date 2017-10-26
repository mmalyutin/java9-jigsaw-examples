. ../env.sh

rm -rf doc
mkdir -p doc

# generate JavaDoc
echo "javadoc $JAVADOC_OPTIONS -d doc --module-path mlib --module-source-path src $(find src -name \"*.java\"  | grep -v cp)"
$JAVA_HOME/bin/javadoc $JAVADOC_OPTIONS  -d doc \
    --module-path mlib -cp cplib/cpmain.jar${PATH_SEPARATOR}cplib/cpb.jar --add-modules modb \
    --module-source-path src $(find src -name "*.java" | grep -v cp)
