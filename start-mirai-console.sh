#!/usr/bin/env bash
echo -e '\033]2;Mirai Console\007'
java -cp "/usr/src/mirai/libs/*" net.mamoe.mirai.console.terminal.MiraiConsoleTerminalLoader $*