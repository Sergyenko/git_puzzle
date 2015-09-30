git checkout -b step3
echo "# ============================================================
#   STEP 3: MANAGE COMMITS FROM ANOTHER BRANCH
# ============================================================
#   You got 3 feature branches featureA, featureB, featureC
#   Like this:
#
#          o---A1---A2---A3---o featureA
#         /
#   step3----B1---B2---B3---o featureB
#         \\
#          C1---C2---C3 featureC
###
#   GOAL:
#     1) Create fourth branch featureX
#     2) Copy to featureX commits: A1, B2, C3
#     3) Final structure of the tree should
#        look like this:
#
#          o---A1---A2---A3---o featureA
#         /
#   step3----B1---B2---B3---o featureB
#         \\
#          C1---C2---C3 featureC
#            \\
#              \\
#               A1---B2---C3 featureX
# ============================================================" > README
git checkout -b featureA

echo "A1" > featureA.txt
git add featureA.txt && git commit -m "A1"

echo "A2" >> featureA.txt
git add featureA.txt && git commit -m "A2"

echo "A3" >> featureA.txt
git add featureA.txt && git commit -m "A3"

git checkout step3

git checkout -b featureB

echo "B1" > featureB.txt
git add featureB.txt && git commit -m "B1"

echo "B2" >> featureB.txt
git add featureB.txt && git commit -m "B2"

echo "B3" >> featureB.txt
git add featureB.txt && git commit -m "B3"

git checkout step3

git checkout -b featureC

echo "C1" > featureC.txt
git add featureC.txt && git commit -m "C1"

echo "C2" >> featureC.txt
git add featureC.txt && git commit -m "C2"

echo "C3" >> featureC.txt
git add featureC.txt && git commit -m "C3"

git checkout step3

clear

cat README




