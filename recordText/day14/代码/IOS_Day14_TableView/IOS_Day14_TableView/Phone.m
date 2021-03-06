//
//  Phone.m
//  IOS_Day14_TableView
//
//  Created by yz on 2020/5/19.
//  Copyright © 2020 yz. All rights reserved.
//

#import "Phone.h"

@implementation Phone
+(instancetype)phoneWithDict:(NSDictionary *)dict{
    Phone *phone = [[Phone alloc] init];
    //字典中的key一定要与数据模型中的属性一致
    [phone setValuesForKeysWithDictionary:dict];
    
    return phone;
}

@end
