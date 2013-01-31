//
//  Vehicles.m
//  digibike
//
//  Created by John on 2013-01-31.
//  Copyright (c) 2013 FH Johanneum. All rights reserved.
//

#import "vehiclesTests.h"

@implementation vehiclesTests

Vehicles *vehicles;
EBike *ebike;


- (void)setUp
{
    [super setUp];

    ebike = [[EBike alloc] init];
    
    vehicles = [[Vehicles alloc] init];
    
    STAssertNotNil(ebike, @"Could not create ebike.");
}


// ok, let us run some unit-tests:
- (void)testAddingEBikeToVehicles
{
    // add a bike to vehicles (list of bikes)
    [vehicles addEBike: ebike];
    
    // get back the bike
    EBike *e = [vehicles selectDefaultBike];
    STAssertNotNil(e, @"Could not get a ebike out of vehicles.");
}

- (void)testNumberOfBikesInVehicles
{
    // add a bike to vehicles (list of bikes)
    [vehicles addEBike: ebike];
    [vehicles addEBike: ebike];
    NSLog(@"%@",vehicles.info);
    STAssertEquals(vehicles.count,2, @"we expect two bikes in vehicles-list.");
    
    // we add another three bikes:
    for (NSUInteger i=1; i <= 3; i++){
        EBike *newBike = [[EBike alloc] init];
        [vehicles addEBike:newBike];
    }
    STAssertEquals(vehicles.count,5, @"we expect five bikes in vehicles-list.");
}


- (void)tearDown
{
    ebike=nil;
    vehicles = nil;
    [super tearDown];
}



@end
