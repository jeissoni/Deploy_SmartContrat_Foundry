## Repositorio ejemplo de como desplegar contratos inteligentes usando Foundry ## 

### 1. Instalación de Foundry ###

Uso de Foundryup
Foundryup es el instalador de la cadena de herramientas de Foundry. Puedes encontrar más información al respecto [aquí](https://github.com/foundry-rs/foundry/blob/master/foundryup/README.md).

Abra su terminal y ejecute el siguiente comando:

`curl -L https://foundry.paradigm.xyz | bash`

Esto instalará Foundryup, luego simplemente siga las instrucciones en pantalla, que hará que el comando esté disponible en su CLI.`foundryup`

Al ejecutarse solo, se instalarán los últimos binarios precompilados 

nota:

Si está en Windows, deberá instalar y usar [Git BASH](https://gitforwindows.org/) o [WSL](https://learn.microsoft.com/en-us/windows/wsl/install), como su terminal, ya que Foundryup actualmente no es compatible con Powershell o Cmd.

### 2. Configuración variables de entorno

Cree un archivo `.env` en la raíz del repositorio. En el repositorio hay un archivo `.example.env` en donde encontrara dos variable a manera de ejemplo de como debe quedar su archivo, estas variables son indispensables para poder desplegar contratos.

`PRIVATE_KEY` es la llave privada de la cuenta que va pagar la transacción para desplegar los contratos, debe tener saldo de ETH de prueba en la red que desea desplegar. **No copie su llave privada en ningun otro archivo que no sea el .env**

`LINEA_RPC_URL` es el endpoint de la red en donde se desplegara el contrato. Se recomienda crear una cuenta en [Infura](https://www.infura.io/) en donde podrá obtener una `API-KEY` para sus endpoints

Como ejemplo de endpoint sera asi.
`https://linea-goerli.infura.io/v3/<API-KEY>`

### 3. Desplegar contratos

Desde la raíz del repositorio y desde consola.

3.1 Cargamos las variables de entorno desde el archivo `.env` con el siguiente código:

`source .env`

3.2 Desplegar contrato NFT, en la consola pegar la siguiente instruccion.

`forge script script/deployNFT.s.sol:MyScript --rpc-url $LINEA_RPC_URL --broadcast --verify -vvvv`

si todo sale bien el resultado dira:

`Script ran successfully.`

Encontrara también el hash de la transacción y el address del contrato desplegado. 

Para desplegar el contrato ERC20 será con la siguiente instrucción

`forge script script/deployERC20.s.sol:MyScriptERC20 --rpc-url $LINEA_RPC_URL --broadcast -vvvv`

