@set INSTALLDIR=%1
@echo Install Visual C++ (for Universal App development) to %INSTALLDIR%

@rem This is how I get the list of packages
@rem find -wholename *.msi >pkgs.txt

@msiexec /a packages\VisualC_D14\VC_CRT.ARM.Store\VC_CRT.ARM.Store.msi TARGETDIR=%INSTALLDIR%
@msiexec /a packages\VisualC_D14\VC_CRT.Headers\VC_CRT.Headers.msi TARGETDIR=%INSTALLDIR%

@rem @msiexec /a packages\VisualC_D14\VC_CRT.Redist.ARM\VC_CRT.Redist.ARM.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_CRT.Redist.X64\VC_CRT.Redist.X64.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_CRT.Redist.X86\VC_CRT.Redist.X86.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_CRT.Source\VC_CRT.Source.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_CRT.X64.Store\VC_CRT.X64.Store.msi TARGETDIR=%INSTALLDIR%

@msiexec /a packages\VisualC_D14\VC_CRT.X86.Store\VC_CRT.X86.Store.msi TARGETDIR=%INSTALLDIR%

@rem @msiexec /a packages\VisualC_D14\VC_IDE.Base\VC_IDE.Base.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_IDE.Base.Res\VC_IDE.Base.Res.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_IDE.Common\VC_IDE.Common.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_IDE.Common.Res\VC_IDE.Common.Res.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_IDE.Core\VC_IDE.Core.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_IDE.Core.Res\VC_IDE.Core.Res.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_IDE.Debugger\VC_IDE.Debugger.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_IDE.Debugger.Res\VC_IDE.Debugger.Res.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_IDE.Exp.All\VC_IDE.Exp.All.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_IDE.Exp.Only\VC_IDE.Exp.Only.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_IDE.WinX.Plus\VC_IDE.WinX.Plus.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_Items.WinX.Only\VC_Items.WinX.Only.msi TARGETDIR=%INSTALLDIR%

@rem @msiexec /a packages\VisualC_D14\VC_MSBuild.ARM\VC_MSBuild.ARM.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_MSBuild.Base\VC_MSBuild.Base.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_MSBuild.Base.Res\VC_MSBuild.Base.Res.msi TARGETDIR=%INSTALLDIR%

@rem @msiexec /a packages\VisualC_D14\VC_MSBuild.X64\VC_MSBuild.X64.msi TARGETDIR=%INSTALLDIR%

@rem @msiexec /a packages\VisualC_D14\VC_MSBuild.X86\VC_MSBuild.X86.msi TARGETDIR=%INSTALLDIR%

@rem @msiexec /a packages\VisualC_D14\VC_Templates.WindowsUAP.WinX\VC_Templates.WindowsUAP.WinX.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_Templates.WinX\VC_Templates.WinX.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_Templates.WinX.Res\VC_Templates.WinX.Res.msi TARGETDIR=%INSTALLDIR%

@msiexec /a packages\VisualC_D14\VC_Tools.Core\VC_Tools.Core.msi TARGETDIR=%INSTALLDIR%
@msiexec /a packages\VisualC_D14\VC_Tools.Core.Res\VC_Tools.Core.Res.msi TARGETDIR=%INSTALLDIR%
@msiexec /a packages\VisualC_D14\VC_Tools.X86.ARM\VC_Tools.X86.ARM.msi TARGETDIR=%INSTALLDIR%
@msiexec /a packages\VisualC_D14\VC_Tools.X86.ARM.Res\VC_Tools.X86.ARM.Res.msi TARGETDIR=%INSTALLDIR%
@msiexec /a packages\VisualC_D14\VC_Tools.X86.Base\VC_Tools.X86.Base.msi TARGETDIR=%INSTALLDIR%
@msiexec /a packages\VisualC_D14\VC_Tools.X86.Base.Res\VC_Tools.X86.Base.Res.msi TARGETDIR=%INSTALLDIR%
@msiexec /a packages\VisualC_D14\VC_Tools.X86.Nat\VC_Tools.X86.Nat.msi TARGETDIR=%INSTALLDIR%
@msiexec /a packages\VisualC_D14\VC_Tools.X86.Nat.Res\VC_Tools.X86.Nat.Res.msi TARGETDIR=%INSTALLDIR%

@rem @msiexec /a packages\VisualC_D14\VC_Tools.X86.X64\VC_Tools.X86.X64.msi TARGETDIR=%INSTALLDIR%
@rem @msiexec /a packages\VisualC_D14\VC_Tools.X86.X64.Res\VC_Tools.X86.X64.Res.msi TARGETDIR=%INSTALLDIR%

@msiexec /a "packages\Win10_UniversalCRTSDK\Universal CRT Headers Libraries and Sources-x86_en-us.msi" TARGETDIR=%INSTALLDIR%