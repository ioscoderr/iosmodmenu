#import "Menu.h"


@interface Menu ()


@end

@implementation Menu

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blackColor];
        self.hidden = YES;
        self.layer.cornerRadius = 20.0;
        self.layer.masksToBounds = YES;

        self.headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, 30)];
        self.headerView.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.headerView];

        self.footerView = [[UIView alloc] initWithFrame:CGRectMake(0, frame.size.height - 30, frame.size.width, 30)];
        self.footerView.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.footerView];

        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, 30)];
        self.titleLabel.textColor = [UIColor blackColor];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.font = [UIFont boldSystemFontOfSize:20.0];
        [self.headerView addSubview:self.titleLabel];

        
        CGFloat buttonY = CGRectGetMaxY(self.headerView.frame);
        CGFloat buttonPadding = 0;
        CGFloat totalButtonWidth = frame.size.width;
        CGFloat buttonHeight = 30;

        NSUInteger numberOfButtons = 4;
        CGFloat buttonWidth = (totalButtonWidth - (numberOfButtons - 1) * buttonPadding) / numberOfButtons;

        NSArray *buttonTitles = @[@"AIM", @"ESP", @"Global",  @"Other"];
        CGFloat startX = 0;

        for (NSString *title in buttonTitles) {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(startX, buttonY, buttonWidth, buttonHeight);
            button.backgroundColor = [UIColor clearColor];
            [button setTitle:title forState:UIControlStateNormal];
            [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            button.titleLabel.font = [UIFont systemFontOfSize:15.0];
            [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:button];

            startX += buttonWidth + buttonPadding;
        }
        
        
        
        CGFloat scrollViewInset = 10.0;
        CGFloat scrollViewTop = buttonY + buttonHeight + buttonPadding;
        CGFloat scrollViewBottom = CGRectGetMinY(self.footerView.frame) - 0;
        CGRect scrollViewFrame = CGRectMake(scrollViewInset, scrollViewTop, frame.size.width - (scrollViewInset * 2), scrollViewBottom - scrollViewTop);
        self.scrollView = [[UIScrollView alloc] initWithFrame:scrollViewFrame];
        self.scrollView.backgroundColor = [UIColor clearColor];
        self.scrollView.showsHorizontalScrollIndicator = NO;
        self.scrollView.showsVerticalScrollIndicator = NO;

        CGFloat itemHeight = 40;
        CGFloat padding = 10;
        CGFloat contentWidth = frame.size.width - (scrollViewInset * 2);
        CGFloat yOffset = 0;
        CGFloat leftPadding = 0;
        NSString *itemText = @"AIMBOT";



        UILabel *itemLabel = [[UILabel alloc] initWithFrame:CGRectMake(leftPadding, yOffset, contentWidth - 60 - padding - (leftPadding+50), itemHeight)];
        itemLabel.textColor = [UIColor whiteColor];
        itemLabel.textAlignment = NSTextAlignmentLeft;
        itemLabel.font = [UIFont systemFontOfSize:15.0];
        itemLabel.text = itemText;
        [self.scrollView addSubview:itemLabel];

        UISwitch *itemSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(contentWidth - 60, yOffset + (itemHeight - 31) / 2, 0, 0)];
        [itemSwitch addTarget:self action:@selector(switchValueChanged:) forControlEvents:UIControlEventValueChanged];

        [itemSwitch setOnTintColor:[UIColor whiteColor]];
        [self.scrollView addSubview:itemSwitch];

        yOffset += itemHeight;


        CGFloat totalContentHeight = yOffset - CGRectGetHeight(self.footerView.frame);
        self.scrollView.contentSize = CGSizeMake(contentWidth, totalContentHeight);

 
        
        [self addSubview:self.scrollView];

        
        
        
        
        
        
        CGFloat scrollViewInset1 = 10.0;
        CGFloat scrollViewTop1 = buttonY + buttonHeight + buttonPadding;
        CGFloat scrollViewBottom1 = CGRectGetMinY(self.footerView.frame) - 0;
        CGRect scrollViewFrame1 = CGRectMake(scrollViewInset1, scrollViewTop1, frame.size.width - (scrollViewInset1 * 2), scrollViewBottom1 - scrollViewTop1);
        self.scrollView1 = [[UIScrollView alloc] initWithFrame:scrollViewFrame1];
        self.scrollView1.backgroundColor = [UIColor clearColor];
        self.scrollView1.showsHorizontalScrollIndicator = NO;
        self.scrollView1.showsVerticalScrollIndicator = NO;

        CGFloat itemHeight1 = 40;
        CGFloat padding1 = 10;
        CGFloat contentWidth1 = frame.size.width - (scrollViewInset1 * 2);
        CGFloat yOffset1 = 0;
        CGFloat leftPadding1 = 0;
        NSString *itemText1 = @"ESP box";



        UILabel *itemLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(leftPadding1, yOffset1, contentWidth1 - 60 - padding1 - (leftPadding1+50), itemHeight1)];
        itemLabel1.textColor = [UIColor whiteColor];
        itemLabel1.textAlignment = NSTextAlignmentLeft;
        itemLabel1.font = [UIFont systemFontOfSize:15.0];
        itemLabel1.text = itemText1;
        [self.scrollView1 addSubview:itemLabel1];

        UISwitch *itemSwitch1 = [[UISwitch alloc] initWithFrame:CGRectMake(contentWidth1 - 60, yOffset1 + (itemHeight1 - 31) / 2, 0, 0)];
        [itemSwitch1 setOnTintColor:[UIColor whiteColor]];
        [self.scrollView1 addSubview:itemSwitch1];

        yOffset1 += itemHeight1;

        CGFloat totalContentHeight1 = yOffset1 - CGRectGetHeight(self.footerView.frame);
        self.scrollView1.contentSize = CGSizeMake(contentWidth1, totalContentHeight1);

        [self addSubview:self.scrollView1];


        
        
        
        CGFloat scrollViewInset2 = 10.0;
        CGFloat scrollViewTop2 = buttonY + buttonHeight + buttonPadding;
        CGFloat scrollViewBottom2 = CGRectGetMinY(self.footerView.frame) - 0;
        CGRect scrollViewFrame2 = CGRectMake(scrollViewInset2, scrollViewTop2, frame.size.width - (scrollViewInset2 * 2), scrollViewBottom2 - scrollViewTop2);
        self.scrollView2 = [[UIScrollView alloc] initWithFrame:scrollViewFrame2];
        self.scrollView2.backgroundColor = [UIColor clearColor];
        self.scrollView2.showsHorizontalScrollIndicator = NO;
        self.scrollView2.showsVerticalScrollIndicator = NO;

        CGFloat itemHeight2 = 40;
        CGFloat padding2 = 10;
        CGFloat contentWidth2 = frame.size.width - (scrollViewInset2 * 2);
        CGFloat yOffset2 = 0;
        CGFloat leftPadding2 = 0;
        NSString *itemText2 = @"Wallhack";



        UILabel *itemLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(leftPadding2, yOffset2, contentWidth2 - 60 - padding2 - (leftPadding2+50), itemHeight2)];
        itemLabel2.textColor = [UIColor whiteColor];
        itemLabel2.textAlignment = NSTextAlignmentLeft;
        itemLabel2.font = [UIFont systemFontOfSize:15.0];
        itemLabel2.text = itemText2;
        [self.scrollView2 addSubview:itemLabel2];

        UISwitch *itemSwitch2 = [[UISwitch alloc] initWithFrame:CGRectMake(contentWidth2 - 60, yOffset2 + (itemHeight2 - 31) / 2, 0, 0)];
        [itemSwitch2 setOnTintColor:[UIColor whiteColor]];
        [self.scrollView2 addSubview:itemSwitch2];

        yOffset2 += itemHeight2;

        CGFloat totalContentHeight2 = yOffset2 - CGRectGetHeight(self.footerView.frame);
        self.scrollView2.contentSize = CGSizeMake(contentWidth2, totalContentHeight2);

        [self addSubview:self.scrollView2];
        
        
        
        
        
        
        
        CGFloat scrollViewInset3 = 10.0;
        CGFloat scrollViewTop3 = buttonY + buttonHeight + buttonPadding;
        CGFloat scrollViewBottom3 = CGRectGetMinY(self.footerView.frame) - 0;
        CGRect scrollViewFrame3 = CGRectMake(scrollViewInset3, scrollViewTop3, frame.size.width - (scrollViewInset3 * 2), scrollViewBottom3 - scrollViewTop3);
        self.scrollView3 = [[UIScrollView alloc] initWithFrame:scrollViewFrame3];
        self.scrollView3.backgroundColor = [UIColor clearColor];
        self.scrollView3.showsHorizontalScrollIndicator = NO;
        self.scrollView3.showsVerticalScrollIndicator = NO;

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

        CGFloat totalContentHeight3 = yOffset3 - CGRectGetHeight(self.footerView.frame);
        self.scrollView3.contentSize = CGSizeMake(contentWidth3, totalContentHeight3);

        [self addSubview:self.scrollView3];
        
        
        
        self.scrollView.hidden = YES;
        self.scrollView1.hidden = YES;
        self.scrollView2.hidden = YES;
        self.scrollView3.hidden = YES;

        
        self.footerLabel = [[UILabel alloc] initWithFrame:CGRectMake(120, 0, frame.size.width, 30)];
        self.footerLabel.textColor = [UIColor blackColor];
        self.footerLabel.textAlignment = NSTextAlignmentCenter;
        self.footerLabel.font = [UIFont boldSystemFontOfSize:15.0];
        [self.footerView addSubview:self.footerLabel];

        UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
        [self addGestureRecognizer:panGestureRecognizer];

        UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(showMenu)];
        tapGestureRecognizer.numberOfTapsRequired = 3;
        tapGestureRecognizer.numberOfTouchesRequired = 3;

        UITapGestureRecognizer *tapGestureRecognizer2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(hideMenu)];
        tapGestureRecognizer2.numberOfTapsRequired = 2;
        tapGestureRecognizer2.numberOfTouchesRequired = 2;

        [tapGestureRecognizer requireGestureRecognizerToFail:tapGestureRecognizer2];

        UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
        [keyWindow addGestureRecognizer:tapGestureRecognizer];
        [keyWindow addGestureRecognizer:tapGestureRecognizer2];

        
    }
    
    return self;
}

- (void)showMenu {
    self.hidden = NO;
    [UIView animateWithDuration:0.3 animations:^{
        self.alpha = 1.0;
    }];
}

- (void)hideMenu {
    [UIView animateWithDuration:0.3 animations:^{
        self.alpha = 0.0;
    } completion:^(BOOL finished) {
        self.hidden = YES;
    }];
}

- (void)handlePan:(UIPanGestureRecognizer *)recognizer {
    CGPoint translation = [recognizer translationInView:self.superview];
    CGPoint newCenter = CGPointMake(recognizer.view.center.x + translation.x, recognizer.view.center.y + translation.y);
    
    newCenter.x = MAX(recognizer.view.frame.size.width / 2, newCenter.x);
    newCenter.x = MIN(self.superview.frame.size.width - recognizer.view.frame.size.width / 2, newCenter.x);
    
    recognizer.view.center = newCenter;
    [recognizer setTranslation:CGPointZero inView:self.superview];
}






- (void)updateButtonAppearance {
    for (UIView *subview in self.subviews) {
        if ([subview isKindOfClass:[UIButton class]]) {
            UIButton *button = (UIButton *)subview;
            [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            button.backgroundColor = [UIColor clearColor];
        }
    }
}
 

- (void)buttonTapped:(UIButton *)sender {
    [self updateButtonAppearance];
    [sender setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    sender.backgroundColor = [UIColor whiteColor];
    
    if ([sender.titleLabel.text isEqualToString:@"AIM"]) {
        self.scrollView.hidden = NO;
        self.scrollView1.hidden = YES;
        self.scrollView2.hidden = YES;
        self.scrollView3.hidden = YES;
    } else if ([sender.titleLabel.text isEqualToString:@"ESP"]) {
        self.scrollView.hidden = YES;
        self.scrollView1.hidden = NO;
        self.scrollView2.hidden = YES;
        self.scrollView3.hidden = YES;
    } else if ([sender.titleLabel.text isEqualToString:@"Global"]) {
        self.scrollView.hidden = YES;
        self.scrollView1.hidden = YES;
        self.scrollView2.hidden = NO;
        self.scrollView3.hidden = YES;
    } else if ([sender.titleLabel.text isEqualToString:@"Other"]) {
        self.scrollView.hidden = YES;
        self.scrollView1.hidden = YES;
        self.scrollView2.hidden = YES;
        self.scrollView3.hidden = NO;

    }
    
}

- (void)toogleTappedOverlay:(UISwitch *)sender {
    if (sender.isOn) {
        [self toggleOverlayOn];
    } else {
        [self toggleOverlayOff];
    }
}


- (void)toggleOverlayOn {
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];

    
    for (UIView *subview in keyWindow.subviews) {
        if ([subview isKindOfClass:[Menu class]]) {
            [subview removeFromSuperview];
            break;
        }
    }
    
    CGRect mainScreenBounds = [UIScreen mainScreen].bounds;
    
    CGFloat menuWidth = 350;
    CGFloat menuHeight = 300;
    CGFloat menuX = (CGRectGetWidth(mainScreenBounds) - menuWidth) / 2;
    CGFloat menuY = (CGRectGetHeight(mainScreenBounds) - menuHeight) / 2;
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
    
    [newmenu showMenu];
}



- (void)toggleOverlayOff {
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    for (UIView *subview in keyWindow.subviews) {
        if ([subview isKindOfClass:[TextFieldView class]]) {
            [subview removeFromSuperview];
            break;
        }
    }
    
    CGRect mainScreenBounds = [UIScreen mainScreen].bounds;
    
    CGFloat menuWidth = 350;
    CGFloat menuHeight = 300;
    CGFloat menuX = (CGRectGetWidth(mainScreenBounds) - menuWidth) / 2;
    CGFloat menuY = (CGRectGetHeight(mainScreenBounds) - menuHeight) / 2;
    Menu *newmenu;
    newmenu = [[Menu alloc] initWithFrame:CGRectMake(menuX, menuY, menuWidth, menuHeight)];
    newmenu.titleLabel.text = @"remember me";
    newmenu.footerLabel.text = @"ios dev";
    newmenu.scrollView3.hidden = NO;

    [keyWindow addSubview:newmenu];

    [newmenu showMenu];

}

@end
