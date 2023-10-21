<?xml version="1.0" encoding="UTF-8"?>
<!--
    Copyright (c) 2011, 2012 Fes

    Permission to use, copy, modify, and/or distribute this software for any
    purpose with or without fee is hereby granted, provided that the above
    copyright notice and this permission notice appear in all copies.

    THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
    WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
    MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
    SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
    WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
    ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR
    IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

    (Fes gave their permission to have this shader distributed under this
    licence in this forum post:

        http://board.byuu.org/styles/serenity/imageset/icon_topic_latest.gif

    )

-->
<shader language="HLSL">
  <source>
    <![CDATA[
      float2 rubyTextureSize;

      texture rubyTexture;
      sampler rubySampler = sampler_state
      {
         Texture   = <rubyTexture>;
         MagFilter = POINT;
         AddressU  = CLAMP;
         AddressV  = CLAMP;
      };

      struct VsOutput
      {
         float4 Position : POSITION;
         float2 TexCoord : TEXCOORD0;
      };

      VsOutput Vs(float4 position : POSITION, float2 texCoord : TEXCOORD0)
      {
         VsOutput output;

         output.Position = position;
         output.TexCoord = texCoord;

         return output;
      }

      float4 Ps(float2 texCoord : TEXCOORD0) : COLOR
      {
        float2 texelSize = 1.0 / rubyTextureSize;
         float2 range = float2(abs(ddx(texCoord.x)), abs(ddy(texCoord.y)));
         range = range / 2.0 * 0.999;

         float left   = texCoord.x - range.x;
         float top    = texCoord.y - range.y;
         float right  = texCoord.x + range.x;
         float bottom = texCoord.y + range.y;

         float4 topLeftColor     = tex2D(rubySampler, float2(left,  top));
         float4 bottomRightColor = tex2D(rubySampler, float2(right, bottom));
         float4 bottomLeftColor  = tex2D(rubySampler, float2(left,  bottom));
         float4 topRightColor    = tex2D(rubySampler, float2(right, top));

         float2 border = clamp(round(texCoord / texelSize) * texelSize, float2(left, top), float2(right, bottom));

         float totalArea = 4.0 * range.x * range.y;

         float4 averageColor;
         averageColor  = ((border.x - left)  * (border.y - top)    / totalArea) * topLeftColor;
         averageColor += ((right - border.x) * (bottom - border.y) / totalArea) * bottomRightColor;
         averageColor += ((border.x - left)  * (bottom - border.y) / totalArea) * bottomLeftColor;
         averageColor += ((right - border.x) * (border.y - top)    / totalArea) * topRightColor;

         return averageColor;
      }


      technique Pixellate
      {
         pass P0
         {
            VertexShader = compile vs_2_a Vs();
            PixelShader  = compile ps_2_a Ps();
         }
      }
  ]]></source>
</shader>
