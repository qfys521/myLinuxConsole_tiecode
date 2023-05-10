包名 结绳.Linux

//提供控制台操作功能
类 控制台
	
	//输出文本内容到控制台
	@静态
	@嵌入式代码
	@引入头文件("<iostream>")
	方法 输出(内容 为 变体型)
		code std::cout << #内容
	结束 方法
	
	//输出文本内容到控制台并换行
	@静态
	@嵌入式代码
	@引入头文件("<iostream>")
	方法 输出行(内容 为 文本)
		code std::cout << #内容 << std::endl
	结束 方法
	
	//输出文本内容到控制台并换行
	@静态
	@嵌入式代码
	方法 格式化输出(格式 : 文本, 内容 为 变体型)
		code printf(#格式, #内容)
	结束 方法
	
	@静态
	@嵌入式代码
	@引入头文件("<iostream>")
	方法 读入(欲赋值变量 为 变体型)
		code std::cin >> #欲赋值变量
	结束 方法
结束 类

//提供基本的类型转换功能
@全局类
@引入头文件("<sstream>")
类 类型转换
code public:
code 	static TieString Num2Str(TieInt num) {
code 		return std::to_string(num);
code 	}
code 	static TieInt Str2Num(TieString data) {
code 		std::istringstream is(data);
code 		TieInt r;
code 		is >> r;
code 		return r;
code 	}

	//将整数值转换为文本类型值
	@静态
	@嵌入式代码
	方法 文本到整数(欲转换文本 为 文本) 为 整数
		@code
		#<类型转换>::Str2Num(#欲转换文本)
		@end
	结束 方法
	
	//将整数值转换为文本类型值
	@静态
	@嵌入式代码
	方法 整数到文本(欲转换整数 为 整数) 为 文本
		@code
		#<类型转换>::Num2Str(#欲转换整数)
		@end
	结束 方法
结束 类

@全局类
类 数组操作
code template <class T>
code static int GetArrayLength(T &array) {
code     const int len = sizeof(array) / sizeof(array[0]);
code     char a[len];
code     if (typeid(array) == typeid(a))
code         return len - 1;
code     else
code         return len;
code }

	@静态
	@嵌入式代码
	方法 取数组长度(数组 : 变体型) : 整数
		code #<数组操作>::GetArrayLength(#数组)
	结束 方法
结束 类