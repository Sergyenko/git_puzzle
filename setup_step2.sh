git checkout -b step2

echo "# ============================================================
#   STEP 2: MOVE FILE TO ANOTHER BRANCH
# ============================================================
#   There is work in progres on a several features, but
#   by mistake one file was commited to a wrong branch.
#
#                FILE.txt
#                |
#        o---o---o---o---o feature1
#       /
#   ---o---o step2
#       \\
#        o---o---o feature2
###
#   GOAL:
#     1) Find the plase where FILE.txt is stored
#     2) Remove it from that place on feature1
#     3) Move FILE.txt to feature2
#
#        o---o---o---o---o feature1
#       /
#   ---o---o step2
#       \\
#        o---o---o feature2
#            |
#            FILE.txt
# ============================================================" > README

git checkout -b feature1

echo "Well, it's one for the money" > feature1.txt
git add feature1.txt && git commit -m "feature1-1"

echo "Two for the show" >> feature1.txt
echo "This FILE is for feature2" > FILE.txt
git add feature1.txt FILE.txt  && git commit -m "feature1-2"

echo "Three to get ready" >> feature1.txt
echo "Now go, cat, go!" >> feature1.txt
git add feature1.txt && git commit -m "feature1-3"

git checkout step2
git checkout -b feature2

echo "But don't you" > feature2.txt
git add feature2.txt && git commit -m "feature2-1"

echo "Step on my blue suede shoes" >> feature2.txt
git add feature2.txt && git commit -m "feature2-2"

git checkout step2

clear

cat README
