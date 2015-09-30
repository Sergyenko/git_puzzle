git checkout -b step0

echo "# ============================================================
#   STEP 0: BABY STEPS
# ============================================================
#   Here we try to make some baby steps and play with
#   merge, stash and rebase
#
#        o---o---o---o---o feature1
#       /
#   ---o---o step0
#       \\
#        o---o---o feature2
###
#   GOAL:
#     1) Have finally only one branch step0 with all commits from
+#     feature1 and then all commits from feature2
#     2) Learn how git stash might help
# ============================================================" > README

git checkout -b feature1

echo "Well, it's one for the money" > feature1.txt
git add feature1.txt && git commit -m "feature1-1"

echo "Two for the show" >> feature1.txt
git add feature1.txt  && git commit -m "feature1-2"

echo "Three to get ready" >> feature1.txt
echo "Now go, cat, go!" >> feature1.txt
git add feature1.txt && git commit -m "feature1-3"

git checkout step0
git checkout -b feature2

echo "But don't you" > feature2.txt
git add feature2.txt && git commit -m "feature2-1"

echo "Step on my blue suede shoes" >> feature2.txt
git add feature2.txt && git commit -m "feature2-2"

git checkout step0

clear

cat README
