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

// we implement additional ways to create a new bike:
// (the default "init" would still work)

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


// we implement the available properties/attributes of our bike:

// details about the getter and setter:
@synthesize broken = _broken;
@synthesize speed = _speed;

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

// we implement the internal behavior of the bike now:
- (void)startTheBike:(int) speed
{
    NSLog(@"YEAH - we are at driving at speed %d",speed);
    _speed = speed;
};
@end
