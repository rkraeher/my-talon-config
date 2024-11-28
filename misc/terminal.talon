os: mac
app: iterm2
-
# kindred.pfizer

# utilities
prepare build: 
    insert("cp -r zip-slides/ ~/Desktop/zip-slides/ && z Desktop && zip -r zip-slides.zip zip-slides")
    key(enter)
previous directory: 
    insert("cd -")
    key(enter)

# npm
run dev: 
    insert("npm run dev")
    key(enter)
run build:
    insert("npm run build-prod")
    key(enter)
run upload:
    insert("npm run upload")
    key(enter)
run lint:
    insert("npm run lint")
    key(enter)
run format:
    insert("npm run format")
    key(enter)
