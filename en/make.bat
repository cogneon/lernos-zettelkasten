@echo off
echo Starting lernOS Guide Generation ...

REM Variables
set filename="lernOS-Zettelkasten-Guide-en"
set chapters=./src/index.md ./src/1-1-Lebenslanges-Lernen-und-Wissensarbeit.md ./src/1-2-lernOS-Canvas.md ./src/1-3-lernOS-Flow.md ./src/1-4-lernOS-Workplace.md ./src/1-5-lernOS-Memex.md ./src/2-0-Grundlagen.md ./src/2-0-Lernpfad-Ueberblick.md ./src/2-1-woche-0.md ./src/2-1-woche-1.md ./src/2-1-woche-2.md ./src/2-1-woche-3.md ./src/2-1-woche-4.md ./src/2-1-woche-5.md ./src/2-1-woche-6.md ./src/2-1-woche-7.md ./src/2-1-woche-8.md ./src/2-1-woche-9.md ./src/2-1-woche-10.md ./src/2-1-woche-11.md ./src/2-1-Kata-0.md ./src/2-1-Kata-1.md ./src/2-1-Kata-2.md ./src/2-1-Kata-3.md ./src/2-1-Kata-4.md ./src/2-1-Kata-5.md ./src/2-1-Kata-6.md ./src/2-1-Kata-7.md ./src/2-1-Kata-8.md ./src/2-1-Kata-9.md ./src/2-1-Kata-10.md ./src/2-1-Kata-11.md ./src/2-1-Kata-12.md ./src/2-1-Kata-13.md ./src/2-1-Kata-14.md ./src/2-1-Kata-15.md ./src/2-1-Kata-16.md ./src/2-1-Kata-17.md ./src/3-0-1-was-ist-markdown.md ./src/3-0-2-proprietaeres-Format-zu-MD.md ./src/3-0-3-Guide-PKM-mit-OneNote.md ./src/3-0-0-Danksagung.md ./src/3-0-99-Aenderungshistorie.md


REM Delete Old Versions
echo Deleting old versions ...
del %filename%.*
del LernOS-Zettelkasten.zip

REM Create Web Version (mkdocs)
echo Creating Web Version ...
mkdocs build

REM Create Microsoft Word Version (docx)
echo Creating Word version ...
pandoc metadata.yaml --from markdown -s --resource-path="./src" --number-sections -V lang=de-de -o %filename%.docx %chapters%

REM Create HTML Version (html)
echo Creating HTML version ...
pandoc metadata.yaml --from markdown -s --resource-path="./src" --number-sections -V lang=de-de -o %filename%.html %chapters%

REM Create PDF Version (pdf)
echo Creating PDF version ...
pandoc metadata.yaml --from markdown -s --resource-path="./src" --template lernOS --number-sections --toc -V lang=de-de -o %filename%.pdf %chapters%

REM Create eBook Versions (epub, mobi)
echo Creating eBook versions ...
magick -density 300 %filename%.pdf[0] src/images/ebook-cover.jpg
magick mogrify -size 2500x2500 -resize 2500x2500 src/images/ebook-cover.jpg
magick mogrify -crop 1563x2500+102+0 src/images/ebook-cover.jpg
pandoc metadata.yaml --from markdown -s --resource-path="./src" --epub-cover-image=src/images/ebook-cover.jpg --number-sections --toc -V lang=de-de -o %filename%.epub %chapters%
ebook-convert %filename%.epub %filename%.mobi

REM update Vault
echo updating vault ...
updateObsidianVault.exe
