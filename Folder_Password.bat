@echo off
color 02
echo.
echo              ******************    ******************
echo              *  Instrucciones *    *    Recuerda    *
echo              *  El programa   *    * 1-No olvides ni*
echo              * debe estar en  *    * el nombre de tu*
echo              * el mismo lugar *    * de tu CARPETA. *
echo              * que la carpeta *    * 2-Ni olvides tu*
echo              *(((((((())))))))*    *      CLAVE     *
echo              *  Jose  Marti   *    *    AT: Onel    *
echo              ******************    ******************
echo.
timeout /T 15
cls
color 02
echo **********************
echo *Nombre de la Carpeta*
echo **********************
echo.
set/p "D=Escribe> "

IF EXIST %D% (
    goto CLAVE
) ELSE %PASSWORD% == %PASSWORD1% (
    goto E 
)

:CLAVE
    cls
    echo ***************
    echo *Crea tu Clave*
    echo ***************
    echo.
    set/p "P=> "
    setx PASSWORD "%P%" > nul
    setx PASSWORD1 "%P%" > nul
    cls
:S
    color 02
    echo *************************
    echo ** BlockUnlock Folders **
    echo **      1 Block        **
    echo **      2 Unlock       **
    echo **   Created by Onel   **
    echo *************************
    echo.
    echo Change to Option
    set/p "O=> "
    if "%O%" == "1" (
        goto Lock
    )
    if "%O%" == "2" (
        cls
        :E
            cls
            echo ***********************
            echo *Introduce tu Password*
            echo ***********************
            echo.
            set/p "pass=> "
            IF "%pass%" == "%PASSWORD1%" (
                goto Unlock
            )
    )
    goto I

@REM Function to Evaluate Password 
:I
    IF "%pass%" == %P% (
        goto Unlock
    )

    IF NOT "%pass%" == "%PASSWORD1%" (
        echo Password Incorrect
        timeout /T 2
        goto E
    )

@REM Function for Block Folder
:Lock
    cls
    echo    ####################
    echo    ##  Folder Lock   ##
    echo    ## Creator + Onel ##
    echo    ####################
    echo.
    echo Bloqueando Carpeta...
    timeout /T 3
    mkdir "{FJDLSOW.F7D9WJFK.8392K3IF.8D8S9F.PQWI9R83}"
    attrib +H "{FJDLSOW.F7D9WJFK.8392K3IF.8D8S9F.PQWI9R83}"
    move %D% %D%\..\"{FJDLSOW.F7D9WJFK.8392K3IF.8D8S9F.PQWI9R83}" > nul
    takeown /F "{FJDLSOW.F7D9WJFK.8392K3IF.8D8S9F.PQWI9R83}" /R /D S > nul
    icacls "{FJDLSOW.F7D9WJFK.8392K3IF.8D8S9F.PQWI9R83}" /inheritance:d /deny *S-1-1-0:(OI)(CI)(F) >nul
    cls
    echo ***********************
    echo *  Carpeta Bloqueada  *
    echo ***********************
    echo.
    timeout /T 3
    exit

@Rem Function for Unlock Folder
:Unlock
    cls
    echo    ####################
    echo    ##  Folder Unlock ##
    echo    ## Creator + Onel ##
    echo    ####################
    echo.
    echo Desbloqueando Carpeta...
    timeout /T 3
    icacls "{FJDLSOW.F7D9WJFK.8392K3IF.8D8S9F.PQWI9R83}" /inheritance:d /grant *S-1-1-0:(OI)(CI)(F)
    move "{FJDLSOW.F7D9WJFK.8392K3IF.8D8S9F.PQWI9R83}"\%D% ./
    rmdir "{FJDLSOW.F7D9WJFK.8392K3IF.8D8S9F.PQWI9R83}"
    cls
    echo ************************
    echo * Carpeta Desbloqueada *
    echo ************************
    echo.
    timeout /T 3
    setx PASSWORD1 ""