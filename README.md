# CNAG.APP - connecT .intunewin Packager
CNAG.APP connecT .intunewin Packager is a powerful and user-friendly tool designed to simplify the packaging of .msi or .exe files into .intunewin format. This program is tailored for IT professionals and system administrators who need to efficiently prepare applications for deployment via Microsoft Intune. With a focus on automation and ease of use, it streamlines the entire process, from file selection to final packaging, ensuring a seamless and efficient workflow.

### Features

Easy Packaging: 
- Convert .msi or .exe files into .intunewin format with just a few clicks. 
- Install Parameters: Easily configure install parameters for your applications to meet specific deployment needs.
- Registry Editing: Modify the Windows registry as part of the installation process to ensure proper configuration.
- Process Management: Kill specified processes before installation to prevent conflicts and ensure a smooth installation.
- Logging: Comprehensive logging capabilities to track the packaging process and troubleshoot any issues.
- Automatic MSI Version Detection: Automatically detect the version of MSI files, simplifying version control and management.

### How It Works
- Select the File: Choose the .msi or .exe file you want to package.
- Configure Parameters: Set the necessary install parameters, including silent installation options and custom configurations.
- Registry Edits: Define any registry changes that need to be made during installation.
- Process Handling: Specify any processes that need to be terminated before the installation begins.
- Package and Log: Start the packaging process. The tool will create an .intunewin package, complete with detailed logs of the entire process.
- Upload .intunewin in Microsoft Intune: Simply upload the .intune package and set the install and uninstall command.
 ![image](https://tech.tristantyson.com/assets/images/DeployPowerShellApp/selectIntunewinFile.gif)
- Set the following install & uninstall command.
  - Install command: powershell.exe -ExecutionPolicy Bypass -File .\install.ps1
  - Uninstall command: powershell.exe -ExecutionPolicy Bypass -File .\uninstall.ps1
   ![image](https://tech.tristantyson.com/assets/images/DeployPowerShellApp/program.png)

### Benefits

- Efficiency: Save time with automated packaging and streamlined workflows.
- Reliability: Ensure consistent and error-free deployment with comprehensive logging and pre-installation checks.
- Flexibility: Customize installations with parameter settings, registry edits, and process management.
- Version Control: Automatically manage and detect MSI versions for better organization and tracking.

### Getting Started

To get started with CNAG.APP connecT .intunewin Packager, follow these simple steps:

- Download and Install: Download the folder named "CNAG.PACK EXE".
- Launch the Application: Open the application "CNAG.PACK.exe" and follow the on-screen instructions to select your file and configure settings.
- Package and Deploy: Create your .intunewin package and deploy it via Microsoft Intune.

### Contributing
We welcome contributions to enhance the functionality and features of CNAG.APP connecT .intunewin Packager. Please fork the repository and submit a pull request with your changes. For major changes, please open an issue first to discuss what you would like to change.

License
This project is licensed under the MIT License - see the LICENSE file for details.

Feel free to explore the repository, report issues, and contribute to making CNAG.APP connecT .intunewin Packager even better!
