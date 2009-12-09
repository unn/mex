//
//  BrowseViewController.m
//  mexico
//
//  Created by Stefan Nagey on 10/16/09.
//  Copyright Qorvis Communications 2009. All rights reserved.
//

#import "BrowseViewController.h"

@implementation BrowseViewController


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

#pragma mark Methods

-(void) showView:(UIViewController *)theview withTitle:(NSString *)theTitle {
	theview.title = theTitle;
	[self.navigationController pushViewController:theview animated:YES];
	[theview release];
}

- (IBAction) showDestinations
{
	[self showView:[[DestinationViewController alloc] initWithNibName:@"DestinationView" bundle:nil] withTitle:@"Destinations"];
}

- (IBAction) showActivities
{
	[self showView:[[ActivitiesViewController alloc] initWithNibName:nil bundle:nil] withTitle:@"Activities"];
}

- (IBAction) showNews
{
	[self showView:[[NewsViewController alloc] initWithNibName:nil bundle:nil] withTitle:@"News"];
}

- (IBAction) showWeather
{
	[self showView:[[WeatherViewController alloc] initWithNibName:nil bundle:nil] withTitle:@"Weather"];
}

- (IBAction) showAbout
{
	[self showView:[[AboutViewController alloc] initWithNibName:nil bundle:nil] withTitle:@"About Mexico"];
}

@end
