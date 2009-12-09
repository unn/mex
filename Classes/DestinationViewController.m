//
//  DestinationViewController.m
//  mexico
//
//  Created by Stefan Nagey on 10/20/09.
//  Copyright 2009 Qorvis Communications. All rights reserved.
//

#import "DestinationViewController.h"


@implementation DestinationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
		regions = [[NSArray arrayWithObjects:@"Central Mexico",@"Pacific Coast",@"The Gulf and the South",@"The North",@"Baja Peninsula",@"Yucitan Peninsula", nil] retain];
		destinations = [[NSArray arrayWithObjects:@"Mexico City", @"Teotijuacan", @"Guanajuanto", @"Cuernavaca", @"Valle de Bravo", 
					 @"Ciudad Puebla", @"Ciudad Queretaro", @"Manzanillo", @"Acapulco", @"Ixtapa-Zihuatanejo", @"Guadalajara",
					 @"Puerto Vallarta", @"Riviera Nayarit", @"Hulatula", @"Oaxaca", @"Mazatlan", @"San Cristobal De La Casas", @"Veracruz"
					 @"Monterrey", @"Ensenada", @"Tijuana", @"Los Cabos", @"Cancun", @"Riviera Maya", @"Playa Del Carmen", nil] retain];
		statesInRegions = [[NSArray arrayWithObjects:[NSArray arrayWithObjects:@"Aguascalientes", @"Distrito Federal", @"Guanajuato", @"Hidalgo", 
												  @"Michoacan", @"Morelos", @"Mexico",@"Puebla", @"Queretaro", @"San Luis Potosi", @"Tlaxcala", nil],
												 [NSArray arrayWithObjects:@"Colima", @"Guerrero", @"Jalisco", @"Nayarit", @"Oaxaca", @"Sinaloa",nil],
												 [NSArray arrayWithObjects:@"Chiapas", @"Tabasco", @"Veracruz",nil],
												 [NSArray arrayWithObjects:@"Chihuahua", @"Coahuila", @"Durango", @"Nuevo Leon", @"Sonora",
												  @"Tamaulipas", @"Zacatecas",nil],
												 [NSArray arrayWithObjects:@"Baja California", @"Baja California Sur",nil],
												 [NSArray arrayWithObjects:@"Campeche", @"Quintana Roo", @"Yucatan",nil],
						nil] retain];
	}
	return self;
}

/*
- (id)initWithStyle:(UITableViewStyle)style {
    // Override initWithStyle: if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
    if (self = [super initWithStyle:style]) {
    }
    return self;
}
*/

/*
- (void)viewDidLoad {
    [super viewDidLoad];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
*/

/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
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


#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	NSLog(@"Regions: %d", [regions count]);
    return (int)[regions count] + 1;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Set up the cell...
	if ((int)(indexPath.row) == 0) {
		cell.textLabel.text = @"Top Destinations";
	}
	else {
		int number = (int)indexPath.row-1;
		cell.textLabel.text = [regions objectAtIndex:number];
	}
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
	// AnotherViewController *anotherViewController = [[AnotherViewController alloc] initWithNibName:@"AnotherView" bundle:nil];
	// [self.navigationController pushViewController:anotherViewController];
	// [anotherViewController release];
	
	[self.navigationController pushViewController:[[DestinationViewController alloc] initWithNibName:nil bundle:nil] animated:YES];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


- (void)dealloc {
    [super dealloc];
}


@end

