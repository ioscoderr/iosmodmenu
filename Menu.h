#import <UIKit/UIKit.h>

@interface Menu : UIView
{
    
}
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *footerLabel;
@property (nonatomic, strong) UIScrollView *currentScrollView;
@property (nonatomic, assign) CGPoint lastLocation;
@property (nonatomic, strong) UIView *headerView;
@property (nonatomic, strong) UIView *footerView;
@property (nonatomic, strong) UILabel *overlayLabel;
@property (nonatomic, strong) UISwitch *toggleSwitch;

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIScrollView *scrollView1;

@property (nonatomic, strong) UIScrollView *scrollView2;
@property (nonatomic, strong) UIScrollView *scrollView3;
- (void)showMenu;
- (void)hideMenu;
@end
