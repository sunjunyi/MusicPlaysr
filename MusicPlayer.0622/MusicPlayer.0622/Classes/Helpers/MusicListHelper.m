
//
//  MusicListHelper.m
//  MusicPlayer.0622
//
//  Created by lanou3g on 15/9/14.
//  Copyright (c) 2015年 蓝鸥科技. All rights reserved.
//

#import "MusicListHelper.h"

@interface MusicListHelper()
@property(nonatomic,strong)NSMutableArray *allMusicMutable;


@end



@implementation MusicListHelper

+(MusicListHelper *)shareHelper{
    static MusicListHelper *helper = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        helper = [MusicListHelper new];
    });
    return helper;
    
}


//self.
- (void)requestAllMusicWithFinish:(void (^)())result{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSArray *array = [NSArray arrayWithContentsOfURL:[NSURL URLWithString:kMusicList]];
//        _allMusicMutable = [NSMutableArray array];
        for (NSDictionary *dic in array) {
            MusicItem *item = [MusicItem new];
            [item setValuesForKeysWithDictionary:dic];
            [self.allMusicMutable addObject:item];
       
        };
        NSLog(@"%@",_allMusicMutable);
       
        
        //
        dispatch_async(dispatch_get_main_queue(), ^{
            result();
        });
    });
}
- (MusicItem *)itemWithIndex:(NSInteger)index{
    
    return self.allMusicMutable[index];
    
}
-(NSMutableArray *)allMusicMutable{
    if (_allMusicMutable ==nil) {
        _allMusicMutable = [NSMutableArray array];
    }
    return _allMusicMutable;
    
}

-(NSArray *)allMusic{
    return [_allMusicMutable mutableCopy];
}






@end
