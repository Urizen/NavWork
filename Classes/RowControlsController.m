//
//  RowControlsController.m
//  Nav
//
//  Created by Bob Dapaah on 30/10/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "RowControlsController.h"
//#import "SecondLevelViewController.h"


@implementation RowControlsController

@synthesize list;

- (IBAction) buttonTapped:(id)sender {
	
	UIButton *senderButton = (UIButton *)sender;
	
	UITableViewCell *buttonCell = (UITableViewCell *) [senderButton superview];
	
	NSUInteger buttonRow = [[self.tableView indexPathForCell:buttonCell] row];
	
	NSString *buttonTitle = [list objectAtIndex:buttonRow];
	UIAlertView *alert = 
	[[UIAlertView alloc] initWithTitle:@"You tapped the button" 
							   message:[NSString stringWithFormat:@"You tapped the button for %@", buttonTitle] 
							  delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
	
	[alert show];
	[alert release];
}

-(void) viewDidLoad {
	
	
	NSArray *array = [[NSArray alloc] initWithObjects:@"R2-D2", @"C3PO", @"Tik-Tok", @"Robby", @"Rosie", @"Unilab", @"Bender", @"Marvin",
					  @"Lt. Commander Data", @"Evil Brother Lore", @"Optimus Prime", @"Tobor", @"HAL", @"Orgasmatron", nil];
	
	self.list = array;
	
	[array release];
	[super viewDidLoad];
}

-(void) viewDidUnload {
	
	
	self.list = nil;
}

- (void) dealloc {
	
	[list release];
	[super dealloc];
	
}

#pragma mark -
#pragma mark Table Datasource Methods

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
	
	return [list count];
}

@end
