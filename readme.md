<div style="text-align:center"><img src=".doc/icon.png" alt="Icone"/></div>

# Run My Tex

O Run My Tex é um script bash projetado para facilitar e melhorar a produtividade na compilação de arquivos LaTeX. Este script pode ser executado em um DevContainer no Visual Studio Code, utilizando Docker. Recomenda-sefortemente esta abordagem, pois ela elimina a necessidade de instalar várias dependências em sua máquina local.

![Demonstracao](/.doc/demo.png "Demonstração")

## Vantagens

Ao executar o LaTeX localmente, você desfruta de várias vantagens em comparação com serviços online, como o Overleaf. Algumas das vantagens incluem:

1. **Hot Reload:** Ao executar o script, os arquivos LaTeX no mesmo diretório serão observados, sempre que houver uma mudança os PDF's serão automaticamente gerados.

2. **Customização Avançada:** Você tem total liberdade para personalizar o ambiente de compilação de acordo com suas necessidades, o que pode não ser possível em plataformas online.

3. **Rápida Execução de Compilação:** Ao utilizar a capacidade de processamento da sua máquina local, a compilação é mais rápida em comparação com plataformas online.

4. **Extensões:** Por tratar-se de um ambiente local, com o Visual Studio Code, é possível instalar diversas extensões que podem auxiliar na sua produção. Apesar de já vir com
algumas extensões, o dev container do docker é completamente customizável a sua vontade! (Recomenda-se a extensão do Vim!)

5. **Utilização do seu leitor de PDF preferido:** Recomenda-se a instalação do leitor de PDFs [Okular](https://okular.kde.org/) para aproveitar recursos de acessibilidade, como o modo escuro. Mas, fique a vontade para utilizar o que te deixar mais confortável.

5. **Possibilidade de utilização do Git e outros VCS:** Esta é interessante principalmente para os desenvolvedores de software. Outras ferramentas tambem permitem a utilziação do Git, entretanto aqui será possível fazer a completa customização do seu VCS.

## Pré-requisitos

- [Visual Studio Code](https://code.visualstudio.com/download).
- [Docker](https://www.docker.com/) instalado na máquina local.(Docker Desktop em caso de utilização do Windows)


## Como Usar

Caso esteja utilizando o DevContainer fornecido:

1. Abra o terminal dentro do DevContainer (Cntr+J);
2. Execute o comando:
```bash
bash run_my_tex.sh
```

O script se encarregará de compilar seu arquivo LaTeX e salvará o PDF resultante na pasta ./out .

## Notas Adicionais

- É necessário que o arquivo main.tex esteja no mesmo diretorio do script run_my_tex.sh para que o fluxo funcione como esperado.
- Caso deseje adicionar múltiplos arquivos, com o comando \input{file.tex}, basta colocá-los no mesmo diretório e referênciá-los no arquivo main.tex.
- Para o caso de você estar tentando executar localmente, em uma distro linux, veja os comandos de criação do container no arquivo: .devcontainer/Dockerfile .
- Um bug está impedindo que arquivos sejam salvos em outros diretórios se não o raiz, isto está sendo investigado. Pois, pretende-se, deixar somente o arquivo main.tex no diretorio principal e os demais arquivos, a comporem o PDF resultante, em um diretório chamado ./src para melhor organização dos projetos. 

Que o Run My Tex aprimore sua experiência de desenvolvimento LaTeX, proporcionando flexibilidade e eficiência!

Se tiver alguma dúvida ou sugestão, não hesite em entrar em contato.

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests.

## Melhorias a serem trabalhadas no futuro:

1. Resolver bug que impede utilização de arquivos em outros diretórios se não o raiz.
2. Diminuir quantidade de dependências para execução do script base. (Hoje a execução dependete de alguns scripts python)