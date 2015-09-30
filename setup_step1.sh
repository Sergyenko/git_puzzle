git checkout -b step1

echo "# ============================================================
#   STEP 1: TOO MANY COMMITS
# ============================================================
#   Here we have a lot of useless commits for a Feature:
#
#        o---o---o---o---o step1
#       /
#   ---o---o master
###
#   GOAL:
#     1) Reduce all commits to a single one
#     2) One of the existing commits has bug, so find
#     find and fix it.
#     3) Come up to at least 2 different approaches
#
#        o--...--o step1
#       /
#   ---o---o master
#
# ============================================================" > README

echo "Eeny, meeny, miney, moe," > step1.txt
git add step1.txt
git commit -m "I've done it!"

echo "Catch a tiger by his toe," >> step1.txt
git add step1.txt
git commit -m "Completely done."

echo "#THIS IS BUGGY LINE:\nTO BE OR NOT TO BE" >> step1.txt
git add step1.txt
git commit -m "Hola! Midnight friday commit!!! (beer)"

echo "If he squeals, let him go," >> step1.txt
git add step1.txt
git commit -m "Done like never before!"

echo "Eeny, meeny, miney, moe." >> step1.txt
git add step1.txt
git commit -m "I forgot brain!! It's done now. For sure."

clear

cat README
