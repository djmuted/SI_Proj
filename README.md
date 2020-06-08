# Projekt z SI - gra Morabaraba

Aby dokonać wdrożenia projektu należy mieć zainstalowanego Dockera i wykonać następujące komendy:
```
git clone https://github.com/djmuted/SI_Proj
cd SI_Proj
docker build --tag morabaraba:1.0 .
docker run --publish 9898:80 --detach --name morabaraba morabaraba:1.0
```
Frontend projektu będzie dostępny pod adresem http://localhost:9898/

## Kod projektu
Projekt został rozbity na poszczególne części, których kod można odnaleźć w następujących repozytoriach:

- Rdzeń serwera (WebSocket/TCP): https://github.com/djmuted/Redfox
- Logika gry Morabaraba do serwera: https://github.com/djmuted/MorabarabaExtension
- Frontend klienta: https://github.com/Vesqus/MorabarabaClient
- Sztuczna inteligencja z algorytmem minimax: https://github.com/arturbalcz/Morabaraba---AI/
