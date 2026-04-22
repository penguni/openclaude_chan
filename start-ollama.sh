#!/bin/bash

# Ollama Gemma 모델 연동 실행 스크립트
# 이 스크립트는 OpenClaude를 Anthropic 대신 로컬 Ollama 모델로 구동합니다.

export CLAUDE_CODE_USE_OPENAI=1
export OPENAI_BASE_URL=http://localhost:11434/v1
export OPENAI_MODEL=gemma2:9b
export OPENAI_API_KEY=ollama

echo "---------------------------------------------------------"
echo " Starting OpenClaude gRPC Server"
echo " Provider: Ollama (OpenAI-compatible)"
echo " Model: $OPENAI_MODEL"
echo " Endpoint: $OPENAI_BASE_URL"
echo "---------------------------------------------------------"

# gRPC 서버 실행
bun dev:grpc
