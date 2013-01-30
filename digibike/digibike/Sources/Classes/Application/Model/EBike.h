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


// how does it behave?
- (id) initEBikeWithName:(NSString *)theEBikeName;

@end
