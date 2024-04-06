docker build -t kasm-image .
docker run --name kasm-container -d -p 8000:8000 -v $(pwd):/code kasm-image

#connect to turborepo
git subtree add --prefix=apps/kasm https://github.com/valiantlynx/kasm.git main --squash
git subtree pull --prefix=apps/kasm https://github.com/valiantlynx/kasm.git main --squash
git subtree push --prefix=apps/kasm https://github.com/valiantlynx/kasm.git main