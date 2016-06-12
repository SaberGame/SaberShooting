//
//  SLMainViewController.m
//  SaberShooting
//
//  Created by songlong on 16/6/12.
//  Copyright © 2016年 SaberGame. All rights reserved.
//

#import "SLMainViewController.h"
#import <SpriteKit/SpriteKit.h>
#import "GameScene.h"

@interface SLMainViewController ()

@end

@implementation SLMainViewController

- (instancetype)init {
    if (self = [super init]) {
        self.view = [[SKView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    SKView *spriteView = (SKView *)self.view;
    spriteView.showsFPS = YES;
    spriteView.showsNodeCount = YES;
    spriteView.showsDrawCount = YES;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    GameScene* hello = [[GameScene alloc] initWithSize:[UIScreen mainScreen].bounds.size];
    SKView *spriteView = (SKView *) self.view;
    [spriteView presentScene: hello];
}

@end
