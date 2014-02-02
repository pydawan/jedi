Jedi - Micro Web MVC Framework
==============================

What is Jedi?
-------------
#
**Jedi** is a ***Micro Web MVC Framework*** written in Java.

1 Creating a project
-------------------------------------------
#
**1.1 Command-line**

    django new notebook

**1.2 Project's directory structure**:
#
    notebook
    └── web
        ├── pages
        │   └── index.jsp
        ├── static
        │   ├── css
        │   ├── images
        │   └── js
        └── WEB-INF
            ├── classes
            ├── config
            │   ├── database.properties
            │   ├── inflections.properties
            │   └── locales
            ├── db
            ├── lib
            │   ├── el-api.jar
            │   ├── jangod-template.jar
            │   ├── jasper-el.jar
            │   ├── jasper.jar
            │   ├── jasper-jdt.jar
            │   ├── jedi-forms.jar
            │   ├── jedi-gsgen.jar
            │   ├── jedi-orm.jar
            │   ├── jedi-serializers.jar
            │   ├── jedi-template.jar
            │   ├── jsp-api.jar
            │   ├── jstl.jar
            │   ├── mysql-connector-java-5.1.12-bin.jar
            │   ├── servlet-api.jar
            │   ├── standard.jar
            │   ├── tomcat-coyote.jar
            │   ├── tomcat-juli.jar
            │   └── winstone.jar
            ├── log
            ├── src
            │   ├── controllers
            │   │   └── NotebookController.java
            │   ├── models
            │   └── views
            │       ├── base.html
            │       └── notebook
            │           └── index.html
            └── web.xml
    18 directories, 26 files

notebook - diretório do projeto

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
-----------------------
#
**1.1 Winstone**

    java -jar winstone.jar --webroot=/home/neo/Projetos/java/DjangoAdmin/livraria

**1.2 Jetty**

    java -jar jetty-runner.jar --lib ./livraria/lib --classes ./livraria/tmp --path livraria livraria/public --config jetty.xml
