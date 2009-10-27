//
//  NavAppDelegate.m
//  Nav
//
//  Created by Boris Dapaah on 06/10/2009.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "NavAppDelegate.h"

@implementation NavAppDelegate

@synthesize window;
@synthesize navController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
	[window addSubview:navController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
	
	[window release];
    [navController release];
	
	[super dealloc];
}


@end
