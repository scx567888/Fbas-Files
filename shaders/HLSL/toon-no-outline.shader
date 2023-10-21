<?xml version="1.0" encoding="UTF-8"?>
<shader language="HLSL">
  <source><![CDATA[
  //These variables will get set automatically
texture rubyTexture;

float4 ToonConfig;

sampler s0 = sampler_state { texture = <rubyTexture>; };


float4 ToonPass( in float2 Tex : TEXCOORD0 ) : COLOR0
{ 
        ToonConfig.xyz = 4; //RGB colours
	half4 Color = tex2D( s0, Tex.xy );
	Color.r = round(Color.r*ToonConfig.r)/ToonConfig.r;
	Color.g = round(Color.g*ToonConfig.g)/ToonConfig.g;
	Color.b = round(Color.b*ToonConfig.b)/ToonConfig.b;
	return Color;
}




Technique T0
{
    pass p0 { PixelShader = compile ps_2_0 ToonPass(); }
}
  ]]></source>
</shader>