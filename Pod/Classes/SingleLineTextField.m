//
//  SingleLineTextField.m
//  SingleLineInput
//
//  Created by Diogo Maximo on 17/10/14.


#import "SingleLineTextField.h"
#import <pop/POP.h>
#define kRect
@implementation SingleLineTextField{
    CGRect frame;
    UIView *lineView;
    UIColor *lineSelectedColor;
    UIColor *lineNormalColor;
    UIColor *lineDisabledColor;
    UIColor *textColor;
    NSString *placeHolderString;
    UILabel *placeHolderLabel;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        frame = self.bounds;
        lineSelectedColor = [UIColor colorWithRed:0.33 green:0.49 blue:0.36 alpha:1];
        lineNormalColor   = [UIColor colorWithRed:0.84 green:0.84 blue:0.84 alpha:1];
        lineDisabledColor = [UIColor grayColor];
        textColor     = [UIColor blackColor];
        self.delegate = self;
        self.textColor = textColor;
        [self addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
        placeHolderString = self.placeholder;
        self.placeholder = @"";
        self.font = [UIFont boldSystemFontOfSize:10];
        [self createLineInput];
        [self createPlaceHolderInput];
    }
    return self;
}

-(void) createLineInput{
    lineView = [[UIView alloc] initWithFrame:CGRectMake(0, frame.size.height - 1.0, frame.size.width, 1)];
    lineView.backgroundColor = lineNormalColor;
    [self addSubview:lineView];
}

-(void) createPlaceHolderInput{
    placeHolderLabel = [[UILabel alloc] initWithFrame:frame];
    placeHolderLabel.text = placeHolderString;
    placeHolderLabel.font = [UIFont boldSystemFontOfSize:10];
    placeHolderLabel.textColor = [UIColor grayColor];
    placeHolderLabel.alpha = 0.5;
    self.tintColor = [UIColor grayColor];
    [self addSubview:placeHolderLabel];
}

#pragma mark UITextFieldDelegate
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    [UIView animateWithDuration:0.1 animations:^(void){
        lineView.backgroundColor = lineSelectedColor;
        if (textField.text.length == 0) {
            placeHolderLabel.frame = CGRectMake(placeHolderLabel.frame.origin.x, placeHolderLabel.frame.origin.y-10, placeHolderLabel.frame.size.width, placeHolderLabel.frame.size.height);
            placeHolderLabel.font = [UIFont boldSystemFontOfSize:8];
        }
        
    }];
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
        [UIView animateWithDuration:0.1 animations:^(void){
            lineView.backgroundColor = lineNormalColor;
            if (textField.text.length == 0) {
                placeHolderLabel.frame = CGRectMake(placeHolderLabel.frame.origin.x, placeHolderLabel.frame.origin.y+10, placeHolderLabel.frame.size.width, placeHolderLabel.frame.size.height);
                placeHolderLabel.font = [UIFont boldSystemFontOfSize:10];
            }
        }];
}


-(void) setEnabled:(BOOL)enabled{
    super.enabled = enabled;
    if (!enabled) {
        lineView.hidden = YES;
    }else{
        lineView.hidden = NO;
    }
}

- (void)textFieldDidChange:(id)sender
{
    UITextField *textField = (UITextField *)sender;
    
    if (textField.text.length == 0) {
        //textField.font = [FonteUtil fonteMuseo300ComTamanho:14];
    }
    else {
        textField.font = [UIFont systemFontOfSize:textField.font.pointSize];
    }
}

- (CGRect)editingRectForBounds:(CGRect)bounds {
    return CGRectInset( bounds , 1 , 1);
}

- (CGRect)textRectForBounds:(CGRect)bounds{
    return CGRectInset( bounds , 1 , 1 );
}

@end
