echo "Deploy is starting"
echo "===================================="
echo "Current directory is "
pwd

#Step 1: Clone master branch to CIRCLE_WORKING_DIRECTORY with named "master"
echo "Step 1"
echo "===================================="

git clone -b master https://github.com/dqduy/dqduy.github.io.git master

echo "List files before process: "
ls -l -a master

#Step 2: Move some file from master branch to CIRCLE_WORKING_DIRECTORY
#List: README.md, CNAME, .gitignore
echo "Step 2"
echo "===================================="
mv master/README.md .
#mv master/CNAME .
#mv master/.gitignore .

#Step 3: Copy content from output dir to master dir
echo "Step 3"
echo "===================================="

rm -r master/*
cp -r output/* master

#Step 4: Move some file from CIRCLE_WORKING_DIRECTORY to master branch
#List: README.md, CNAME, .gitignore
echo "Step 4"
echo "===================================="

mv README.md master
cp CNAME master
#mv .gitignore master

echo "List files after process: "
ls -l -a master

#Step 5: Commit and push to master branch
echo "Step 5"
echo "===================================="
cd master #
git config --global user.email "qduy88@gmail.com"
git config --global user.name "qduy"
git add -A 
git commit -m "Apply changes"
git push

#Step 6: Clean master dir
echo "Step 6"
echo "===================================="
cd ..
rm -rf master
