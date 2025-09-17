# FIREBIRD SQL

Configurações para conexão.
No arquivo de configuração "dbinfo.ini", o protocol deve ser: <b>firebird</b>

# No Windows  
  
- Na pasta raiz do seu aplicativo, coloque as seguintes DLLs:
  - fbclient.dll
  - fbclient-4.0.dll
  - sqlite3.dll
   
  Se ocorrer erro ao conectar: System Error: (OS Code 193), faça o seguinte: 
  - Renomeie o arquivo fbcliente.dll para fbclient.dll.old
  - Renomeie o arquivo fbcliente-4.0.dll para fbclient.dll
  
  Pode ser necessário instalar o Visual C++ Redistributable na versão mais recente, pois pode<br>
  ser necessário o arquivo MSVCR100.dll (ou outra versão).<br>
  Neste caso, instale vcredist_x64.exe ou vcredist_x86.exe, conforme a versão do seu Windows.<br>
  Pode baixar direto do site da Microsoft, faça a pesquisa no Google...
  
 - O arquivo "windows_libs.zip" contém diversas DLLs que podem ser utilizadas, caso<br>
    as duas DLLs acima não sejam suficientes.<br>
<hr>

# No Linux

O cliente é a biblioteca compartilhada libfbclient.so.

Em distribuições modernas, geralmente já existe pacote oficial.

- Instalação no Debian/Ubuntu

  sudo apt update <br>
  sudo apt install firebird3.0-client   (cliente)

  ou
 
  sudo apt install firebird3.0-server   (servidor + cliente)

Isso instala libfbclient.so em /usr/lib/x86_64-linux-gnu/ (ou similar).

- Instalação no Arch/Manjaro

  sudo pacman -S libfbclient (cliente)
  
  ou
  
  sudo pacman -S firebird  (servidor + cliente)

A biblioteca libfbclient.so fica em /usr/lib/

LD_LIBRARY_PATH (se instalar manualmente)

Se você baixar o tar.gz do site do Firebird, terá que descompactar e ajustar o LD_LIBRARY_PATH, por exemplo:

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/firebird/lib
  
  
 

