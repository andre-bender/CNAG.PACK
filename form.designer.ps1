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
[System.Windows.Forms.RichTextBox]$TB_editRegistry = $null
[System.Windows.Forms.Label]$Label13 = $null
[System.Windows.Forms.CheckBox]$CB_shortcutDesktop = $null
[System.Windows.Forms.CheckBox]$CB_shortcutStartmenu = $null
[System.Windows.Forms.CheckBox]$CB_editRegistry = $null
[System.Windows.Forms.CheckBox]$CB_killProcessesName = $null
[System.Windows.Forms.ProgressBar]$PB_ProgressBar = $null
[System.Windows.Forms.Label]$Label4 = $null
[System.Windows.Forms.Label]$L_ProgressBarOutputFolder = $null
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
$TB_editRegistry = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$Label13 = (New-Object -TypeName System.Windows.Forms.Label)
$CB_shortcutDesktop = (New-Object -TypeName System.Windows.Forms.CheckBox)
$CB_shortcutStartmenu = (New-Object -TypeName System.Windows.Forms.CheckBox)
$CB_editRegistry = (New-Object -TypeName System.Windows.Forms.CheckBox)
$CB_killProcessesName = (New-Object -TypeName System.Windows.Forms.CheckBox)
$PB_ProgressBar = (New-Object -TypeName System.Windows.Forms.ProgressBar)
$Label4 = (New-Object -TypeName System.Windows.Forms.Label)
$L_ProgressBarOutputFolder = (New-Object -TypeName System.Windows.Forms.Label)
$Form1.SuspendLayout()
#
#L_CNAGPACK
#
$L_CNAGPACK.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]14,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$L_CNAGPACK.ForeColor = [System.Drawing.Color]::White
$L_CNAGPACK.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]33))
$L_CNAGPACK.Name = [System.String]'L_CNAGPACK'
$L_CNAGPACK.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]608,[System.Int32]37))
$L_CNAGPACK.TabIndex = [System.Int32]0
$L_CNAGPACK.Text = [System.String]'CNAG.PACK - connecT .Intunewin Packager'
$L_CNAGPACK.add_Click($L_CNAGPACK_Click)
$L_CNAGPACK.add_MouseLeave($L_CNAGPACK_MouseLeave)
$L_CNAGPACK.add_MouseHover($L_CNAGPACK_MouseHover)
#
#TB_PackageName
#
$TB_PackageName.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$TB_PackageName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]187))
$TB_PackageName.Name = [System.String]'TB_PackageName'
$TB_PackageName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]388,[System.Int32]27))
$TB_PackageName.TabIndex = [System.Int32]1
#
#L_AllRightsReservedCNAG
#
$L_AllRightsReservedCNAG.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]7,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$L_AllRightsReservedCNAG.ForeColor = [System.Drawing.Color]::White
$L_AllRightsReservedCNAG.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]886))
$L_AllRightsReservedCNAG.Name = [System.String]'L_AllRightsReservedCNAG'
$L_AllRightsReservedCNAG.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]199,[System.Int32]23))
$L_AllRightsReservedCNAG.TabIndex = [System.Int32]2
$L_AllRightsReservedCNAG.Text = [System.String]'All Rights Reserved @ CNAG 2024'
$L_AllRightsReservedCNAG.add_Click($L_AllRightsReservedCNAG_Click)
#
#L_ProgressBarTitle
#
$L_ProgressBarTitle.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$L_ProgressBarTitle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$L_ProgressBarTitle.ForeColor = [System.Drawing.Color]::White
$L_ProgressBarTitle.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]815))
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
$Label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]370))
$Label5.Name = [System.String]'Label5'
$Label5.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]332,[System.Int32]23))
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
$Label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]130,[System.Int32]23))
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
$TB_KillProcessesName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]500))
$TB_KillProcessesName.Name = [System.String]'TB_KillProcessesName'
$TB_KillProcessesName.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$TB_KillProcessesName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]529,[System.Int32]27))
$TB_KillProcessesName.TabIndex = [System.Int32]1
#
#TB_InstallFile
#
$TB_InstallFile.BackColor = [System.Drawing.SystemColors]::Window
$TB_InstallFile.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$TB_InstallFile.ForeColor = [System.Drawing.SystemColors]::WindowText
$TB_InstallFile.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$TB_InstallFile.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]116))
$TB_InstallFile.Name = [System.String]'TB_InstallFile'
$TB_InstallFile.ReadOnly = $true
$TB_InstallFile.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$TB_InstallFile.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]388,[System.Int32]27))
$TB_InstallFile.TabIndex = [System.Int32]1
#
#RTB_InstallParameter
#
$RTB_InstallParameter.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$RTB_InstallParameter.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]396))
$RTB_InstallParameter.Name = [System.String]'RTB_InstallParameter'
$RTB_InstallParameter.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]529,[System.Int32]62))
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
$R_System.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$R_System.ForeColor = [System.Drawing.Color]::White
$R_System.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]327))
$R_System.Name = [System.String]'R_System'
$R_System.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]86,[System.Int32]24))
$R_System.TabIndex = [System.Int32]5
$R_System.Text = [System.String]'System'
$R_System.UseVisualStyleBackColor = $true
$R_System.add_Click($R_System_Click)
#
#Label7
#
$Label7.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label7.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label7.ForeColor = [System.Drawing.Color]::White
$Label7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]135,[System.Int32]329))
$Label7.Name = [System.String]'Label7'
$Label7.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]31,[System.Int32]23))
$Label7.TabIndex = [System.Int32]2
$Label7.Text = [System.String]'or'
#
#R_User
#
$R_User.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$R_User.Checked = $true
$R_User.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$R_User.ForeColor = [System.Drawing.Color]::White
$R_User.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]180,[System.Int32]327))
$R_User.Name = [System.String]'R_User'
$R_User.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$R_User.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]86,[System.Int32]24))
$R_User.TabIndex = [System.Int32]5
$R_User.TabStop = $true
$R_User.Text = [System.String]'User'
$R_User.UseVisualStyleBackColor = $true
$R_User.add_Click($R_User_Click)
#
#B_create_Intunewin
#
$B_create_Intunewin.BackColor = [System.Drawing.Color]::White
$B_create_Intunewin.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$B_create_Intunewin.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]704))
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
$Label9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]253,[System.Int32]886))
$Label9.Name = [System.String]'Label9'
$Label9.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]102,[System.Int32]23))
$Label9.TabIndex = [System.Int32]2
$Label9.Text = [System.String]'Version 1.0'
#
#Label10
#
$Label10.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label10.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label10.ForeColor = [System.Drawing.Color]::White
$Label10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]299))
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
$TB_PackageVersion.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]113,[System.Int32]27))
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
$TB_MSIGUID.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$TB_MSIGUID.ForeColor = [System.Drawing.SystemColors]::WindowText
$TB_MSIGUID.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$TB_MSIGUID.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]253))
$TB_MSIGUID.Name = [System.String]'TB_MSIGUID'
$TB_MSIGUID.ReadOnly = $true
$TB_MSIGUID.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$TB_MSIGUID.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]388,[System.Int32]27))
$TB_MSIGUID.TabIndex = [System.Int32]1
#
#TB_editRegistry
#
$TB_editRegistry.BackColor = [System.Drawing.SystemColors]::Window
$TB_editRegistry.Enabled = $false
$TB_editRegistry.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]9))
$TB_editRegistry.ForeColor = [System.Drawing.SystemColors]::WindowText
$TB_editRegistry.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$TB_editRegistry.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]575))
$TB_editRegistry.Name = [System.String]'TB_editRegistry'
$TB_editRegistry.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$TB_editRegistry.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]529,[System.Int32]89))
$TB_editRegistry.TabIndex = [System.Int32]3
$TB_editRegistry.Text = [System.String]''
#
#Label13
#
$Label13.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label13.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$Label13.ForeColor = [System.Drawing.Color]::White
$Label13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]292,[System.Int32]299))
$Label13.Name = [System.String]'Label13'
$Label13.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]332,[System.Int32]23))
$Label13.TabIndex = [System.Int32]2
$Label13.Text = [System.String]'Create Shortcut:'
#
#CB_shortcutDesktop
#
$CB_shortcutDesktop.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$CB_shortcutDesktop.ForeColor = [System.Drawing.Color]::White
$CB_shortcutDesktop.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]297,[System.Int32]329))
$CB_shortcutDesktop.Name = [System.String]'CB_shortcutDesktop'
$CB_shortcutDesktop.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$CB_shortcutDesktop.TabIndex = [System.Int32]7
$CB_shortcutDesktop.Text = [System.String]'Desktop'
$CB_shortcutDesktop.UseVisualStyleBackColor = $true
#
#CB_shortcutStartmenu
#
$CB_shortcutStartmenu.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$CB_shortcutStartmenu.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$CB_shortcutStartmenu.ForeColor = [System.Drawing.Color]::White
$CB_shortcutStartmenu.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]403,[System.Int32]329))
$CB_shortcutStartmenu.Name = [System.String]'CB_shortcutStartmenu'
$CB_shortcutStartmenu.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$CB_shortcutStartmenu.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]124,[System.Int32]24))
$CB_shortcutStartmenu.TabIndex = [System.Int32]7
$CB_shortcutStartmenu.Text = [System.String]'Startmenu'
$CB_shortcutStartmenu.UseVisualStyleBackColor = $true
#
#CB_editRegistry
#
$CB_editRegistry.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$CB_editRegistry.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]10))
$CB_editRegistry.ForeColor = [System.Drawing.Color]::White
$CB_editRegistry.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]545))
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
$CB_killProcessesName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]470))
$CB_killProcessesName.Name = [System.String]'CB_killProcessesName'
$CB_killProcessesName.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$CB_killProcessesName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]548,[System.Int32]24))
$CB_killProcessesName.TabIndex = [System.Int32]7
$CB_killProcessesName.Text = [System.String]'Kill Processes Name (separate with commas)'
$CB_killProcessesName.UseVisualStyleBackColor = $true
$CB_killProcessesName.add_CheckedChanged($CB_killProcessesName_CheckedChanged)
#
#PB_ProgressBar
#
$PB_ProgressBar.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]789))
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
$Label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]40,[System.Int32]90))
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
$L_ProgressBarOutputFolder.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]838))
$L_ProgressBarOutputFolder.Name = [System.String]'L_ProgressBarOutputFolder'
$L_ProgressBarOutputFolder.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$L_ProgressBarOutputFolder.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]529,[System.Int32]23))
$L_ProgressBarOutputFolder.TabIndex = [System.Int32]2
$L_ProgressBarOutputFolder.Text = [System.String]'Please wait while the .intunewin file is being built...'
$L_ProgressBarOutputFolder.Visible = $false
#
#Form1
#
$Form1.AutoScaleDimensions = (New-Object -TypeName System.Drawing.SizeF -ArgumentList @([System.Single]120,[System.Single]120))
$Form1.AutoScaleMode = [System.Windows.Forms.AutoScaleMode]::Dpi
$Form1.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]616,[System.Int32]918))
$Form1.Controls.Add($PB_ProgressBar)
$Form1.Controls.Add($CB_shortcutDesktop)
$Form1.Controls.Add($B_create_Intunewin)
$Form1.Controls.Add($R_System)
$Form1.Controls.Add($B_selectFile)
$Form1.Controls.Add($RTB_InstallParameter)
$Form1.Controls.Add($L_AllRightsReservedCNAG)
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
$Form1.Controls.Add($Label9)
$Form1.Controls.Add($Label10)
$Form1.Controls.Add($TB_PackageVersion)
$Form1.Controls.Add($Label11)
$Form1.Controls.Add($TB_MSIGUID)
$Form1.Controls.Add($TB_editRegistry)
$Form1.Controls.Add($Label13)
$Form1.Controls.Add($CB_shortcutStartmenu)
$Form1.Controls.Add($CB_editRegistry)
$Form1.Controls.Add($CB_killProcessesName)
$Form1.Controls.Add($Label4)
$Form1.Controls.Add($L_ProgressBarOutputFolder)
$Form1.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$Form1.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$Form1.MaximizeBox = $false
$Form1.Text = [System.String]'CNAG.PACK - connecT .Intunewin Packager'
$Form1.add_Load($Form1_Load)
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
Add-Member -InputObject $Form1 -Name TB_editRegistry -Value $TB_editRegistry -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label13 -Value $Label13 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CB_shortcutDesktop -Value $CB_shortcutDesktop -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CB_shortcutStartmenu -Value $CB_shortcutStartmenu -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CB_editRegistry -Value $CB_editRegistry -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CB_killProcessesName -Value $CB_killProcessesName -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name PB_ProgressBar -Value $PB_ProgressBar -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label4 -Value $Label4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name L_ProgressBarOutputFolder -Value $L_ProgressBarOutputFolder -MemberType NoteProperty
}
. InitializeComponent
