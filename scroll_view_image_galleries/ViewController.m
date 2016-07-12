//
//  ViewController.m
//  scroll_view_image_galleries
//
//  Created by Yana Kultysheva on 2016-07-11.
//  Copyright © 2016 Yana Kultysheva. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController () <UIScrollViewDelegate, UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property UIImageView *imageView1;
@property UIImageView *imageView2;
@property UIImageView *imageView3;
@property (nonatomic, strong) UITapGestureRecognizer *tapGesture;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.scrollView.delegate = self;
    
    
    self.imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-night.jpg"]];
    self.imageView1.frame = CGRectMake(10, 10, 400, 400);
    self.imageView1.userInteractionEnabled = YES;
    [self.containerView addSubview:self.imageView1];
    
    
    self.imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-in-Field.jpg"]];
    self.imageView2.frame = CGRectMake(10, 420, 400, 400);
    self.imageView2.userInteractionEnabled = YES;

    [self.containerView addSubview:self.imageView2];
    
    
    self.imageView3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse.jpg"]];
    self.imageView3.frame = CGRectMake(10, 830, 400, 400);
    self.imageView3.userInteractionEnabled = YES;

    [self.containerView addSubview:self.imageView3];
    
    
    
    //self.scrollView.pagingEnabled = YES;
    
    [self prepareGestureRecognizers];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (void)prepareGestureRecognizers {
    [self prepareTapGestureRecognizer1];
    [self prepareTapGestureRecognizer2];
    [self prepareTapGestureRecognizer3];
}

- (void)prepareTapGestureRecognizer1 {
    self.tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped1:)];
    [self.imageView1 addGestureRecognizer:self.tapGesture];
    }

- (void)prepareTapGestureRecognizer2 {
    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped2:)];
    [self.imageView2 addGestureRecognizer:tap2];
}

- (void)prepareTapGestureRecognizer3 {
    UITapGestureRecognizer *tap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped3:)];
    [self.imageView3 addGestureRecognizer:tap3];
}

- (void)tapped1:(UIGestureRecognizer*)recognizer {
    [self performSegueWithIdentifier:@"toViewController2" sender:self.imageView1];
}

- (void)tapped2:(UIGestureRecognizer*)recognizer {
    [self performSegueWithIdentifier:@"toViewController2" sender:self.imageView2];
}

- (void)tapped3:(UIGestureRecognizer*)recognizer {
    [self performSegueWithIdentifier:@"toViewController2" sender:self.imageView3];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIImageView*)imageView {
    
    if ([segue.identifier  isEqualToString:@"toViewController2"]) {
        
        ViewController2 *vc2 = (ViewController2 *) [segue destinationViewController];
        vc2.contentImage = imageView.image;
    }
}





@end
