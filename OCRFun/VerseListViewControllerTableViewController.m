//
//  VerseListViewControllerTableViewController.m
//  OCRFun
//
//  Created by Hamming, Tom on 10/19/16.
//  Copyright © 2016 Tyler Reardon. All rights reserved.
//

#import "VerseListViewControllerTableViewController.h"

@interface VerseListViewControllerTableViewController ()
@property (strong) NSArray *verses;
@end

@implementation VerseListViewControllerTableViewController

-(id)initWithVerseArray:(NSArray *)verses
{
    if ([self initWithNibName:@"VerseListViewControllerTableViewController" bundle:nil])
    {
        self.verses = verses;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(onDone:)];
    self.navigationItem.rightBarButtonItem = item;
    self.navigationItem.title = @"Verse Results";
}

-(void)onDone:(id)sender
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.verses.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ID"];
    if (!cell)
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID"];
    
    cell.textLabel.text = [self.verses objectAtIndex:indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *verse = [self.verses objectAtIndex:indexPath.row];
    NSString *strUrl = [NSString stringWithFormat:@"olivetree://bible/%@", verse];
    NSURL *url = [NSURL URLWithString:strUrl];
    [[UIApplication sharedApplication] openURL:url];
}

@end
