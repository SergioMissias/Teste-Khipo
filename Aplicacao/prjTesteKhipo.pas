﻿<Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
    <PropertyGroup>
        <ProjectGuid>{03E39D4C-22BE-4A5B-86ED-0DB3E0935F44}</ProjectGuid>
        <ProjectVersion>19.4</ProjectVersion>
        <FrameworkType>FMX</FrameworkType>
        <Base>True</Base>
        <Config Condition="'$(Config)'==''">Debug</Config>
        <Platform Condition="'$(Platform)'==''">Win32</Platform>
        <TargetedPlatforms>168979</TargetedPlatforms>
        <AppType>Application</AppType>
        <MainSource>prjTesteKhipo.dpr</MainSource>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Config)'=='Base' or '$(Base)'!=''">
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Android' and '$(Base)'=='true') or '$(Base_Android)'!=''">
        <Base_Android>true</Base_Android>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Android64' and '$(Base)'=='true') or '$(Base_Android64)'!=''">
        <Base_Android64>true</Base_Android64>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='iOSDevice64' and '$(Base)'=='true') or '$(Base_iOSDevice64)'!=''">
        <Base_iOSDevice64>true</Base_iOSDevice64>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='OSX64' and '$(Base)'=='true') or '$(Base_OSX64)'!=''">
        <Base_OSX64>true</Base_OSX64>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='OSXARM64' and '$(Base)'=='true') or '$(Base_OSXARM64)'!=''">
        <Base_OSXARM64>true</Base_OSXARM64>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Win32' and '$(Base)'=='true') or '$(Base_Win32)'!=''">
        <Base_Win32>true</Base_Win32>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Win64' and '$(Base)'=='true') or '$(Base_Win64)'!=''">
        <Base_Win64>true</Base_Win64>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Config)'=='Debug' or '$(Cfg_1)'!=''">
        <Cfg_1>true</Cfg_1>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Win32' and '$(Cfg_1)'=='true') or '$(Cfg_1_Win32)'!=''">
        <Cfg_1_Win32>true</Cfg_1_Win32>
        <CfgParent>Cfg_1</CfgParent>
        <Cfg_1>true</Cfg_1>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Win64' and '$(Cfg_1)'=='true') or '$(Cfg_1_Win64)'!=''">
        <Cfg_1_Win64>true</Cfg_1_Win64>
        <CfgParent>Cfg_1</CfgParent>
        <Cfg_1>true</Cfg_1>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Config)'=='Release' or '$(Cfg_2)'!=''">
        <Cfg_2>true</Cfg_2>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Win32' and '$(Cfg_2)'=='true') or '$(Cfg_2_Win32)'!=''">
        <Cfg_2_Win32>true</Cfg_2_Win32>
        <CfgParent>Cfg_2</CfgParent>
        <Cfg_2>true</Cfg_2>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Win64' and '$(Cfg_2)'=='true') or '$(Cfg_2_Win64)'!=''">
        <Cfg_2_Win64>true</Cfg_2_Win64>
        <CfgParent>Cfg_2</CfgParent>
        <Cfg_2>true</Cfg_2>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base)'!=''">
        <DCC_DcuOutput>.\$(Platform)\$(Config)</DCC_DcuOutput>
        <DCC_ExeOutput>.\$(Platform)\$(Config)</DCC_ExeOutput>
        <DCC_E>false</DCC_E>
        <DCC_N>false</DCC_N>
        <DCC_S>false</DCC_S>
        <DCC_F>false</DCC_F>
        <DCC_K>false</DCC_K>
        <DCC_Namespace>System;Xml;Data;Datasnap;Web;Soap;$(DCC_Namespace)</DCC_Namespace>
        <AUP_ACCESS_COARSE_LOCATION>true</AUP_ACCESS_COARSE_LOCATION>
        <AUP_ACCESS_FINE_LOCATION>true</AUP_ACCESS_FINE_LOCATION>
        <AUP_CALL_PHONE>true</AUP_CALL_PHONE>
        <AUP_CAMERA>true</AUP_CAMERA>
        <AUP_INTERNET>true</AUP_INTERNET>
        <AUP_READ_EXTERNAL_STORAGE>true</AUP_READ_EXTERNAL_STORAGE>
        <AUP_WRITE_EXTERNAL_STORAGE>true</AUP_WRITE_EXTERNAL_STORAGE>
        <AUP_READ_PHONE_STATE>true</AUP_READ_PHONE_STATE>
        <Icon_MainIcon>$(BDS)\bin\delphi_PROJECTICON.ico</Icon_MainIcon>
        <Icns_MainIcns>$(BDS)\bin\delphi_PROJECTICNS.icns</Icns_MainIcns>
        <SanitizedProjectName>prjTesteKhipo</SanitizedProjectName>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base_Android)'!=''">
        <DCC_UsePackage>fmx;DbxCommonDriver;bindengine;IndyIPCommon;emsclient;IndyProtocols;dbxcds;FmxTeeUI;FireDACSqliteDriver;DbxClientDriver;soapmidas;dbexpress;inet;FireDACDBXDriver;CustomIPTransport;IndySystem;FireDACCommon;bindcompdbx;rtl;DBXSqliteDriver;DataSnapFireDAC;FireDAC;xmlrtl;dsnap;DataSnapNativeClient;FireDACCommonDriver;IndyIPClient;bindcompfmx;fmxFireDAC;DataSnapCommon;dbrtl;DBXInterBaseDriver;bindcomp;IndyCore;RESTBackendComponents;RESTComponents;IndyIPServer;dsnapxml;DataSnapClient;DataSnapProviderClient;emsclientfiredac;FireDACDSDriver;tethering;CloudService;FMXTee;soaprtl;soapserver;FireDACIBDriver;$(DCC_UsePackage)</DCC_UsePackage>
        <VerInfo_Keys>package=com.embarcadero.$(MSBuildProjectName);label=$(MSBuildProjectName);versionCode=1;versionName=1.0.0;persistent=False;restoreAnyVersion=False;installLocation=auto;largeHeap=False;theme=TitleBar;hardwareAccelerated=true;apiKey=</VerInfo_Keys>
        <BT_BuildType>Debug</BT_BuildType>
        <VerInfo_IncludeVerInfo>true</VerInfo_IncludeVerInfo>
        <Android_LauncherIcon36>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_36x36.png</Android_LauncherIcon36>
        <Android_LauncherIcon48>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_48x48.png</Android_LauncherIcon48>
        <Android_LauncherIcon72>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_72x72.png</Android_LauncherIcon72>
        <Android_LauncherIcon96>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_96x96.png</Android_LauncherIcon96>
        <Android_LauncherIcon144>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_144x144.png</Android_LauncherIcon144>
        <Android_LauncherIcon192>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_192x192.png</Android_LauncherIcon192>
        <Android_SplashImage426>$(BDS)\bin\Artwork\Android\FM_SplashImage_426x320.png</Android_SplashImage426>
        <Android_SplashImage470>$(BDS)\bin\Artwork\Android\FM_SplashImage_470x320.png</Android_SplashImage470>
        <Android_SplashImage640>$(BDS)\bin\Artwork\Android\FM_SplashImage_640x480.png</Android_SplashImage640>
        <Android_SplashImage960>$(BDS)\bin\Artwork\Android\FM_SplashImage_960x720.png</Android_SplashImage960>
        <Android_NotificationIcon24>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_24x24.png</Android_NotificationIcon24>
        <Android_NotificationIcon36>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_36x36.png</Android_NotificationIcon36>
        <Android_NotificationIcon48>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_48x48.png</Android_NotificationIcon48>
        <Android_NotificationIcon72>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_72x72.png</Android_NotificationIcon72>
        <Android_NotificationIcon96>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_96x96.png</Android_NotificationIcon96>
        <EnabledSysJars>annotation-1.2.0.dex.jar;asynclayoutinflater-1.0.0.dex.jar;billing-4.0.0.dex.jar;browser-1.0.0.dex.jar;cloud-messaging.dex.jar;collection-1.0.0.dex.jar;coordinatorlayout-1.0.0.dex.jar;core-1.5.0-rc02.dex.jar;core-common-2.0.1.dex.jar;core-runtime-2.0.1.dex.jar;cursoradapter-1.0.0.dex.jar;customview-1.0.0.dex.jar;documentfile-1.0.0.dex.jar;drawerlayout-1.0.0.dex.jar;firebase-annotations-16.0.0.dex.jar;firebase-common-20.0.0.dex.jar;firebase-components-17.0.0.dex.jar;firebase-datatransport-18.0.0.dex.jar;firebase-encoders-17.0.0.dex.jar;firebase-encoders-json-18.0.0.dex.jar;firebase-iid-interop-17.1.0.dex.jar;firebase-installations-17.0.0.dex.jar;firebase-installations-interop-17.0.0.dex.jar;firebase-measurement-connector-19.0.0.dex.jar;firebase-messaging-22.0.0.dex.jar;fmx.dex.jar;fragment-1.0.0.dex.jar;google-play-licensing.dex.jar;interpolator-1.0.0.dex.jar;javax.inject-1.dex.jar;legacy-support-core-ui-1.0.0.dex.jar;legacy-support-core-utils-1.0.0.dex.jar;lifecycle-common-2.0.0.dex.jar;lifecycle-livedata-2.0.0.dex.jar;lifecycle-livedata-core-2.0.0.dex.jar;lifecycle-runtime-2.0.0.dex.jar;lifecycle-service-2.0.0.dex.jar;lifecycle-viewmodel-2.0.0.dex.jar;listenablefuture-1.0.dex.jar;loader-1.0.0.dex.jar;localbroadcastmanager-1.0.0.dex.jar;play-services-ads-20.1.0.dex.jar;play-services-ads-base-20.1.0.dex.jar;play-services-ads-identifier-17.0.0.dex.jar;play-services-ads-lite-20.1.0.dex.jar;play-services-base-17.5.0.dex.jar;play-services-basement-17.6.0.dex.jar;play-services-cloud-messaging-16.0.0.dex.jar;play-services-drive-17.0.0.dex.jar;play-services-games-21.0.0.dex.jar;play-services-location-18.0.0.dex.jar;play-services-maps-17.0.1.dex.jar;play-services-measurement-base-18.0.0.dex.jar;play-services-measurement-sdk-api-18.0.0.dex.jar;play-services-places-placereport-17.0.0.dex.jar;play-services-stats-17.0.0.dex.jar;play-services-tasks-17.2.0.dex.jar;print-1.0.0.dex.jar;room-common-2.1.0.dex.jar;room-runtime-2.1.0.dex.jar;slidingpanelayout-1.0.0.dex.jar;sqlite-2.0.1.dex.jar;sqlite-framework-2.0.1.dex.jar;swiperefreshlayout-1.0.0.dex.jar;transport-api-3.0.0.dex.jar;transport-backend-cct-3.0.0.dex.jar;transport-runtime-3.0.0.dex.jar;user-messaging-platform-1.0.0.dex.jar;versionedparcelable-1.1.1.dex.jar;viewpager-1.0.0.dex.jar;work-runtime-2.1.0.dex.jar</EnabledSysJars>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base_Android64)'!=''">
        <DCC_UsePackage>fmx;DbxCommonDriver;bindengine;IndyIPCommon;emsclient;IndyProtocols;dbxcds;FmxTeeUI;FireDACSqliteDriver;DbxClientDriver;soapmidas;ACBr_PagFor;dbexpress;inet;FireDACDBXDriver;CustomIPTransport;ACBr_NFSeX;IndySystem;ACBr_NFSeXDanfseRL;FireDACCommon;bindcompdbx;rtl;frce;DBXSqliteDriver;DataSnapFireDAC;FireDAC;xmlrtl;dsnap;DataSnapNativeClient;FireDACCommonDriver;IndyIPClient;bindcompfmx;fmxFireDAC;DataSnapCommon;dbrtl;DBXInterBaseDriver;bindcomp;IndyCore;RESTBackendComponents;RESTComponents;IndyIPServer;dsnapxml;DataSnapClient;DataSnapProviderClient;ACBr_Boleto;emsclientfiredac;FireDACDSDriver;tethering;ACBr_GTIN;CloudService;ACBr_OFX;FMXTee;ACBr_DebitoAutomatico;soaprtl;soapserver;FireDACIBDriver;$(DCC_UsePackage)</DCC_UsePackage>
        <VerInfo_Keys>package=com.embarcadero.$(MSBuildProjectName);label=$(MSBuildProjectName);versionCode=1;versionName=1.0.0;persistent=False;restoreAnyVersion=False;installLocation=auto;largeHeap=False;theme=TitleBar;hardwareAccelerated=true;apiKey=</VerInfo_Keys>
        <BT_BuildType>Debug</BT_BuildType>
        <VerInfo_IncludeVerInfo>true</VerInfo_IncludeVerInfo>
        <Android_LauncherIcon36>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_36x36.png</Android_LauncherIcon36>
        <Android_LauncherIcon48>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_48x48.png</Android_LauncherIcon48>
        <Android_LauncherIcon72>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_72x72.png</Android_LauncherIcon72>
        <Android_LauncherIcon96>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_96x96.png</Android_LauncherIcon96>
        <Android_LauncherIcon144>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_144x144.png</Android_LauncherIcon144>
        <Android_LauncherIcon192>$(BDS)\bin\Artwork\Android\FM_LauncherIcon_192x192.png</Android_LauncherIcon192>
        <Android_SplashImage426>$(BDS)\bin\Artwork\Android\FM_SplashImage_426x320.png</Android_SplashImage426>
        <Android_SplashImage470>$(BDS)\bin\Artwork\Android\FM_SplashImage_470x320.png</Android_SplashImage470>
        <Android_SplashImage640>$(BDS)\bin\Artwork\Android\FM_SplashImage_640x480.png</Android_SplashImage640>
        <Android_SplashImage960>$(BDS)\bin\Artwork\Android\FM_SplashImage_960x720.png</Android_SplashImage960>
        <Android_NotificationIcon24>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_24x24.png</Android_NotificationIcon24>
        <Android_NotificationIcon36>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_36x36.png</Android_NotificationIcon36>
        <Android_NotificationIcon48>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_48x48.png</Android_NotificationIcon48>
        <Android_NotificationIcon72>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_72x72.png</Android_NotificationIcon72>
        <Android_NotificationIcon96>$(BDS)\bin\Artwork\Android\FM_NotificationIcon_96x96.png</Android_NotificationIcon96>
        <EnabledSysJars>annotation-1.2.0.dex.jar;asynclayoutinflater-1.0.0.dex.jar;billing-4.0.0.dex.jar;browser-1.0.0.dex.jar;cloud-messaging.dex.jar;collection-1.0.0.dex.jar;coordinatorlayout-1.0.0.dex.jar;core-1.5.0-rc02.dex.jar;core-common-2.0.1.dex.jar;core-runtime-2.0.1.dex.jar;cursoradapter-1.0.0.dex.jar;customview-1.0.0.dex.jar;documentfile-1.0.0.dex.jar;drawerlayout-1.0.0.dex.jar;firebase-annotations-16.0.0.dex.jar;firebase-common-20.0.0.dex.jar;firebase-components-17.0.0.dex.jar;firebase-datatransport-18.0.0.dex.jar;firebase-encoders-17.0.0.dex.jar;firebase-encoders-json-18.0.0.dex.jar;firebase-iid-interop-17.1.0.dex.jar;firebase-installations-17.0.0.dex.jar;firebase-installations-interop-17.0.0.dex.jar;firebase-measurement-connector-19.0.0.dex.jar;firebase-messaging-22.0.0.dex.jar;fmx.dex.jar;fragment-1.0.0.dex.jar;google-play-licensing.dex.jar;interpolator-1.0.0.dex.jar;javax.inject-1.dex.jar;legacy-support-core-ui-1.0.0.dex.jar;legacy-support-core-utils-1.0.0.dex.jar;lifecycle-common-2.0.0.dex.jar;lifecycle-livedata-2.0.0.dex.jar;lifecycle-livedata-core-2.0.0.dex.jar;lifecycle-runtime-2.0.0.dex.jar;lifecycle-service-2.0.0.dex.jar;lifecycle-viewmodel-2.0.0.dex.jar;listenablefuture-1.0.dex.jar;loader-1.0.0.dex.jar;localbroadcastmanager-1.0.0.dex.jar;play-services-ads-20.1.0.dex.jar;play-services-ads-base-20.1.0.dex.jar;play-services-ads-identifier-17.0.0.dex.jar;play-services-ads-lite-20.1.0.dex.jar;play-services-base-17.5.0.dex.jar;play-services-basement-17.6.0.dex.jar;play-services-cloud-messaging-16.0.0.dex.jar;play-services-drive-17.0.0.dex.jar;play-services-games-21.0.0.dex.jar;play-services-location-18.0.0.dex.jar;play-services-maps-17.0.1.dex.jar;play-services-measurement-base-18.0.0.dex.jar;play-services-measurement-sdk-api-18.0.0.dex.jar;play-services-places-placereport-17.0.0.dex.jar;play-services-stats-17.0.0.dex.jar;play-services-tasks-17.2.0.dex.jar;print-1.0.0.dex.jar;room-common-2.1.0.dex.jar;room-runtime-2.1.0.dex.jar;slidingpanelayout-1.0.0.dex.jar;sqlite-2.0.1.dex.jar;sqlite-framework-2.0.1.dex.jar;swiperefreshlayout-1.0.0.dex.jar;transport-api-3.0.0.dex.jar;transport-backend-cct-3.0.0.dex.jar;transport-runtime-3.0.0.dex.jar;user-messaging-platform-1.0.0.dex.jar;versionedparcelable-1.1.1.dex.jar;viewpager-1.0.0.dex.jar;work-runtime-2.1.0.dex.jar</EnabledSysJars>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base_iOSDevice64)'!=''">
        <DCC_UsePackage>fmx;DbxCommonDriver;bindengine;IndyIPCommon;emsclient;IndyProtocols;dbxcds;FmxTeeUI;FireDACSqliteDriver;DbxClientDriver;soapmidas;dbexpress;inet;FireDACDBXDriver;CustomIPTransport;ACBr_NFe;IndySystem;ACBr_Diversos;ACBr_TEFD;ACBr_SPED;ACBr_CTe;ACBr_SATWS;FireDACCommon;ACBr_LCDPR;bindcompdbx;rtl;frce;DBXSqliteDriver;ACBr_Sintegra;ACBr_Serial;ACBr_MDFe;DataSnapFireDAC;FireDAC;xmlrtl;dsnap;DataSnapNativeClient;ACBr_PAF;FireDACCommonDriver;IndyIPClient;ACBr_Convenio115;bindcompfmx;fmxFireDAC;DataSnapCommon;ACBr_Ponto;fmxase;dbrtl;ACBr_NFSeDanfseRL;ACBr_NFSe;ACBre_Social;ACBr_ANe;DBXInterBaseDriver;ACBr_SATExtratoRL;ACBR_DeSTDA;bindcomp;IndyCore;RESTBackendComponents;RESTComponents;IndyIPServer;dsnapxml;DataSnapClient;DataSnapProviderClient;ACBr_Boleto;emsclientfiredac;FireDACDSDriver;ACBr_BlocoX;ACBr_SATExtratoESCPOS;tethering;CloudService;ACBr_OFX;ACBr_PAFNFCe;FMXTee;ACBr_NFeDanfeRL;soaprtl;soapserver;FireDACIBDriver;$(DCC_UsePackage)</DCC_UsePackage>
        <VerInfo_Keys>CFBundleName=$(MSBuildProjectName);CFBundleDevelopmentRegion=en;CFBundleDisplayName=$(MSBuildProjectName);CFBundleIdentifier=$(MSBuildProjectName);CFBundleInfoDictionaryVersion=7.1;CFBundleVersion=1.0.0;CFBundleShortVersionString=1.0.0;CFBundlePackageType=APPL;CFBundleSignature=????;LSRequiresIPhoneOS=true;CFBundleAllowMixedLocalizations=YES;CFBundleExecutable=$(MSBuildProjectName);UIDeviceFamily=iPhone &amp; iPad;NSLocationAlwaysUsageDescription=The reason for accessing the location information of the user;NSLocationWhenInUseUsageDescription=The reason for accessing the location information of the user;NSLocationAlwaysAndWhenInUseUsageDescription=The reason for accessing the location information of the user;UIBackgroundModes=;NSContactsUsageDescription=The reason for accessing the contacts;NSPhotoLibraryUsageDescription=The reason for accessing the photo library;NSPhotoLibraryAddUsageDescription=The reason for adding to the photo library;NSCameraUsageDescription=The reason for accessing the camera;NSFaceIDUsageDescription=The reason for accessing the face id;NSMicrophoneUsageDescription=The reason for accessing the microphone;NSSiriUsageDescription=The reason for accessing Siri;ITSAppUsesNonExemptEncryption=false;NSBluetoothAlwaysUsageDescription=The reason for accessing bluetooth;NSBluetoothPeripheralUsageDescription=The reason for accessing bluetooth peripherals;NSCalendarsUsageDescription=The reason for accessing the calendar data;NSRemindersUsageDescription=The reason for accessing the reminders;NSMotionUsageDescription=The reason for accessing the accelerometer;NSSpeechRecognitionUsageDescription=The reason for requesting to send user data to Apple&apos;s speech recognition servers</VerInfo_Keys>
        <VerInfo_UIDeviceFamily>iPhoneAndiPad</VerInfo_UIDeviceFamily>
        <VerInfo_IncludeVerInfo>true</VerInfo_IncludeVerInfo>
        <BT_BuildType>Debug</BT_BuildType>
        <VerInfo_BundleId>$(MSBuildProjectName)</VerInfo_BundleId>
        <iOS_AppStore1024>$(BDS)\bin\Artwork\iOS\iPhone\FM_ApplicationIcon_1024x1024.png</iOS_AppStore1024>
        <iPhone_AppIcon120>$(BDS)\bin\Artwork\iOS\iPhone\FM_ApplicationIcon_120x120.png</iPhone_AppIcon120>
        <iPhone_AppIcon180>$(BDS)\bin\Artwork\iOS\iPhone\FM_ApplicationIcon_180x180.png</iPhone_AppIcon180>
        <iPhone_Launch2x>$(BDS)\bin\Artwork\iOS\iPhone\FM_LaunchImage_2x.png</iPhone_Launch2x>
        <iPhone_LaunchDark2x>$(BDS)\bin\Artwork\iOS\iPhone\FM_LaunchImageDark_2x.png</iPhone_LaunchDark2x>
        <iPhone_Launch3x>$(BDS)\bin\Artwork\iOS\iPhone\FM_LaunchImage_3x.png</iPhone_Launch3x>
        <iPhone_LaunchDark3x>$(BDS)\bin\Artwork\iOS\iPhone\FM_LaunchImageDark_3x.png</iPhone_LaunchDark3x>
        <iPhone_Spotlight80>$(BDS)\bin\Artwork\iOS\iPhone\FM_SpotlightSearchIcon_80x80.png</iPhone_Spotlight80>
        <iPhone_Spotlight120>$(BDS)\bin\Artwork\iOS\iPhone\FM_SpotlightSearchIcon_120x120.png</iPhone_Spotlight120>
        <iPhone_Setting58>$(BDS)\bin\Artwork\iOS\iPhone\FM_SettingIcon_58x58.png</iPhone_Setting58>
        <iPhone_Setting87>$(BDS)\bin\Artwork\iOS\iPhone\FM_SettingIcon_87x87.png</iPhone_Setting87>
        <iPhone_Notification40>$(BDS)\bin\Artwork\iOS\iPhone\FM_NotificationIcon_40x40.png</iPhone_Notification40>
        <iPhone_Notification60>$(BDS)\bin\Artwork\iOS\iPhone\FM_NotificationIcon_60x60.png</iPhone_Notification60>
        <iPad_AppIcon152>$(BDS)\bin\Artwork\iOS\iPad\FM_ApplicationIcon_152x152.png</iPad_AppIcon152>
        <iPad_AppIcon167>$(BDS)\bin\Artwork\iOS\iPad\FM_ApplicationIcon_167x167.png</iPad_AppIcon167>
        <iPad_Launch2x>$(BDS)\bin\Artwork\iOS\iPad\FM_LaunchImage_2x.png</iPad_Launch2x>
        <iPad_LaunchDark2x>$(BDS)\bin\Artwork\iOS\iPad\FM_LaunchImageDark_2x.png</iPad_LaunchDark2x>
        <iPad_SpotLight80>$(BDS)\bin\Artwork\iOS\iPad\FM_SpotlightSearchIcon_80x80.png</iPad_SpotLight80>
        <iPad_Setting58>$(BDS)\bin\Artwork\iOS\iPad\FM_SettingIcon_58x58.png</iPad_Setting58>
        <iPad_Notification40>$(BDS)\bin\Artwork\iOS\iPad\FM_NotificationIcon_40x40.png</iPad_Notification40>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base_OSX64)'!=''">
        <DCC_UsePackage>DataSnapServer;fmx;DbxCommonDriver;bindengine;IndyIPCommon;FireDACCommonODBC;emsclient;IndyProtocols;dbxcds;FmxTeeUI;DBXFirebirdDriver;FireDACSqliteDriver;DbxClientDriver;soapmidas;dbexpress;inet;FireDACDBXDriver;fmxdae;CustomIPTransport;FireDACMSSQLDriver;IndySystem;FireDACCommon;DataSnapServerMidas;FireDACODBCDriver;bindcompdbx;rtl;FireDACMySQLDriver;frce;DBXSqliteDriver;DataSnapFireDAC;inetdbxpress;FireDAC;xmlrtl;dsnap;DBXOracleDriver;DBXInformixDriver;fmxobj;DataSnapNativeClient;FireDACCommonDriver;IndyIPClient;bindcompfmx;inetdb;FireDACASADriver;fmxFireDAC;DBXMySQLDriver;DataSnapCommon;fmxase;dbrtl;FireDACOracleDriver;DataSnapIndy10ServerTransport;DBXInterBaseDriver;FireDACMongoDBDriver;FireDACTDataDriver;bindcomp;IndyCore;RESTBackendComponents;RESTComponents;IndyIPServer;dsnapxml;DataSnapClient;DataSnapProviderClient;emsclientfiredac;FireDACPgDriver;FireDACDSDriver;tethering;CloudService;DBXSybaseASADriver;ACBr_OFX;FMXTee;soaprtl;soapserver;FireDACIBDriver;$(DCC_UsePackage)</DCC_UsePackage>
        <VerInfo_Keys>CFBundleName=$(MSBuildProjectName);CFBundleDisplayName=$(MSBuildProjectName);CFBundleIdentifier=$(MSBuildProjectName);CFBundleVersion=1.0.0;CFBundleShortVersionString=1.0.0;CFBundlePackageType=APPL;CFBundleSignature=????;CFBundleAllowMixedLocalizations=YES;CFBundleExecutable=$(MSBuildProjectName);NSHighResolutionCapable=true;LSApplicationCategoryType=public.app-category.utilities;NSLocationUsageDescription=The reason for accessing the location information of the user;NSContactsUsageDescription=The reason for accessing the contacts;NSCalendarsUsageDescription=The reason for accessing the calendar data;NSRemindersUsageDescription=The reason for accessing the reminders;NSCameraUsageDescription=The reason for accessing the camera;NSMicrophoneUsageDescription=The reason for accessing the microphone;NSMotionUsageDescription=The reason for accessing the accelerometer;NSDesktopFolderUsageDescription=The reason for accessing the Desktop folder;NSDocumentsFolderUsageDescription=The reason for accessing the Documents folder;NSDownloadsFolderUsageDescription=The reason for accessing the Downloads folder;NSNetworkVolumesUsageDescription=The reason for accessing files on a network volume;NSRemovableVolumesUsageDescription=The reason for accessing files on a removable volume;NSSpeechRecognitionUsageDescription=The reason for requesting to send user data to Apple&apos;s speech recognition servers</VerInfo_Keys>
        <BT_BuildType>Debug</BT_BuildType>
        <VerInfo_IncludeVerInfo>true</VerInfo_IncludeVerInfo>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base_OSXARM64)'!=''">
        <DCC_UsePackage>DataSnapServer;fmx;DbxCommonDriver;bindengine;IndyIPCommon;FireDACCommonODBC;emsclient;IndyProtocols;dbxcds;FmxTeeUI;DBXFirebirdDriver;FireDACSqliteDriver;DbxClientDriver;soapmidas;dbexpress;inet;FireDACDBXDriver;fmxdae;CustomIPTransport;FireDACMSSQLDriver;IndySystem;FireDACCommon;DataSnapServerMidas;FireDACODBCDriver;bindcompdbx;rtl;FireDACMySQLDriver;DBXSqliteDriver;DataSnapFireDAC;inetdbxpress;FireDAC;xmlrtl;dsnap;DBXOracleDriver;DBXInformixDriver;fmxobj;DataSnapNativeClient;FireDACCommonDriver;IndyIPClient;bindcompfmx;inetdb;FireDACASADriver;fmxFireDAC;DBXMySQLDriver;DataSnapCommon;fmxase;dbrtl;FireDACOracleDriver;DataSnapIndy10ServerTransport;DBXInterBaseDriver;FireDACMongoDBDriver;FireDACTDataDriver;bindcomp;IndyCore;RESTBackendComponents;RESTComponents;IndyIPServer;dsnapxml;DataSnapClient;DataSnapProviderClient;emsclientfiredac;FireDACPgDriver;FireDACDSDriver;tethering;CloudService;DBXSybaseASADriver;FMXTee;soaprtl;soapserver;FireDACIBDriver;$(DCC_UsePackage)</DCC_UsePackage>
        <VerInfo_Keys>CFBundleName=$(MSBuildProjectName);CFBundleDisplayName=$(MSBuildProjectName);CFBundleIdentifier=$(MSBuildProjectName);CFBundleVersion=1.0.0;CFBundleShortVersionString=1.0.0;CFBundlePackageType=APPL;CFBundleSignature=????;CFBundleAllowMixedLocalizations=YES;CFBundleExecutable=$(MSBuildProjectName);NSHighResolutionCapable=true;LSApplicationCategoryType=public.app-category.utilities;NSLocationUsageDescription=The reason for accessing the location information of the user;NSContactsUsageDescription=The reason for accessing the contacts;NSCalendarsUsageDescription=The reason for accessing the calendar data;NSRemindersUsageDescription=The reason for accessing the reminders;NSCameraUsageDescription=The reason for accessing the camera;NSMicrophoneUsageDescription=The reason for accessing the microphone;NSMotionUsageDescription=The reason for accessing the accelerometer;NSDesktopFolderUsageDescription=The reason for accessing the Desktop folder;NSDocumentsFolderUsageDescription=The reason for accessing the Documents folder;NSDownloadsFolderUsageDescription=The reason for accessing the Downloads folder;NSNetworkVolumesUsageDescription=The reason for accessing files on a network volume;NSRemovableVolumesUsageDescription=The reason for accessing files on a removable volume;NSSpeechRecognitionUsageDescription=The reason for requesting to send user data to Apple&apos;s speech recognition servers</VerInfo_Keys>
        <BT_BuildType>Debug</BT_BuildType>
        <VerInfo_IncludeVerInfo>true</VerInfo_IncludeVerInfo>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base_Win32)'!=''">
        <DCC_UsePackage>FMXfrLanguageTurkish28;FMXfrLanguageHungarian28;vclwinx;DataSnapServer;ACBr_BPeDabpeESCPOS;ACBr_TCP;dacvcl280;ACBr_ONE;fmx;GMLib_DXE8;vclie;DbxCommonDriver;bindengine;IndyIPCommon;VCLRESTComponents;DBXMSSQLDriver;FireDACCommonODBC;emsclient;frLanguageSpanish28;frLanguageSwiss28;appanalytics;IndyProtocols;vclx;ACBr_OpenSSL;frxe28;dbxcds;vcledge;frLanguageSwedish28;FmxTeeUI;frxFD28;ACBr_BoletoRL;unidac280;FMXfrLanguageDanish28;DBXFirebirdDriver;fsDB28;FMXfrxe28;ACBr_NFCeECFVirtual;frxADO28;FireDACSqliteDriver;DbxClientDriver;FMXfrLanguageSwedish28;frLanguageDutch28;frLanguageDanish28;soapmidas;ACBr_NF3eDANF3eESCPOS;TeeUI;ACBr_PagFor;dbexpress;fcx28;frxDBX28;ACBr_Reinf;CEF4DelphiVCLRTL;FMXfrLanguageGerman28;unidacvcl280;inet;dacfmx280;fqb28;frLanguageLithuanian28;ACBr_BoletoFPDF;vcltouch;FMXfcxpd28;frLanguageRussian28;FireDACDBXDriver;FMXfrLanguageRomanian28;fmxdae;CustomIPTransport;FireDACMSSQLDriver;FMXfrLanguageBrazil228;ACBr_NFSeX;CEF4DelphiFMXRTL;ACBr_NFe;ACBr_CTeDacteRL;IndySystem;ACBr_Diversos;ACBr_GNREGuiaRL;frLanguageFarsi28;FMXfrLanguageFrench28;ACBr_NFSeXDanfseRL;frLanguageSlovak28;frLanguageChinese28;ACBr_SAT;FMXfrxADO28;FMXfrLanguageLatvian28;frxIntIOIndy28;frLanguageHebrew28;fqbADO28;ACBr_CIOT;ACBr_TEFD;FMXfrxCDS28;vclFireDAC;ACBr_SPED;ACBr_CTe;ACBr_SATWS;FireDACCommon;DataSnapServerMidas;FireDACODBCDriver;emsserverresource;unidacfmx280;frLanguageArabic28;fqbDBX28;ACBr_SEF2;ACBr_LCDPR;frCoreLibrary28;bindcompdbx;frLanguageCatalon28;frxHTML28;rtl;FireDACMySQLDriver;frLanguageBrazil28;FMXfrLanguageSwiss28;frce;FMXfrLanguageArabic28;ACBr_BPe;DBXSqliteDriver;frLanguageRomanian28;ACBr_Sintegra;FMXfrLanguageItalian28;DBXSybaseASEDriver;ACBr_Serial;ACBr_Comum;ACBr_MDFe;FMXfrLanguageSpanish28;FMXfrLanguageBrazil128;FMXfrLanguageCzech28;vclimg;DataSnapFireDAC;FMXfcxed28;inetdbxpress;FireDAC;ACBr_NFeDanfeESCPOS;xmlrtl;frLanguageItalian28;FMXfrxDB28;frxPDF28;FMXfsDB28;frLanguageCroatian28;dsnap;fsADO28;FireDACDb2Driver;FMXfrxFD28;DBXOracleDriver;FMXfsADO28;DBXInformixDriver;ACBr_SATECFVirtual;fmxobj;bindcompvclsmp;DataSnapNativeClient;FMXfrLanguageTaiwan28;DatasnapConnectorsFreePascal;FMXfrLanguagePolish28;frLanguageUkrainian28;ACBr_NF3e;ACBr_PAF;ACBr_OpenDelivery;ACBr_SPEDImportar;emshosting;FireDACCommonDriver;ACBr_ADRCST;ACBr_MTER;IndyIPClient;FMXfrLanguageLithuanian28;dac280;bindcompvclwinx;ACBr_Convenio115;frLanguageBrazil128;emsedge;bindcompfmx;frLanguageFrench28;FMXfrLanguageCatalon28;inetdb;FireDACASADriver;ACBr_LFD;frLanguageLatvian28;Tee;vclactnband;frxIntIO28;fmxFireDAC;FMXfrx28;FireDACInfxDriver;frLanguageJapanese28;DBXMySQLDriver;frLanguageSerbian28;VclSmp;FMXfrLanguageRussian28;DataSnapCommon;ACBr_Ponto;fmxase;FMXfrLanguageSlovene28;frx28;FMXfrLanguageHebrew28;DBXOdbcDriver;fsFD28;dbrtl;FMXfrLanguageCroatian28;FireDACOracleDriver;FMXfrLanguageSerbian28;ACBr_NFSeDanfseRL;ACBr_NFSe;TeeDB;FMXfrLanguageIndonesian28;ACBre_Social;FireDACMSAccDriver;FMXfrLanguageBulgarian28;DataSnapIndy10ServerTransport;frLanguagePortuguese28;frLanguageBulgarian28;DataSnapConnectors;frLanguagePolish28;ACBr_ANe;vcldsnap;DBXInterBaseDriver;frxDB28;FireDACMongoDBDriver;frLocalizationLibrary28;FMXfrLanguageBrazil28;ACBr_SATExtratoRL;ACBR_DeSTDA;FMXfrLanguageGreek28;FMXfcxd28;ACBr_GNRE;ACBr_EDI;FireDACTDataDriver;FMXfrLocalizationLibrary28;frLanguageTaiwan28;vcldb;ACBr_Integrador;ACBr_PIXCD;frLanguageGerman28;fs28;vquery280;frLanguageIndonesian28;bindcomp;FMXfrLanguageSlovak28;IndyCore;RESTBackendComponents;frLanguageBrazil228;FMXfrCoreLibrary28;FMXfs28;fcxp28;FireDACADSDriver;frLanguageHungarian28;RESTComponents;IndyIPServer;vcl;dsnapxml;adortl;dsnapcon;DataSnapClient;DataSnapProviderClient;FMXfrLanguageFarsi28;FMXfrLanguageUkrainian28;FMXfrLanguageDutch28;FMXfrLanguageChinese28;ACBr_MDFeDamdfeRL;FMXfrLanguagePortuguese28;DBXDb2Driver;frxcs28;FMXfrLanguageJapanese28;ACBr_Boleto;emsclientfiredac;FireDACPgDriver;FireDACDSDriver;frLanguageSlovene28;ACBr_BlocoX;ACBr_SATExtratoESCPOS;tethering;crcontrols280;frLanguageTurkish28;bindcompvcl;ACBr_GTIN;frLanguageCzech28;fcxe28;frLanguageGreek28;CloudService;DBXSybaseASADriver;FMXfrxDBX28;ACBr_OFX;GMLib_RS11_1;ACBr_PAFNFCe;FMXTee;ACBr_DebitoAutomatico;ACBr_NFeDanfeRL;soaprtl;soapserver;FireDACIBDriver;$(DCC_UsePackage)</DCC_UsePackage>
        <DCC_Namespace>Winapi;System.Win;Data.Win;Datasnap.Win;Web.Win;Soap.Win;Xml.Win;Bde;$(DCC_Namespace)</DCC_Namespace>
        <BT_BuildType>Debug</BT_BuildType>
        <VerInfo_IncludeVerInfo>true</VerInfo_IncludeVerInfo>
        <VerInfo_Keys>CompanyName=;FileDescription=$(MSBuildProjectName);FileVersion=1.0.0.0;InternalName=;LegalCopyright=;LegalTrademarks=;OriginalFilename=;ProgramID=com.embarcadero.$(MSBuildProjectName);ProductName=$(MSBuildProjectName);ProductVersion=1.0.0.0;Comments=</VerInfo_Keys>
        <VerInfo_Locale>1033</VerInfo_Locale>
        <Manifest_File>$(BDS)\bin\default_app.manifest</Manifest_File>
        <AppEnableRuntimeThemes>true</AppEnableRuntimeThemes>
        <UWP_DelphiLogo44>$(BDS)\bin\Artwork\Windows\UWP\delphi_UwpDefault_44.png</UWP_DelphiLogo44>
        <UWP_DelphiLogo150>$(BDS)\bin\Artwork\Windows\UWP\delphi_UwpDefault_150.png</UWP_DelphiLogo150>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base_Win64)'!=''">
        <DCC_UsePackage>FMXfrLanguageTurkish28;FMXfrLanguageHungarian28;vclwinx;DataSnapServer;fmx;GMLib_DXE8;vclie;DbxCommonDriver;bindengine;IndyIPCommon;VCLRESTComponents;DBXMSSQLDriver;FireDACCommonODBC;emsclient;frLanguageSpanish28;frLanguageSwiss28;appanalytics;IndyProtocols;vclx;frxe28;dbxcds;vcledge;frLanguageSwedish28;FmxTeeUI;frxFD28;FMXfrLanguageDanish28;DBXFirebirdDriver;fsDB28;FMXfrxe28;frxADO28;FireDACSqliteDriver;DbxClientDriver;FMXfrLanguageSwedish28;frLanguageDutch28;frLanguageDanish28;soapmidas;TeeUI;dbexpress;fcx28;frxDBX28;CEF4DelphiVCLRTL;FMXfrLanguageGerman28;inet;fqb28;frLanguageLithuanian28;vcltouch;FMXfcxpd28;frLanguageRussian28;FireDACDBXDriver;FMXfrLanguageRomanian28;fmxdae;CustomIPTransport;FireDACMSSQLDriver;FMXfrLanguageBrazil228;CEF4DelphiFMXRTL;IndySystem;frLanguageFarsi28;FMXfrLanguageFrench28;frLanguageSlovak28;frLanguageChinese28;FMXfrxADO28;FMXfrLanguageLatvian28;frxIntIOIndy28;frLanguageHebrew28;fqbADO28;FMXfrxCDS28;vclFireDAC;FireDACCommon;DataSnapServerMidas;FireDACODBCDriver;emsserverresource;frLanguageArabic28;fqbDBX28;frCoreLibrary28;bindcompdbx;frLanguageCatalon28;frxHTML28;rtl;FireDACMySQLDriver;frLanguageBrazil28;FMXfrLanguageSwiss28;FMXfrLanguageArabic28;DBXSqliteDriver;frLanguageRomanian28;FMXfrLanguageItalian28;DBXSybaseASEDriver;FMXfrLanguageSpanish28;FMXfrLanguageBrazil128;FMXfrLanguageCzech28;vclimg;DataSnapFireDAC;FMXfcxed28;inetdbxpress;FireDAC;xmlrtl;frLanguageItalian28;FMXfrxDB28;frxPDF28;FMXfsDB28;frLanguageCroatian28;dsnap;fsADO28;FireDACDb2Driver;FMXfrxFD28;DBXOracleDriver;FMXfsADO28;DBXInformixDriver;fmxobj;bindcompvclsmp;DataSnapNativeClient;FMXfrLanguageTaiwan28;DatasnapConnectorsFreePascal;FMXfrLanguagePolish28;frLanguageUkrainian28;emshosting;FireDACCommonDriver;IndyIPClient;FMXfrLanguageLithuanian28;bindcompvclwinx;frLanguageBrazil128;emsedge;bindcompfmx;frLanguageFrench28;FMXfrLanguageCatalon28;inetdb;FireDACASADriver;frLanguageLatvian28;Tee;vclactnband;frxIntIO28;fmxFireDAC;FMXfrx28;FireDACInfxDriver;frLanguageJapanese28;DBXMySQLDriver;frLanguageSerbian28;VclSmp;FMXfrLanguageRussian28;DataSnapCommon;fmxase;FMXfrLanguageSlovene28;frx28;FMXfrLanguageHebrew28;DBXOdbcDriver;fsFD28;dbrtl;FMXfrLanguageCroatian28;FireDACOracleDriver;FMXfrLanguageSerbian28;TeeDB;FMXfrLanguageIndonesian28;FireDACMSAccDriver;FMXfrLanguageBulgarian28;DataSnapIndy10ServerTransport;frLanguagePortuguese28;frLanguageBulgarian28;DataSnapConnectors;frLanguagePolish28;vcldsnap;DBXInterBaseDriver;frxDB28;FireDACMongoDBDriver;frLocalizationLibrary28;FMXfrLanguageBrazil28;FMXfrLanguageGreek28;FMXfcxd28;FireDACTDataDriver;FMXfrLocalizationLibrary28;frLanguageTaiwan28;vcldb;frLanguageGerman28;fs28;frLanguageIndonesian28;bindcomp;FMXfrLanguageSlovak28;IndyCore;RESTBackendComponents;frLanguageBrazil228;FMXfrCoreLibrary28;FMXfs28;fcxp28;FireDACADSDriver;frLanguageHungarian28;RESTComponents;IndyIPServer;vcl;dsnapxml;adortl;dsnapcon;DataSnapClient;DataSnapProviderClient;FMXfrLanguageFarsi28;FMXfrLanguageUkrainian28;FMXfrLanguageDutch28;FMXfrLanguageChinese28;FMXfrLanguagePortuguese28;DBXDb2Driver;frxcs28;FMXfrLanguageJapanese28;emsclientfiredac;FireDACPgDriver;FireDACDSDriver;frLanguageSlovene28;tethering;frLanguageTurkish28;bindcompvcl;frLanguageCzech28;fcxe28;frLanguageGreek28;CloudService;DBXSybaseASADriver;FMXfrxDBX28;GMLib_RS11_1;FMXTee;soaprtl;soapserver;FireDACIBDriver;$(DCC_UsePackage)</DCC_UsePackage>
        <DCC_Namespace>Winapi;System.Win;Data.Win;Datasnap.Win;Web.Win;Soap.Win;Xml.Win;$(DCC_Namespace)</DCC_Namespace>
        <BT_BuildType>Debug</BT_BuildType>
        <VerInfo_IncludeVerInfo>true</VerInfo_IncludeVerInfo>
        <VerInfo_Keys>CompanyName=;FileDescription=$(MSBuildProjectName);FileVersion=1.0.0.0;InternalName=;LegalCopyright=;LegalTrademarks=;OriginalFilename=;ProgramID=com.embarcadero.$(MSBuildProjectName);ProductName=$(MSBuildProjectName);ProductVersion=1.0.0.0;Comments=</VerInfo_Keys>
        <VerInfo_Locale>1033</VerInfo_Locale>
        <Manifest_File>$(BDS)\bin\default_app.manifest</Manifest_File>
        <AppEnableRuntimeThemes>true</AppEnableRuntimeThemes>
        <UWP_DelphiLogo44>$(BDS)\bin\Artwork\Windows\UWP\delphi_UwpDefault_44.png</UWP_DelphiLogo44>
        <UWP_DelphiLogo150>$(BDS)\bin\Artwork\Windows\UWP\delphi_UwpDefault_150.png</UWP_DelphiLogo150>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Cfg_1)'!=''">
        <DCC_Define>DEBUG;$(DCC_Define)</DCC_Define>
        <DCC_DebugDCUs>true</DCC_DebugDCUs>
        <DCC_Optimize>false</DCC_Optimize>
        <DCC_GenerateStackFrames>true</DCC_GenerateStackFrames>
        <DCC_DebugInfoInExe>true</DCC_DebugInfoInExe>
        <DCC_RemoteDebug>true</DCC_RemoteDebug>
        <DCC_IntegerOverflowCheck>true</DCC_IntegerOverflowCheck>
        <DCC_RangeChecking>true</DCC_RangeChecking>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Cfg_1_Win32)'!=''">
        <DCC_RemoteDebug>false</DCC_RemoteDebug>
        <AppEnableRuntimeThemes>true</AppEnableRuntimeThemes>
        <AppDPIAwarenessMode>PerMonitorV2</AppDPIAwarenessMode>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Cfg_1_Win64)'!=''">
        <AppEnableRuntimeThemes>true</AppEnableRuntimeThemes>
        <AppDPIAwarenessMode>PerMonitorV2</AppDPIAwarenessMode>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Cfg_2)'!=''">
        <DCC_LocalDebugSymbols>false</DCC_LocalDebugSymbols>
        <DCC_Define>RELEASE;$(DCC_Define)</DCC_Define>
        <DCC_SymbolReferenceInfo>0</DCC_SymbolReferenceInfo>
        <DCC_DebugInformation>0</DCC_DebugInformation>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Cfg_2_Win32)'!=''">
        <AppEnableRuntimeThemes>true</AppEnableRuntimeThemes>
        <AppDPIAwarenessMode>PerMonitorV2</AppDPIAwarenessMode>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Cfg_2_Win64)'!=''">
        <AppEnableRuntimeThemes>true</AppEnableRuntimeThemes>
        <AppDPIAwarenessMode>PerMonitorV2</AppDPIAwarenessMode>
    </PropertyGroup>
    <ItemGroup>
        <DelphiCompile Include="$(MainSource)">
            <MainSource>MainSource</MainSource>
        </DelphiCompile>
        <DCCReference Include="u_frmPrincipal.pas">
            <Form>Form4</Form>
            <FormType>fmx</FormType>
        </DCCReference>
        <DCCReference Include="DAO\DM.pas">
            <Form>DM_app</Form>
            <FormType>dfm</FormType>
            <DesignClass>TDataModule</DesignClass>
        </DCCReference>
        <BuildConfiguration Include="Base">
            <Key>Base</Key>
        </BuildConfiguration>
        <BuildConfiguration Include="Debug">
            <Key>Cfg_1</Key>
            <CfgParent>Base</CfgParent>
        </BuildConfiguration>
        <BuildConfiguration Include="Release">
            <Key>Cfg_2</Key>
            <CfgParent>Base</CfgParent>
        </BuildConfiguration>
    </ItemGroup>
    <ProjectExtensions>
        <Borland.Personality>Delphi.Personality.12</Borland.Personality>
        <Borland.ProjectType>Application</Borland.ProjectType>
        <BorlandProject>
            <Delphi.Personality>
                <Source>
                    <Source Name="MainSource">prjTesteKhipo.dpr</Source>
                </Source>
            </Delphi.Personality>
            <Deployment Version="3">
                <DeployFile LocalName="$(BDS)\Redist\iossimulator\libcgunwind.1.0.dylib" Class="DependencyModule">
                    <Platform Name="iOSSimulator">
                        <Overwrite>true</Overwrite>
                    </Platform>
                </DeployFile>
                <DeployFile LocalName="$(BDS)\Redist\iossimulator\libpcre.dylib" Class="DependencyModule">
                    <Platform Name="iOSSimulator">
                        <Overwrite>true</Overwrite>
                    </Platform>
                </DeployFile>
                <DeployFile LocalName="$(BDS)\Redist\osx32\libcgunwind.1.0.dylib" Class="DependencyModule">
                    <Platform Name="OSX32">
                        <Overwrite>true</Overwrite>
                    </Platform>
                </DeployFile>
                <DeployFile LocalName="Win32\Debug\prjTesteKhipo.exe" Configuration="Debug" Class="ProjectOutput">
                    <Platform Name="Win32">
                        <RemoteName>prjTesteKhipo.exe</RemoteName>
                        <Overwrite>true</Overwrite>
                    </Platform>
                </DeployFile>
                <DeployClass Name="AdditionalDebugSymbols">
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Win32">
                        <Operation>0</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidClasses">
                    <Platform Name="Android">
                        <RemoteDir>classes</RemoteDir>
                        <Operation>64</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>classes</RemoteDir>
                        <Operation>64</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidFileProvider">
                    <Platform Name="Android">
                        <RemoteDir>res\xml</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\xml</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidGDBServer">
                    <Platform Name="Android">
                        <RemoteDir>library\lib\armeabi-v7a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidLibnativeArmeabiFile">
                    <Platform Name="Android">
                        <RemoteDir>library\lib\armeabi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>library\lib\armeabi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidLibnativeArmeabiv7aFile">
                    <Platform Name="Android64">
                        <RemoteDir>library\lib\armeabi-v7a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidLibnativeMipsFile">
                    <Platform Name="Android">
                        <RemoteDir>library\lib\mips</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>library\lib\mips</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidServiceOutput">
                    <Platform Name="Android">
                        <RemoteDir>library\lib\armeabi-v7a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>library\lib\arm64-v8a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidServiceOutput_Android32">
                    <Platform Name="Android64">
                        <RemoteDir>library\lib\armeabi-v7a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidSplashImageDef">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidSplashStyles">
                    <Platform Name="Android">
                        <RemoteDir>res\values</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\values</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidSplashStylesV21">
                    <Platform Name="Android">
                        <RemoteDir>res\values-v21</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\values-v21</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_Colors">
                    <Platform Name="Android">
                        <RemoteDir>res\values</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\values</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_DefaultAppIcon">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_LauncherIcon144">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-xxhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-xxhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_LauncherIcon192">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-xxxhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-xxxhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_LauncherIcon36">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-ldpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-ldpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_LauncherIcon48">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-mdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-mdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_LauncherIcon72">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-hdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-hdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_LauncherIcon96">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-xhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-xhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_NotificationIcon24">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-mdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-mdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_NotificationIcon36">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-hdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-hdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_NotificationIcon48">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-xhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-xhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_NotificationIcon72">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-xxhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-xxhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_NotificationIcon96">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-xxxhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-xxxhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_SplashImage426">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-small</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-small</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_SplashImage470">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-normal</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-normal</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_SplashImage640">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-large</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-large</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_SplashImage960">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-xlarge</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-xlarge</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_Strings">
                    <Platform Name="Android">
                        <RemoteDir>res\values</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\values</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="DebugSymbols">
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Win32">
                        <Operation>0</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="DependencyFramework">
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                        <Extensions>.framework</Extensions>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                        <Extensions>.framework</Extensions>
                    </Platform>
                    <Platform Name="OSXARM64">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                        <Extensions>.framework</Extensions>
                    </Platform>
                    <Platform Name="Win32">
                        <Operation>0</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="DependencyModule">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="OSXARM64">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="Win32">
                        <Operation>0</Operation>
                        <Extensions>.dll;.bpl</Extensions>
                    </Platform>
                </DeployClass>
                <DeployClass Required="true" Name="DependencyPackage">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="OSXARM64">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="Win32">
                        <Operation>0</Operation>
                        <Extensions>.bpl</Extensions>
                    </Platform>
                </DeployClass>
                <DeployClass Name="File">
                    <Platform Name="Android">
                        <Operation>0</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <Operation>0</Operation>
                    </Platform>
                    <Platform Name="iOSDevice32">
                        <Operation>0</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>0</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>0</Operation>
                    </Platform>
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\Resources\StartUp\</RemoteDir>
                        <Operation>0</Operation>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>Contents\Resources\StartUp\</RemoteDir>
                        <Operation>0</Operation>
                    </Platform>
                    <Platform Name="OSXARM64">
                        <RemoteDir>Contents\Resources\StartUp\</RemoteDir>
                        <Operation>0</Operation>
                    </Platform>
                    <Platform Name="Win32">
                        <Operation>0</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iOS_AppStore1024">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_AppIcon152">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_AppIcon167">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_Launch2x">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\LaunchScreenImage.imageset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\LaunchScreenImage.imageset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_LaunchDark2x">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\LaunchScreenImage.imageset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\LaunchScreenImage.imageset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_Notification40">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_Setting58">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_SpotLight80">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_AppIcon120">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_AppIcon180">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch2x">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\LaunchScreenImage.imageset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\LaunchScreenImage.imageset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch3x">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\LaunchScreenImage.imageset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\LaunchScreenImage.imageset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_LaunchDark2x">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\LaunchScreenImage.imageset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\LaunchScreenImage.imageset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_LaunchDark3x">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\LaunchScreenImage.imageset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\LaunchScreenImage.imageset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Notification40">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Notification60">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Setting58">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Setting87">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Spotlight120">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Spotlight80">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen\Assets\AppIcon.appiconset</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectAndroidManifest">
                    <Platform Name="Android">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectiOSDeviceDebug">
                    <Platform Name="iOSDevice32">
                        <RemoteDir>..\$(PROJECTNAME).app.dSYM\Contents\Resources\DWARF</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).app.dSYM\Contents\Resources\DWARF</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectiOSEntitlements">
                    <Platform Name="iOSDevice32">
                        <RemoteDir>..\</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectiOSInfoPList">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectiOSLaunchScreen">
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen</RemoteDir>
                        <Operation>64</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <RemoteDir>..\$(PROJECTNAME).launchscreen</RemoteDir>
                        <Operation>64</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectiOSResource">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectOSXDebug">
                    <Platform Name="OSX64">
                        <RemoteDir>..\$(PROJECTNAME).app.dSYM\Contents\Resources\DWARF</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSXARM64">
                        <RemoteDir>..\$(PROJECTNAME).app.dSYM\Contents\Resources\DWARF</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectOSXEntitlements">
                    <Platform Name="OSX32">
                        <RemoteDir>..\</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>..\</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSXARM64">
                        <RemoteDir>..\</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectOSXInfoPList">
                    <Platform Name="OSX32">
                        <RemoteDir>Contents</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>Contents</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSXARM64">
                        <RemoteDir>Contents</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectOSXResource">
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\Resources</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>Contents\Resources</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSXARM64">
                        <RemoteDir>Contents\Resources</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Required="true" Name="ProjectOutput">
                    <Platform Name="Android">
                        <RemoteDir>library\lib\armeabi-v7a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>library\lib\arm64-v8a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Linux64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSXARM64">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Win32">
                        <Operation>0</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectOutput_Android32">
                    <Platform Name="Android64">
                        <RemoteDir>library\lib\armeabi-v7a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectUWPManifest">
                    <Platform Name="Win32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Win64">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="UWP_DelphiLogo150">
                    <Platform Name="Win32">
                        <RemoteDir>Assets</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Win64">
                        <RemoteDir>Assets</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="UWP_DelphiLogo44">
                    <Platform Name="Win32">
                        <RemoteDir>Assets</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Win64">
                        <RemoteDir>Assets</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <ProjectRoot Platform="Android" Name="$(PROJECTNAME)"/>
                <ProjectRoot Platform="Android64" Name="$(PROJECTNAME)"/>
                <ProjectRoot Platform="iOSDevice32" Name="$(PROJECTNAME).app"/>
                <ProjectRoot Platform="iOSDevice64" Name="$(PROJECTNAME).app"/>
                <ProjectRoot Platform="iOSSimulator" Name="$(PROJECTNAME).app"/>
                <ProjectRoot Platform="Linux64" Name="$(PROJECTNAME)"/>
                <ProjectRoot Platform="OSX32" Name="$(PROJECTNAME).app"/>
                <ProjectRoot Platform="OSX64" Name="$(PROJECTNAME).app"/>
                <ProjectRoot Platform="OSXARM64" Name="$(PROJECTNAME).app"/>
                <ProjectRoot Platform="Win32" Name="$(PROJECTNAME)"/>
                <ProjectRoot Platform="Win64" Name="$(PROJECTNAME)"/>
            </Deployment>
            <Platforms>
                <Platform value="Android">True</Platform>
                <Platform value="Android64">True</Platform>
                <Platform value="iOSDevice32">False</Platform>
                <Platform value="iOSDevice64">True</Platform>
                <Platform value="iOSSimulator">False</Platform>
                <Platform value="OSX32">False</Platform>
                <Platform value="OSX64">True</Platform>
                <Platform value="OSXARM64">True</Platform>
                <Platform value="Win32">True</Platform>
                <Platform value="Win64">True</Platform>
            </Platforms>
        </BorlandProject>
        <ProjectFileVersion>12</ProjectFileVersion>
    </ProjectExtensions>
    <Import Project="$(BDS)\Bin\CodeGear.Delphi.Targets" Condition="Exists('$(BDS)\Bin\CodeGear.Delphi.Targets')"/>
    <Import Project="$(APPDATA)\Embarcadero\$(BDSAPPDATABASEDIR)\$(PRODUCTVERSION)\UserTools.proj" Condition="Exists('$(APPDATA)\Embarcadero\$(BDSAPPDATABASEDIR)\$(PRODUCTVERSION)\UserTools.proj')"/>
    <Import Project="$(MSBuildProjectName).deployproj" Condition="Exists('$(MSBuildProjectName).deployproj')"/>
</Project>
