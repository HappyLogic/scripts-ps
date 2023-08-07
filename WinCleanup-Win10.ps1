
Import-Module AppX
Import-Module Dism


$AppsList = @(
    
    "*Microsoft.549981C3F5F10*"                  # Cortana
    "*Microsoft.Windows.ParentalControls*"       # Parental Controls

    "*Microsoft.BingNews*"                       # Bing
    "*Microsoft.BingWeather*"
    "*Microsoft.WindowsMaps*"

    #"*Microsoft.MicrosoftEdge*"                  # Edge
    #"*Microsoft.MicrosoftEdgeDevToolsClient*"
    
    "*Microsoft.GetHelp*"                        # Help
    "*Microsoft.Getstarted*"
    "*Microsoft.WindowsFeedbackHub*"

    #"*Microsoft.Windows.CapturePicker*"          # Snipping Tool
        
    "*Microsoft.Microsoft3DViewer*"              # 3D
    "*Microsoft.Print3D*"

    "*Microsoft.MicrosoftOfficeHub*"             # Office
    "*Microsoft.Office.OneNote*"
    "*Microsoft.Office.Sway*"
    "*Microsoft.MicrosoftStickyNotes*"

    "*Microsoft.SkypeApp*"                       # Skype

    "*Microsoft.MicrosoftSolitaireCollection*"   # Games
    "*Microsoft.XboxGameCallableUI*"
    "*Microsoft.Xbox.TCUI*"
    "*Microsoft.XboxApp*"
    "*Microsoft.XboxGameOverlay*"
    "*Microsoft.XboxIdentityProvider*"
    "*Microsoft.XboxSpeechToTextOverlay*"
    
    "*Microsoft.NetworkSpeedTest*"
    
    "*Microsoft.OneConnect*"                     # Connectivity
    "*Microsoft.Windows.CloudExperienceHost*"
    "*Microsoft.RemoteDesktop*"
    "*microsoft.windowscommunicationsapps*"
    "*Microsoft.Messaging*"

    "*Microsoft.People*"                         # People
    "*Microsoft.Windows.PeopleExperienceHost*"

    "*Microsoft.Windows.NarratorQuickStart*"     # Narration
    
    "*Microsoft.StorePurchaseApp*"
    "*Microsoft.WindowsAlarms*"
    "*Microsoft.WindowsCamera*"
    "*Microsoft.WindowsSoundRecorder*"

    #"*Microsoft.ZuneMusic*"                      # Playback
    #"*Microsoft.ZuneVideo*"

    "*Microsoft.Advertising.Xaml_10.1712.5.0_x64__8wekyb3d8bbwe*"
    "*Microsoft.Advertising.Xaml_10.1712.5.0_x86__8wekyb3d8bbwe*"
    
    #"*Microsoft.MSPaint*"
    #"*Microsoft.Windows.Photos*"
    #"*Microsoft.WindowsCalculator*"
    #"*Microsoft.WindowsStore*"

    "*EclipseManager*"                           # Auto-installed Others
    "*ActiproSoftwareLLC*"
    "*AdobeSystemsIncorporated.AdobePhotoshopExpress*"
    "*Duolingo-LearnLanguagesforFree*"
    "*PandoraMediaInc*"
    "*CandyCrush*"
    "*Wunderlist*"
    "*Flipboard*"
    "*Twitter*"
    "*Facebook*"
    "*Spotify*"
    )



foreach ($App in $AppsList) {
    Get-AppxPackage -Name $App | Remove-AppxPackage
    Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like $App | Remove-AppxProvisionedPackage -Online
}



