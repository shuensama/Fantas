#pragma once
#include "Core.h"
namespace Fantas 
{
	class FANTAS_API Application
	{
	public:
		Application();

		virtual ~Application();

		void Run();

	};

	//客户端中定义
	Application* CreateApplication();
}
