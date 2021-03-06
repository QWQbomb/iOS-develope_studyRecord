//
//  CarGroup.h
//  IOS_Day13_tableView_CarProject
//
//  Created by yz on 2020/5/12.
//  Copyright © 2020 yz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CarGroup : NSObject

/*头部标题*/
@property (nonatomic,copy) NSString *header;
/*底部标题*/
@property (nonatomic,copy) NSString *footer;
/*组里的车*/
@property (nonatomic,strong) NSArray *cars;

@end

NS_ASSUME_NONNULL_END
