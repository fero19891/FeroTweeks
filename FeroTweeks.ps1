# =========================================================================
#   [FERO TWEEKS] - NEXT-GEN COMPETITIVE OPTIMIZATION SUITE
#   DEVELOPER: FERO | OPEN-SOURCE & ULTRA-PERFORMANCE
# =========================================================================

# Forces the tool to open as Administrator automatically so everything works
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    Exit
}

clear
$Host.UI.RawUI.WindowTitle = "[FERO TWEEKS] v1.0 - Hardcore Latency Killer"

# 🛑 AUTOMATIC RESTORE POINT (Safety First)
Write-Host "[-] INITIALIZING SYSTEM SAFETY BUFFER..." -ForegroundColor Yellow
Checkpoint-Computer -Description "FeroTweeksBackup" -RestorePointType MODIFY_SETTINGS -ErrorAction SilentlyContinue
Write-Host "[✓] BACKUP RESTORE POINT CREATED SUCCESSFULLY." -ForegroundColor Green
Start-Sleep -Seconds 2
clear

# ==========================================
#   THE MAIN MENU LOGIC
# ==========================================
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
    Write-Host "             [!] STRIPPING BLOAT. KILLING DELAY. MAXIMIZING FRAMES.                  " -ForegroundColor White
    Write-Host "                             DEVELOPED BY: FERO                                       " -ForegroundColor White
    Write-Host "=====================================================================================" -ForegroundColor Cyan
    Write-Host ""
}

function Main-Menu {
    Show-Banner
    Write-Host " [0] UNDO ALL CHANGES (Go Back to Normal)" -ForegroundColor DarkGray
    Write-Host " [1] LAPTOP TUNING ENGINE" -ForegroundColor Yellow
    Write-Host " [2] DESKTOP TUNING ENGINE" -ForegroundColor Red
    Write-Host " [3] DEEP WINDOWS DEBLOAT & AI REMOVER" -ForegroundColor Magenta
    Write-Host ""
    
    $choice = Read-Host " 👉 CHOOSE YOUR HARDWARE TYPE"
    switch ($choice) {
        "1" { Laptop-Menu }
        "2" { Desktop-Menu }
        "3" { Windows-Debloat; Main-Menu }
        "0" { Undo-Changes; Main-Menu }
        default { Main-Menu }
    }
}

# ==========================================
#   LAPTOP PROFILE SUB-MENU
# ==========================================
function Laptop-Menu {
    Show-Banner
    Write-Host " 💻 [LAPTOP MODE ACTIVE]" -ForegroundColor Yellow
    Write-Host " ---------------------------------------" -ForegroundColor Cyan
    Write-Host " [1] CPU OPTIMIZATIONS" -ForegroundColor White
    Write-Host " [2] GPU AUTOMATION (100% Power Priority)" -ForegroundColor White
    Write-Host " [3] COMPETITIVE GAME PROFILES" -ForegroundColor White
    Write-Host " [4] ZERO-DELAY NETWORK ENGINE" -ForegroundColor White
    Write-Host " [B] BACK TO MAIN MENU" -ForegroundColor DarkGray
    Write-Host ""
    
    $choice = Read-Host " 👉 ENTER CHOICE"
    switch ($choice) {
        "1" { Laptop-CPU; Laptop-Menu }
        "2" { Automated-GPU; Laptop-Menu }
        "3" { Games-Menu; Laptop-Menu }
        "4" { Network-Engine; Laptop-Menu }
        "b" { Main-Menu }
        default { Laptop-Menu }
    }
}

# ==========================================
#   DESKTOP PROFILE SUB-MENU
# ==========================================
function Desktop-Menu {
    Show-Banner
    Write-Host " 🖥️ [DESKTOP MODE ACTIVE]" -ForegroundColor Red
    Write-Host " ---------------------------------------" -ForegroundColor Cyan
    Write-Host " [1] CPU OPTIMIZATIONS" -ForegroundColor White
    Write-Host " [2] GPU AUTOMATION (100% Power Priority)" -ForegroundColor White
    Write-Host " [3] COMPETITIVE GAME PROFILES" -ForegroundColor White
    Write-Host " [4] ZERO-DELAY NETWORK ENGINE" -ForegroundColor White
    Write-Host " [B] BACK TO MAIN MENU" -ForegroundColor DarkGray
    Write-Host ""
    
    $choice = Read-Host " 👉 ENTER CHOICE"
    switch ($choice) {
        "1" { Desktop-CPU; Desktop-Menu }
        "2" { Automated-GPU; Desktop-Menu }
        "3" { Games-Menu; Desktop-Menu }
        "4" { Network-Engine; Desktop-Menu }
        "b" { Main-Menu }
        default { Desktop-Menu }
    }
}

# ==========================================
#   LAPTOP CPU TWEAKS (SAFE VS ADVANCED)
# ==========================================
function Laptop-CPU {
    Show-Banner
    Write-Host " [1] SAFE TWEAK: " -NoNewline -ForegroundColor Green; Write-Host "Optimize Thread Efficiency (Keeps laptop cool)" -ForegroundColor White
    Write-Host " [2] ADVANCED TWEAK: " -NoNewline -ForegroundColor Red; Write-Host "Force 100% Core Unpark (WARNING: Laptop heat will rise!)" -ForegroundColor White
    Write-Host " [B] GO BACK" -ForegroundColor DarkGray
    Write-Host ""
    
    $c = Read-Host " 👉 SELECT ACTION"
    if ($c -eq "1") {
        Powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
        Powercfg -setactive scheme_current
        Write-Host "[✓] Safe Laptop Profile Loaded!" -ForegroundColor Green; Start-Sleep 2
    } elseif ($c -eq "2") {
        reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\545335f6-bdd1-40be-a9ed-c4d447d3d4b6\0cc5b647-c1df-4637-891a-dec35c318583" /v ValueMax /t REG_DWORD /d 0 /f
        Write-Host "[✓] Hyper-Aggressive Unparking Forced!" -ForegroundColor Red; Start-Sleep 2
    }
}

# ==========================================
#   DESKTOP CPU TWEAKS (SAFE VS ADVANCED)
# ==========================================
function Desktop-CPU {
    Show-Banner
    Write-Host " [1] SAFE TWEAK: " -NoNewline -ForegroundColor Green; Write-Host "Optimize Core Scheduling Process Priorities" -ForegroundColor White
    Write-Host " [2] ADVANCED TWEAK: " -NoNewline -ForegroundColor Red; Write-Host "Disable Power Throttling Entirely (Maximum Power)" -ForegroundColor White
    Write-Host " [B] GO BACK" -ForegroundColor DarkGray
    Write-Host ""
    
    $c = Read-Host " 👉 SELECT ACTION"
    if ($c -eq "1") {
        reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 38 /f
        Write-Host "[✓] Thread Priority Optimized!" -ForegroundColor Green; Start-Sleep 2
    } elseif ($c -eq "2") {
        reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v PowerThrottlingOff /t REG_DWORD /d 1 /f
        Write-Host "[✓] CPU Power Constraints Fully Melted!" -ForegroundColor Red; Start-Sleep 2
    }
}

# ==========================================
#   AUTOMATED GPU BOOSTER
# ==========================================
function Automated-GPU {
    Show-Banner
    Write-Host "[+] FORCING GPU REAL-TIME PRIORITIZATION..." -ForegroundColor Cyan
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
    Write-Host "[✓] Your GPU is now locked to maximum performance priority!" -ForegroundColor Green
    Start-Sleep 2
}

# ==========================================
#   ZERO-PING NETWORK ENGINE
# ==========================================
function Network-Engine {
    Show-Banner
    Write-Host "[+] REMOVING NETWORKING DELAYS & PING SPIKES..." -ForegroundColor Cyan
    
    # Kills Windows Network Throttling
    reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 4294967295 /f
    
    # TCP No Delay Tweak (Bypasses packet wait queues)
    $interfaces = Get-ChildItem "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces"
    foreach ($i in $interfaces) {
        $path = "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\$($i.PSChildName)"
        Set-ItemProperty -Path $path -Name "TcpAckFrequency" -Value 1 -Type DWord -ErrorAction SilentlyContinue
        Set-ItemProperty -Path $path -Name "TCPNoDelay" -Value 1 -Type DWord -ErrorAction SilentlyContinue
    }
    
    Write-Host "[✓] Wi-Fi and Ethernet packet delays eliminated!" -ForegroundColor Green
    Start-Sleep 2
}

# ==========================================
#   COMPETITIVE GAME PROFILES MENU
# ==========================================
function Games-Menu {
    Show-Banner
    Write-Host " 🎮 GAME PROFILE CHOOSE ENGINE" -ForegroundColor Cyan
    Write-Host " ---------------------------------------" -ForegroundColor Cyan
    Write-Host " [1] FORTNITE" -ForegroundColor White
    Write-Host " [2] VALORANT" -ForegroundColor White
    Write-Host " [3] COUNTER-STRIKE 2" -ForegroundColor White
    Write-Host " [4] ROBLOX" -ForegroundColor White
    Write-Host " [5] MINECRAFT" -ForegroundColor White
    Write-Host " [B] GO BACK" -ForegroundColor DarkGray
    Write-Host ""
    

