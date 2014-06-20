//
//  RTMountinPath.h
//  Race To the Top
//
//  Created by Michał Kozak on 22.03.2014.
//  Copyright (c) 2014 Raz Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RTMountinPath : NSObject

+(NSArray *)mountainPathsForRect:(CGRect)rect;
+(UIBezierPath *)tapTargetForPath:(UIBezierPath *)path;

@end
