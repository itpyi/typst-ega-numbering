#!/bin/bash
# use-version.sh - 按需部署任意 Git 标签版本到本地包目录

if [ $# -ne 1 ]; then
  echo "Usage: $0 <tag>" >&2
  echo "Example: $0 1.0.0" >&2
  exit 1
fi

TAG=$1
PACKAGE_NAME="ega-numbering" # 🔄 替换为您的包名
TARGET_DIR="$HOME/Library/Application Support/typst/packages/local/$PACKAGE_NAME/$TAG"

# 检查标签是否存在
if ! git rev-parse "$TAG" >/dev/null 2>&1; then
  echo "Error: Git tag '$TAG' does not exist!" >&2
  exit 1
fi

# 清理目标目录
if [ -d "$TARGET_DIR" ]; then
  rm -rf "$TARGET_DIR"
  echo "🧹 Cleared existing directory: $TARGET_DIR"
fi

# 创建目标目录
mkdir -p "$TARGET_DIR"

# 检出标签对应的 src 内容到目标目录
git archive --format=tar "$TAG" src/ | tar -x --strip-components=1  -C "$TARGET_DIR"

echo "✅ Deployed version $TAG to local package directory"
echo "📂 Path: $TARGET_DIR"
echo "💡 Use in your document: #import '@local/$PACKAGE_NAME:$TAG': ..."