## update the Vault
# delete the old files in vault first
rm -rf LernOS-Zettelkasten/Lernpfad/*.md

# Delete content from the images folder
rm -rf LernOS-Zettelkasten/Lernpfad/images/*

# Copy .md files to the Lernpfad folder
cp -r src/*.md LernOS-Zettelkasten/Lernpfad

# Remove the script block from the .md files
for file in LernOS-Zettelkasten/Lernpfad/*.md; do
  sed -i 's/<script.*?>//g' "$file"
done

# Copy non-.svg images to the Lernpfad/images folder
cp -r src/images/*.jpg LernOS-Zettelkasten/Lernpfad/images
cp -r src/images/*.png LernOS-Zettelkasten/Lernpfad/images

# Create a ZIP archive
zip -r LernOS-Zettelkasten.zip LernOS-Zettelkasten
