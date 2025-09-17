# ORACLE SQL

Configurações para conexão.<br>
No arquivo de configuração "dbinfo.ini", o protocol deve ser: <b>oracle</b>

# No Windows
  
- Na pasta raiz do seu aplicativo, coloque as seguintes DLLs:
  - oci.dll
  - ociw32.dll
  - oraociei.dll (ou oraociei11.dll)  
  - sqlite3.dll
  
  Se ocorrer o erro: 
    Não foi possível localizar o ponto de entrada dp procedimento GetOverlappedResultEx <br>
    na biblioteca de vínculo dinâmico KERNELL32.dll, você pode estar usando arquivos (DLLs) <br>
    mais recentes que a versão do seu Windows ou mais antigas.
    
  Estes arquivos podem ser baixados aqui: https://www.oracle.com/database/technologies/instant-client/downloads.html
  
  📌 Teste

  Depois de instalar, abra o Prompt de Comando e rode:

  sqlplus usuario/senha@//host:porta/servico

  
  Pode ser necessário instalar o Visual C++ Redistributable na versão mais recente, pois pode<br>
  ser necessário o arquivo MSVCR100.dll (ou outra versão).<br>
  Neste caso, instale vcredist_x64.exe ou vcredist_x86.exe, conforme a versão do seu Windows.<br>
  Pode baixar direto do site da Microsoft, faça a pesquisa no Google...
  
 - O arquivo "windows_libs.zip" contém diversas DLLs que podem ser utilizadas, caso<br>
    as duas DLLs acima não sejam suficientes.<br>
<hr>

# No Linux

  Baixe o instalador por aqui: https://www.oracle.com/database/technologies/instant-client/downloads.html
  
  Dependendo da versão, você também vai ter junto:<br>
  libnnz*.so <br>
  libociei.so <br>
  libons.so (às vezes para RAC/ONS) <br>

- Outras formas de instalar:
  
  - Debian/Ubuntu (APT)

      Não tem no repositório oficial, mas a Oracle fornece pacotes .deb a partir do Oracle Instant Client 21c.

      Exemplo (Ubuntu/Debian 64 bits):

      Baixe os .deb no site da Oracle (Instant Client Basic e SQL*Plus se quiser).

      wget https://download.oracle.com/otn_software/linux/instantclient/219000/oracle-instantclient-basic_21.9.0.0.0-1_amd64.deb
      wget https://download.oracle.com/otn_software/linux/instantclient/219000/oracle-instantclient-sqlplus_21.9.0.0.0-1_amd64.deb

      Instale com apt:

      sudo apt install ./oracle-instantclient-basic_21.9.0.0.0-1_amd64.deb
      sudo apt install ./oracle-instantclient-sqlplus_21.9.0.0.0-1_amd64.deb


      Confirme a presença de libclntsh.so:

      dpkg -L oracle-instantclient-basic | grep libclntsh

  - Arch / Manjaro (pacman via AUR)

      No Arch/Manjaro, a Oracle não mantém pacote oficial, mas há AURs mantidos pela comunidade:

      oracle-instantclient-basic <br>
      oracle-instantclient-sqlplus <br>
      oracle-instantclient-tools <br>

      Instalação (com yay, por exemplo):

      yay -S oracle-instantclient-basic <br>
      yay -S oracle-instantclient-sqlplus     (se quiser SQL*Plus) <br>

      Isso já instala em /usr/lib/oracle/ e cuida de dependências no ldconfig.
  
  
 

