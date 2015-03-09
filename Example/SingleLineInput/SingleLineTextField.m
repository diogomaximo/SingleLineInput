//
//  SingleLineTextField.m
//  SingleLineInput
//
//  Created by Diogo Maximo on 17/10/14.

#import "SingleLineTextField.h"
@implementation SingleLineTextField{
    CGRect frame;
    UIView *lineView;
    NSString *placeHolderString;
    UILabel *placeHolderLabel;
}

@synthesize lineNormalColor,lineDisabledColor,lineSelectedColor, inputTextColor, inputPlaceHolderColor,animationDuration;

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        frame = self.bounds;
        self.lineSelectedColor = [UIColor colorWithRed:0.33 green:0.49 blue:0.36 alpha:1];
        self.lineNormalColor   = [UIColor colorWithRed:0.84 green:0.84 blue:0.84 alpha:1];
        self.lineDisabledColor = [UIColor grayColor];
        self.textColor     = [UIColor blackColor];
        self.delegate = self;
        self.textColor = inputTextColor;
        [self addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
        placeHolderString = self.placeholder;
        self.placeholder = NULL;
        self.font = [UIFont boldSystemFontOfSize:10];
        [self createLineInput];
        [self createPlaceHolderInput];
        self.borderStyle = UITextBorderStyleNone;
        animationDuration = 0.1;
    }
    return self;
}

-(void) createLineInput{
    lineView = [[UIView alloc] initWithFrame:CGRectMake(0, frame.size.height - 6, frame.size.width, 1)];
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
    [UIView animateWithDuration:animationDuration animations:^(void){
        lineView.backgroundColor = lineSelectedColor;
        if (textField.text.length == 0) {
            placeHolderLabel.frame = CGRectMake(placeHolderLabel.frame.origin.x, placeHolderLabel.frame.origin.y-10, placeHolderLabel.frame.size.width, placeHolderLabel.frame.size.height);
            placeHolderLabel.font = [UIFont boldSystemFontOfSize:8];
        }
        
    }];
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    [UIView animateWithDuration:animationDuration animations:^(void){
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
    //Handle problem with font size when using secure text Entry
    if (textField.text.length > 0) {
        textField.font = [UIFont systemFontOfSize:textField.font.pointSize];
    }
}

#pragma mark - Override default properties
-(void)setLineDisabledColor:(UIColor *)aLineDisabledColor{
    lineDisabledColor = aLineDisabledColor;
}

-(void) setLineNormalColor:(UIColor *)aLineNormalColor{
    lineNormalColor = aLineNormalColor;
}

-(void) setLineSelectedColor:(UIColor *)aLineSelectedColor{
    lineSelectedColor = aLineSelectedColor;
}

-(void) setInputTextColor:(UIColor *)anInputTextColor{
    inputTextColor = anInputTextColor;
    self.textColor = inputTextColor;
}

-(void) setInputPlaceHolderColor:(UIColor *)anInputPlaceHolderColor{
    inputPlaceHolderColor = anInputPlaceHolderColor;
    placeHolderLabel.textColor = inputPlaceHolderColor;
}
@end