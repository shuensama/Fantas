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

	//�ͻ����ж���
	Application* CreateApplication();
}
