//
//  Cinema_ListTableViewController.m
//  LogicSplit
//
//  Created by 丁丁 on 16/1/16.
//  Copyright © 2016年 huangyanan. All rights reserved.
//

#import "Cinema_ListTableViewController.h"
#import "Cinema_ListCell.h"
#import "Cinema_ListManager.h"

@interface Cinema_ListTableViewController ()

@property (nonatomic,strong)Cinema_ListManager *manager;
@property (nonatomic,strong)NSArray *dataArray;//数据

@end

@implementation Cinema_ListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self registCell];
    [self loadData];
}

- (void)loadData {
    self.manager = [[Cinema_ListManager alloc] init];
    __weak typeof(self) weakSelf = self;
    [self.manager getCinema_ListWithBlcok:^(NSArray *result) {
        __strong typeof(weakSelf)strongSelf = weakSelf;
        strongSelf.dataArray = result;
        [strongSelf.tableView reloadData];
    }];
    
}

- (void)registCell {
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([Cinema_ListCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([Cinema_ListCell class])];
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Cinema_ListCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([Cinema_ListCell class])];
    cell.model = self.dataArray[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}




@end
