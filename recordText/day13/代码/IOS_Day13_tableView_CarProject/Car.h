//
//  Car.h
//  IOS_Day13_tableView_CarProject
//
//  Created by yz on 2020/5/12.
//  Copyright © 2020 yz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject
/* 名称 */
@property (nonatomic,copy) NSString *name;
/* 图标 */
@property (nonatomic,copy) NSString *icon;
/*快速构造方法*/
+(instancetype)carWithName:(NSString *)name icon:(NSString *)icon;

@end

NS_ASSUME_NONNULL_END
