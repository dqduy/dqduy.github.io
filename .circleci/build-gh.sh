echo "Git Status"
echo "===================================="
git status
echo "===================================="

echo "Current directory is "
pwd
ls -l -a

echo -e "\n"
echo "Build is starting..."

pelican

echo "Output files are:"
ls -l -a output