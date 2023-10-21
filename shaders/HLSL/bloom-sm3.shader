<?xml version="1.0" encoding="UTF-8"?>
<shader language="HLSL">
  <source><![CDATA[
  //These variables will get set automatically
texture rubyTexture;

float4 BloomSettings;

sampler s0 = sampler_state { texture = <rubyTexture>; };

float Luminance = 0.08f;
static const float fMiddleGray = 0.18f;
static const float fWhiteCutoff = 0.8f;

#define NUM 13

float2 PixelOffsets[NUM] =
{
	{ -0.006, -0.006 },
	{ -0.005, -0.005 },
	{ -0.004, -0.004 },
	{ -0.003, -0.003 },
	{ -0.002, -0.002 },
	{ -0.001, -0.001 },
	{  0.000,  0.000 },
	{  0.001,  0.001 },
	{  0.002,  0.002 },	
	{  0.003,  0.003 },
	{  0.004,  0.004 },
	{  0.005,  0.005 },
	{  0.006,  0.006 },
};

static const float BlurWeights[NUM] =
{
	0.002216,
	0.008764,
	0.026995,
	0.064759,
	0.120985,
	0.176033,
	0.199471,
	0.176033,
	0.120985,
	0.064759,
	0.026995,
	0.008764,
	0.002216,
};

float4 BloomPass( in float2 Tex : TEXCOORD0 ) : COLOR0
{
	BloomSettings.x = 1;
	BloomSettings.y = 0.3;


	float3 pixel;
	float3 Color = 0;
	
	for(int i = 0; i < NUM; i++)
	{
		pixel = tex2D(s0,Tex + PixelOffsets[i] * 5.0f)+BloomSettings.y;
		
		pixel *= fMiddleGray / (Luminance + 0.001f);
		pixel *= (1.0f + (pixel / (fWhiteCutoff * fWhiteCutoff)));
		pixel -= 5.0f;
		
		pixel = max(pixel,0.0f);
		pixel /= (10.0f + pixel);
		
		Color += pixel * BlurWeights[i];
	}
	
	Color *= BloomSettings.x;
	
	return float4(Color,1.0) + tex2D(s0,Tex);
}




Technique T0
{
    pass p0 { PixelShader = compile ps_3_0 BloomPass(); }
}
  ]]></source>
</shader>