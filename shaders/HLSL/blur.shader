<?xml version="1.0" encoding="UTF-8"?>
<shader language="HLSL">
  <source><![CDATA[
  //These variables will get set automatically
texture rubyTexture;


sampler s0 = sampler_state { texture = <rubyTexture>; };


float4 NormalColourPass( in float2 Tex : TEXCOORD0 ) : COLOR0
{
	float4 color = tex2D( s0, Tex );
	color.a = 1;
	return color;
}

float4 BlurPass( in float2 Tex : TEXCOORD0 ) : COLOR0
{
	float4 Color = tex2D( s0, Tex.xy );
        Color += tex2D( s0, Tex.xy+0.001);
        Color += tex2D( s0, Tex.xy+0.002);
        Color += tex2D( s0, Tex.xy+0.003);
        Color = Color / 4;
	return Color;
}




Technique T0
{
    pass p0 { PixelShader = compile ps_2_0 BlurPass(); }
}
  ]]></source>
</shader>