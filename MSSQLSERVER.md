# MS SQL SERVER

Configurações para conexão com o SQL Server.

# No Windows

- Na pasta raiz do seu aplicativo, coloque as seguintes DLLs:
  - dblib.dll
  - libiconv.dll
  - sqlite3.dll
  
  Pode ser necessário instalar o Visual C++ Redistributable na versão mais recente, pois pode<br>
  ser necessário o arquivo MSVCR100.dll (ou outra versão).<br>
  Neste caso, instale vcredist_x64.exe ou vcredist_x86.exe, conforme a versão do seu Windows.<br>
  Pode baixar direto do site da Microsoft, faça a pesquisa no Google...
  
  - O arquivo "windows_libs.zip" contém diversas DLLs que podem ser utilizadas, caso<br>
    os três arquivos acima não sejam suficientes.<br>
  - dblib.dll pode ser baixado aqui: https://downloads.freepascal.org/fpc/contrib/windows/

# No Linux

- Instale o pacote FreeTDS, que fornece a lib "libsybdb" ou "sybdb".
  - Arch Linux: sudo pacman -S freetds
  - Debian/Ubuntu: sudo apt install freetds-dev freetds-bin
  - Fedora/RHEL/CentOS: sudo dnf install freetds
- Após a instalação, verifique se o arquivo libsybdb.so existe, geralmente em um desses caminhos:

    /usr/lib/x86_64-linux-gnu/libsybdb.so<br>
    /usr/lib/libsybdb.so
 
    👉👉 Pode ser necessário criar um atalho para a lib:  
    
        sudo ln -s /usr/lib/libsybdb.so.5 /usr/lib/sybdb.so

- Testando a instalação do FreeTDS:

  tsql -h
  
- Testando a conexão:<br> 
  tsql -S 192.168.1.100 -U meuusuario -P minhasenha<br>
  tsql -H 192.168.1.100 -p 1433 -U meuusuario -P minhasenha -t 7.4
    
  select @@version;<br>
  go <br>
  quit <br>
