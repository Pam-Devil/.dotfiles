#!/bin/zsh

DOTFILES_DIR="$HOME/.config"
TARGET_HOME="$HOME"
TARGET_CONFIG="$HOME/.config"

echo "🔗 Iniciando a criação de symlinks para dotfiles..."

for item in "$DOTFILES_DIR"/*; do
    name="$(basename "$item")"

    # Ignorar arquivos ou pastas ocultas dentro de .config
    [[ "$name" == .* ]] && continue

    # Caso especial: alguns dotfiles ficam direto em $HOME (ex: .zshrc, .vimrc)
    if [[ -f "$item" && "$name" == .* ]]; then
        link_target="$TARGET_HOME/$name"
    else
        # Normalmente linkamos para ~/.config/<name>
        link_target="$TARGET_CONFIG/$name"
    fi

    # Se o link já existir, perguntar se deve substituir
    if [[ -e "$link_target" || -L "$link_target" ]]; then
        echo "⚠️  $link_target já existe. Substituir? [s/N]"
        read -k1 resposta
        echo
        if [[ "$resposta" != [sS] ]]; then
            echo "⏭️  Ignorando $name"
            continue
        fi
        rm -rf "$link_target"
    fi

    ln -sfn "$item" "$link_target"
    echo "✅ Linkado $item ➜ $link_target"
done

echo "✨ Todos os links foram processados."

