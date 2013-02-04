//
//  EBike.m
//  digibike
//
//  Created by John on 2013-01-29.
//  Copyright (c) 2013 FH Johanneum. All rights reserved.
//

// import the header which defines the "outside behaviour"
#import "EBike.h"


// the PRIVATE implementation:
@interface EBike()
// public we had: readonly, private we want write also!
@property (readwrite, nonatomic) NSUInteger speed;
@end

@implementation EBike


// we implement additional ways to create a new bike:
//      called: a (an optional) "convenience initializer"
// (the default "init" would still work)
//      called "the designated initializer" 
// return "id" (means: return object of any class)
- (id) initEBikeWithName:(NSString *)theEBikeName{
    // first we call init from the base class NSObject
    self = [super init];
	
	if( self ){ // self could be "nil". Not beautiful, but "standard"
		if( theEBikeName ){
            NSLog( @"We create a bike with name %@",theEBikeName );
            self.name = theEBikeName;
        }else{
			NSLog( @">> ERROR: we need a name for the bike!" );
		} // else
    } // if
    return self;
} // init




// we implement the available properties/attributes of our bike:

// details about the getter and setter:

//Note @synthesize only needed if we provide "better" getter and setters:
//@synthesize broken = _broken;
//@synthesize speed = _speed;


/*
// needed if we provide "better" (BOTH) the getter and setters ourselves:
@synthesize name = _name; // so following is internally generated (if YOU do not provide it):
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
- (void)startTheBikeWithSpeed:(NSUInteger) speed{
    if (speed <= [EBike maxSpeed]) {
        _speed = speed;
    }else{
        _speed = EBike.maxSpeed;
    }
    NSLog(@"YEAH - we are at driving at speed %d",speed);
};

// overwrite the default "as Text" represenation
- (NSString *)description{
    return [NSString stringWithFormat:@"Bike %@ (current speed = %d km/h)",self.name, self.speed];
}
+ (NSUInteger)maxSpeed{
    return 130; // sorry, that's top speed for Austria
};
@end
