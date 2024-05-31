$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$Label1 = $null
[System.Windows.Forms.TextBox]$TB_PackageName = $null
[System.Windows.Forms.Label]$Label2 = $null
[System.Windows.Forms.Label]$Label3 = $null
[System.Windows.Forms.Label]$Label4 = $null
[System.Windows.Forms.Label]$Label5 = $null
[System.Windows.Forms.Label]$Label6 = $null
[System.Windows.Forms.TextBox]$TB_KillProcessName = $null
[System.Windows.Forms.TextBox]$TB_InstallFile = $null
[System.Windows.Forms.RichTextBox]$RTB_InstallParameter = $null
[System.Windows.Forms.Button]$Button1 = $null
[System.Windows.Forms.RadioButton]$R_System = $null
[System.Windows.Forms.Label]$Label7 = $null
[System.Windows.Forms.RadioButton]$R_User = $null
[System.Windows.Forms.Button]$B_create_Intunewin = $null
[System.Windows.Forms.Label]$Label8 = $null
[System.Windows.Forms.Label]$Label9 = $null
function InitializeComponent
{
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
$TB_PackageName = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label2 = (New-Object -TypeName System.Windows.Forms.Label)
$Label3 = (New-Object -TypeName System.Windows.Forms.Label)
$Label4 = (New-Object -TypeName System.Windows.Forms.Label)
$Label5 = (New-Object -TypeName System.Windows.Forms.Label)
$Label6 = (New-Object -TypeName System.Windows.Forms.Label)
$TB_KillProcessName = (New-Object -TypeName System.Windows.Forms.TextBox)
$TB_InstallFile = (New-Object -TypeName System.Windows.Forms.TextBox)
$RTB_InstallParameter = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$Button1 = (New-Object -TypeName System.Windows.Forms.Button)
$R_System = (New-Object -TypeName System.Windows.Forms.RadioButton)
$Label7 = (New-Object -TypeName System.Windows.Forms.Label)
$R_User = (New-Object -TypeName System.Windows.Forms.RadioButton)
$B_create_Intunewin = (New-Object -TypeName System.Windows.Forms.Button)
$Label8 = (New-Object -TypeName System.Windows.Forms.Label)
$Label9 = (New-Object -TypeName System.Windows.Forms.Label)
$Form1.SuspendLayout()
#
#Label1
#
$Label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]14,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label1.ForeColor = [System.Drawing.Color]::White
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]33))
$Label1.Name = [System.String]'Label1'
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]608,[System.Int32]37))
$Label1.TabIndex = [System.Int32]0
$Label1.Text = [System.String]'CNAG.PACK | connecT .Intunewin Packager'
#
#TB_PackageName
#
$TB_PackageName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]105))
$TB_PackageName.Name = [System.String]'TB_PackageName'
$TB_PackageName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]407,[System.Int32]24))
$TB_PackageName.TabIndex = [System.Int32]1
#
#Label2
#
$Label2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]7,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label2.ForeColor = [System.Drawing.Color]::White
$Label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]551))
$Label2.Name = [System.String]'Label2'
$Label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]199,[System.Int32]23))
$Label2.TabIndex = [System.Int32]2
$Label2.Text = [System.String]'All Rights Reserved @ CNAG 2024'
#
#Label3
#
$Label3.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$Label3.ForeColor = [System.Drawing.Color]::White
$Label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]147))
$Label3.Name = [System.String]'Label3'
$Label3.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]332,[System.Int32]23))
$Label3.TabIndex = [System.Int32]2
$Label3.Text = [System.String]'Install File:'
#
#Label4
#
$Label4.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$Label4.ForeColor = [System.Drawing.Color]::White
$Label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]327))
$Label4.Name = [System.String]'Label4'
$Label4.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]332,[System.Int32]23))
$Label4.TabIndex = [System.Int32]2
$Label4.Text = [System.String]'Kill Processes Name:'
#
#Label5
#
$Label5.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label5.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$Label5.ForeColor = [System.Drawing.Color]::White
$Label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]213))
$Label5.Name = [System.String]'Label5'
$Label5.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]332,[System.Int32]23))
$Label5.TabIndex = [System.Int32]2
$Label5.Text = [System.String]'Install Parameter:'
#
#Label6
#
$Label6.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label6.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$Label6.ForeColor = [System.Drawing.Color]::White
$Label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]396))
$Label6.Name = [System.String]'Label6'
$Label6.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]332,[System.Int32]23))
$Label6.TabIndex = [System.Int32]2
$Label6.Text = [System.String]'Install Context:'
#
#TB_KillProcessName
#
$TB_KillProcessName.BackColor = [System.Drawing.SystemColors]::Window
$TB_KillProcessName.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$TB_KillProcessName.ForeColor = [System.Drawing.SystemColors]::WindowText
$TB_KillProcessName.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$TB_KillProcessName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]351))
$TB_KillProcessName.Name = [System.String]'TB_KillProcessName'
$TB_KillProcessName.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$TB_KillProcessName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]407,[System.Int32]24))
$TB_KillProcessName.TabIndex = [System.Int32]1
#
#TB_InstallFile
#
$TB_InstallFile.BackColor = [System.Drawing.SystemColors]::Window
$TB_InstallFile.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$TB_InstallFile.ForeColor = [System.Drawing.SystemColors]::WindowText
$TB_InstallFile.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$TB_InstallFile.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]171))
$TB_InstallFile.Name = [System.String]'TB_InstallFile'
$TB_InstallFile.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$TB_InstallFile.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]326,[System.Int32]24))
$TB_InstallFile.TabIndex = [System.Int32]1
#
#RTB_InstallParameter
#
$RTB_InstallParameter.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]237))
$RTB_InstallParameter.Name = [System.String]'RTB_InstallParameter'
$RTB_InstallParameter.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]407,[System.Int32]62))
$RTB_InstallParameter.TabIndex = [System.Int32]3
$RTB_InstallParameter.Text = [System.String]''
#
#Button1
#
$Button1.BackColor = [System.Drawing.Color]::White
$Button1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]369,[System.Int32]171))
$Button1.Name = [System.String]'Button1'
$Button1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$Button1.TabIndex = [System.Int32]4
$Button1.Text = [System.String]'select file'
$Button1.UseVisualStyleBackColor = $false
$Button1.add_Click($Button1_Click)
#
#R_System
#
$R_System.Checked = $true
$R_System.ForeColor = [System.Drawing.Color]::White
$R_System.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]417))
$R_System.Name = [System.String]'R_System'
$R_System.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]86,[System.Int32]24))
$R_System.TabIndex = [System.Int32]5
$R_System.TabStop = $true
$R_System.Text = [System.String]'System'
$R_System.UseVisualStyleBackColor = $true
#
#Label7
#
$Label7.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label7.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$Label7.ForeColor = [System.Drawing.Color]::White
$Label7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]129,[System.Int32]420))
$Label7.Name = [System.String]'Label7'
$Label7.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]31,[System.Int32]23))
$Label7.TabIndex = [System.Int32]2
$Label7.Text = [System.String]'or'
#
#R_User
#
$R_User.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$R_User.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$R_User.ForeColor = [System.Drawing.Color]::White
$R_User.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]175,[System.Int32]417))
$R_User.Name = [System.String]'R_User'
$R_User.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$R_User.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]86,[System.Int32]24))
$R_User.TabIndex = [System.Int32]5
$R_User.Text = [System.String]'User'
$R_User.UseVisualStyleBackColor = $true
#
#B_create_Intunewin
#
$B_create_Intunewin.BackColor = [System.Drawing.Color]::White
$B_create_Intunewin.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$B_create_Intunewin.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]463))
$B_create_Intunewin.Name = [System.String]'B_create_Intunewin'
$B_create_Intunewin.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]146,[System.Int32]44))
$B_create_Intunewin.TabIndex = [System.Int32]6
$B_create_Intunewin.Text = [System.String]'Create .Intunewin'
$B_create_Intunewin.UseVisualStyleBackColor = $false
$B_create_Intunewin.add_Click($B_create_Intunewin_Click)
#
#Label8
#
$Label8.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Label8.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$Label8.ForeColor = [System.Drawing.Color]::White
$Label8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]37,[System.Int32]81))
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
$Label9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]242,[System.Int32]551))
$Label9.Name = [System.String]'Label9'
$Label9.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]199,[System.Int32]23))
$Label9.TabIndex = [System.Int32]2
$Label9.Text = [System.String]'Version 1.0'
#
#Form1
#
$Form1.AutoScaleMode = [System.Windows.Forms.AutoScaleMode]::Inherit
$Form1.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]14)),([System.Int32]([System.Byte][System.Byte]30)),([System.Int32]([System.Byte][System.Byte]55)))

$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]583,[System.Int32]583))
$Form1.Controls.Add($B_create_Intunewin)
$Form1.Controls.Add($R_System)
$Form1.Controls.Add($Button1)
$Form1.Controls.Add($RTB_InstallParameter)
$Form1.Controls.Add($Label2)
$Form1.Controls.Add($TB_PackageName)
$Form1.Controls.Add($Label1)
$Form1.Controls.Add($Label3)
$Form1.Controls.Add($Label4)
$Form1.Controls.Add($Label5)
$Form1.Controls.Add($Label6)
$Form1.Controls.Add($TB_KillProcessName)
$Form1.Controls.Add($TB_InstallFile)
$Form1.Controls.Add($Label7)
$Form1.Controls.Add($R_User)
$Form1.Controls.Add($Label8)
$Form1.Controls.Add($Label9)
$Form1.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$Form1.MaximizeBox = $false
$Form1.Text = [System.String]'CNAG.PACK | connecT .Intunewin Packager'
$Form1.ResumeLayout($false)
$Form1.PerformLayout()
Add-Member -InputObject $Form1 -Name Label1 -Value $Label1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TB_PackageName -Value $TB_PackageName -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label2 -Value $Label2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label3 -Value $Label3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label4 -Value $Label4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label5 -Value $Label5 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label6 -Value $Label6 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TB_KillProcessName -Value $TB_KillProcessName -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TB_InstallFile -Value $TB_InstallFile -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name RTB_InstallParameter -Value $RTB_InstallParameter -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button1 -Value $Button1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name R_System -Value $R_System -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label7 -Value $Label7 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name R_User -Value $R_User -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name B_create_Intunewin -Value $B_create_Intunewin -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label8 -Value $Label8 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label9 -Value $Label9 -MemberType NoteProperty
}
. InitializeComponent
