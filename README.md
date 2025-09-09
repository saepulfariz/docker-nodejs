# Docker Node Js App

## 🔄 Running Project
- For Development
```
docker compose up -d --build
```
- For Production

Edit .env:
```
NODE_ENV=production
```

Then running this command:
```
docker compose up -d --build
```

## Check log & Status
```
docker exec -it node_app pm2 list
docker exec -it node_app pm2 logs
```

## 📝 Notes

- Volumes are only active in development for mounting src.
- In production, the source code is copied into the image from COPY src ./src.
