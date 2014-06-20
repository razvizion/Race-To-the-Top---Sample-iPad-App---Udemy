//
//  RTSpaceShipView.m
//  Race To the Top
//
//  Created by Michał Kozak on 22.03.2014.
//  Copyright (c) 2014 Raz Labs. All rights reserved.
//

#import "RTSpaceShipView.h"

@implementation RTSpaceShipView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    bezierPath.lineWidth = 2.0;
    [bezierPath moveToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 2/3.0 *self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 2/3.0 *self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(2/3.0 * self.bounds.size.width, 1/2.0 *self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/3.0 * self.bounds.size.width, 1/2.0 *self.bounds.size.height)];
    [bezierPath closePath];
    [bezierPath stroke];
    
    UIBezierPath *cockpit = [UIBezierPath bezierPath];
    cockpit.lineWidth = 0.2;
    [cockpit moveToPoint:CGPointMake(2/3.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height)];
    float x = (5/6.0 * self.bounds.size.width + 2/3.0 * self.bounds.size.width)/2;
    float y = (2/3.0 *self.bounds.size.height + 1/2.0 *self.bounds.size.height)/2;
    [cockpit addLineToPoint:CGPointMake(x, y)];
    [cockpit addLineToPoint:CGPointMake(2/3.0 * self.bounds.size.width, y)];



    [[UIColor blueColor]setFill];
    
    [cockpit fill];
    [cockpit closePath];
    [cockpit stroke];


}


@end
