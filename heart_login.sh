#!/data/data/com.termux/files/usr/bin/bash

# Heart Login — local demo only
# Does NOT collect, save, or transmit passwords.

PORT="${1:-8080}"
DIR="$HOME/heart-login"
mkdir -p "$DIR"

cat > "$DIR/index.html" <<'HTML'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Heart Login ❤️</title>
<style>
*{box-sizing:border-box}body{margin:0;min-height:100vh;display:grid;place-items:center;
font-family:system-ui;background:radial-gradient(circle at 50% 20%,#3b1025,#09090d 55%);
color:#fff;overflow:hidden}.bg{position:fixed;inset:0;pointer-events:none}
.bg span{position:absolute;animation:float 7s linear infinite;opacity:.35}
.bg span:nth-child(1){left:10%;font-size:22px;animation-delay:0s}.bg span:nth-child(2){left:75%;font-size:30px;animation-delay:2s}
.bg span:nth-child(3){left:45%;font-size:18px;animation-delay:4s}
@keyframes float{from{transform:translateY(110vh) rotate(0);opacity:0}
20%{opacity:.35}to{transform:translateY(-15vh) rotate(360deg);opacity:0}}
.card{width:min(90%,390px);padding:34px 30px;border:1px solid #ff4f7b55;border-radius:28px;
background:#151018dd;backdrop-filter:blur(18px);box-shadow:0 20px 70px #ff174433;text-align:center}
.heart{font-size:72px;filter:drop-shadow(0 0 18px #ff3b72);animation:beat 1.15s infinite}
@keyframes beat{50%{transform:scale(1.12)}}h1{margin:8px 0 5px}p{color:#aaa;margin:0 0 24px}
.input{display:flex;align-items:center;background:#0d0b10;border:1px solid #ffffff14;border-radius:14px;margin:10px 0;padding:0 14px}
.input span{opacity:.7}.input input{width:100%;padding:14px 10px;border:0;outline:0;background:transparent;color:#fff;font-size:15px}
button{width:100%;margin-top:14px;padding:14px;border:0;border-radius:14px;background:linear-gradient(135deg,#ff3b70,#ff174f);
color:white;font-weight:700;font-size:15px;cursor:pointer;box-shadow:0 8px 25px #ff174444}
#msg{min-height:22px;margin-top:15px;color:#ff8eaa}.note{font-size:11px;color:#777;margin-top:18px}
</style>
</head>
<body>
<div class="bg"><span>❤️</span><span>💗</span><span>💕</span></div>
<main class="card">
<div class="heart">❤️</div><h1>Welcome Back</h1><p>Sign in to continue</p>
<form id="f">
<div class="input"><span>👤</span><input id="u" autocomplete="off" placeholder="Username" required></div>
<div class="input"><span>🔒</span><input id="p" type="password" autocomplete="off" placeholder="Password" required></div>
<button>LOGIN ❤️</button>
</form>
<div id="msg"></div>
<div class="note">Local demo • credentials are never stored or sent</div>
</main>
<script>
f.onsubmit=e=>{e.preventDefault();msg.textContent="Demo login successful ❤️";p.value=""}
</script>
</body>
</html>
HTML

echo "❤️ Heart Login created: $DIR/index.html"
echo "🌐 Starting local server on http://127.0.0.1:$PORT"
cd "$DIR" || exit 1
python -m http.server "$PORT" --bind 127.0.0.1
