cat readme.md

echo "# -------------------------------------------------------------------------------------------------------------------------------"
sh ./clean.sh

sh ./compile.sh
echo "# -------------------------------------------------------------------------------------------------------------------------------"
sh ./compile-patch.sh
echo "# -------------------------------------------------------------------------------------------------------------------------------"
sh ./createvis.sh
echo "# -------------------------------------------------------------------------------------------------------------------------------"
sh ./run.sh
echo "# -------------------------------------------------------------------------------------------------------------------------------"
sh ./run-patch.sh