{ config, pkgs,lib,inputs, ... }:

{
  imports = [
   inputs.dms.homeModules.dank-material-shell
   inputs.dms.homeModules.niri
  ];

  programs.dank-material-shell = {
  enable = true;
    settings = {
    theme = "dark";
    dynamicTheming = true;
   
    currentThemeName = "red";
    currentThemeCategory = "generic";
    customThemeFile = "";
    registryThemeVariants = {
  };
    matugenScheme = "scheme-tonal-spot";
    runUserMatugenTemplates = true;
    matugenTargetMonitor = "";
    popupTransparency = 1;
    dockTransparency = 1;
    widgetBackgroundColor = "sch";
    widgetColorMode = "default";
    controlCenterTileColorMode = "primary";
    buttonColorMode = "primary";
    cornerRadius = 12;
    niriLayoutGapsOverride = -1;
    niriLayoutRadiusOverride = -1;
    niriLayoutBorderSize = -1;
    hyprlandLayoutGapsOverride = -1;
    hyprlandLayoutRadiusOverride = -1;
    hyprlandLayoutBorderSize = -1;
    mangoLayoutGapsOverride = -1;
    mangoLayoutRadiusOverride = -1;
    mangoLayoutBorderSize = -1;
    use24HourClock = true;
    showSeconds = false;
    padHours12Hour = false;
    useFahrenheit = false;
    windSpeedUnit = "kmh";
    nightModeEnabled = false;
    animationSpeed = 1;
    customAnimationDuration = 500;
    syncComponentAnimationSpeeds = true;
    popoutAnimationSpeed = 1;
    popoutCustomAnimationDuration = 150;
    modalAnimationSpeed = 1;
    modalCustomAnimationDuration = 150;
    enableRippleEffects = true;
    wallpaperFillMode = "Fill";
    blurredWallpaperLayer = false;
    blurWallpaperOnOverview = false;
    showLauncherButton = true;
    showWorkspaceSwitcher = true;
    showFocusedWindow = true;
    showWeather = true;
    showMusic = true;
    showClipboard = true;
    showCpuUsage = true;
    showMemUsage = true;
    showCpuTemp = true;
    showGpuTemp = true;
    selectedGpuIndex = 0;
    enabledGpuPciIds = [

   ];
    showSystemTray = true;
    showClock = true;
    showNotificationButton = true;
    showBattery = true;
    showControlCenterButton = true;
    showCapsLockIndicator = true;
    controlCenterShowNetworkIcon = true;
    controlCenterShowBluetoothIcon = true;
    controlCenterShowAudioIcon = true;
    controlCenterShowAudioPercent = false;
    controlCenterShowVpnIcon = true;
    controlCenterShowBrightnessIcon = false;
    controlCenterShowBrightnessPercent = false;
    controlCenterShowMicIcon = false;
    controlCenterShowMicPercent = false;
    controlCenterShowBatteryIcon = false;
    controlCenterShowPrinterIcon = false;
    controlCenterShowScreenSharingIcon = true;
    showPrivacyButton = true;
    privacyShowMicIcon = false;
    privacyShowCameraIcon = false;
    privacyShowScreenShareIcon = false;
    controlCenterWidgets = [
      {
        id = "volumeSlider";
        enabled = true;
        width = 50;
      }
      {
        id = "brightnessSlider";
        enabled = true;
        width = 50;
      }
      {
        id = "wifi";
        enabled = true;
        width = 50;
      }
      {  
        id = "bluetooth";
        enabled = true;
        width = 50;
      }
      {
        id = "audioOutput";
        enabled = true;
        width = 50;
      }
      {
        id = "audioInput";
        enabled = true;
        width = 50;
      }
      {
        id = "nightMode";
        enabled = true;
        width = 50;
      }
      {
        id = "darkMode";
        enabled = true;
        width = 50;
      }
    ];
    showWorkspaceIndex = false;
    showWorkspaceName = false;
    showWorkspacePadding = false;
    workspaceScrolling = false;
    showWorkspaceApps = false;
    workspaceDragReorder = true;
    maxWorkspaceIcons = 3;
    workspaceAppIconSizeOffset = 0;
    groupWorkspaceApps = true;
    workspaceFollowFocus = false;
    showOccupiedWorkspacesOnly = false;
    reverseScrolling = false;
    dwlShowAllTags = false;
    workspaceColorMode = "default";
    workspaceOccupiedColorMode = "none";
    workspaceUnfocusedColorMode = "default";
    workspaceUrgentColorMode = "default";
    workspaceFocusedBorderEnabled = false;
    workspaceFocusedBorderColor = "primary";
    workspaceFocusedBorderThickness = 2;
    workspaceNameIcons = {
    };
  waveProgressEnabled = true;
  scrollTitleEnabled = true;
  audioVisualizerEnabled = true;
  audioScrollMode = "volume";
  audioWheelScrollAmount = 5;
  clockCompactMode = false;
  focusedWindowCompactMode = false;
  runningAppsCompactMode = true;
  barMaxVisibleApps = 0;
  barMaxVisibleRunningApps = 0;
  barShowOverflowBadge = true;
  appsDockHideIndicators = false;
  appsDockColorizeActive = false;
  appsDockActiveColorMode = "primary";
  appsDockEnlargeOnHover = false;
  appsDockEnlargePercentage = 125;
  appsDockIconSizePercentage = 100;
  keyboardLayoutNameCompactMode = false;
  runningAppsCurrentWorkspace = true;
  runningAppsGroupByApp = false;
  runningAppsCurrentMonitor = false;
  appIdSubstitutions = [
    {
      pattern = "Spotify";
      replacement = "spotify";
      type = "exact";
    }
    {
      pattern = "beepertexts";
      replacement = "beeper";
      type = "exact";
    }
    {
      pattern = "home assistant desktop";
      replacement = "homeassistant-desktop";
      type = "exact";
    }
    {
      pattern = "com.transmissionbt.transmission";
      replacement = "transmission-gtk";
      type = "contains";
    }
    {
      pattern = "^steam_app_(\\d+)$";
      replacement = "steam_icon_$1";
      type = "regex";
    }
  ];
  centeringMode = "index";
  clockDateFormat = "";
  lockDateFormat = "";
  greeterRememberLastSession = true;
  greeterRememberLastUser = true;
  greeterEnableFprint = false;
  greeterEnableU2f = false;
  greeterWallpaperPath = "";
  greeterUse24HourClock = true;
  greeterShowSeconds = false;
  greeterPadHours12Hour = false;
  greeterLockDateFormat = "";
  greeterFontFamily = "";
  greeterWallpaperFillMode = "";
  mediaSize = 1;
  appLauncherViewMode = "list";
  spotlightModalViewMode = "list";
  browserPickerViewMode = "grid";
  browserUsageHistory = {
  };
  appPickerViewMode = "grid";
  filePickerUsageHistory = {
  };
  sortAppsAlphabetically = false;
  appLauncherGridColumns = 4;
  spotlightCloseNiriOverview = true;
  spotlightSectionViewModes = {
  };
  appDrawerSectionViewModes = {
  };
  niriOverviewOverlayEnabled = true;
  dankLauncherV2Size = "compact";
  dankLauncherV2BorderEnabled = false;
  dankLauncherV2BorderThickness = 2;
  dankLauncherV2BorderColor = "primary";
  dankLauncherV2ShowFooter = true;
  dankLauncherV2UnloadOnClose = false;
  useAutoLocation = false;
  weatherEnabled = true;
  networkPreference = "auto";
  iconTheme = "System Default";
  cursorSettings = {
    theme = "System Default";
    size = 24;
    niri = {
      hideWhenTyping = false;
      hideAfterInactiveMs = 0;
    };
    hyprland = {
      hideOnKeyPress = false;
      hideOnTouch = false;
      inactiveTimeout = 0;
    };
    dwl = {
      cursorHideTimeout = 0;
    };
  };
  launcherLogoMode = "apps";
  launcherLogoCustomPath = "";
  launcherLogoColorOverride = "";
  launcherLogoColorInvertOnMode = false;
  launcherLogoBrightness = 0.5;
  launcherLogoContrast = 1;
  launcherLogoSizeOffset = 0;
  fontFamily = "Inter Variable";
  monoFontFamily = "Fira Code";
  fontWeight = 400;
  fontScale = 1;
  notepadUseMonospace = true;
  notepadFontFamily = "";
  notepadFontSize = 14;
  notepadShowLineNumbers = false;
  notepadTransparencyOverride = -1;
  notepadLastCustomTransparency = 0.7;
  soundsEnabled = true;
  useSystemSoundTheme = false;
  soundNewNotification = true;
  soundVolumeChanged = true;
  soundPluggedIn = true;
  acMonitorTimeout = 0;
  acLockTimeout = 0;
  acSuspendTimeout = 0;
  acSuspendBehavior = 0;
  acProfileName = "";
  batteryMonitorTimeout = 0;
  batteryLockTimeout = 0;
  batterySuspendTimeout = 0;
  batterySuspendBehavior = 0;
  batteryProfileName = "";
  batteryChargeLimit = 100;
  lockBeforeSuspend = false;
  loginctlLockIntegration = true;
  fadeToLockEnabled = true;
  fadeToLockGracePeriod = 5;
  fadeToDpmsEnabled = true;
  fadeToDpmsGracePeriod = 5;
  launchPrefix = "";
  brightnessDevicePins = {
  };
  wifiNetworkPins = {
  };
  bluetoothDevicePins = {
  };
  audioInputDevicePins = {
  };
  audioOutputDevicePins = {
  };
  gtkThemingEnabled = false;
  qtThemingEnabled = false;
  syncModeWithPortal = true;
  terminalsAlwaysDark = false;
  runDmsMatugenTemplates = true;
  matugenTemplateGtk = true;
  matugenTemplateNiri = true;
  matugenTemplateHyprland = true;
  matugenTemplateMangowc = true;
  matugenTemplateQt5ct = true;
  matugenTemplateQt6ct = true;
  matugenTemplateFirefox = true;
  matugenTemplatePywalfox = true;
  matugenTemplateZenBrowser = true;
  matugenTemplateVesktop = true;
  matugenTemplateEquibop = true;
  matugenTemplateGhostty = true;
  matugenTemplateKitty = true;
  matugenTemplateFoot = true;
  matugenTemplateAlacritty = true;
  matugenTemplateNeovim = false;
  matugenTemplateWezterm = true;
  matugenTemplateDgop = true;
  matugenTemplateKcolorscheme = true;
  matugenTemplateVscode = true;
  matugenTemplateEmacs = true;
  matugenTemplateZed = true;
  showDock = false;
  dockAutoHide = false;
  dockSmartAutoHide = false;
  dockGroupByApp = false;
  dockOpenOnOverview = false;
  dockPosition = 1;
  dockSpacing = 4;
  dockBottomGap = 0;
  dockMargin = 0;
  dockIconSize = 40;
  dockIndicatorStyle = "circle";
  dockBorderEnabled = false;
  dockBorderColor = "surfaceText";
  dockBorderOpacity = 1;
  dockBorderThickness = 1;
  dockIsolateDisplays = false;
  dockLauncherEnabled = false;
  dockLauncherLogoMode = "apps";
  dockLauncherLogoCustomPath = "";
  dockLauncherLogoColorOverride = "";
  dockLauncherLogoSizeOffset = 0;
  dockLauncherLogoBrightness = 0.5;
  dockLauncherLogoContrast = 1;
  dockMaxVisibleApps = 0;
  dockMaxVisibleRunningApps = 0;
  dockShowOverflowBadge = true;
  notificationOverlayEnabled = false;
  notificationPopupShadowEnabled = true;
  notificationPopupPrivacyMode = false;
  modalDarkenBackground = true;
  lockScreenShowPowerActions = true;
  lockScreenShowSystemIcons = true;
  lockScreenShowTime = true;
  lockScreenShowDate = true;
  lockScreenShowProfileImage = true;
  lockScreenShowPasswordField = true;
  lockScreenShowMediaPlayer = true;
  lockScreenPowerOffMonitorsOnLock = false;
  lockAtStartup = false;
  enableFprint = false;
  maxFprintTries = 15;
  enableU2f = false;
  u2fMode = "or";
  lockScreenActiveMonitor = "all";
  lockScreenInactiveColor = "#000000";
  lockScreenNotificationMode = 0;
  hideBrightnessSlider = false;
  notificationTimeoutLow = 5000;
  notificationTimeoutNormal = 5000;
  notificationTimeoutCritical = 0;
  notificationCompactMode = false;
  notificationPopupPosition = 0;
  notificationAnimationSpeed = 1;
  notificationCustomAnimationDuration = 400;
  notificationHistoryEnabled = true;
  notificationHistoryMaxCount = 50;
  notificationHistoryMaxAgeDays = 7;
  notificationHistorySaveLow = true;
  notificationHistorySaveNormal = true;
  notificationHistorySaveCritical = true;
  notificationRules = [

  ];
  osdAlwaysShowValue = false;
  osdPosition = 5;
  osdVolumeEnabled = true;
  osdMediaVolumeEnabled = true;
  osdMediaPlaybackEnabled = false;
  osdBrightnessEnabled = true;
  osdIdleInhibitorEnabled = true;
  osdMicMuteEnabled = true;
  osdCapsLockEnabled = true;
  osdPowerProfileEnabled = false;
  osdAudioOutputEnabled = true;
  powerActionConfirm = true;
  powerActionHoldDuration = 0.5;
  powerMenuActions = [
    "poweroff"
    "reboot"
    "logout"
    "lock"
    "suspend"
    "restart"
  ];
  powerMenuDefaultAction = "logout";
  powerMenuGridLayout = false;
  customPowerActionLock = "";
  customPowerActionLogout = "";
  customPowerActionSuspend = "";
  customPowerActionHibernate = "";
  customPowerActionReboot = "";
  customPowerActionPowerOff = "";
  updaterHideWidget = false;
  updaterUseCustomCommand = false;
  updaterCustomCommand = "";
  updaterTerminalAdditionalParams = "";
  displayNameMode = "system";
  screenPreferences = {
  };
  showOnLastDisplay = {
  };
  niriOutputSettings = {
  };
  hyprlandOutputSettings = {
  };
  displayProfiles = {
  };
  activeDisplayProfile = {
  };
  displayProfileAutoSelect = false;
  displayShowDisconnected = false;
  displaySnapToEdge = true;
  barConfigs = [
    {
      id = "default";
      name = "Main Bar";
      enabled = true;
      position = 0;
      screenPreferences = [
        "all"
      ];
      showOnLastDisplay = true;
      leftWidgets = [
        "launcherButton"
        "workspaceSwitcher"
        "focusedWindow"
      ];
      centerWidgets = [
        "music"
        "clock"
        "weather"
      ];
      rightWidgets = [
        "systemTray"
        "clipboard"
        "cpuUsage"
        "memUsage"
        "notificationButton"
        "battery"
        "controlCenterButton"
      ];
      spacing = 4;
      innerPadding = 4;
      bottomGap = 0;
      transparency = 1;
      widgetTransparency = 1;
      squareCorners = false;
      noBackground = false;
      gothCornersEnabled = false;
      gothCornerRadiusOverride = false;
      gothCornerRadiusValue = 12;
      borderEnabled = false;
      borderColor = "surfaceText";
      borderOpacity = 1;
      borderThickness = 1;
      fontScale = 1;
      autoHide = false;
      autoHideDelay = 250;
      openOnOverview = false;
      visible = true;
      popupGapsAuto = true;
      popupGapsManual = 4;
    }
  ];
  desktopClockEnabled = false;
  desktopClockStyle = "analog";
  desktopClockTransparency = 0.8;
  desktopClockColorMode = "primary";
  desktopClockCustomColor = {
    r = 1;
    g = 1;
    b = 1;
    a = 1;
    hsvHue = -1;
    hsvSaturation = 0;
    hsvValue = 1;
    hslHue = -1;
    hslSaturation = 0;
    hslLightness = 1;
    valid = true;
  };
  desktopClockShowDate = true;
  desktopClockShowAnalogNumbers = false;
  desktopClockShowAnalogSeconds = true;
  desktopClockX = -1;
  desktopClockY = -1;
  desktopClockWidth = 280;
  desktopClockHeight = 180;
  desktopClockDisplayPreferences = [
    "all"
  ];
  systemMonitorEnabled = false;
  systemMonitorShowHeader = true;
  systemMonitorTransparency = 0.8;
  systemMonitorColorMode = "primary";
  systemMonitorCustomColor = {
    r = 1;
    g = 1;
    b = 1;
    a = 1;
    hsvHue = -1;
    hsvSaturation = 0;
    hsvValue = 1;
    hslHue = -1;
    hslSaturation = 0;
    hslLightness = 1;
    valid = true;
  };
  systemMonitorShowCpu = true;
  systemMonitorShowCpuGraph = true;
  systemMonitorShowCpuTemp = true;
  systemMonitorShowGpuTemp = false;
  systemMonitorGpuPciId = "";
  systemMonitorShowMemory = true;
  systemMonitorShowMemoryGraph = true;
  systemMonitorShowNetwork = true;
  systemMonitorShowNetworkGraph = true;
  systemMonitorShowDisk = true;
  systemMonitorShowTopProcesses = false;
  systemMonitorTopProcessCount = 3;
  systemMonitorTopProcessSortBy = "cpu";
  systemMonitorGraphInterval = 60;
  systemMonitorLayoutMode = "auto";
  systemMonitorX = -1;
  systemMonitorY = -1;
  systemMonitorWidth = 320;
  systemMonitorHeight = 480;
  systemMonitorDisplayPreferences = [
    "all"
  ];
  systemMonitorVariants = [

  ];
  desktopWidgetPositions = {
  };
  desktopWidgetGridSettings = {
  };
  desktopWidgetInstances = [

  ];
  desktopWidgetGroups = [

  ];
  builtInPluginSettings = {
  };
  clipboardEnterToPaste = false;
  launcherPluginVisibility = {
  };
  launcherPluginOrder = [

  ];
  configVersion = 5;
};

  session = {
    isLightMode = false;
  doNotDisturb = false;
  wallpaperPath = "/home/xiaoxie/wallpaper/【哲风壁纸】图纸-墙-复古.png";
  perMonitorWallpaper = false;
  monitorWallpapers = {
  };
  perModeWallpaper = false;
  wallpaperPathLight = "";
  wallpaperPathDark = "";
  monitorWallpapersLight = {
  };
  monitorWallpapersDark = {
  };
  monitorWallpaperFillModes = {
  };
  wallpaperTransition = "fade";
  includedTransitions = [
    "fade"
    "wipe"
    "disc"
    "stripes"
    "iris bloom"
    "pixelate"
    "portal"
  ];
  wallpaperCyclingEnabled = false;
  wallpaperCyclingMode = "interval";
  wallpaperCyclingInterval = 300;
  wallpaperCyclingTime = "06:00";
  monitorCyclingSettings = {
  };
  nightModeEnabled = false;
  nightModeTemperature = 4500;
  nightModeHighTemperature = 6500;
  nightModeAutoEnabled = false;
  nightModeAutoMode = "time";
  nightModeStartHour = 18;
  nightModeStartMinute = 0;
  nightModeEndHour = 6;
  nightModeEndMinute = 0;
  latitude = 0;
  longitude = 0;
  nightModeUseIPLocation = false;
  nightModeLocationProvider = "";
  themeModeAutoEnabled = false;
  themeModeAutoMode = "time";
  themeModeStartHour = 18;
  themeModeStartMinute = 0;
  themeModeEndHour = 6;
  themeModeEndMinute = 0;
  themeModeShareGammaSettings = true;
  weatherLocation = "威海市, 264200";
  weatherCoordinates = "37.5120997,122.1152599";
  pinnedApps = [

  ];
  barPinnedApps = [

  ];
  dockLauncherPosition = 0;
  hiddenTrayIds = [

  ];
  trayItemOrder = [

  ];
  recentColors = [

  ];
  showThirdPartyPlugins = false;
  launchPrefix = "";
  lastBrightnessDevice = "";
  brightnessExponentialDevices = {
  };
  brightnessUserSetValues = {
  };
  brightnessExponentValues = {
  };
  selectedGpuIndex = 0;
  nvidiaGpuTempEnabled = false;
  nonNvidiaGpuTempEnabled = false;
  enabledGpuPciIds = [

  ];
  wifiDeviceOverride = "";
  weatherHourlyDetailed = true;
  hiddenApps = [

  ];
  appOverrides = {
  };
  searchAppActions = true;
  vpnLastConnected = "";
  deviceMaxVolumes = {
  };
  hiddenOutputDeviceNames = [

  ];
  hiddenInputDeviceNames = [

  ];
  launcherLastMode = "all";
  appDrawerLastMode = "apps";
  niriOverviewLastMode = "apps";
  configVersion = 3;

    # Add any other session state settings here
  };

  clipboardSettings = {
    maxHistory = 25;
    maxEntrySize = 5242880;
    autoClearDays = 1;
    clearAtStartup = true;
    disabled = false;
    disableHistory = false;
    disablePersist = true;
  };

  # Core features
  enableSystemMonitoring = true;     # System monitoring widgets (dgop)
  enableVPN = true;                  # VPN management widget
  enableDynamicTheming = true;       # Wallpaper-based theming (matugen)
  enableAudioWavelength = true;      # Audio visualizer (cava)
  enableCalendarEvents = true;       # Calendar integration (khal)
  enableClipboardPaste = true;       # Pasting items from the clipboard (wtype)
  niri = {
    enableKeybinds = true;   # Sets static preset keybinds
    enableSpawn = true;
      # Auto-start DMS with niri, if enabled
  };
};


  home.username = "xiaoxie";
  home.homeDirectory = "/home/xiaoxie";

  home.packages = with pkgs;[
  file-roller
  pavucontrol
  wl-clipboard
  cliphist
  grim
  thunar
  slurp
  qq
  imv
  mpv
  fastfetch # 类似 neofetch 的系统信息展示，Noctalia 截图里常有它
  libnotify
  brightnessctl # 亮度控
  playerctl     # 媒体控制
  freecad
  s-tui
  furmark
  obs-studio
  bilibili
  davinci-resolve
  gimp2-with-plugins
  kicad
];

  #虚拟化设置
  dconf.settings = {
  "org/virt-manager/virt-manager/connections" = {
    autoconnect = ["qemu:///system"];
    uris = ["qemu:///system"];
  };
};


# 保持与系统版本一致
  home.stateVersion = "25.11";
 # Install firefox.
 # programs.firefox.enable = true;

programs.ghostty.enable = true; # Super+T in the default setting (terminal)
programs.rofi.enable = true; # Super+D in the default setting (app launcher)
programs.swaylock.enable = true; # Super+Alt+L in the default setting (screen locker)
services.mako.enable = true; # notification daemon
services.swayidle.enable = true; # idle management daemon
services.polkit-gnome.enable = true; # polkit

services.udiskie = {
    enable = true;
    settings = {
        # workaround for
        # https://github.com/nix-community/home-manager/issues/632
        program_options = {
            # replace with your favorite file manager
            file_manager = "${pkgs.thunar}/bin/thunar";
        };
    };
};
  # 让 Home Manager 管理自己
  programs.home-manager.enable = true;
}
