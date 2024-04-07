# iosmodmenu
# new ios mod menu


<div style="text-align: center;">
<b>Sample UI of the Menu:</b><br>

<img src="https://github.com/ioscoderr/iosmodmenu/blob/main/IMG_0549.PNG">
<img src="https://github.com/ioscoderr/iosmodmenu/blob/main/IMG_0550.PNG">
</div>

<br>

### Features:
* Customizable UI
* Open Source Menu

<br>

### Installation:


**iOS**
1. In the makefile on line 22, you've to set the path to your SDK. This menu has been tested with the "iPhoneOS11.2.sdk" SDK from [theos/sdks](https://github.com/theos/sdks)
2. I use initializer_list in this project, iOS doesn't have this included by itself. You can download it [**here**](https://raw.githubusercontent.com/joeyjurjens/iOS-Mod-Menu-Template-for-Theos/977e9ff2c626d6b1308eed7e17f1daf0a610e8e9/template/KittyMemory/initializer_list), save it as "initializer_list" and copy the file to: "$THEOS/sdks/iPhoneOS11.2.sdk/usr/include/c++/4.2.1/" <br>

**MacOS:**
1. Install xCode if you haven't already.
1. In the Makefile of the project, change "MOBILE_THEOS=1" to "MOBILE_THEOS=0" <br>

### Menu setup:

**Changing the menu images**
Inside the **Tweak.xm**, you'll setup the menu under the function "setupMenu". 


**Setting a frame**
```obj-c
menu = [[Menu alloc] initWithFrame:CGRectMake(menuX, menuY, menuWidth, menuHeight)];
```

### Menu usage:

<b> Add toggle: </b>
```obj-c
        NSArray *items = @[@"AIMBOT", @"etc"];

```

### Credits:
* [iosdev](https://t.me/developerioscoder)

