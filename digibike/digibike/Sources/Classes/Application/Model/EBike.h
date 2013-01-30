//
//  EBike.h
//  digibike
//
//  Created by John on 2013-01-29.
//  Copyright (c) 2013 FH Johanneum. All rights reserved.
//

// we import Foundation for all the basic classes...
#import <Foundation/Foundation.h>

// we "invent" an EBike :)

@interface EBike : NSObject


// which attributes (properties) has such an EBike?


// public property (we have getter and setter)
//     (nonatomic = not thread safe)
@property (strong, nonatomic) NSString *name;
@property (nonatomic) int speed;
@property (nonatomic, getter=isBroken) BOOL broken; // some bikes might be broken (defect)



// how to init a bike on creation (=when creating a NEW object)
- (id) initEBikeWithName:(NSString *)theEBikeName;



// how does it behave?
- (void)startTheBike:(int) speed;

@end
