

//
//  MusicItemCell.m
//  MusicPlayer.0622
//
//  Created by lanou3g on 15/9/14.
//  Copyright (c) 2015年 蓝鸥科技. All rights reserved.
//

#import "MusicItemCell.h"
#import "UIImageView+WebCache.h"

@implementation MusicItemCell

-(void)setModel:(MusicItem *)model{
    if (_model !=model) {
        _model = model;
    }
    [self.image sd_setImageWithURL:[NSURL URLWithString:model.picUrl]];
    self.lable4name.text = model.name;
    self.lable4singer.text = model.singer;
}




- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
