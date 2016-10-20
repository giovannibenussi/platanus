# Rutas de la aplicación
Luego de instalar la aplicación y correr el servidor (paso siguiente), podrá visitar las siguientes rutas:

* *http://localhost:3000/index.html#/cuentas/:direccion* Nos permite ver la cuenta con direccion :direccion
* *http://localhost:3000/index.html#/transaccion/nueva* Nos permite crear una transacción para la que indiquemos en el formulario


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
