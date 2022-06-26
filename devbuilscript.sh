git --git-dir /home/lind/lind_project/src/lind_glibc/.git remote update origin --prune;
git --git-dir /home/lind/lind_project/src/native_client/.git remote update origin --prune;
git --git-dir /home/lind/lind_project/src/safeposix-rust/.git remote update origin --prune;
git --git-dir /home/lind/lind_project/.git remote update origin --prune;


# push branches
git --git-dir /home/lind/lind_project/src/lind_glibc/.git checkout --force remotes/origin/develop;
git --git-dir /home/lind/lind_project/src/native_client/.git checkout --force remotes/origin/develop;
git --git-dir /home/lind/lind_project/src/safeposix-rust/.git checkout --force remotes/origin/develop;
git --git-dir /home/lind/lind_project/.git checkout --force remotes/origin/develop;

# installs
make rustposix;  
make nacl; 
make glibc; 
make install;
