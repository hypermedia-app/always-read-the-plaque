cd ./apps/readtheplaque || exit

npx @hydrofoil/talos put ./resources ./resources.prod \
  --api https://always-read-the-plaque.herokuapp.com \
  --endpoint $DB_URL \
  --user $DB_USER \
  --password $DB_PASSWORD

npx @hydrofoil/talos put-vocabs \
  --apiDoc https://always-read-the-plaque.herokuapp.com/api \
  --endpoint $DB_URL \
  --user $DB_USER \
  --password $DB_PASSWORD
