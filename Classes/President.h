//
//  President.h
//  Nav
//
//  Created by Boris Dapaah on 05/11/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#define kPresidentNumberKey		@"President"
#define kPresidentNameKey		@"Name"
#define kPresidentFromKey		@"FromYear"
#define kPresidentToKey			@"ToYear"
#define kPresidentPartyKey		@"Party"

#import <Foundation/Foundation.h>


@interface President : NSObject <NSCoding> {

	int			number;
	NSString	*name;
	NSString	*fromYear;
	NSString	*toYear;
	NSString	*party;
}

@property int number;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *fromYear;
@property (nonatomic, retain) NSString *toYear;
@property (nonatomic, retain) NSString *party;
@end
