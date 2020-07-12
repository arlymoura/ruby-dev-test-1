# ruby-dev-test-1

# FFstorage
Aplicação feita em Ruby on Rails que gera o armazenamento de arquivos e pasta.

## Desáfio

Desenvolver a camada de modelos de um sistema de arquivos persistido em um banco de dados SQL onde seja possível criar diretórios e arquivos. Os diretórios poderão conter subdiretórios e arquivos. O conteúdo dos arquivos podem estar ser persistidos como blob, S3 ou mesmo em disco.

## Solução

Para resolver a tarefa, foi utilizado dois models, um chamado Folder para armazenamento(nome das pastas e subpastas), e outro chamado FolderFile(armazenamento dos arquivos). Poderia ser simplificado em um só, só que achei melhor colocar os 2 models.

Primeiro deve ser criado um diretório raiz(ou pasta raiz), as outras pastas dependem desse primeiro diretório, por conta do auto-relacionamento. No mais sempre que quiser criar um diretório ou pasta, basta chegar no diretório e usar as funções auxiliares criadas.

## Notes
Testei modelos
Eu tento seguir os princípios do SOLID.

Você pode acessar em: 
```console
user@matrix:~$ rails console
```

## Project Requirements
- Ruby 2.7.0
- Rails 6.0

## Project Gems

### Testing and Validations
- factory-bot-rails
- faker
- rspec-rails
- database_cleaner-active_record
- shoulda-matchers

## Running Project
No terminal executar os comando:

```console
user@matrix:~$ rake db:create db:migrate
```

```console
user@matrix:~$ rails c
```

## Funções Auxiliares
No terminal executar os comando:
- OBS lembrando que já existe um Folder Raiz criado antes chamado @folder.(Caso não exista criar com @folder = Folder.create(name: "raiz")"
- Para criar uma nova pasta
```console
user@matrix:~$ @folder.f_create('nome')
```
- Para ver path(caminho) da pasta 
```console
user@matrix:~$ @folder.f_path
```

- Para criar uma arquivo 
```console
user@matrix:~$ @folder.f_file_create("name", "EXE")
```

## Running Testes
No terminal executar os comando:

```console
user@matrix:~$ rspec specs/
```
```

```console
user@matrix:~$ rails c
```

## Funções Auxiliares
No terminal executar os comando:
- OBS lembrando que já existe um Folder Raiz criado antes chamado @folder.(Caso não exista criar com @folder = Folder.create(name: "raiz")"
- Para criar uma nova pasta
```console
user@matrix:~$ @folder.f_create('nome')
```
- Para ver path(caminho) da pasta 
```console
user@matrix:~$ @folder.f_path
```

- Para criar uma arquivo 
```console
user@matrix:~$ @folder.f_file_create("name", "EXE")
```

## Running Testes
No terminal executar os comando:

```console
user@matrix:~$ rspec specs/
```
