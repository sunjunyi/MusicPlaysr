//
//  MusicItemCell.h
//  MusicPlayer.0622
//
//  Created by lanou3g on 15/9/14.
//  Copyright (c) 2015年 蓝鸥科技. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MusicItem.h"
@interface MusicItemCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *lable4name;
@property (weak, nonatomic) IBOutlet UILabel *lable4singer;

@property(nonatomic,strong)MusicItem *model;





@end
