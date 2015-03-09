//
//  SingleLineTextField.h
//  SingleLineInput
//
//  Created by Diogo Maximo on 17/10/14.
//

#import <UIKit/UIKit.h>
@interface SingleLineTextField : UITextField<UITextFieldDelegate>{
    
}
@property (nonatomic,strong) UIColor *lineSelectedColor;     //Customize line selected color
@property (nonatomic,strong) UIColor *lineNormalColor;       //Customize line normal color
@property (nonatomic,strong) UIColor *lineDisabledColor;     //Customize line disabled color
@property (nonatomic,strong) UIColor *inputTextColor;        //Customize input text color
@property (nonatomic,strong) UIColor *inputPlaceHolderColor; //Customize input color
@property (nonatomic) double animationDuration; //Customize animation duration - default: 0.1
@end
