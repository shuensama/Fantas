#pragma once

#ifdef FT_PLATFORM_WINDOWS
	#ifdef FT_BUILD_DLL
		#define FANTAS_API __declspec(dllexport)
	#else
		#define	FANTAS_API __declspec(dllimport)
	#endif // FT_BUILD_DLL
#endif // FT_PLATFORM_WINDOWS


#define BIT(x) (1 << x)