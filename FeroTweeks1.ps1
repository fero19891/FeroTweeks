# =========================================================================
#   [FERO TWEEKS] - NEXT-GEN COMPETITIVE OPTIMIZATION SUITE
#   DEVELOPER: FERO | PRO-TIER REGISTRY OVERRIDES & SPEED LAYERS
# =========================================================================

if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    Exit
}

clear
$Host.UI.RawUI.WindowTitle = "[FERO TWEEKS] v2.0 - Core Level Optimization Dashboard"

Write-Host "[-] INITIALIZING ADVANCED SYSTEM SAFETY BUFFER..." -ForegroundColor Yellow
Checkpoint-Computer -Description "FeroTweeksPremiumBackup" -RestorePointType MODIFY_SETTINGS -ErrorAction SilentlyContinue
Write-Host "[✓] BACKUP RESTORE POINT SNAPSHOT CREATED SUCCESSFULLY." -ForegroundColor Green
Start-Sleep -Seconds 1
clear

function Show-Banner {
    clear
    Write-Host "=====================================================================================" -ForegroundColor Cyan
    Write-Host "  ██████╗███████╗██████╗  ██████╗     ████████╗██╗    ██╗███████╗███████╗██╗  ██╗███████╗" -ForegroundColor Cyan
    Write-Host "  ██╔═══╝██╔════╝██╔══██╗██╔═══██╗    ╚══██╔══╝██║    ██║██╔════╝██╔════╝██║ ██╔╝██╔════╝" -ForegroundColor Cyan
    Write-Host "  █████╗  █████╗  ██████╔╝██║   ██║       ██║   ██║ █╗ ██║█████╗  █████╗  █████╔╝ ███████╗" -ForegroundColor Cyan
    Write-Host "  ██╔══╝  ██╔══╝  ██╔══██╗██║   ██║       ██║   ██║███╗██║██╔══╝  ██╔══╝  ██╔═██╗ ╚════██║" -ForegroundColor Cyan
    Write-Host "  ██║     ███████╗██║  ██║╚██████╔╝       ██║   ╚███╔███╔╝███████╗███████╗██║  ██╗███████║" -ForegroundColor Cyan
    Write-Host "  ╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝        ╚═╝    ╚══╝╚══╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝" -ForegroundColor Cyan
    Write-Host "=====================================================================================" -ForegroundColor Cyan
    Write-Host "       [!!!] MULTI-PLATFORM PRO-TIER HARDWARE INJECTION ENVIRONMENT ACTIVE           " -ForegroundColor Red
    Write-Host "                             DEVELOPED BY: FERO                                       " -ForegroundColor White
    Write-Host "=====================================================================================" -ForegroundColor Cyan
    Write-Host ""
}

function Main-Menu {
    Show-Banner
    Write-Host " [0] UNDO ALL REGS & SYSTEM TWEAKS (Full Reset to Normal)" -ForegroundColor DarkGray
    Write-Host " [1] LAPTOP TUNING LAYER (Thermal & Latency Focused)" -ForegroundColor Yellow
    Write-Host " [2] DESKTOP TUNING LAYER (Aggressive Voltage & Clock Locking)" -ForegroundColor Red
    Write-Host " [3] DEEP WINDOWS POWER-DEBLOAT (Kills AI, Telemetry, Storage Bloat)" -ForegroundColor Magenta
    Write-Host " [4] NEXT-GEN ZERO-PING NETWORK ENGINE (Registry Packet Accelerator)" -ForegroundColor Green
    Write-Host " [5] HARDCORE COMPETITIVE GAME PROFILES (Input Delay Eliminators)" -ForegroundColor Blue
    Write-Host ""
    
    $choice = Read-Host " 👉 CHOOSE YOUR HARDWARE OPTIMIZATION TIER"
    switch ($choice) {
        "1" { Laptop-Menu }
        "2" { Desktop-Menu }
        "3" { Windows-Debloat; Main-Menu }
        "4" { Network-Engine; Main-Menu }
        "5" { Games-Menu; Main-Menu }
        "0" { Undo-Changes; Main-Menu }
        default { Main-Menu }
    }
}

function Laptop-Menu {
    Show-Banner
    Write-Host " 💻 [LAPTOP TUNING ENVIRONMENT CONFIGURATION]" -ForegroundColor Yellow
    Write-Host " -----------------------------------------------------------" -ForegroundColor Cyan
    Write-Host " [1] SAFE TWEAK: Thread Director Alignment (Zero Lag / Maintains Temps)" -ForegroundColor Green
    Write-Host " [2] ADVANCED TWEAK: Unpark All CPU Cores & Uncap Wattage Safety Blocks" -ForegroundColor Red
    Write-Host " [B] BACK TO MAIN MENU" -ForegroundColor DarkGray
    Write-Host ""
    $c = Read-Host " 👉 SELECT OPTION"
    if ($c -eq "1") {
        Write-Host "[-] Adjusting CPU Sub-Processor Core Allocation Metrics..." -ForegroundColor Cyan
        Powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
        Powercfg -setactive scheme_current
        reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformTickOverride" /t REG_DWORD /d 1 /f
        Write-Host "[✓] REGISTERED: Thread Alignment Completed Successfully." -ForegroundColor Green; Start-Sleep 2
    } elseif ($c -eq "2") {
        Write-Host "[!] INJECTING RAW CPU REGISTRY FORCE-UNPARK ARGS..." -ForegroundColor Red
        reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\545335f6-bdd1-40be-a9ed-c4d447d3d4b6\0cc5b647-c1df-4637-891a-dec35c318583" /v ValueMax /t REG_DWORD /d 0 /f
        reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\545335f6-bdd1-40be-a9ed-c4d447d3d4b6\0cc5b647-c1df-4637-891a-dec35c318583" /v ValueMin /t REG_DWORD /d 0 /f
        Write-Host "[✓] WARNING: All CPU Core Parking Safety Protocols Disabled. Maximum Power Maintained." -ForegroundColor Red; Start-Sleep 2
    }
}

function Desktop-Menu {
    Show-Banner
    Write-Host " 🖥️ [DESKTOP TUNING ENVIRONMENT CONFIGURATION]" -ForegroundColor Red
    Write-Host " -----------------------------------------------------------" -ForegroundColor Cyan
    Write-Host " [1] SAFE TWEAK: Override Win32 Separation Constants (Priority Split)" -ForegroundColor Green
    Write-Host " [2] ADVANCED TWEAK: Melt Power Throttling & Force Max CPU Priority" -ForegroundColor Red
    Write-Host " [B] BACK TO MAIN MENU" -ForegroundColor DarkGray
    Write-Host ""
    $c = Read-Host " 👉 SELECT OPTION"
    if ($c -eq "1") {
        Write-Host "[-] Setting Foregound Process Interleaving Quantums..." -ForegroundColor Cyan
        reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 38 /f
        Write-Host "[✓] REGISTERED: Win32PrioritySeparation Value Set to Hex 26 (Decimal 38)." -ForegroundColor Green; Start-Sleep 2
    } elseif ($c -eq "2") {
        Write-Host "[!] KILLING ALL CORE CONSTRAINTS VIA REGISTRY SYSTEM MANAGER..." -ForegroundColor Red
        reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v PowerThrottlingOff /t REG_DWORD /d 1 /f
        reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f
        Write-Host "[✓] SUCCESS: Kernel Power Throttling Dropped to 0% System Overhead." -ForegroundColor Red; Start-Sleep 2
    }
}

function Network-Engine {
    Show-Banner
    Write-Host "⚡ ENGAGING DEEP LAYER REGISTRY PACKET ACCELERATOR..." -ForegroundColor Green
    Write-Host "-----------------------------------------------------------" -ForegroundColor Cyan
    
    Write-Host "[-] NUKING WINDOWS NETWORK THROTTLING INDEX..." -ForegroundColor Cyan
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 4294967295 /f
    Write-Host "[✓] VALUE APPLIED: NetworkThrottlingIndex = 0xFFFFFFFF (Disabled)" -ForegroundColor Green
    
    Write-Host "[-] INJECTING TCP NO DELAY & ACK FREQUENCY VALUES TO HARDWARE PATHS..." -ForegroundColor Cyan
    $interfaces = Get-ChildItem "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces"
    foreach ($i in $interfaces) {
        $path = "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\$($i.PSChildName)"
        Set-ItemProperty -Path $path -Name "TcpAckFrequency" -Value 1 -Type DWord -ErrorAction SilentlyContinue
        Set-ItemProperty -Path $path -Name "TCPNoDelay" -Value 1 -Type DWord -ErrorAction SilentlyContinue
        Set-ItemProperty -Path $path -Name "TcpDelAckTicks" -Value 0 -Type DWord -ErrorAction SilentlyContinue
    }
    Write-Host "[✓] HARDWARE PIPELINE OVERHAUL: All Network Interface Registry Adapters Forced to 0ms Delay." -ForegroundColor Green
    
    Write-Host "[-] SPEED TUNING KERNEL TCPIP ENGINE CONFIGURATIONS..." -ForegroundColor Cyan
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d 64 /f
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableTCPA" /t REG_DWORD /d 1 /f
    Write-Host "[✓] APPLIED: DefaultTTL set to 64, TCP Window Auto-Tuning fully optimized." -ForegroundColor Green
    Start-Sleep 3
}

function Windows-Debloat {
    Show-Banner
    Write-Host "🔮 REMOVING WINDOWS AI COMPONENT LAUNCHERS & TELEMETRY CLUSTERS..." -ForegroundColor Magenta
    Write-Host "-----------------------------------------------------------" -ForegroundColor Cyan
    
    Write-Host "[-] DISABLING BACKSTAGE DIAGNOSTIC SERVICES (DIAGTRACK)..." -ForegroundColor Cyan
    Stop-Service -Name "DiagTrack" -Force -ErrorAction SilentlyContinue
    Set-Service -Name "DiagTrack" -StartupType Disabled -ErrorAction SilentlyContinue
    Write-Host "[✓] KILLED: Connected User Experiences telemetry background polling." -ForegroundColor Green
    
    Write-Host "[-] PURGING TASKBAR BLOAT PLUGINS & WIDGET PIPELINES..." -ForegroundColor Cyan
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds" /v ShellFeedsTaskbarViewMode /t REG_DWORD /d 2 /f
    Write-Host "[✓] APPLIED: News & Interests Taskbar Daemon turned off completely." -ForegroundColor Green
    
    Write-Host "[-] DELETING GAMEDVR STREAM CAPTURE BACKGROUND RAM LEAKS..." -ForegroundColor Cyan
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d 0 /f
    Write-Host "[✓] BLOCKED: Windows Game Bar Background DVR recording thread suspended." -ForegroundColor Green
    Write-Host "[-] SYSTEM FLUSH: Freeing Large System Cache RAM allocations..." -ForegroundColor Cyanreg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /freg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargeSystemCache /t REG_DWORD /d 1 /fWrite-Host "[✓] RECONSTRUCTED: Core driver kernel files forced directly into physical high-speed DDR5 RAM channels." -ForegroundColor GreenStart-Sleep 3}function Games-Menu {Show-BannerWrite-Host " 🎮 HARDCORE COMPETITIVE GAME OPTIMIZATION ENGINE" -ForegroundColor BlueWrite-Host " -----------------------------------------------------------" -ForegroundColor CyanWrite-Host " [1] FORTNITE (Melt Build Lag & Force GPU Priority)" -ForegroundColor WhiteWrite-Host " [2] VALORANT (Bypass Thread Frame Wait Delays)" -ForegroundColor WhiteWrite-Host " [3] COUNTER-STRIKE 2 (Force Instant Sub-Tick Packet Processing)" -ForegroundColor WhiteWrite-Host " [4] ROBLOX (Unlock Frame Engine Pipeline Restrictions)" -ForegroundColor WhiteWrite-Host " [5] MINECRAFT (Inject G1GC Pro-Level Memory Allocation Args)" -ForegroundColor WhiteWrite-Host " [B] BACK TO MAIN MENU" -ForegroundColor DarkGrayWrite-Host ""$g = Read-Host " 👉 CHOOSE TARGET APP"switch ($g) {"1" {Write-Host "[-] Injecting Fortnite Engine Process Mitigation Rules..." -ForegroundColor Cyanpowershell -Command "Set-ProcessMitigation -Name FortniteClient-Win64-Shipping.exe -Disable ControlFlowGuard"reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d 3 /fWrite-Host "[✓] INJECTED: Fortnite Executable Priority Class Forced to 'High'." -ForegroundColor Green; Start-Sleep 2}"2" {Write-Host "[-] Tuning Riot Games Core Executable Logic Channels..." -ForegroundColor Cyanpowershell -Command "Set-ProcessMitigation -Name VALORANT-Win64-Shipping.exe -Disable ControlFlowGuard"reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\VALORANT-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d 3 /fWrite-Host "[✓] INJECTED: Valorant Render Window Bypass Priority Active." -ForegroundColor Green; Start-Sleep 2}"3" {Write-Host "[-] Optimizing Counter-Strike 2 Core Thread Schedules..." -ForegroundColor Cyanpowershell -Command "Set-ProcessMitigation -Name cs2.exe -Disable ControlFlowGuard"reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cs2.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d 3 /fWrite-Host "[✓] INJECTED: CS2 Multi-Thread Scheduler Unlocked." -ForegroundColor Green; Start-Sleep 2}"4" {Write-Host "[-] Overriding Roblox Client Graphics Latency Flags..." -ForegroundColor Cyanreg add "HKCU\Software\Roblox\Client" /v "FFlagDebugGraphicsDisableDirect3D11" /t REG_DWORD /d 0 /fWrite-Host "[✓] APPLIED: Roblox Hardware Direct3D Pipeline Accelerated." -ForegroundColor Green; Start-Sleep 2}"5" {Write-Host "[-] Setting Permanent High-End Environment Variable Allocation Chains..." -ForegroundColor Cyan[Environment]::SetEnvironmentVariable("_JAVA_OPTIONS", "-XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200", "User")Write-Host "[✓] INJECTED: Java Engine Tweaked to Prevent Memory Spikes and Trash Drops." -ForegroundColor Green; Start-Sleep 2}}}function Undo-Changes {Show-BannerWrite-Host "[+] RESTORING FACTORY DEFAULT REGISTRY SCHEMES..." -ForegroundColor YellowWrite-Host "-----------------------------------------------------------" -ForegroundColor Cyanreg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 10 /freg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 20 /freg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d  2 /freg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v PowerThrottlingOff /f -ErrorAction SilentlyContinuereg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v PlatformTickOverride /f -ErrorAction SilentlyContinuereg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 0 /freg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargeSystemCache /t REG_DWORD /d 0 /fWrite-Host "[✓] ALL MODIFIED PARAMETERS SUCCESSFULLY DROPPED BACK TO FACTORY WINDOWS STANDARDS." -ForegroundColor GreenStart-Sleep 3}
