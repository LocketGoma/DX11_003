cbuffer ModelViewProjectionConstantBuffer : register(b0)
{
	matrix model;
	matrix view;
	matrix projection;
	//matrix worldmatrix;
	float4 position;
};

struct VertexShaderInput
{
	float3 pos : POSITION;
	float3 color : COLOR0;
};

struct PixelShaderInput
{
	float4 pos : SV_POSITION;
	float3 color : COLOR0;
};

PixelShaderInput main(VertexShaderInput input)
{
	PixelShaderInput output;
	float4 pos = float4(input.pos, 1.0f);

	//pos.x += worldmatrix._41;
	//pos.y += worldmatrix._42;
	//pos.z += worldmatrix._43;

	pos.x += position.x;
	pos.y += position.y;
	pos.z += position.z;


	pos = mul(pos, model);
	pos = mul(pos, view);
	pos = mul(pos, projection);
	output.pos = pos;

	output.color = input.color;

	return output;
}
