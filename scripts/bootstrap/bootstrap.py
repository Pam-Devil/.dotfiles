#TODO: Implement the main script function

systems = {
    arch:packman,
    android:pkg,
}

def main():
    system = detect_system()
    resolve_dependencies()
    set_SSH_Client()
    install_packages()
    stow_dotfiles()
    return 0
main()
