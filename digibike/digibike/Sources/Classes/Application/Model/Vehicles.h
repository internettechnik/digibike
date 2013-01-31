//
//  Vehicles.h
//  digibike
//
//  Created by John on 2013-01-31.
//  Copyright (c) 2013 FH Johanneum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EBike.h"


@interface Vehicles : NSObject

-(void)addEBike: (EBike *)bike;
-(EBike *) selectDefaultBike;
-(int) count;
-(NSString *) info;
@end
