//
//  IBGScreenLoading.m
//  react-native-screen-loading
//
//  Created by Ahmed Mahmoud on 24/03/2024.
//

#import <UIKit/UIKit.h>
#import "IBGScreenLoading.h"

@implementation IBGScreenLoading

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    NSTimeInterval time = [[[NSDate alloc] init] timeIntervalSince1970];
    NSLog(@"IBG-RN: UIView.drawRect ran at %f", time * 1000);
}

@end

