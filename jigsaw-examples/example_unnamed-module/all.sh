cat readme.md

echo "# -------------------------------------------------------------------------------------------------------------------------------"
sh ./clean.sh

sh ./compile.sh
echo "# -------------------------------------------------------------------------------------------------------------------------------"
sh ./compile-jars.sh
echo "# -------------------------------------------------------------------------------------------------------------------------------"
sh ./createvis.sh
echo "# -------------------------------------------------------------------------------------------------------------------------------"
sh ./run.sh
