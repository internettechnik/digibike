//
//  Vehicles.m
//  digibike
//
//  Created by John on 2013-01-31.
//  Copyright (c) 2013 FH Johanneum. All rights reserved.
//

#import "Vehicles.h"


@interface Vehicles()
@property (strong, nonatomic) NSMutableArray *allTheBikes;
@end

@implementation Vehicles


// the property allTheBikes would always be nil
// (never, ever generated). So we need
// "lazy evaluation" to create an (empty) list on demand:
- (NSMutableArray *)allTheBikes
{
    if (!_allTheBikes) _allTheBikes = [[NSMutableArray alloc] init];
    return _allTheBikes;
}

-(void)addEBike: (EBike *)bike
{
    // ok, we add the bike to our internal 'list' named "allTheBikes"
    [self.allTheBikes addObject:bike];
}

-(EBike *) selectDefaultBike
{
    // let say the last bike is the default one:
    return [self.allTheBikes lastObject];
};

-(int) count
{
    return self.allTheBikes.count;
};

-(NSString *) info
{
    return [NSString stringWithFormat:@"%d vehicles available.", self.allTheBikes.count];
};


@end
