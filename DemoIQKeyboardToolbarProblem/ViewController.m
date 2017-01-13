//
//  ViewController.m
//  DemoIQKeyboardToolbarProblem
//
//  Created by csooi on 13/01/2017.
//  Copyright © 2017 csooi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeBluePress:(id)sender {
        //Navigation Bar Appearance
        [[UINavigationBar appearance] setTranslucent:NO];
        [[UINavigationBar appearance] setBarTintColor:[self themeColorStandard:ThemeColorBlue]];
        [[UINavigationBar appearance] setTranslucent:YES];
        [[UINavigationBar appearance]setBarStyle:UIBarStyleBlack];
        // set color of back button
        [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
        [[UINavigationBar appearance] setTitleVerticalPositionAdjustment:4.0 forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setBackgroundColor:[self themeColorStandard:ThemeColorBlue]];
        [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
                                                               [UIFont fontWithName:@"HelveticaNeue-Light" size:24.0],  NSFontAttributeName, [UIColor whiteColor],NSForegroundColorAttributeName,
                                                               nil]];
        
        
        
        
        // Workaround 1
        for (UIWindow *window in [UIApplication sharedApplication].windows) {
            for (UIView *view in window.subviews) {
                [view removeFromSuperview];
                [window addSubview:view];
                
            }
        }
        
    }

#pragma mark - Theme Colours
-(UIColor *)themeColorStandard:(ThemeColor)currentTheme{
    switch (currentTheme) {
        case ThemeColorBlue:
            return [UIColor colorWithRed:(64.0/255.0) green:(166.0/255.0) blue:(180.0/255.0) alpha:1.0];
            break;
        case ThemeColorPink:
            return [UIColor colorWithRed:(245.0/255.0) green:(59.0/255.0) blue:(99.0/255.0) alpha:1.0];
            break;
        case ThemeColorGreen:
            return [UIColor colorWithRed:(177.0/255.0) green:(215.0/255.0) blue:(104.0/255.0) alpha:1.0];
            break;
        default:
            return [UIColor colorWithRed:(64.0/255.0) green:(166.0/255.0) blue:(180.0/255.0) alpha:1.0];
            break;
    }
}

- (IBAction)changePinkPresssed:(id)sender {
    //Navigation Bar Appearance
    [[UINavigationBar appearance] setTranslucent:NO];
    [[UINavigationBar appearance] setBarTintColor:[self themeColorStandard:ThemeColorPink]];
    [[UINavigationBar appearance] setTranslucent:YES];
    [[UINavigationBar appearance]setBarStyle:UIBarStyleBlack];
    // set color of back button
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearance] setTitleVerticalPositionAdjustment:4.0 forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setBackgroundColor:[self themeColorStandard:ThemeColorPink]];
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
                                                           [UIFont fontWithName:@"HelveticaNeue-Light" size:24.0],  NSFontAttributeName, [UIColor whiteColor],NSForegroundColorAttributeName,
                                                           nil]];
    
    
    
    
    // Workaround 1
    for (UIWindow *window in [UIApplication sharedApplication].windows) {
        for (UIView *view in window.subviews) {
            [view removeFromSuperview];
            [window addSubview:view];
            
        }
    }
}


@end
