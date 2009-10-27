//
//  DisclosureDetailController.h
//  Nav
//
//  Created by Boris Dapaah on 25/10/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DisclosureDetailController : UIViewController {
	
	UILabel *label;
	NSString *message;

}

@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) NSString *message;

@end
