vim-latex installieren:

    % sudo yum install vim-latex

schauen was installiert wurde:

    % repoquery --list vim-latex | grep ngerman
    /usr/share/vim/vimfiles/ftplugin/latex-suite/packages/ngerman

Damit die Deutschen Anführungszeichen auch in einer include oder input Datei gelten muss folgendes gemacht werden:

die Deutschen Anführungszeichen gelten dann in allen LaTex Dokumenten.

die ```let```-Befehle für SmartQuoteOpen und SmartQuoteClose aus der angegebenen Datei kopieren und in ```~/.vim/ftplugin/tex.vim``` kopieren (evlt. Anlegen).

oder in einem: ;-)

    % repoquery --list vim-latex | grep ngerman | xargs cat | grep SmartQuote >> ~/.vim/ftplugin/tex.vim
