#!/bin/bash

# Docs: https://developer.1password.com/docs/cli/reference/commands/signin/
# スクリプトからだと--accountフラグが認識されないため手動で入力する必要がある
eval "$(op signin)"

op inject --force --in-file .env.local.template --out-file .env
