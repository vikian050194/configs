gitFolder="git"

cd "/home/$USER"
mkdir "$gitFolder"
cd "$gitFolder"

repos=("py" "ToDo" "Square" "polyglot" "Templates" "Cluster" "controller" "DigitalBrain" "configs" "BSorting" "Chat" "CalculatorM" "KirillV" "vscode-ext-js" "vscode-ext-ts" "RegularExpressionToNFA" "TheoryOfProbability")

for repo in "${repos[@]}"
do
   git clone "https://github.com/vikian050194/$repo.git" "${repo,,}"
done