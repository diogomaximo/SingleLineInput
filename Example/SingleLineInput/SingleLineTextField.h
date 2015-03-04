//
//  SingleLineTextField.h
//  SingleLineInput
//
//  Created by Diogo Maximo on 17/10/14.
//

#import <UIKit/UIKit.h>
@interface SingleLineTextField : UITextField<UITextFieldDelegate>{
    
}
@property (nonatomic,strong) UIColor *lineSelectedColor;
@property (nonatomic,strong) UIColor *lineNormalColor;
@property (nonatomic,strong) UIColor *lineDisabledColor;
@property (nonatomic,strong) UIColor *inputTextColor;
@property (nonatomic,strong) UIColor *inputPlaceHolderColor;
@end
