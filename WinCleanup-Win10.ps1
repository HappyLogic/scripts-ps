
Import-Module AppX
Import-Module Dism


$AppsList = @(
    "*Microsoft.549981C3F5F10*"                  # Cortana
    "*Microsoft.Windows.ParentalControls*"       # Parental Controls

    "*Microsoft.BingNews*"                       # Bing
    "*Microsoft.News*"
    "*Microsoft.BingWeather*"
    "*Microsoft.WindowsMaps*"

    #"*Microsoft.MicrosoftEdge*"                  # Edge
    #"*Microsoft.MicrosoftEdgeDevToolsClient*"
    #"*Microsoft.MicrosoftEdge.Stable*"
    
    "*Microsoft.GetHelp*"                        # Help
    "*Microsoft.Getstarted*"
    "*Microsoft.WindowsFeedbackHub*"

    #"*Microsoft.Windows.CapturePicker*"          # Snipping Tool
    #"*Microsoft.ScreenSketch*"
        
    "*Microsoft.Microsoft3DViewer*"              # 3D
    "*Microsoft.Print3D*"
    "*Microsoft.MixedReality.Portal*"

    "*Microsoft.MicrosoftOfficeHub*"             # Office
    "*Microsoft.Office.OneNote*"
    "*Microsoft.Office.Lens*"
    "*Microsoft.Office.Sway*"
    "*Microsoft.MicrosoftStickyNotes*"
    "*Microsoft.Whiteboard*"
    "*Microsoft.Office.Todo.List*"

    "*Microsoft.SkypeApp*"                       # Skype

    "*Microsoft.MicrosoftSolitaireCollection*"   # Gaming
    "*Microsoft.XboxGameCallableUI*"
    "*Microsoft.Xbox.TCUI*"
    "*Microsoft.XboxApp*"
    "*Microsoft.XboxGameOverlay*"
    "*Microsoft.XboxGamingOverlay*"
    "*Microsoft.XboxIdentityProvider*"
    "*Microsoft.XboxSpeechToTextOverlay*"
    
    "*Microsoft.NetworkSpeedTest*"
    
    "*Microsoft.OneConnect*"                     # Connectivity
    "*Microsoft.Windows.CloudExperienceHost*"
    "*Microsoft.RemoteDesktop*"
    "*microsoft.windowscommunicationsapps*"
    "*Microsoft.Messaging*"
    "*Microsoft.YourPhone*"

    "*Microsoft.People*"                         # People
    "*Microsoft.Windows.PeopleExperienceHost*"

    "*Microsoft.Windows.NarratorQuickStart*"     # Narration
    
    #"*Microsoft.ZuneMusic*"                      # Playback
    #"*Microsoft.ZuneVideo*"

    "*Microsoft.Advertising.Xaml*"               # Advertising
    "*Microsoft.Advertising.Xaml_10.1811.1.0_x86__8wekyb3d8bbwe*"
    "*Microsoft.Advertising.Xaml_10.1811.1.0_x64__8wekyb3d8bbwe*"
    
    "*Microsoft.StorePurchaseApp*"               # Other tools
    "*Microsoft.WindowsAlarms*"
    "*Microsoft.WindowsCamera*"
    "*Microsoft.WindowsSoundRecorder*"
    #"*Microsoft.MSPaint*"
    #"*Microsoft.Windows.Photos*"
    #"*Microsoft.WindowsCalculator*"
    #"*Microsoft.WindowsStore*"
    #"*Microsoft.Windows.Search*"
    "*Microsoft.Wallet*"

    "*EclipseManager*"                           # Auto-installed Others
    "*ActiproSoftwareLLC*"
    "*AdobeSystemsIncorporated.AdobePhotoshopExpress*"
    "*Duolingo-LearnLanguagesforFree*"
    "*PandoraMediaInc*"
    "*CandyCrush*"
    "*BubbleWitch3Saga*"
    "*Wunderlist*"
    "*Flipboard*"
    "*Twitter*"
    "*Facebook*"
    "*Spotify*"
    "*Minecraft*"
    "*Royal Revolt*"
    "*Sway*"
    "*Speed Test*"
    "*Dolby*"
    )



foreach ($App in $AppsList) {
    Write-Output "Trying to remove $App."

    Get-AppxPackage -Name $App | Remove-AppxPackage
    Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like $App | Remove-AppxProvisionedPackage -Online
}



