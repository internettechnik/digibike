//
//  digibikeTests.m
//  digibikeTests
//
//  Created by Valentin Riegler on 28.01.13.
//  Copyright (c) 2013 FH Johanneum. All rights reserved.
//

#import "digibikeTests.h"

@implementation digibikeTests

EBike *ebike;

- (void)setUp
{
    [super setUp];
    
    // Set-up some demo data to test....
    NSLog( @"We create a bike for some tests..." );
    ebike = [[EBike alloc] init];
    STAssertNotNil(ebike, @"Could not create ebike.");
}

- (void)tearDown
{
    // Tear-down code here.
    NSLog( @"Tests done..." );
    [super tearDown];
}


// ok, let us run some unit-tests:
- (void)testTheNewEBike
{
    NSLog( @"First test: is the object here?" );
    STAssertTrue(ebike != Nil, @"hu, an ebike has to exist!");
    
    NSLog( @"Second test: can we assign (write) and read property name?" );
    ebike.name = @"Bikomat";
    STAssertEquals(ebike.name,@"Bikomat", @"we expect this bike to be called 'Bikomat'");
    NSLog( @"Everything ok. We have a bike named '%@'",ebike.name );

}

// now we test our custom init - method (the special "constructor")
-(void)testAnotherEBike
{
    EBike *maxiBike;
    maxiBike = [[EBike alloc] initEBikeWithName: @"Maxi"];
    STAssertEquals(maxiBike.name, @"Maxi", @"we expect this bike to be called 'Maxi'");
    maxiBike=nil;
}

@end
