echo "Deploy is starting"
echo "===================================="
echo "Current directory is "
pwd

#Step 1: Clone master branch to CIRCLE_WORKING_DIRECTORY with named "master"
git clone -b master https://github.com/dqduy/dqduy.github.io.git

echo "List files before process: "
ls -l -a master

#Step 2: Move some file from master branch to CIRCLE_WORKING_DIRECTORY
#List: README.md, CNAME, .gitignore
mv master/README.md .
#mv master/CNAME .
#mv master/.gitignore .

#Step 3: Copy content from output dir to master dir
rm -r master/*
cp output/* master

#Step 4: Move some file from CIRCLE_WORKING_DIRECTORY to master branch
#List: README.md, CNAME, .gitignore
mv README.md master
cp CNAME master
#mv .gitignore master

echo "List files after process: "
ls -l -a master

#Step 5: Commit and push to master branch
cd master #
git add -A 
git commit -m "Apply changes"
git push

#Step 6: Clean master dir
cd ..
rm -r master
