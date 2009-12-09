//
//  DestinationViewController.h
//  mexico
//
//  Created by Stefan Nagey on 10/20/09.
//  Copyright 2009 Qorvis Communications. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DestinationViewController : UITableViewController {
	NSArray *regions;
	NSArray *destinations;
	NSArray *statesInRegions;
	NSArray *destinationsInStates;
}

@end
