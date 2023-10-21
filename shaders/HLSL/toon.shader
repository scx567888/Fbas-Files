<?xml version="1.0" encoding="UTF-8"?>
<shader language="HLSL">
  <source><![CDATA[
  //These variables will get set automatically
texture rubyTexture;

float4 ToonConfig;
float threshold = 0.001;

sampler s0 = sampler_state { texture = <rubyTexture>; };


float4 ToonPass( in float2 Tex : TEXCOORD0 ) : COLOR0
{ 
        ToonConfig.xyz = 4; //RGB colours

	float4 Color = tex2D( s0, Tex.xy );
	Color.r = round(Color.r*ToonConfig.r)/ToonConfig.r;
	Color.g = round(Color.g*ToonConfig.g)/ToonConfig.g;
	Color.b = round(Color.b*ToonConfig.b)/ToonConfig.b;
	const int NUM = 9;
	const float2 c[NUM] =
	{
		float2(-0.0078125, 0.0078125), 
		float2( 0.00 ,     0.0078125),
		float2( 0.0078125, 0.0078125),
		float2(-0.0078125, 0.00 ),
		float2( 0.0,       0.0),
		float2( 0.0078125, 0.007 ),
		float2(-0.0078125,-0.0078125),
		float2( 0.00 ,    -0.0078125),
		float2( 0.0078125,-0.0078125),
	};	

	int i;
	float3 col[NUM];
	for (i=0; i < NUM; i++)
	{
		col[i] = tex2D(s0, Tex.xy + 0.2*c[i]);
	}
	
	float3 rgb2lum = float3(0.30, 0.59, 0.11);
	float lum[NUM];
	for (i = 0; i < NUM; i++)
	{
		lum[i] = dot(col[i].xyz, rgb2lum);
	}
	float x = lum[2]+  lum[8]+2*lum[5]-lum[0]-2*lum[3]-lum[6];
	float y = lum[6]+2*lum[7]+  lum[8]-lum[0]-2*lum[1]-lum[2];
	float edge =(x*x + y*y < threshold)? 1.0:0.0;
	Color.rgb *= edge;
	return Color;
}




Technique T0
{
    pass p0 { PixelShader = compile ps_2_0 ToonPass(); }
}
  ]]></source>
</shader>