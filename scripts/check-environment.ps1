Write-Host "=== MICROMOUSE - ENVIRONMENT CHECK ==="
$commands = @(
    @{ Name = "VS Code"; Command = "code"; Args = @("--version") },
    @{ Name = "GCC / MinGW-w64"; Command = "g++"; Args = @("--version") },
    @{ Name = "CMake"; Command = "cmake"; Args = @("--version") },
    @{ Name = "Git"; Command = "git"; Args = @("--version") }
)
foreach ($entry in $commands) {
    Write-Host "`n[$($entry.Name)]"
    if (Get-Command $entry.Command -ErrorAction SilentlyContinue) {
        & $entry.Command @($entry.Args) | Select-Object -First 1
    } else {
        Write-Host "NOT FOUND: Install or configure PATH"
    }
}
