# MARIADB SERVER e MYSQL SERVER

Configurações para conexão.

MariaDB: No arquivo de configuração "dbinfo.ini", o protocol deve ser: <b>mariadb</b>
MySQL: No arquivo de configuração "dbinfo.ini", o protocol deve ser: <b>mysql</b>

# No Windows

- MariaDB
  
  - Na pasta raiz do seu aplicativo, coloque as seguintes DLLs:
    - libmariadb.dll
    - sqlite3.dll
  
- MySQL 
  
  - Na pasta raiz do seu aplicativo, coloque as seguintes DLLs:
    - libmysql.dll
    - sqlite3.dll

  Pode ser necessário instalar o Visual C++ Redistributable na versão mais recente, pois pode<br>
  ser necessário o arquivo MSVCR100.dll (ou outra versão).<br>
  Neste caso, instale vcredist_x64.exe ou vcredist_x86.exe, conforme a versão do seu Windows.<br>
  Pode baixar direto do site da Microsoft, faça a pesquisa no Google...
  
 - O arquivo "windows_libs.zip" contém diversas DLLs que podem ser utilizadas, caso<br>
    as duas DLLs acima não sejam suficientes.<br>
<hr>
# No Linux

- MariaDB

     Como o MariaDB é "drop-in replacement" do MySQL, muitas vezes usa a mesma libmysqlclient.so.<br>
     Mas se você quiser a lib própria:

  - Debian/Ubuntu:

    sudo apt install libmariadb-dev

  - Manjaro/Arch:

    sudo pacman -S mariadb-libs

  Isso instala libmariadb.so (às vezes também cria links para libmysqlclient.so).

- MySQL

  - Debian/Ubuntu:

    sudo apt install libmysqlclient-dev

  - Manjaro/Arch:

    sudo pacman -S libmysqlclient

  Isso instala libmysqlclient.so

<hr>
🔹 Onde ficam os arquivos *.so?

Debian/Ubuntu: geralmente em /usr/lib/x86_64-linux-gnu/

Manjaro/Arch: em /usr/lib/

Exemplo:

ls /usr/lib/x86_64-linux-gnu/libpq.so <br>
ls /usr/lib/libmysqlclient.so <br>
ls /usr/lib/libmariadb.so 
