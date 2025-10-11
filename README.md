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

## 🇨🇳 GLM 4.5
使用GLM的最新模型（glm-4.5）驱动您的Claude Code。[申请ApiKey](https://www.bigmodel.cn/invite?icode=EwilDKx13%2FhyODIyL%2BKabHHEaazDlIZGj9HxftzTbt4%3D)
> GLM还提供了其他很多[免费好用](https://docs.bigmodel.cn/cn/guide/models/free/glm-4.5-flash)的模型！
```bash
# vim ~/.bashrc
export ANTHROPIC_BASE_URL=https://open.bigmodel.cn/api/anthropic
export ANTHROPIC_AUTH_TOKEN=sk-xxxx
export ANTHROPIC_MODEL=glm-4.5-air # 免费模型: glm-4.5-flash
alias claude='docker run --rm -it -v "$(pwd):/app" -v claude-code-data:/root -e ANTHROPIC_BASE_URL="$ANTHROPIC_BASE_URL" -e ANTHROPIC_AUTH_TOKEN="$ANTHROPIC_AUTH_TOKEN" -e ANTHROPIC_MODEL="$ANTHROPIC_MODEL" -e APK_MIRROR=mirrors.ustc.edu.cn -e NPM_REGISTRY=https://registry.npmmirror.com ghcr.nju.edu.cn/aahl/claude-code claude'
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
- [GLM Coding Plan·限时优惠](https://www.bigmodel.cn/claude-code?ic=WTOWFVEJXH)
- https://www.bigmodel.cn/invite?icode=EwilDKx13%2FhyODIyL%2BKabHHEaazDlIZGj9HxftzTbt4%3D
- https://docs.bigmodel.cn/cn/guide/develop/claude
- https://anyrouter.top/register?aff=1JNV
- https://linux.do/t/topic/785059
