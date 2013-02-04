//
//  Vehicles.h
//  digibike
//
//  Created by John on 2013-01-31.
//  Copyright (c) 2013 FH Johanneum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EBike.h"

// find the "public behaviour" here:

@interface Vehicles : NSObject

-(void)addEBike: (EBike *)bike;
-(EBike *) selectDefaultBike;
-(EBike *) selectBikeWithNo: (NSUInteger)bikeNo;
-(NSUInteger) count;
-(NSString *) info;

- (void)addSomeDemoBikes;

@end
