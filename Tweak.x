#import "Helper.h"
#import "Menu.h"

Menu *menu;

void setupMenu() {
    CGRect mainScreenBounds = [UIScreen mainScreen].bounds;
    
    CGFloat menuWidth = 350;
    CGFloat menuHeight = 300;
    CGFloat menuX = (CGRectGetWidth(mainScreenBounds) - menuWidth) / 2;
    CGFloat menuY = (CGRectGetHeight(mainScreenBounds) - menuHeight) / 2;
    
    menu = [[Menu alloc] initWithFrame:CGRectMake(menuX, menuY, menuWidth, menuHeight)];
    menu.titleLabel.text = @"remember me";
    menu.footerLabel.text = @"ios dev";

    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    [keyWindow addSubview:menu];
    
}

static void didFinishLaunching(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef info) {
    setupMenu();
}

%ctor {
    CFNotificationCenterAddObserver(CFNotificationCenterGetLocalCenter(), NULL, &didFinishLaunching, (CFStringRef)UIApplicationDidFinishLaunchingNotification, NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
}
