$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$L_CNAGPACK = $null
[System.Windows.Forms.TextBox]$TB_PackageName = $null
[System.Windows.Forms.Label]$L_AllRightsReservedCNAG = $null
[System.Windows.Forms.Label]$L_ProgressBarTitle = $null
[System.Windows.Forms.Label]$Label5 = $null
[System.Windows.Forms.Label]$Label6 = $null
[System.Windows.Forms.TextBox]$TB_KillProcessesName = $null
[System.Windows.Forms.TextBox]$TB_InstallFile = $null
[System.Windows.Forms.RichTextBox]$RTB_InstallParameter = $null
[System.Windows.Forms.Button]$B_selectFile = $null
[System.Windows.Forms.RadioButton]$R_System = $null
[System.Windows.Forms.Label]$Label7 = $null
[System.Windows.Forms.RadioButton]$R_User = $null
[System.Windows.Forms.Button]$B_create_Intunewin = $null
[System.Windows.Forms.Label]$Label8 = $null
[System.Windows.Forms.Label]$Label9 = $null
[System.Windows.Forms.Label]$Label10 = $null
[System.Windows.Forms.TextBox]$TB_PackageVersion = $null
[System.Windows.Forms.Label]$Label11 = $null
[System.Windows.Forms.TextBox]$TB_MSIGUID = $null
[System.Windows.Forms.CheckBox]$CB_editRegistry = $null
[System.Windows.Forms.CheckBox]$CB_killProcessesName = $null
[System.Windows.Forms.ProgressBar]$PB_ProgressBar = $null
[System.Windows.Forms.Label]$Label4 = $null
[System.Windows.Forms.Label]$L_ProgressBarOutputFolder = $null
[System.Windows.Forms.Label]$Label1 = $null
[System.Windows.Forms.RichTextBox]$RTB_UninstallParameter = $null
[System.Windows.Forms.ListBox]$LB_registryKeys = $null
[System.Windows.Forms.Button]$B_registryAdd = $null
[System.Windows.Forms.TextBox]$TB_registryPath = $null
[System.Windows.Forms.Button]$B_registryRemove = $null
[System.Windows.Forms.Label]$Label23 = $null
[System.Windows.Forms.Label]$Label22 = $null
[System.Windows.Forms.TextBox]$TB_registryKeyValue = $null
[System.Windows.Forms.TextBox]$TB_registryKeyName = $null
[System.Windows.Forms.RadioButton]$R_REGSZ = $null
[System.Windows.Forms.RadioButton]$R_DWORD = $null
[System.Windows.Forms.TextBox]$TB_registryHKEY = $null
[System.Windows.Forms.Label]$Label24 = $null
[System.Windows.Forms.Panel]$Panel2 = $null
[System.Windows.Forms.Label]$Label2 = $null
[System.Windows.Forms.Panel]$Panel1 = $null
[System.Windows.Forms.TextBox]$TB_UninstallFile = $null
[System.Windows.Forms.Label]$Label3 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'form.resources.ps1')
$L_CNAGPACK = (New-Object -TypeName System.Windows.Forms.Label)
$TB_PackageName = (New-Object -TypeName System.Windows.Forms.TextBox)
$L_AllRightsReservedCNAG = (New-Object -TypeName System.Windows.Forms.Label)
$L_ProgressBarTitle = (New-Object -TypeName System.Windows.Forms.Label)
$Label5 = (New-Object -TypeName System.Windows.Forms.Label)
$Label6 = (New-Object -TypeName System.Windows.Forms.Label)
$TB_KillProcessesName = (New-Object -TypeName System.Windows.Forms.TextBox)
$TB_InstallFile = (New-Object -TypeName System.Windows.Forms.TextBox)
$RTB_InstallParameter = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$B_selectFile = (New-Object -TypeName System.Windows.Forms.Button)
$R_System = (New-Object -TypeName System.Windows.Forms.RadioButton)
$Label7 = (New-Object -TypeName System.Windows.Forms.Label)
$R_User = (New-Object -TypeName System.Windows.Forms.RadioButton)
$B_create_Intunewin = (New-Object -TypeName System.Windows.Forms.Button)
$Label8 = (New-Object -TypeName System.Windows.Forms.Label)
$Label9 = (New-Object -TypeName System.Windows.Forms.Label)
$Label10 = (New-Object -TypeName System.Windows.Forms.Label)
$TB_PackageVersion = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label11 = (New-Object -TypeName System.Windows.Forms.Label)
$TB_MSIGUID = (New-Object -TypeName System.Windows.Forms.TextBox)
$CB_editRegistry = (New-Object -TypeName System.Windows.Forms.CheckBox)
$CB_killProcessesName = (New-Object -TypeName System.Windows.Forms.CheckBox)
$PB_ProgressBar = (New-Object -TypeName System.Windows.Forms.ProgressBar)
$Label4 = (New-Object -TypeName System.Windows.Forms.Label)
$L_ProgressBarOutputFolder = (New-Object -TypeName System.Windows.Forms.Label)
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
$RTB_UninstallParameter = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$LB_registryKeys = (New-Object -TypeName System.Windows.Forms.ListBox)
$B_registryAdd = (New-Object -TypeName System.Windows.Forms.Button)
$TB_registryPath = (New-Object -TypeName System.Windows.Forms.TextBox)
$B_registryRemove = (New-Object -TypeName System.Windows.Forms.Button)
$Label23 = (New-Object -TypeName System.Windows.Forms.Label)
$Label22 = (New-Object -TypeName System.Windows.Forms.Label)
$TB_registryKeyValue = (New-Object -TypeName System.Windows.Forms.TextBox)
$TB_registryKeyName = (New-Object -TypeName System.Windows.Forms.TextBox)
$R_REGSZ = (New-Object -TypeName System.Windows.Forms.RadioButton)
$R_DWORD = (New-Object -TypeName System.Windows.Forms.RadioButton)
$TB_registryHKEY = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label24 = (New-Object -TypeName System.Windows.Forms.Label)
$Panel2 = (New-Object -TypeName System.Windows.Forms.Panel)
$Label2 = (New-Object -TypeName System.Windows.Forms.Label)
$Panel1 = (New-Object -TypeName System.Windows.Forms.Panel)
$TB_UninstallFile = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label3 = (New-Object -TypeName System.Windows.Forms.Label)
$Panel2.SuspendLayout()
$Panel1.SuspendLayout()
$Form1.SuspendLayout()
#
#L_CNAGPACK
#
$L_CNAGPACK.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]14,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$L_CNAGPACK.ForeColor = [System.Drawing.Color]::White
$L_CNAGPACK.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]33))
$L_CNAGPACK.Name = [System.String]'L_CNAGPACK'
$L_CNAGPACK.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]544,[System.Int32]37))
$L_CNAGPACK.TabIndex = [System.Int32]0
$L_CNAGPACK.Text = [System.String]'CNAG.PACK - connecT .intunewin Packager'
$L_CNAGPACK.add_Click($L_CNAGPACK_Click)
$L_CNAGPACK.add_MouseLeave($L_CNAGPACK_MouseLeave)
$L_CNAGPACK.add_MouseHover($L_CNAGPACK_MouseHover)
#
#TB_PackageName
#
$TB_PackageName.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$TB_PackageName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]187))
$TB_PackageName.Name = [System.String]'TB_PackageName'
$TB_PackageName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]388,[System.Int32]23))
$TB_PackageName.TabIndex = [System.Int32]1
#
#L_AllRightsReservedCNAG
#
$L_AllRightsReservedCNAG.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]7,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$L_AllRightsReservedCNAG.ForeColor = [System.Drawing.Color]::White
$L_AllRightsReservedCNAG.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]35,[System.Int32]12))
$L_AllRightsReservedCNAG.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]0,[System.Int32]3,[System.Int32]10))
$L_AllRightsReservedCNAG.Name = [System.String]'L_AllRightsReservedCNAG'
$L_AllRightsReservedCNAG.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]0,[System.Int32]0,[System.Int32]5))
$L_AllRightsReservedCNAG.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]199,[System.Int32]29))
$L_AllRightsReservedCNAG.TabIndex = [System.Int32]2
$L_AllRightsReservedCNAG.Text = [System.String]'All Rights Reserved @ CNAG 2024'
$L_AllRightsReservedCNAG.add_Click($L_AllRightsReservedCNAG_Click)
#
#L_ProgressBarTitle
#
$L_ProgressBarTitle.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$L_ProgressBarTitle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$L_ProgressBarTitle.ForeColor = [System.Drawing.Color]::White
$L_ProgressBarTitle.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]32,[System.Int32]1018))
$L_ProgressBarTitle.Name = [System.String]'L_ProgressBarTitle'
$L_ProgressBarTitle.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$L_ProgressBarTitle.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]529,[System.Int32]23))
$L_ProgressBarTitle.TabIndex = [System.Int32]2
$L_ProgressBarTitle.Text = [System.String]'Please wait while the .intunewin file is being built...'
$L_ProgressBarTitle.Visible = $false
#
#Label5
#
$Label5.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label5.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label5.ForeColor = [System.Drawing.Color]::White
$Label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]38,[System.Int32]370))
$Label5.Name = [System.String]'Label5'
$Label5.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]210,[System.Int32]23))
$Label5.TabIndex = [System.Int32]2
$Label5.Text = [System.String]'Install Parameter:'
#
#Label6
#
$Label6.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label6.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label6.ForeColor = [System.Drawing.Color]::White
$Label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]453,[System.Int32]161))
$Label6.Name = [System.String]'Label6'
$Label6.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]111,[System.Int32]23))
$Label6.TabIndex = [System.Int32]2
$Label6.Text = [System.String]'Version'
#
#TB_KillProcessesName
#
$TB_KillProcessesName.BackColor = [System.Drawing.SystemColors]::Window
$TB_KillProcessesName.Enabled = $false
$TB_KillProcessesName.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$TB_KillProcessesName.ForeColor = [System.Drawing.SystemColors]::WindowText
$TB_KillProcessesName.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$TB_KillProcessesName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]610))
$TB_KillProcessesName.Name = [System.String]'TB_KillProcessesName'
$TB_KillProcessesName.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$TB_KillProcessesName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]529,[System.Int32]23))
$TB_KillProcessesName.TabIndex = [System.Int32]1
$TB_KillProcessesName.Text = [System.String]'notepad, outlook, word'
$TB_KillProcessesName.add_TextChanged($TB_KillProcessesName_TextChanged)
#
#TB_InstallFile
#
$TB_InstallFile.BackColor = [System.Drawing.SystemColors]::Window
$TB_InstallFile.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$TB_InstallFile.ForeColor = [System.Drawing.SystemColors]::WindowText
$TB_InstallFile.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$TB_InstallFile.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]119))
$TB_InstallFile.Name = [System.String]'TB_InstallFile'
$TB_InstallFile.ReadOnly = $true
$TB_InstallFile.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$TB_InstallFile.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]388,[System.Int32]23))
$TB_InstallFile.TabIndex = [System.Int32]1
$TB_InstallFile.add_TextChanged($TB_InstallFile_TextChanged)
#
#RTB_InstallParameter
#
$RTB_InstallParameter.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$RTB_InstallParameter.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]396))
$RTB_InstallParameter.Name = [System.String]'RTB_InstallParameter'
$RTB_InstallParameter.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]529,[System.Int32]48))
$RTB_InstallParameter.TabIndex = [System.Int32]3
$RTB_InstallParameter.Text = [System.String]''
#
#B_selectFile
#
$B_selectFile.BackColor = [System.Drawing.Color]::White
$B_selectFile.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$B_selectFile.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]453,[System.Int32]116))
$B_selectFile.Name = [System.String]'B_selectFile'
$B_selectFile.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]113,[System.Int32]29))
$B_selectFile.TabIndex = [System.Int32]4
$B_selectFile.Text = [System.String]'select file'
$B_selectFile.UseVisualStyleBackColor = $false
$B_selectFile.add_Click($B_selectFile_Click)
#
#R_System
#
$R_System.Checked = $true
$R_System.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$R_System.ForeColor = [System.Drawing.Color]::White
$R_System.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]324))
$R_System.Name = [System.String]'R_System'
$R_System.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]86,[System.Int32]24))
$R_System.TabIndex = [System.Int32]5
$R_System.TabStop = $true
$R_System.Text = [System.String]'System'
$R_System.UseVisualStyleBackColor = $true
$R_System.add_Click($R_System_Click)
#
#Label7
#
$Label7.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label7.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label7.ForeColor = [System.Drawing.Color]::White
$Label7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]135,[System.Int32]326))
$Label7.Name = [System.String]'Label7'
$Label7.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]31,[System.Int32]23))
$Label7.TabIndex = [System.Int32]2
$Label7.Text = [System.String]'or'
#
#R_User
#
$R_User.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$R_User.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$R_User.ForeColor = [System.Drawing.Color]::White
$R_User.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]180,[System.Int32]324))
$R_User.Name = [System.String]'R_User'
$R_User.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$R_User.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]86,[System.Int32]24))
$R_User.TabIndex = [System.Int32]5
$R_User.Text = [System.String]'User'
$R_User.UseVisualStyleBackColor = $true
$R_User.add_Click($R_User_Click)
#
#B_create_Intunewin
#
$B_create_Intunewin.BackColor = [System.Drawing.Color]::White
$B_create_Intunewin.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$B_create_Intunewin.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]35,[System.Int32]939))
$B_create_Intunewin.Name = [System.String]'B_create_Intunewin'
$B_create_Intunewin.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]529,[System.Int32]47))
$B_create_Intunewin.TabIndex = [System.Int32]6
$B_create_Intunewin.Text = [System.String]'Create .Intunewin'
$B_create_Intunewin.UseVisualStyleBackColor = $false
$B_create_Intunewin.add_Click($B_create_Intunewin_Click)
#
#Label8
#
$Label8.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label8.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label8.ForeColor = [System.Drawing.Color]::White
$Label8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]161))
$Label8.Name = [System.String]'Label8'
$Label8.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]332,[System.Int32]23))
$Label8.TabIndex = [System.Int32]2
$Label8.Text = [System.String]'Package Name:'
#
#Label9
#
$Label9.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label9.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]7))
$Label9.ForeColor = [System.Drawing.Color]::White
$Label9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]249,[System.Int32]12))
$Label9.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3,[System.Int32]0,[System.Int32]3,[System.Int32]10))
$Label9.Name = [System.String]'Label9'
$Label9.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0,[System.Int32]0,[System.Int32]0,[System.Int32]5))
$Label9.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]102,[System.Int32]29))
$Label9.TabIndex = [System.Int32]2
$Label9.Text = [System.String]'Version 1.1'
#
#Label10
#
$Label10.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label10.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label10.ForeColor = [System.Drawing.Color]::White
$Label10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]36,[System.Int32]298))
$Label10.Name = [System.String]'Label10'
$Label10.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]141,[System.Int32]23))
$Label10.TabIndex = [System.Int32]2
$Label10.Text = [System.String]'Install Context:'
#
#TB_PackageVersion
#
$TB_PackageVersion.BackColor = [System.Drawing.SystemColors]::Window
$TB_PackageVersion.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$TB_PackageVersion.ForeColor = [System.Drawing.SystemColors]::WindowText
$TB_PackageVersion.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$TB_PackageVersion.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]453,[System.Int32]185))
$TB_PackageVersion.Name = [System.String]'TB_PackageVersion'
$TB_PackageVersion.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$TB_PackageVersion.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]113,[System.Int32]23))
$TB_PackageVersion.TabIndex = [System.Int32]1
#
#Label11
#
$Label11.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label11.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label11.ForeColor = [System.Drawing.Color]::White
$Label11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]227))
$Label11.Name = [System.String]'Label11'
$Label11.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]332,[System.Int32]23))
$Label11.TabIndex = [System.Int32]2
$Label11.Text = [System.String]'MSI GUID:'
#
#TB_MSIGUID
#
$TB_MSIGUID.BackColor = [System.Drawing.SystemColors]::Window
$TB_MSIGUID.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$TB_MSIGUID.ForeColor = [System.Drawing.SystemColors]::WindowText
$TB_MSIGUID.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]253))
$TB_MSIGUID.Name = [System.String]'TB_MSIGUID'
$TB_MSIGUID.ReadOnly = $true
$TB_MSIGUID.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$TB_MSIGUID.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]388,[System.Int32]21))
$TB_MSIGUID.TabIndex = [System.Int32]1
#
#CB_editRegistry
#
$CB_editRegistry.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$CB_editRegistry.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$CB_editRegistry.ForeColor = [System.Drawing.Color]::White
$CB_editRegistry.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]655))
$CB_editRegistry.Name = [System.String]'CB_editRegistry'
$CB_editRegistry.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$CB_editRegistry.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]152,[System.Int32]24))
$CB_editRegistry.TabIndex = [System.Int32]7
$CB_editRegistry.Text = [System.String]'Edit Registry'
$CB_editRegistry.UseVisualStyleBackColor = $true
$CB_editRegistry.add_CheckedChanged($CB_editRegistry_CheckedChanged)
#
#CB_killProcessesName
#
$CB_killProcessesName.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$CB_killProcessesName.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$CB_killProcessesName.ForeColor = [System.Drawing.Color]::White
$CB_killProcessesName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]580))
$CB_killProcessesName.Name = [System.String]'CB_killProcessesName'
$CB_killProcessesName.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$CB_killProcessesName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]451,[System.Int32]24))
$CB_killProcessesName.TabIndex = [System.Int32]7
$CB_killProcessesName.Text = [System.String]'Kill Processes Name (separate with comma)'
$CB_killProcessesName.UseVisualStyleBackColor = $true
$CB_killProcessesName.add_CheckedChanged($CB_killProcessesName_CheckedChanged)
#
#PB_ProgressBar
#
$PB_ProgressBar.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]35,[System.Int32]992))
$PB_ProgressBar.Name = [System.String]'PB_ProgressBar'
$PB_ProgressBar.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]529,[System.Int32]23))
$PB_ProgressBar.Style = [System.Windows.Forms.ProgressBarStyle]::Continuous
$PB_ProgressBar.TabIndex = [System.Int32]8
$PB_ProgressBar.Visible = $false
#
#Label4
#
$Label4.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label4.ForeColor = [System.Drawing.Color]::White
$Label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]94))
$Label4.Name = [System.String]'Label4'
$Label4.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]332,[System.Int32]23))
$Label4.TabIndex = [System.Int32]2
$Label4.Text = [System.String]'Install File:'
#
#L_ProgressBarOutputFolder
#
$L_ProgressBarOutputFolder.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$L_ProgressBarOutputFolder.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$L_ProgressBarOutputFolder.ForeColor = [System.Drawing.Color]::White
$L_ProgressBarOutputFolder.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]32,[System.Int32]1041))
$L_ProgressBarOutputFolder.Name = [System.String]'L_ProgressBarOutputFolder'
$L_ProgressBarOutputFolder.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$L_ProgressBarOutputFolder.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]529,[System.Int32]23))
$L_ProgressBarOutputFolder.TabIndex = [System.Int32]2
$L_ProgressBarOutputFolder.Text = [System.String]'Please wait while the .intunewin file is being built...'
$L_ProgressBarOutputFolder.Visible = $false
#
#Label1
#
$Label1.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label1.ForeColor = [System.Drawing.Color]::White
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]504))
$Label1.Name = [System.String]'Label1'
$Label1.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]332,[System.Int32]23))
$Label1.TabIndex = [System.Int32]2
$Label1.Text = [System.String]'Uninstall Parameter:'
#
#RTB_UninstallParameter
#
$RTB_UninstallParameter.BackColor = [System.Drawing.SystemColors]::Window
$RTB_UninstallParameter.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]9))
$RTB_UninstallParameter.ForeColor = [System.Drawing.SystemColors]::WindowText
$RTB_UninstallParameter.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$RTB_UninstallParameter.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]529))
$RTB_UninstallParameter.Name = [System.String]'RTB_UninstallParameter'
$RTB_UninstallParameter.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$RTB_UninstallParameter.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]529,[System.Int32]45))
$RTB_UninstallParameter.TabIndex = [System.Int32]3
$RTB_UninstallParameter.Text = [System.String]''
$RTB_UninstallParameter.add_TextChanged($RTB_UninstallParameter_TextChanged)
#
#LB_registryKeys
#
$LB_registryKeys.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]685))
$LB_registryKeys.Name = [System.String]'LB_registryKeys'
$LB_registryKeys.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]529,[System.Int32]69))
$LB_registryKeys.TabIndex = [System.Int32]27
#
#B_registryAdd
#
$B_registryAdd.BackColor = [System.Drawing.Color]::White
$B_registryAdd.Enabled = $false
$B_registryAdd.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$B_registryAdd.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]384,[System.Int32]881))
$B_registryAdd.Name = [System.String]'B_registryAdd'
$B_registryAdd.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]87,[System.Int32]25))
$B_registryAdd.TabIndex = [System.Int32]11
$B_registryAdd.Text = [System.String]'Add'
$B_registryAdd.UseVisualStyleBackColor = $false
$B_registryAdd.add_Click($B_registryAdd_Click)
#
#TB_registryPath
#
$TB_registryPath.Enabled = $false
$TB_registryPath.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]206,[System.Int32]780))
$TB_registryPath.Name = [System.String]'TB_registryPath'
$TB_registryPath.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]363,[System.Int32]21))
$TB_registryPath.TabIndex = [System.Int32]21
$TB_registryPath.Text = [System.String]'SOFTWARE\YOURPATH'
#
#B_registryRemove
#
$B_registryRemove.BackColor = [System.Drawing.Color]::White
$B_registryRemove.Cursor = [System.Windows.Forms.Cursors]::Hand
$B_registryRemove.Enabled = $false
$B_registryRemove.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$B_registryRemove.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]0)),([System.Int32]([System.Byte][System.Byte]0)),([System.Int32]([System.Byte][System.Byte]0)))

$B_registryRemove.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]482,[System.Int32]881))
$B_registryRemove.Name = [System.String]'B_registryRemove'
$B_registryRemove.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$B_registryRemove.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]87,[System.Int32]25))
$B_registryRemove.TabIndex = [System.Int32]11
$B_registryRemove.Text = [System.String]'Remove'
$B_registryRemove.UseVisualStyleBackColor = $false
$B_registryRemove.add_Click($B_registryRemove_Click)
#
#Label23
#
$Label23.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label23.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label23.ForeColor = [System.Drawing.Color]::White
$Label23.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]32,[System.Int32]885))
$Label23.Name = [System.String]'Label23'
$Label23.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label23.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]89,[System.Int32]23))
$Label23.TabIndex = [System.Int32]2
$Label23.Text = [System.String]'Key Type:'
#
#Label22
#
$Label22.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label22.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label22.ForeColor = [System.Drawing.Color]::White
$Label22.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]32,[System.Int32]852))
$Label22.Name = [System.String]'Label22'
$Label22.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label22.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]91,[System.Int32]22))
$Label22.TabIndex = [System.Int32]2
$Label22.Text = [System.String]'Key Value:'
#
#TB_registryKeyValue
#
$TB_registryKeyValue.BackColor = [System.Drawing.SystemColors]::Window
$TB_registryKeyValue.Enabled = $false
$TB_registryKeyValue.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$TB_registryKeyValue.ForeColor = [System.Drawing.SystemColors]::WindowText
$TB_registryKeyValue.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$TB_registryKeyValue.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]147,[System.Int32]847))
$TB_registryKeyValue.Name = [System.String]'TB_registryKeyValue'
$TB_registryKeyValue.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$TB_registryKeyValue.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]422,[System.Int32]21))
$TB_registryKeyValue.TabIndex = [System.Int32]23
$TB_registryKeyValue.Text = [System.String]'abcdefg'
#
#TB_registryKeyName
#
$TB_registryKeyName.BackColor = [System.Drawing.SystemColors]::Window
$TB_registryKeyName.Enabled = $false
$TB_registryKeyName.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$TB_registryKeyName.ForeColor = [System.Drawing.SystemColors]::WindowText
$TB_registryKeyName.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$TB_registryKeyName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]147,[System.Int32]813))
$TB_registryKeyName.Name = [System.String]'TB_registryKeyName'
$TB_registryKeyName.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$TB_registryKeyName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]422,[System.Int32]21))
$TB_registryKeyName.TabIndex = [System.Int32]22
$TB_registryKeyName.Text = [System.String]'Testkey'
#
#R_REGSZ
#
$R_REGSZ.BackColor = [System.Drawing.Color]::Transparent
$R_REGSZ.Checked = $true
$R_REGSZ.Enabled = $false
$R_REGSZ.ForeColor = [System.Drawing.Color]::White
$R_REGSZ.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$R_REGSZ.Name = [System.String]'R_REGSZ'
$R_REGSZ.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]84,[System.Int32]24))
$R_REGSZ.TabIndex = [System.Int32]0
$R_REGSZ.TabStop = $true
$R_REGSZ.Text = [System.String]'REG_SZ'
$R_REGSZ.UseVisualStyleBackColor = $false
$R_REGSZ.add_CheckedChanged($R_REGSZ_CheckedChanged)
$R_REGSZ.add_Click($R_REGSZ_Click)
#
#R_DWORD
#
$R_DWORD.BackColor = [System.Drawing.Color]::Transparent
$R_DWORD.Enabled = $false
$R_DWORD.ForeColor = [System.Drawing.Color]::White
$R_DWORD.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]99,[System.Int32]3))
$R_DWORD.Name = [System.String]'R_DWORD'
$R_DWORD.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]122,[System.Int32]24))
$R_DWORD.TabIndex = [System.Int32]1
$R_DWORD.Text = [System.String]'REG_DWORD'
$R_DWORD.UseVisualStyleBackColor = $false
$R_DWORD.add_Click($R_DWORD_Click)
#
#TB_registryHKEY
#
$TB_registryHKEY.BackColor = [System.Drawing.SystemColors]::Window
$TB_registryHKEY.Enabled = $false
$TB_registryHKEY.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$TB_registryHKEY.ForeColor = [System.Drawing.SystemColors]::WindowText
$TB_registryHKEY.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$TB_registryHKEY.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]147,[System.Int32]780))
$TB_registryHKEY.Name = [System.String]'TB_registryHKEY'
$TB_registryHKEY.ReadOnly = $true
$TB_registryHKEY.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$TB_registryHKEY.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]53,[System.Int32]21))
$TB_registryHKEY.TabIndex = [System.Int32]20
$TB_registryHKEY.Text = [System.String]'HKLM:\'
#
#Label24
#
$Label24.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label24.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label24.ForeColor = [System.Drawing.Color]::White
$Label24.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]32,[System.Int32]818))
$Label24.Name = [System.String]'Label24'
$Label24.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label24.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]91,[System.Int32]26))
$Label24.TabIndex = [System.Int32]2
$Label24.Text = [System.String]'Key Name:'
#
#Panel2
#
$Panel2.Controls.Add($L_AllRightsReservedCNAG)
$Panel2.Controls.Add($Label9)
$Panel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]1067))
$Panel2.Name = [System.String]'Panel2'
$Panel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]564,[System.Int32]44))
$Panel2.TabIndex = [System.Int32]18
#
#Label2
#
$Label2.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label2.ForeColor = [System.Drawing.Color]::White
$Label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]32,[System.Int32]786))
$Label2.Name = [System.String]'Label2'
$Label2.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]91,[System.Int32]24))
$Label2.TabIndex = [System.Int32]2
$Label2.Text = [System.String]'Path:'
#
#Panel1
#
$Panel1.Controls.Add($R_REGSZ)
$Panel1.Controls.Add($R_DWORD)
$Panel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]144,[System.Int32]879))
$Panel1.Name = [System.String]'Panel1'
$Panel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]228,[System.Int32]37))
$Panel1.TabIndex = [System.Int32]24
#
#TB_UninstallFile
#
$TB_UninstallFile.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]478))
$TB_UninstallFile.Name = [System.String]'TB_UninstallFile'
$TB_UninstallFile.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]526,[System.Int32]21))
$TB_UninstallFile.TabIndex = [System.Int32]25
#
#Label3
#
$Label3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label3.ForeColor = [System.Drawing.Color]::White
$Label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]454))
$Label3.Name = [System.String]'Label3'
$Label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Label3.TabIndex = [System.Int32]26
$Label3.Text = [System.String]'Uninstall File'
#
#Form1
#
$Form1.AutoScaleDimensions = (New-Object -TypeName System.Drawing.SizeF -ArgumentList @([System.Single]96,[System.Single]96))
$Form1.AutoScaleMode = [System.Windows.Forms.AutoScaleMode]::Dpi
$Form1.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]617,[System.Int32]1133))
$Form1.Controls.Add($Label3)
$Form1.Controls.Add($TB_UninstallFile)
$Form1.Controls.Add($Panel1)
$Form1.Controls.Add($Panel2)
$Form1.Controls.Add($TB_registryPath)
$Form1.Controls.Add($B_registryAdd)
$Form1.Controls.Add($LB_registryKeys)
$Form1.Controls.Add($PB_ProgressBar)
$Form1.Controls.Add($B_create_Intunewin)
$Form1.Controls.Add($R_System)
$Form1.Controls.Add($B_selectFile)
$Form1.Controls.Add($RTB_InstallParameter)
$Form1.Controls.Add($TB_PackageName)
$Form1.Controls.Add($L_CNAGPACK)
$Form1.Controls.Add($L_ProgressBarTitle)
$Form1.Controls.Add($Label5)
$Form1.Controls.Add($Label6)
$Form1.Controls.Add($TB_KillProcessesName)
$Form1.Controls.Add($TB_InstallFile)
$Form1.Controls.Add($Label7)
$Form1.Controls.Add($R_User)
$Form1.Controls.Add($Label8)
$Form1.Controls.Add($Label10)
$Form1.Controls.Add($TB_PackageVersion)
$Form1.Controls.Add($Label11)
$Form1.Controls.Add($TB_MSIGUID)
$Form1.Controls.Add($CB_editRegistry)
$Form1.Controls.Add($CB_killProcessesName)
$Form1.Controls.Add($Label4)
$Form1.Controls.Add($L_ProgressBarOutputFolder)
$Form1.Controls.Add($Label1)
$Form1.Controls.Add($RTB_UninstallParameter)
$Form1.Controls.Add($B_registryRemove)
$Form1.Controls.Add($Label23)
$Form1.Controls.Add($Label22)
$Form1.Controls.Add($TB_registryKeyValue)
$Form1.Controls.Add($TB_registryKeyName)
$Form1.Controls.Add($TB_registryHKEY)
$Form1.Controls.Add($Label24)
$Form1.Controls.Add($Label2)
$Form1.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$Form1.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$Form1.MaximizeBox = $false
$Form1.Text = [System.String]'CNAG.PACK - connecT .Intunewin Packager'
$Form1.add_Load($Form1_Load)
$Panel2.ResumeLayout($false)
$Panel1.ResumeLayout($false)
$Form1.ResumeLayout($false)
$Form1.PerformLayout()
Add-Member -InputObject $Form1 -Name L_CNAGPACK -Value $L_CNAGPACK -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TB_PackageName -Value $TB_PackageName -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name L_AllRightsReservedCNAG -Value $L_AllRightsReservedCNAG -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name L_ProgressBarTitle -Value $L_ProgressBarTitle -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label5 -Value $Label5 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label6 -Value $Label6 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TB_KillProcessesName -Value $TB_KillProcessesName -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TB_InstallFile -Value $TB_InstallFile -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name RTB_InstallParameter -Value $RTB_InstallParameter -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name B_selectFile -Value $B_selectFile -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name R_System -Value $R_System -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label7 -Value $Label7 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name R_User -Value $R_User -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name B_create_Intunewin -Value $B_create_Intunewin -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label8 -Value $Label8 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label9 -Value $Label9 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label10 -Value $Label10 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TB_PackageVersion -Value $TB_PackageVersion -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label11 -Value $Label11 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TB_MSIGUID -Value $TB_MSIGUID -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CB_editRegistry -Value $CB_editRegistry -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CB_killProcessesName -Value $CB_killProcessesName -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name PB_ProgressBar -Value $PB_ProgressBar -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label4 -Value $Label4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name L_ProgressBarOutputFolder -Value $L_ProgressBarOutputFolder -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label1 -Value $Label1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name RTB_UninstallParameter -Value $RTB_UninstallParameter -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name LB_registryKeys -Value $LB_registryKeys -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name B_registryAdd -Value $B_registryAdd -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TB_registryPath -Value $TB_registryPath -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name B_registryRemove -Value $B_registryRemove -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label23 -Value $Label23 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label22 -Value $Label22 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TB_registryKeyValue -Value $TB_registryKeyValue -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TB_registryKeyName -Value $TB_registryKeyName -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name R_REGSZ -Value $R_REGSZ -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name R_DWORD -Value $R_DWORD -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TB_registryHKEY -Value $TB_registryHKEY -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label24 -Value $Label24 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Panel2 -Value $Panel2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label2 -Value $Label2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Panel1 -Value $Panel1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TB_UninstallFile -Value $TB_UninstallFile -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label3 -Value $Label3 -MemberType NoteProperty
}
. InitializeComponent
