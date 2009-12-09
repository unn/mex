//
//  BrowseViewController.h
//  mexico
//
//  Created by Stefan Nagey on 10/16/09.
//  Copyright Qorvis Communications 2009. All rights reserved.
//
//

#import <UIKit/UIKit.h>
#import "DestinationViewController.h"
#import "ActivitiesViewController.h"
#import "NewsViewController.h"
#import "WeatherViewController.h"
#import "AboutViewController.h"


@interface BrowseViewController : UIViewController {

}

-(void) showView:(UIViewController *)theview withTitle:(NSString *)theTitle;

-(IBAction)showDestinations;
-(IBAction)showActivities;
-(IBAction)showNews;
-(IBAction)showAbout;
-(IBAction)showWeather;

@end
