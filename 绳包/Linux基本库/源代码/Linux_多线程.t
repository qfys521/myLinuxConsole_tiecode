包名 结绳.Linux

@引入头文件("<thread>")
类 线程
	code private: std::thread t;
	方法 启动()
		@code
		this->t = std::thread(std::bind(&#<线程>::OnStart, this));
		t.detach();
		@end
	结束 方法
	
	@输出名("OnStart")
	定义事件 被启动()
结束 类