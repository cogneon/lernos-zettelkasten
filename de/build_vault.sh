## update the Vault
# delete the old files in vault first
rm -rf ./de/LernOS-Zettelkasten/Lernpfad/*.md

# Delete content from the images folder
rm -rf ./de/LernOS-Zettelkasten/Lernpfad/images/*

# Copy .md files to the Lernpfad folder
cp -r ./de/src/*.md LernOS-Zettelkasten/Lernpfad

# Remove the script block from the .md files
for file in ./de/LernOS-Zettelkasten/Lernpfad/*.md; do
  sed -i 's/<script.*?>//g' "$file"
done

# Copy non-.svg images to the Lernpfad/images folder
cp -r ./de/src/images/*.jpg LernOS-Zettelkasten/Lernpfad/images
cp -r ./de/src/images/*.png LernOS-Zettelkasten/Lernpfad/images


# Create a ZIP archive
zip -r ./de/LernOS-Zettelkasten.zip LernOS-Zettelkasten
