jedi
====

Java Mini MVC Framework

Exemplo de criação para projeto de livraria.

Comando: django new livraria

Estrutura:

livraria
--------- app
--------------assets
-----------------------images
-----------------------javascripts
-----------------------stylesheets
----------controllers
----------models
----------views
config
--------settings.properties
doc
lib
log
public
test
tmp

Essa é a estrutura gerada pela ferramenta.

livraria - diretório do projeto

app - diretório da aplicação

assets - recursos comuns a aplicação

images - diretório de imagens da aplicação

(arquivos .jpg, .png, .gif e o que mais for possível).

javascripts - diretório dos javascritps da aplicação (arquivos .js).

stylesheets - diretório das folhas de estilo da aplicação (arquivos .css).

controllers - diretório onde ficarão os controladores da aplicação, (camada de controle) aqui vão ficar as Servlets.

models - diretório dos DTO's (Data Transfer Objects), camada de modelo da aplicação, representa os dados do negócio do cliente.

views - diretório da camada de visão da aplicação, aqui ficam os arquivos .jsp ou html.

config - diretório onde ficam os arquivos de configuração do projeto.

settings.properties - arquivo contendo a configurações associadas ao acesso ao banco de dados. (vou mudar o nome para database.settings).

doc - diretório que irá conter a documentação da aplicação.

lib - diretório que irá conter as bibliotecas (.jars) utilizados no projeto.

log - diretório que irá armazenar os logs da aplicação.

public - diretório que irá armazenar o conteúdo público da aplicação, tudo aquilo que for publicado pelo servidor WEB.

test - diretório que irá conter os arquivos de teste unitário e qualquer outro tipo de teste da aplicação.

tmp - diretório de arquivos temporários.


Embed Servlet Container

java -jar winstone.jar --webroot=/home/neo/Projetos/java/DjangoAdmin/livraria

java -jar jetty-runner.jar --lib ./livraria/lib --classes ./livraria/tmp --path livraria livraria/public --config jetty.xml
