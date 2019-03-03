# 🔌

[https://img.shields.io/badge/docs--blue.svg](https://determined-roentgen-236172.netlify.com/)

A simple (and incomplete) discord lib written in [Emojicode](https://www.emojicode.org/)

Note that this uses my emojicode [nix-expr](https://gist.github.com/MagnificentPako/ff66a6c2f0703ad842a58f703eb09665) 
to build correctly and you have to change the path for it to work (and of course
download the .nix file). It also depends on [emojicode-net](https://github.com/MagnificentPako/emojicode-net).

Here's a quick `echo` example:

```
📜🔤client/client.🍇🔤

🏁🍇

    🔤Some random token🔤 ➡️ token

    🆕🔌🆕token❗️ ➡️ client

    💞client 🔤message🔤 🍇msg_⚪️
        🍺🔲msg_ 🖊 ➡️ msg
        ↪️🎼💬msg❓ 🔤.echo🔤❗️ 🍇
            🔈client 🏠msg❓ 🔪💬msg❓ 5 📐💬msg❓❗❗️❗️
        🍉
    🍉❗️

    🏃client❗️

🍉
```