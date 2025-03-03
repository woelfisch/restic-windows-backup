# backup configuration
$ExeName = "restic.exe"
$AdditionalParameters = @()
$SelfUpdateParameters = @()
$AllowResticSelfUpdate = $true
$InstallPath = "C:\restic"
$ResticExe = Join-Path $InstallPath $ExeName
$StateFile = Join-Path $InstallPath "state.xml"
$WindowsExcludeFile = Join-Path $InstallPath "windows.exclude"
$LocalExcludeFile = Join-Path $InstallPath "local.exclude"
$LogPath = Join-Path $InstallPath "logs"
$LogRetentionDays = 30
$InternetTestAttempts = 10
$GlobalRetryAttempts = 4
$IgnoreMissingBackupSources = $false
$AdditionalBackupParameters = @("--exclude-if-present", ".nobackup", "--no-scan")

# maintenance configuration
$SnapshotMaintenanceEnabled = $true
$SnapshotRetentionPolicy = @("--host", $env:COMPUTERNAME, "--group-by", "host,tags", "--keep-daily", "30", "--keep-weekly", "52", "--keep-monthly", "24", "--keep-yearly", "10")
$SnapshotPrunePolicy = @("--max-unused", "1%")
$SnapshotMaintenanceInterval = 7
$SnapshotMaintenanceDays = 30
$SnapshotDeepMaintenanceDays = 90

# email configuration
$SendEmailOnSuccess = $false
$SendEmailOnError = $true

# Paths to backup
$BackupSources = @{}
$BackupSources["C:\"] = @(
#    "Users\Example\Desktop\Source1",
#    "Users\Example\Desktop\Source2"
)
# $BackupSources["D:\"] = @(
#    "Example\Source3",
#    "Example\Source4"
# )
#$BackupSources["DRIVE_LABEL_NAME_OR_SERIAL_NUMBER"] = @(
#    "Example\FolderName"
#)
