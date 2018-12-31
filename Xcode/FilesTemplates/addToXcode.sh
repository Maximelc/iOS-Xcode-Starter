templatesLocation="$HOME/Library/Developer/Xcode/Templates"

echo "Copying Xcode templates to" $templatesLocation
mkdir -p $templatesLocation
cp -r *.xctemplate $templatesLocation
echo "Done !"