//
//  RootViewController.h
//  XCUITestTestTest
//
//  Created by Chris Fuentes on 9/24/15.
//  Copyright © 2015 Xamarin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController <UIPageViewControllerDelegate>

@property (strong, nonatomic) UIPageViewController *pageViewController;

@end

