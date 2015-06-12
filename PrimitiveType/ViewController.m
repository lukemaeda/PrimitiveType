//
//  ViewController.m
//  PrimitiveType
//
//  Created by kunren10 on 2014/03/17.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import "ViewController.h"

// クラス拡張（xバツ:無名カテゴリ）
@interface ViewController ()

@end

// 実装部分
@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// [整数型]ボタン押した時
- (IBAction)proc01:(id)sender {
  
    /*
    signed      :符号あり（省略可）
    unsigned    :符号なし
    */
    
    // char c01 = 127;
    // 符号付き
    signed char c01 = 127;
    NSLog(@"char：%d", c01);
    
    // マイナスを扱わないので範囲が大きくなる
    // u:unsigned
    unsigned char uc01 = 255u;
    NSLog(@"unsigned char：%u", uc01);
    
    // shout int型
    //short  s01 = 32767;
    short int s01 = 32767;
    NSLog(@"char：%hd",s01);
    unsigned short us01 = 65535u;
    NSLog(@"char：%hu", us01);
    
    // int型 なぜint型を使うのかは、処理速度が速い　標準になっている
    int i01 = 123456;
    NSLog(@"int：%d",i01);
    
    unsigned ui01 = 1234567890u;
    NSLog(@"unsigned int：%u", ui01);
    
    // long int型（32/64bitでサイズが異なる）
    //long l01 = 123456l;
    signed long int l01 = 123456l;
    NSLog(@"long：%ld",l01);
    
    unsigned long ul01 = 1234567890lu;
    NSLog(@"unsigned long：%lu", ul01);
    
    // long　long型
    long long ll01 = 1234567890ll;
    NSLog(@"unsigned long long :%llu",ll01);
    
    unsigned long long ull01 = 1234567890llu;
    NSLog(@"unsigned long long :%llu",ull01);
    
    //--------------------------------------
    
    // 8進数 先頭に0を付ける オクタル
    int o01 = 010; // 8進数の10
    NSLog(@"8進数：%o",o01);
    
    int o02 = 10; // 8進数の10
    NSLog(@"8進数：%o",o02);
    
    // 16進数　ヘキサ
    int h01 = 0x10;
    NSLog(@"16進数：%x", h01);
    
    int h02 = 10;
    NSLog(@"16進数：%x", h02);
}

// [浮動小数点型]ボタン押した時
- (IBAction)proc02:(id)sender {
    
    // float型
//    float f01 = 123.4f;
//    NSLog(@"float：%f", f01);
    
//    float f01 = 123.4f;
//    // %e:指数表示
//    NSLog(@"float：%f %e", f01, f01);
    
    // float型（単精度）
    float f01 = 123.4f;
    // %g:自動判定
    NSLog(@"float：%f %e %g", f01, f01, f01);
    
    // double型（倍精度）
    double d01 = 1234567.89;
    // %g:自動判定 あいまいな判定になっている
    NSLog(@"double：%f %e %g", d01, d01, d01);
    
    // long double型（拡張倍精度）
    long double ld01 = 1234567.89l;
    // %g:自動判定
    NSLog(@"long double：%Lf %Le %Lg", ld01, ld01, ld01);
}



// [文字型]ボタン押した時
- (IBAction)proc03:(id)sender {
    
    // char型 一文字
    char c01 = 66; // Bが表示
    NSLog(@"char：%d, %c",c01, c01);
    
    char c02 = 'C';
    NSLog(@"char：%d, %c",c02, c02);
    
    // 文字列（'\0':終端文字（NULL文字））
    char s01[] = {'A', 'B', 'C', '\0'};
    NSLog(@"文字列1：%s", s01);
    
    char s02[] = "abc";
    NSLog(@"文字列2：%s", s02);
    
    char *s03 = "xyz"; // ポインター変数
    NSLog(@"文字列3：%s", s03);
}

// [論理型]ボタン押した時
- (IBAction)proc04:(id)sender {
    
    // Objective-C標準
    BOOL b01 = YES; // YES:1 NO:0
    NSLog(@"bool：%d", b01);
    NSLog(@"bool：%@",
          b01 == YES ? @"YES" : @"NO");
    NSLog(@"bool：%@",
          b01 ? @"YES" : @"NO"); // 三項演算子

    // C言語標準
    bool b02 = true;
//  bool b02 = false;
    
    NSLog(@"bool：%@",
          b02 ? @"true" : @"false"); // 三項演算子
    
}

// 参考 (サイズ・範囲（整数型））
- (IBAction)procRef01:(id)sender {
	
	// (タイトル)
	printf("データ型: サイズ(Byte) サイズ(bit) (有効範囲)\n");
	printf("-------  ----------- ---------- --------\n");
	
	// char型
	printf("char型:");
	printf(" %ldByte %ldbit", sizeof(char), sizeof(char) * 8);
	printf(" (%d〜%d)\n", SCHAR_MIN, SCHAR_MAX);
	
	printf("unsigned char型:");
	printf(" %ldByte %ldbit", sizeof(unsigned char), sizeof(unsigned char)
           * 8);
	printf(" (%u〜%u)\n\n", 0, UCHAR_MAX);
	
	// short型
	printf("short型:");
	printf(" %ldByte %ldbit", sizeof(short), sizeof(short) * 8);
	printf(" (%d〜%d)\n", SHRT_MIN, SHRT_MAX);
	
	printf("unsigned short型:");
	printf(" %ldByte %ldbit", sizeof(unsigned short), sizeof(unsigned
                                                             short) * 8);
	printf(" (%u〜%u)\n\n", 0, USHRT_MAX);
	
	// int型
	printf("int型:");
	printf(" %ldByte %ldbit", sizeof(int), sizeof(int) * 8);
	printf(" (%d〜%d)\n", INT_MIN, INT_MAX);
	
	printf("unsigned int型:");
	printf(" %ldByte %ldbit", sizeof(unsigned int), sizeof(unsigned int) * 8);
	printf(" (%u〜%u)\n\n", 0, UINT_MAX);
	
	// long型（※32/64bitでの違い注意）
	printf("long型:");
	printf(" %ldByte %ldbit", sizeof(long), sizeof(long) * 8);
	printf(" (%ld〜%ld)\n", LONG_MIN, LONG_MAX);
	
	printf("unsigned long型:");
	printf(" %ldByte %ldbit", sizeof(unsigned long), sizeof(unsigned long)
           * 8);
	printf(" (%lu〜%lu)\n\n", 0l, ULONG_MAX);
	
	// long long型
	printf("long long型:");
	printf(" %ldByte %ldbit", sizeof(long long), sizeof(long long) * 8);
	printf(" (%qd〜%qd)\n", LONG_LONG_MIN, LONG_LONG_MAX);
	
	printf("unsigned long long型:");
	printf(" %ldByte %ldbit", sizeof(unsigned long long), sizeof(unsigned
                                                                 long long) * 8);
	printf(" (%qu〜%qu)\n\n", 0ll, ULONG_LONG_MAX);
}

// 参考 (サイズ・範囲（浮動小数点数型））
- (IBAction)procRef02:(id)sender {
	
	// (タイトル)
	printf("データ型: サイズ(Byte) サイズ(bit) (有効範囲)\n");
	printf("-------  ----------- ---------- --------\n");
	
	// float型
	printf("float型:");
	printf(" %ldByte %ldbit", sizeof(float), sizeof(float) * 8);
	printf(" (%g〜%g)\n", FLT_MIN, FLT_MAX);
	
	// double型
	printf("double型:");
	printf(" %ldByte %ldbit", sizeof(double), sizeof(double) * 8);
	printf(" (%g〜%g)\n", DBL_MIN, DBL_MAX);
	
	// long double型
	printf("long double型:");
	printf(" %ldByte %ldbit", sizeof(long double), sizeof(long double) * 8);
	printf(" (%Lg〜%Lg)\n", LDBL_MIN, LDBL_MAX);
}

// 参考 (ASCIIコード）
- (IBAction)procRef03:(id)sender {

    for (char i = 32; i <= 126; i++) {
        NSLog(@"%d,%c", i, i); // %c:キャラ記号
    }
}

@end
