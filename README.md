# 🧑‍💻 Claude Code

## 🐳 Usage
```bash
export ANTHROPIC_AUTH_TOKEN=sk-xxxx
docker run --rm -it -v "$(pwd):/app" -e ANTHROPIC_AUTH_TOKEN="$ANTHROPIC_AUTH_TOKEN" ghcr.io/aahl/claude-code
```

## 💾 Alias
Add this alias to your shell configuration (.bashrc, .zshrc, etc.) for quick access:
```bash
export ANTHROPIC_AUTH_TOKEN=sk-xxxx
alias claude='docker run --rm -it -v "$(pwd):/app" -e ANTHROPIC_AUTH_TOKEN="$ANTHROPIC_AUTH_TOKEN" ghcr.io/aahl/claude-code claude'
```

## 🇨🇳 Any Router
[Any Router](https://anyrouter.top/register?aff=1JNV)是一家国内Claude Code中转站，通过此链接注册送$100免费额度(限时福利)。
```bash
export ANTHROPIC_BASE_URL=https://anyrouter.top
export ANTHROPIC_AUTH_TOKEN=sk-xxxx
alias claude='docker run --rm -it -v "$(pwd):/app" -e ANTHROPIC_BASE_URL="$ANTHROPIC_BASE_URL" -e ANTHROPIC_AUTH_TOKEN="$ANTHROPIC_AUTH_TOKEN" -e APK_MIRROR=mirrors.ustc.edu.cn -e NPM_REGISTRY=https://registry.npmmirror.com ghcr.nju.edu.cn/aahl/claude-code claude'
```

## 🔗 Links
- https://anyrouter.top/register?aff=1JNV
