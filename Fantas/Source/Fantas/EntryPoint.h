#pragma once

//Core log macros
#define FT_CORE_TRACE(...)	::Fantas::Log::GetCoreLogger()->trace(__VA_ARGS__)
#define FT_CORE_INFO(...)	::Fantas::Log::GetCoreLogger()->info(__VA_ARGS__)
#define FT_CORE_WARN(...)	::Fantas::Log::GetCoreLogger()->warn(__VA_ARGS__)
#define FT_CORE_ERROR(...)	::Fantas::Log::GetCoreLogger()->error(__VA_ARGS__)
#define FT_CORE_FATAL(...)	::Fantas::Log::GetCoreLogger()->fatal(__VA_ARGS__)

//Client log macros
#define FT_TRACE(...)	::Fantas::Log::GetClientLogger()->trace(__VA_ARGS__)
#define FT_INFO(...)	::Fantas::Log::GetClientLogger()->info(__VA_ARGS__)
#define FT_WARN(...)	::Fantas::Log::GetClientLogger()->warn(__VA_ARGS__)
#define FT_ERROR(...)	::Fantas::Log::GetClientLogger()->error(__VA_ARGS__)
#define FT_FATAL(...)	::Fantas::Log::GetClientLogger()->fatal(__VA_ARGS__)

#ifdef FT_PLATFORM_WINDOWS
extern Fantas::Application* Fantas::CreateApplication();
int main(int argc, char** argv)
{
	Fantas::Log::Init();
	FT_CORE_WARN("Initialized Log!");
	FT_INFO("Hello World!");
	int a = 5;
	FT_INFO("HELLO Var={0}", a);
	auto app = Fantas::CreateApplication();
	app->Run();
	delete app;
}
#endif