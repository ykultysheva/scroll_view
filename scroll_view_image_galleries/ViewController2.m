//
//  ViewController2.m
//  scroll_view_image_galleries
//
//  Created by Yana Kultysheva on 2016-07-11.
//  Copyright © 2016 Yana Kultysheva. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView2;
@property (weak, nonatomic) IBOutlet UIView *viewContainer2;
@property (nonatomic) UIImageView *imageView2;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imageView2 = [[UIImageView alloc] initWithImage:self.contentImage];
    
    //UIImageView *imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-night.jpg"]];
    
//    imageView.frame.size = [UIImage imageNamed:@"Lighthouse-night.jpg"].frame.size;
//    creat image inside image view
//    set up imageView frame to the size of the image, init image view with image
    
//    self.imageView2.backgroundColor = [UIColor orangeColor];
    self.imageView2.userInteractionEnabled = YES;
    
    self.scrollView2.userInteractionEnabled = YES;
    [self.scrollView2 addSubview:self.imageView2];
    
    self.scrollView2.contentSize = self.imageView2.frame.size;
    
    self.scrollView2.maximumZoomScale = 10;
    self.scrollView2.minimumZoomScale = 0.5;
    
    self.scrollView2.delegate = self;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}   

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView2 {
    // Return the view you want the scrollview to zoom in and out of
    return self.imageView2;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
