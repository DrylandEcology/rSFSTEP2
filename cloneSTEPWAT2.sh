#Clones STEPWAT2, compiles it, and then removes any files that are not necessary for running rSFSTEP2
#To run in a terminal: ./cloneSTEPWAT2.sh

cd R_program
#module load git/2.17.1
wait
git clone --branch fg_specificity_sxw --recursive https://github.com/DrylandEcology/STEPWAT2.git
wait
cd STEPWAT2
make
wait
#remove everything that is not needed after the make
rm -rf .git*
rm *.c
rm *.h
rm -rf tools
rm -rf sw_src
rm -rf obj
rm README.md
rm appveyor.yml
rm DLM_change_log.txt
rm makefile
rm stepwat_test_job.sh
rm -rf sqlite-amalgamation
wait
cd ../..
