//
//  ViewController.m
//  Carousel
//
//  Created by HanQi on 16/7/26.
//  Copyright © 2016年 HanQi. All rights reserved.
//

#import "ViewController.h"
#import "CarouselView.h"

@interface ViewController () <CarouseViewDelegate>

@property (nonatomic, strong) NSMutableArray *images;
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIPageControl *pageController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CarouselView *view = [[CarouselView alloc] initWithFrame:CGRectMake(0, 0, 375, 136) imageArray:[self images]];
    view.delegate = self;
    
    [self.view addSubview:view];
    
//    
//    [self images];
//    [self scrollView];
//    
//    for (int i = 0; i < self.images.count; i++) {
//    
//        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(i*375, 0, 375, 136)];
//        imageView.image = self.images[i];
//        
//        [self.scrollView addSubview:imageView];
//        
//    }
//    
//    [self pageController];
    
}

//-(UIScrollView *)scrollView {
//
//    if (!_scrollView) {
//    
//        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 375, 136)];
//        _scrollView.showsHorizontalScrollIndicator = NO;
//        _scrollView.pagingEnabled = YES;
//        _scrollView.bounces = NO;
//        CGSize size = CGSizeMake(375*3, 136);
//        _scrollView.contentSize = size;
//        
//        [self.view addSubview:_scrollView];
//        
//    }
//    
//    return _scrollView;
//
//}
//
//-(UIPageControl *)pageController {
//
//    if (!_pageController) {
//    
//        
//        _pageController = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 136+10, 375, 10)];
//        
//        
//        _pageController.numberOfPages=3;
//        _pageController.pageIndicatorTintColor=[UIColor lightGrayColor];
//        //设置显示某页面
//        _pageController.currentPage = 0;
//        _pageController.currentPageIndicatorTintColor=[UIColor orangeColor];
//        
//        [self.view addSubview:_pageController];
//    
//    }
//    return _pageController;
//
//}
//
-(NSMutableArray *)images {

    if (!_images) {
        
        _images = [NSMutableArray array];
        
        for (int i = 0; i < 3; i++) {
        
            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d_banner", (i+1)]];
            
            [_images addObject:image];
        
        }
    
    }
    
    return _images;
}

-(void) carouselView:(CarouselView *)view clickImageView:(UIImageView *)imageView index:(NSInteger)index {

    NSLog(@"--------click--------");
    NSLog(@"%@", view);
    NSLog(@"%@", imageView);
    NSLog(@"%ld", (long)index);
    

}

@end
