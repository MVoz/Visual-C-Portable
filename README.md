Instructions to create a portable version of Visual C++
-------------------------------------------------------

Thanks to @Alek's answer on Stackoverflow for [this question](http://stackoverflow.com/questions/22290501/can-i-download-the-visual-c-command-line-compiler-without-visual-studio/), I have managed to create a portable version of Microsoft C++ compiler. Note that this does **NOT** include the Visual Studio IDE but only the `CL` compiler, headers and libraries necessary to compile C/C++ programs. Here is a step by step guide:

1. Download (but do not install) Visual Studio Community 2015: get the web installer from [Microsoft](https://www.visualstudio.com/downloads/download-visual-studio-vs)

2. Open command prompt and execute

```
    [vscommunity_ENU] /layout
```

where [vscommunity_ENU] should be the name of the web installer that you download earlier. The Visual Studio installer will popup. Choose download location and wait for it to complete obtaining the main packages. When you reach the stage to download _Optional stuffs_, cancel the installer. This will basically obtain the latest updates and will take a few GB of download and we are not using them anyway.

3. Obtain the latest Windows SDK: head [here](https://dev.windows.com/en-US/downloads/windows-10-sdk) to download the SDK installer. Run the installer to **download the SDK** instead of installing on the machine.

4. Install the Visual C++ packages using our [script](install_vs.bat)

```
    install_vs [folder] [language]
```

or you can just execute the following commands at the command prompt (you need to `cd` to the folder where you download Visual Studio Express)

    set INSTALLDIR=<where you wish to install>
    set LANG=<your language e.g. enu for English-US>

    msiexec /a packages\VisualC_D14\VC_Tools.Core\VC_Tools.Core.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_Tools.Core.Res\%LANG%\VC_Tools.Core.Res.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_Tools.X86.Base\VC_Tools.X86.Base.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_Tools.X86.Base.Res\%LANG%\VC_Tools.X86.Base.Res.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_Tools.X86.Nat\VC_Tools.X86.Nat.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_Tools.X86.Nat.Res\%LANG%\VC_Tools.X86.Nat.Res.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_Tools.X86.X64\VC_Tools.X86.X64.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_Tools.X86.X64.Res\%LANG%\VC_Tools.X86.X64.Res.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_PremTools.X86.Base\VC_PremTools.X86.Base.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_PremTools.X86.Base.Res\%LANG%\VC_PremTools.X86.Base.Res.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_PremTools.X86.Nat\VC_PremTools.X86.Nat.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_PremTools.X86.Nat.Res\%LANG%\VC_PremTools.X86.Nat.Res.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_PremTools.X86.X64\VC_PremTools.X86.X64.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_PremTools.X86.X64.Res\%LANG%\VC_PremTools.X86.X64.Res.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_CRT.Headers\VC_CRT.Headers.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_CRT.X86.Desktop\VC_CRT.X86.Desktop.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_CRT.X86.Store\VC_CRT.X86.Store.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_CRT.X64.Desktop\VC_CRT.X64.Desktop.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_CRT.X64.Store\VC_CRT.X64.Store.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_CRT.Redist.Res\%LANG%\VC_CRT.Redist.Res.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_CRT.Redist.X86\VC_CRT.Redist.X86.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_CRT.Redist.X64\VC_CRT.Redist.X64.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_ATL.Headers\VC_ATL.Headers.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_ATL.X86\VC_ATL.X86.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_ATL.X64\VC_ATL.X64.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_MFC.Headers\VC_MFC.Headers.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_MFC.X86\VC_MFC.X86.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_MFC.X64\VC_MFC.X64.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_PGO.Headers\VC_PGO.Headers.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_PGO.X86\VC_PGO.X86.msi TARGETDIR=%INSTALLDIR%
    msiexec /a packages\VisualC_D14\VC_PGO.X64\VC_PGO.X64.msi TARGETDIR=%INSTALLDIR%
    msiexec /a "packages\Win10_UniversalCRTSDK\Universal CRT Headers Libraries and Sources-x86_en-us.msi" TARGETDIR=%INSTALLDIR%

Note that @Alek's answer does not take into account the subfolder for the `.Res` packages are language-dependent resources. Also, I do not think you need all of the above, for instance `MFC` or `ATL`.

5. Install the basic SDK or whatever depending on your need: again, `cd` to the folder where you download the SDK and execute the following at the prompt

```
    msiexec /a "Installers\Windows SDK Desktop Headers Libs Metadata-x86_en-us.msi" TARGETDIR=%INSTALLDIR%
    msiexec /a "Installers\Windows SDK Desktop Tools-x86_en-us.msi" TARGETDIR=%INSTALLDIR%
    msiexec /a "Installers\Windows SDK for Windows Store Apps Headers Libs-x86_en-us.msi" TARGETDIR=%INSTALLDIR%
    msiexec /a "Installers\Windows SDK for Windows Store Apps Tools-x86_en-us.msi" TARGETDIR=%INSTALLDIR%
```

6. Post-installation preparation: you need to set up several environment variables

```
    setx VSINSTALLDIR=%INSTALLDIR%\Program Files\Microsoft Visual Studio 14.0\
    setx VCINSTALLDIR=%INSTALLDIR%\Program Files\Microsoft Visual Studio 14.0\VC\
    setx UCRTVersion=10.0.10150.0
    setx UniversalCRTSdkDir=%INSTALLDIR%\Windows Kits\10\
    setx WindowsSdkDir=%INSTALLDIR%\Windows Kits\10\
    setx WindowsSDKLibVersion=10.0.10586.0
    setx WindowsSDK_ExecutablePath_x86=%INSTALLDIR%\Windows Kits\10\bin\x86\
```

Note that the variables `UCRTVersion` and `WindowsSDKLibVersion` need to reflect your currennt installation.

7. Modifying the installed BAT scripts to remove .NET Framework dependency: you might want to remove the lines related to .NET checking in those `vcvars*.bat` located in `%VCINSTALLDIR%\bin`:

```
    @if "%FrameworkDir32%"=="" goto error_no_FrameworkDIR32
    @if "%FrameworkVersion32%"=="" goto error_no_FrameworkVer32
    @if "%Framework40Version%"=="" goto error_no_Framework40Version

    @set FrameworkDir=%FrameworkDir32%
    @set FrameworkVersion=%FrameworkVersion32%
```

Also, instead of doing `setx` in the above steps (which makes permanent variables on the system), you can add those command with `@set` in place of `setx` in the `%VCINSTALLDIR%\vcvarsall.bat`.

8. Now you can zip %INSTALLDIR% and use it on other machines. Note that you need to set up the environment variables again as in step 6.

Using Visual C++
----------------

Execute the script `vcvarsall.bat [arch] [store?] [sdk]` in `%VSINSTALLDIR%` to set-up your compilation environment. This basically sets the compiler, include and library paths variables. Now you are ready to

    cl [yourfile]

to compile your C/C++ code. Voila, happy coding!