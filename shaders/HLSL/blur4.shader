<?xml version="1.0" encoding="UTF-8"?>
<shader language="HLSL">
  <source><![CDATA[
  //These variables will get set automatically
texture rubyTexture;
float rubyTimer;
float4 BlurSettings;

sampler s0 = sampler_state { texture = <rubyTexture>; };


float4 BlurPass( in float2 Tex : TEXCOORD0 ) : COLOR0
{
	BlurSettings.x = 2;
	BlurSettings.y = 7;
	BlurSettings.z = 0.1;
	BlurSettings.w = 0.4;

	float4 Color;
	
	Tex.xy -= 0.5;
	Tex.xy *= 1-(sin(rubyTimer*BlurSettings.z)*BlurSettings.w+BlurSettings.w)*0.5;
	Tex.xy += 0.5;
	
	Color = tex2D( s0, Tex.xy);
	Color += tex2D( s0, Tex.xy+0.001*BlurSettings.x);
	Color += tex2D( s0, Tex.xy+0.003*BlurSettings.x);
	Color += tex2D( s0, Tex.xy+0.005*BlurSettings.x);
	Color += tex2D( s0, Tex.xy+0.007*BlurSettings.x);
	Color += tex2D( s0, Tex.xy+0.009*BlurSettings.x);
	Color += tex2D( s0, Tex.xy+0.011*BlurSettings.x);

	Color += tex2D( s0, Tex.xy-0.001*BlurSettings.x);
	Color += tex2D( s0, Tex.xy-0.003*BlurSettings.x);
	Color += tex2D( s0, Tex.xy-0.005*BlurSettings.x);
	Color += tex2D( s0, Tex.xy-0.007*BlurSettings.x);
	Color += tex2D( s0, Tex.xy-0.009*BlurSettings.x);
	Color += tex2D( s0, Tex.xy-0.011*BlurSettings.x);
	Color.rgb = (Color.r+Color.g+Color.b)/3.0f;

	Color /= BlurSettings.y;
	return Color;
}




Technique T0
{
    pass p0 { PixelShader = compile ps_2_0 BlurPass(); }
}
  ]]></source>
</shader>