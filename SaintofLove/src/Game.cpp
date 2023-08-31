#include <Fantas.h>

class SaintofLove : public Fantas::Application
{
public:
	SaintofLove()
	{

	}
	~SaintofLove()
	{

	}
};

Fantas::Application* Fantas::CreateApplication()
{
	return new SaintofLove();
}