. ../env.sh

rm -rf doc
mkdir -p doc

# generate JavaDoc
echo "javadoc $JAVADOC_OPTIONS -d doc --module-path mlib --module-source-path src $(find src -name \"*.java\")"
$JAVA_HOME/bin/javadoc $JAVADOC_OPTIONS  -d doc \
    --add-exports java.base/jdk.internal.misc=modmain \
    --add-exports moda/pkgainternal=modmain \
    --module-path mlib \
    --module-source-path src $(find src -name "*.java") \
    2>&1
