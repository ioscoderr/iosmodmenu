# iosmodmenu
# new ios mod menu


<div style="text-align: center;">
<b>Sample UI of the Menu:</b><br>

<div style="display: flex; justify-content: center;">
    <img src="https://github.com/ioscoderr/iosmodmenu/blob/main/IMG_0549.PNG" style="max-width: 90px; margin: 0 10px;">
    <img src="https://github.com/ioscoderr/iosmodmenu/blob/main/IMG_0550.PNG" style="max-width: 90px; margin: 0 10px;">
</div>

</div>

<br>

### Features:
* Customizable UI
* Open Source Menu
* Dynamic overlay view menu etc...
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
CGFloat itemHeight3 = 40;
CGFloat padding3 = 10;
CGFloat contentWidth3 = frame.size.width - (scrollViewInset3 * 2);
CGFloat yOffset3 = 0;
CGFloat leftPadding3 = 0;
NSString *itemText3 = @"OVERLAY";



UILabel *itemLabel3 = [[UILabel alloc] initWithFrame:CGRectMake(leftPadding3, yOffset3, contentWidth3 - 60 - padding3 - (leftPadding3+50), itemHeight3)];
itemLabel3.textColor = [UIColor whiteColor];
itemLabel3.textAlignment = NSTextAlignmentLeft;
itemLabel3.font = [UIFont systemFontOfSize:15.0];
itemLabel3.text = itemText3;
[self.scrollView3 addSubview:itemLabel3];

UISwitch *itemSwitch3 = [[UISwitch alloc] initWithFrame:CGRectMake(contentWidth3 - 60, yOffset3 + (itemHeight3 - 31) / 2, 0, 0)];
[itemSwitch3 addTarget:self action:@selector(toogleTappedOverlay:) forControlEvents:UIControlEventValueChanged];
[itemSwitch3 setOnTintColor:[UIColor whiteColor]];
[self.scrollView3 addSubview:itemSwitch3];

yOffset3 += itemHeight3;


```

<b> Add overlay view: </b>
```obj-c
Menu *newmenu;
newmenu = [[Menu alloc] initWithFrame:CGRectMake(menuX, menuY, menuWidth, menuHeight)];
newmenu.titleLabel.text = @"remember me";
newmenu.footerLabel.text = @"ios dev";
[newmenu.scrollView3.subviews.lastObject setOn:YES animated:NO];
newmenu.scrollView3.hidden = NO;

TextFieldView *textFieldView = [[TextFieldView alloc] initWithFrame:[UIScreen mainScreen].bounds];
textFieldView.userInteractionEnabled = YES;
textFieldView.backgroundColor = [UIColor clearColor];
[textFieldView addSubview:newmenu];
[keyWindow addSubview:textFieldView];
```

### Credits:
* [iosdev](https://t.me/developerioscoder)

