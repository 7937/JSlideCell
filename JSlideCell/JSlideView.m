//
//  JSlideView.m
//  SlideCell
//
//  Created by 7937 on 2017/3/7.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "JSlideView.h"

@implementation JSlideView

- (instancetype)init{
    if (self = [super init]) {
        
    }
    return self;
}


- (void)setTypeOfSlideView:(SlideViewType )type{
    switch (type) {
        case 0:
            self.backgroundColor = [UIColor colorWithRed:0.96 green:0.31 blue:0.18 alpha:0.1];
            break;
        case 1:
            self.backgroundColor = [UIColor colorWithRed:0.96 green:0.31 blue:0.18 alpha:1.00];
            break;
        case 2:
            self.backgroundColor = [UIColor colorWithRed:0.53 green:0.82 blue:0.40 alpha:0.1];
            break;
        case 3:
            self.backgroundColor = [UIColor colorWithRed:0.53 green:0.82 blue:0.40 alpha:1.00];
            break;
        default:
            NSLog(@"didn't choose type");
            break;
    }
}

- (NSInteger)activeSlideView:(CGFloat )currentX{
    if (currentX > 80) return SlideViewTypeDidDone;
    else if ((currentX < 80 && currentX >0) || currentX ==80 ||currentX ==0) return SlideViewTypeWillDone;
    else if ((currentX >-80 && currentX <0) ||currentX ==-80) return SlideViewTypeWillDelete;
    else if (currentX <-80) return SlideViewTypeDidDelete;
    return 101;
}


@end
