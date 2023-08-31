#pragma once

#ifdef FT_PLATFORM_WINDOWS
extern Fantas::Application* Fantas::CreateApplication();
int main(int argc, char** argv)
{
	std::cout << "hello world" << std::endl;
	auto app = Fantas::CreateApplication();
	app->Run();
	delete app;
}
#endif