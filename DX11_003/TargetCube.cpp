#include "pch.h"
#include "TargetCube.h"

#include "..\Common\DirectXHelper.h"

using namespace DX11_003;

CTargetCube::CTargetCube()
{
    ZeroMemory(&m_constantBufferData, sizeof(ModelViewProjectionConstantBuffer));
}

CTargetCube::~CTargetCube()
{
}

DX11_003::ModelViewProjectionConstantBuffer CTargetCube::GetCube()
{
    return m_constantBufferData;
}
