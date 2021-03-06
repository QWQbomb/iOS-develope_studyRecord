//
//  Car.m
//  IOS_Day13_tableView_CarProject
//
//  Created by yz on 2020/5/12.
//  Copyright © 2020 yz. All rights reserved.
//

#import "Car.h"

@implementation Car
+(instancetype)carWithName:(NSString *)name icon:(NSString *)icon{
    Car *car = [[Car alloc] init];
    car.name = name;
    car.icon = icon;
    return car;
}
@end
