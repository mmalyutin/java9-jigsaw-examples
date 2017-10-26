. ../env.sh

rm -rf doc
mkdir -p doc

# generate JavaDoc
echo "javadoc $JAVADOC_OPTIONS -d doc --module-path mlib --module-source-path src $(find src -name \"*.java\")"
$JAVA_HOME/bin/javadoc $JAVADOC_OPTIONS  -d doc \
     --add-modules modb,modc            \
     --add-reads   modmain=modb         \
     --add-reads   modb=modc            \
     --add-exports modb/pkgb=modmain    \
     --add-exports modc/pkgc=modb       \
    --module-path mlib \
    --module-source-path src $(find src -name "*.java")
