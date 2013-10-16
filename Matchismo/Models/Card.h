//
//  Card.h
//  Matchismo
//
//  Created by J.Sterling U1276062 on 16/10/2013.
//  Copyright (c) 2013 J.Sterling U1276062. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, getter=isFaceUp) BOOL faceUp;
@property (nonatomic, getter=isUnplayable) BOOL unplayable;

- (int)match:(NSArray *)otherCards;

@end
