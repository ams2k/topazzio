# Topazzio
Este software desenvolvido em Lazarus/FreePascal, destina-se a criar o 
projeto completo em Lazarus/Freepascal, com base em tabelas de bancos
de dados ou de scripts de criação de tabelas. 
Cria projetos multi-plataforma (Linux e Windows). Sugiro instalar o seu
Lazarus via utilitário fpcupdeluxe (https://github.com/LongDirtyAnimAlf/fpcupdeluxe/releases)
que permite instalar crosscompiler com facilidade.

A intenção é facilitar a criação de telas e classe de acesso aos dados,
pensando principalmente em quem está iniciando na programação em 
Object Pascal com Lazarus.

O Topazzio busca suas tabelas diretamente do banco de dados indicado.
Você pode editar as informações dos campos da tabela para a criação
dos componentes na tela, como Edit, Memo, Checkbox, Combobox, campos
de valores monetários, etc.
Pode-se cria o DBGrid na mesma tela de edição ou em tela separada,
sendo vinculada automaticamente no form, bem como a classe de dados.

O Topazzio pode compilar o projeto, desde que o Lazarus esteja
instalado em seu computador.

O Topazzio cria um projeto completo, com Splash screen, tela de Login,
Menu lateral com opções de cadastro de usuários, configuração da
conexão com o banco de dados (se necessário) e acesso às tela criadas
com base nas tabelas importadas. Você terá o trabalho de fazer ajustes
pertinentes, a intenção é minimizar o trabalho.

Topazzio é um projeto totalmente gratuíto. Faça as modifições que
quiser. Esta é minha pequena contribuição para a comunidade.

# Arquivos
# modernui.tar.gz - Pacotes de componentes visuais
- ButtonPlusPackage: Botão com novo visual.
- ButtonRetroPackage: Botão retrô estilo windows.
- CheckboxPlusPackage: Checkbox com visual diferente.
- CircularProgressBarPackage: Progresso circular.
- DBGridPlusPackage: DBGrid com visual moderno, bordas, gradiente.
- EditExtPackage: Edit padrão do Topazzio.
- LabelPlusPackage: Label com ícone, bordas e gradiente.
- MaskedEditPlusPackage: Edit com máscaras (cpf, cnpj, telefone, cep, data) e valores monetários.
- PanelPlusPackage: Painel diferentes tipos de bordas e gradiente.
- SplitViewPackage: Componente para criar menu lateral retrátil.
- SplitViewButtonPackage: Botão específico para o SplitViewPackage.
- ToggleButtonPlusPackage: Chequebox no estilo toggle como no celular.
- Pasta Utils: Utilitários para Thread, Imagem (banco de dados), validação de campos, etc.

# topazzio.zip
- Criador de projetos.

# windows_libs.tar.gz
- DLLs para diversos bancos de dados para uso no windows.

