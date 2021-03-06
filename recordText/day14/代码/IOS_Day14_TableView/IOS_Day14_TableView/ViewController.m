//
//  ViewController.m
//  IOS_Day14_TableView
//
//  Created by yz on 2020/5/19.
//  Copyright © 2020 yz. All rights reserved.
//

#import "ViewController.h"
#import "Phone.h"

@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

/* 所有的手机数据 */
@property (nonatomic,strong) NSArray *phones;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.tableView.dataSource = self;
    //加载plist文件
    NSArray *dictArray=[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"phone.plist" ofType:nil]];
    
    NSMutableArray *temp = [NSMutableArray array];
    //plist文件中取出的字典数组 转为 phone模型数组
    for (NSDictionary *dict in dictArray) {
        Phone *phone = [Phone phoneWithDict:dict];
        [temp addObject:phone];
    }
    self.phones = temp;
    
    //设置tableView每一行Cell的高度
    self.tableView.rowHeight= 100;
    //设置tableView每一组的头部高度
    self.tableView.sectionHeaderHeight=80;
    //设置分割线的颜色
    //self.tableView.separatorColor = [UIColor redColor];
    //self.tableView.separatorColor = [UIColor clearColor];
    //设置分割线的样式
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //设置表头表底控件
    //self.tableView.tableHeaderView = [[UISwitch alloc] init];
    //self.tableView.tableFooterView = [[UISwitch alloc] init];
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"智能手机系列";
}

/* 告诉TableView一共有几组 */
/* 如果不实现，默认就是1组 */
//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    return 1;
//}
/* 每一组有多少行 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.phones.count;
}

/* 每一行显示的内容 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    //设置最右边的指示图标
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    //设置选中样式
    cell.selectionStyle =  UITableViewCellSelectionStyleBlue;
    
    //设置cell的背景颜色
   // cell.backgroundColor = [UIColor greenColor];
    
    //设置cell的背景View
//    UIView *bg = [[UIView alloc] init];
//    bg.backgroundColor = [UIColor blueColor];
//    cell.backgroundView = bg;
    
    //取出indexPath.row对应的每行手机模型
    Phone *phone = self.phones[indexPath.row];
    
    //设置数据
    cell.imageView.image = [UIImage imageNamed:phone.image];
    
    //设置cell中图片的固定大小
    CGSize itemSize = CGSizeMake(50, 70);
    UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
    CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
    [cell.imageView.image drawInRect:imageRect];
    cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    cell.textLabel.text = phone.name;
    cell.detailTextLabel.text= [NSString stringWithFormat:@"¥%@",phone.money];
    cell.detailTextLabel.textColor = [UIColor orangeColor];
    return cell;
}

@end
