git checkout -b step4
echo "# ============================================================
#   STEP 4: GERRIT WORKFLOW
# ============================================================
#   You work on a feature4 using Gerrit as a remote repo and
#   linear branching model.
#   In the middle of development process somebody joins the
#   process and starting implementation of the same
#   feature.
#                           o---->[C3--->C4]---o feature4
#                           |
#               o--->[C1--->C2--->C3]---o feature4
#              /
#   step4 --->o----F1---F2---F3---o GERRIT
###
#   GOAL:
#     1) Avoid code races and keep feature4 complete
#     2) Submit feature4 as F4 to GERRIT and make it a
#         compound result of C1 - C4
#     3) Suggest model of collaboration using GERRIT for
#         distributed team.
#
# ============================================================" > README
git checkout -b GERRIT

echo "F1" > GERRIT.txt
git add GERRIT.txt && git commit -m "F1"

echo "F2" >> GERRIT.txt
git add GERRIT.txt && git commit -m "F2"

echo "F3" >> GERRIT.txt
git add GERRIT.txt && git commit -m "F3"

git checkout step4

git checkout -b feature4

echo "C1" > feature4.txt
git add feature4.txt && git commit -m "C1"

echo "C2" >> feature4.txt
git add feature4.txt && git commit -m "C2"

git checkout -b feature4_sergey

echo "C3 from dev2" >> feature4.txt
git add feature4.txt && git commit -m "C3 from dev2"

echo "C4" >> feature4.txt
git add feature4.txt && git commit -m "C4"

git checkout feature4
echo "C3 from dev1" >> feature4.txt
git add feature4.txt && git commit -m "C3 from dev1"

git checkout step4

clear

cat README




