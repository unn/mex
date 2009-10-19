//
//  mexicoAppDelegate.h
//  mexico
//
//  Created by Stefan Nagey on 10/16/09.
//  Copyright Qorvis Communications 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mexicoAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
