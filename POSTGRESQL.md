# POSTGRESQL

Configurações para conexão.
No arquivo de configuração "dbinfo.ini", o protocol deve ser: <b>postgresql</b>

# No Windows
  
  - Na pasta raiz do seu aplicativo, coloque as seguintes DLLs:
    - libcrypto-3-x64.dll
    - libiconv-2.dll
    - libintl-9.dll
    - libpq-15.dll
    - libssl-3-x64.dll
    - libwinpthread-1.dll
    - sqlite3.dll

  Pode ser necessário instalar o Visual C++ Redistributable na versão mais recente, pois pode<br>
  ser necessário o arquivo MSVCR100.dll (ou outra versão).<br>
  Neste caso, instale vcredist_x64.exe ou vcredist_x86.exe, conforme a versão do seu Windows.<br>
  Pode baixar direto do site da Microsoft, faça a pesquisa no Google...
  
 - O arquivo "windows_libs.zip" contém diversas DLLs que podem ser utilizadas, caso<br>
    as duas DLLs acima não sejam suficientes.<br>

<hr>
    
# No Linux

  Os arquivos .so ficam em algo como /usr/lib/x86_64-linux-gnu/ ou /usr/lib/.
 
  - Debian/Ubuntu:

    sudo apt install libpq-dev

  - Manjaro/Arch:

    sudo pacman -S postgresql-libs

  Isso instala a libpq.so (biblioteca do cliente PostgreSQL).

