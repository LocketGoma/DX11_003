#pragma once

#include "Content/ShaderStructures.h"

using namespace DirectX;
using namespace Windows::Foundation;

class CTargetCube
{
public :
	CTargetCube();
	~CTargetCube();

public :
	HRESULT Make_Cube();


	DX11_003::ModelViewProjectionConstantBuffer GetCube();



private:
	void free();


	DX11_003::ModelViewProjectionConstantBuffer	m_constantBufferData;



};

