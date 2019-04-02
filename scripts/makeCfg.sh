fileName=$(echo "$1"| rev | cut -d'.' -f2- | rev)
fileDir=$(echo "$1"| rev | cut -d'/' -f2- | rev)
currentDir=$(pwd)

opt-3.9 -dot-cfg $1
mkdir -p "/tmp/${fileDir}"
mv cfg.main.dot "/tmp/${fileName}.dot"
cd "/tmp/${fileDir}"
/scripts/allfigs2pdf
mv "/tmp/${fileName}.pdf" "/${currentDir}/${fileName}.pdf"
rm -r "/tmp/${fileDir}"

echo "File Generated: ${currentDir}/${fileName}.pdf"