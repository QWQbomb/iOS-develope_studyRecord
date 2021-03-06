//
//  Phone.h
//  IOS_Day14_TableView
//
//  Created by yz on 2020/5/19.
//  Copyright © 2020 yz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Phone : NSObject

/* 图片名称 */
@property (nonatomic,copy) NSString *image;

/* 价格 */
@property (nonatomic,copy) NSString *money;

/* 手机名称 */
@property (nonatomic,copy) NSString *name;

/* 快速构造方法  字典转数据模型 */
+(instancetype)phoneWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
