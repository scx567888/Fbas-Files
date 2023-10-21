<?xml version="1.0" encoding="UTF-8"?>
<shader language="HLSL">
  <source><![CDATA[
  //These variables will get set automatically
texture rubyTexture;

sampler s0 = sampler_state { texture = <rubyTexture>; };

float4 EmbossPass( in float2 Tex : TEXCOORD0 ) : COLOR0
{
	float4 Color = tex2D( s0, Tex );
        Color.a = 1.0f;
        Color.rgb = 0.5f;
        Color -= tex2D( s0, Tex.xy-0.001)*2.0f;
        Color += tex2D( s0, Tex.xy+0.001)*2.0f;
        Color.rgb = (Color.r+Color.g+Color.b)/3.0f;
	return Color;
}




Technique T0
{
    pass p0 { PixelShader = compile ps_2_0 EmbossPass(); }
}
  ]]></source>
</shader>