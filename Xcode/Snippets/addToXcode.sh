snippetsLocation="$HOME/Library/Developer/Xcode/UserData/CodeSnippets"

echo "Copying Xcode snippets to" $snippetsLocation
mkdir -p $snippetsLocation
cp *.codesnippet $snippetsLocation
echo "Done !"