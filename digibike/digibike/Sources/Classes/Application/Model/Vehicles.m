//
//  Vehicles.m
//  digibike
//
//  Created by John on 2013-01-31.
//  Copyright (c) 2013 FH Johanneum. All rights reserved.
//

#import "Vehicles.h"


@interface Vehicles()
// some additional "private, internal attributes or methods" 
@property (strong, nonatomic) NSMutableArray *allTheBikes;

@end


@implementation Vehicles

// the property allTheBikes would always be nil
// (never, ever generated). So we need
// "lazy evaluation" to create an (empty) list on demand:
- (NSMutableArray *)allTheBikes{
    if (!_allTheBikes) _allTheBikes = [[NSMutableArray alloc] init];
    return _allTheBikes;
}

-(void)addEBike: (EBike *)bike{
    // ok, we add the bike to our internal 'list' named "allTheBikes"
    [self.allTheBikes addObject:bike];
}

-(EBike *) selectDefaultBike{
    // let say the last bike is the default one:
    return [self.allTheBikes lastObject];
};

-(EBike *) selectBikeWithNo: (NSUInteger)bikeNo{
    if (self.count==0)
        return nil;
    bikeNo= bikeNo%self.count;
    return [self.allTheBikes objectAtIndex:bikeNo];
};

-(NSUInteger) count{
    return self.allTheBikes.count;
};

-(NSString *) info{
    return [NSString stringWithFormat:@"%d vehicles available.", self.allTheBikes.count];
};

- (void)addSomeDemoBikes{
    EBike *ebike;
    ebike = [[EBike alloc] initEBikeWithName: @"Maxi-Super"];
    [self addEBike: ebike];
    ebike = [[EBike alloc] initEBikeWithName: @"Mega-Racer"];
    [self addEBike: ebike];
}

@end
