//
//  ViewController.m
//  Matchismo
//
//  Created by J.Sterling U1276062 on 16/10/2013.
//  Copyright (c) 2013 J.Sterling U1276062. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong, nonatomic) Deck *deck;

@end

@implementation ViewController

- (Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void) setCardButtons:(NSArray *)cardButtons{
    _cardButtons = cardButtons;
    for (UIButton *cardButton in self.cardButtons){
        Card *card = [self.deck drawRandomCard];
        [cardButton setTitle:card.contents forState:UIControlStateSelected];
    }
}


- (void) setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender {
    
    PlayingCardDeck *deck = [[PlayingCardDeck alloc] init];
    deck = [[PlayingCardDeck alloc] init];

    sender.selected = !sender.isSelected;
    self.flipCount++;
}


@end
