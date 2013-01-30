//
//  EBike.m
//  digibike
//
//  Created by John on 2013-01-29.
//  Copyright (c) 2013 FH Johanneum. All rights reserved.
//

// import the header which defines the "outside behaviour"
#import "EBike.h"

@implementation EBike
- (id) initEBikeWithName:(NSString *)theEBikeName{
    // first we call init from the base class NSObject
    self = [super init];
	
	if( self )
	{
		if( theEBikeName )
		{
            NSLog( @"We create a bike with name %@",theEBikeName );
            self.name = theEBikeName;
        }
        else
		{
			NSLog( @">> ERROR: we need a name for the bike!" );
		} // else
    } // if
    return self;
} // init

// details about the getter and setter:
@synthesize name = _name;
/* so following is internally generated: 
-(NSString *)name
{
    return _name;
}
-(void)setName:(NSString *)name
{
    _name = name;
}
 */
@end
