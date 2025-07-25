# 🧑‍💻 Claude Code

## 🐳 Usage
```bash
export ANTHROPIC_AUTH_TOKEN=sk-xxxx
docker run --rm -it -v "$(pwd):/app" -v claude-code-data:/root -e ANTHROPIC_AUTH_TOKEN="$ANTHROPIC_AUTH_TOKEN" ghcr.io/aahl/claude-code
```

## 💾 Alias
Add this alias to your shell configuration (`.bashrc`, `.zshrc`, etc.) for quick access:
```bash
export ANTHROPIC_AUTH_TOKEN=sk-xxxx
alias claude='docker run --rm -it -v "$(pwd):/app" -v claude-code-data:/root -e ANTHROPIC_AUTH_TOKEN="$ANTHROPIC_AUTH_TOKEN" ghcr.io/aahl/claude-code claude'
```

## 🇨🇳 Kimi K2
使用Kimi的最新模型（kimi-k2-0711-preview）驱动您的Claude Code。[申请ApiKey](https://platform.moonshot.cn/console/api-keys)
```bash
# vim ~/.bashrc
export ANTHROPIC_BASE_URL=https://api.moonshot.cn/anthropic
export ANTHROPIC_AUTH_TOKEN=sk-xxxx
alias claude='docker run --rm -it -v "$(pwd):/app" -v claude-code-data:/root -e ANTHROPIC_BASE_URL="$ANTHROPIC_BASE_URL" -e ANTHROPIC_AUTH_TOKEN="$ANTHROPIC_AUTH_TOKEN" -e APK_MIRROR=mirrors.ustc.edu.cn -e NPM_REGISTRY=https://registry.npmmirror.com ghcr.nju.edu.cn/aahl/claude-code claude'
```

## 🇨🇳 Any Router
[Any Router](https://anyrouter.top/register?aff=1JNV)是一家国内Claude Code中转站，通过此链接注册送$100免费额度(限时福利)。
```bash
# vim ~/.bashrc
export ANTHROPIC_BASE_URL=https://anyrouter.top
export ANTHROPIC_AUTH_TOKEN=sk-xxxx
alias claude='docker run --rm -it -v "$(pwd):/app" -v claude-code-data:/root -e ANTHROPIC_BASE_URL="$ANTHROPIC_BASE_URL" -e ANTHROPIC_AUTH_TOKEN="$ANTHROPIC_AUTH_TOKEN" -e APK_MIRROR=mirrors.ustc.edu.cn -e NPM_REGISTRY=https://registry.npmmirror.com ghcr.nju.edu.cn/aahl/claude-code claude'
```

## 🔗 Links
- [Docker Image Tags](https://github.com/aahl/claude-code/pkgs/container/claude-code/versions?filters[version_type]=tagged)
- https://anyrouter.top/register?aff=1JNV
- https://linux.do/t/topic/785059
