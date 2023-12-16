## update the Vault
# delete the old files in vault first
rm -rf ./en/LernOS-Zettelkasten/Lernpfad/*.md

# Delete content from the images folder
rm -rf ./en/LernOS-Zettelkasten/Lernpfad/images/*

# Copy .md files to the Lernpfad folder
cp -r ./en/src/*.md ./en/LernOS-Zettelkasten/Lernpfad

# Remove the script block from the .md files
for file in ./de/LernOS-Zettelkasten/Lernpfad/*.md; do
  sed -i 's/<script.*?>//g' "$file"
done

# Copy non-.svg images to the Lernpfad/images folder
cp -r ./en/src/images/*.jpg ./en/LernOS-Zettelkasten/Lernpfad/images
cp -r ./en/src/images/*.png ./en/LernOS-Zettelkasten/Lernpfad/images


# Create a ZIP archive
cd ./en
zip -r LernOS-Zettelkasten.zip LernOS-Zettelkasten
