# Instalación
## Instalar rails con rvm:
Si no se cuenta con rails, seguir las instrucciones para [instalarlo con rvm](https://rvm.io/rvm/install):
```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

\curl -sSL https://get.rvm.io | bash -s stable --rails
```

## Instalar dependencias
* Instalar [Bundler](http://bundler.io/): `gem install bundler`
* Instalar dependencias del proyecto: `bundle install`

## Correr migraciones
Para correr las migraciones del proyecto, ejecutar el comando `rails db:migrate`

## Correr el servidor
Para correr el servidor, ejecutar el comando `rails s`
