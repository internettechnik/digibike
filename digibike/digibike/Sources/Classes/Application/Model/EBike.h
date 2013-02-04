//
//  EBike.h
//  digibike
//
//  Created by John on 2013-01-29.
//  Copyright (c) 2013 FH Johanneum. All rights reserved.
//

// we import Foundation for all the basic classes...
#import <Foundation/Foundation.h>

// we "invent" the PUBLIC INTERFACE for an EBike :)

@interface EBike : NSObject


// which (public) attributes (properties) has such an EBike?


// public property (we have getter and setter)
//     (nonatomic = not thread safe)
//     (strong = remove from MEMORY (always the heap, never the stack) if
//               no more pointers/references to this object available)
//     (readonly = just read the value, you cannot SET the speed value)
@property (strong, nonatomic) NSString *name;
@property (readonly, nonatomic) NSUInteger speed;
@property (nonatomic, getter=isBroken) BOOL broken; // some bikes might be broken (defect)


// Note: minus "-" for normal instance/object methods
//       plus  "+" for class methods (helpers, tools,...)


// how to init a bike on creation (=when creating a NEW object)
- (id) initEBikeWithName:(NSString *)theEBikeName;


// how does it behave? (public methods)
- (void)startTheBikeWithSpeed:(NSUInteger) speed;

// for all object the same: maximum speed of ANY bike
// class method (+)
+ (NSUInteger)maxSpeed;
@end
