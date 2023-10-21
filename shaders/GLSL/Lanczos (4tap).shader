<?xml version="1.0" encoding="UTF-8"?>
<!--
Lanczos (4tap) scaling

    Copyright (C) 2010 Team XBMC
    http://www.xbmc.org
    Copyright (C) 2011 Stefanos A.
    http://www.opentk.com
    Copyright (C) 2011 BlackStar and DOLLS

This Program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2, or (at your option)
any later version.

This Program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

-->
<!--
    From these forum posts:

        http://board.byuu.org/viewtopic.php?p=33597#p33597
        http://board.byuu.org/viewtopic.php?p=34426#p34426
-->
<shader language="GLSL">
    <vertex><![CDATA[
        void main()
        {
            gl_TexCoord[0] = gl_MultiTexCoord0;         //center
            gl_Position = ftransform();
        }
    ]]></vertex>

    <fragment><![CDATA[
	#version 120
        #define FIX(c) max(abs(c), 1e-5);

        uniform sampler2D rubyTexture;
        uniform vec2 rubyTextureSize;

        const float PI = 3.1415926535897932384626433832795;

        vec4 weight4(float x)
        {
            const float radius = 2.0;
            vec4 sample = FIX(PI * vec4(1.0 + x, x, 1.0 - x, 2.0 - x));

            // Lanczos2. Note: we normalize below, so no point in multiplying by radius.
            vec4 ret = /*radius **/ sin(sample) * sin(sample / radius) / (sample * sample);

            // Normalize
            return ret / dot(ret, vec4(1.0));
        }

        vec3 pixel(float xpos, float ypos)
        {
            return texture2D(rubyTexture, vec2(xpos, ypos)).rgb;
        }

        vec3 line(float ypos, vec4 xpos, vec4 linetaps)
        {
            return mat4x3(
                pixel(xpos.x, ypos),
                pixel(xpos.y, ypos),
                pixel(xpos.z, ypos),
                pixel(xpos.w, ypos)) * linetaps;
        }

        void main()
        {
            vec2 stepxy = 1.0 / rubyTextureSize.xy;
            vec2 pos = gl_TexCoord[0].xy + stepxy * 0.5;
            vec2 f = fract(pos / stepxy);

            vec2 xystart = (-1.5 - f) * stepxy + pos;
            vec4 xpos = vec4(
                xystart.x,
                xystart.x + stepxy.x,
                xystart.x + stepxy.x * 2.0,
                xystart.x + stepxy.x * 3.0);

            vec4 linetaps   = weight4(f.x);
            vec4 columntaps = weight4(f.y);

            gl_FragColor.rgb = mat4x3(
                line(xystart.y                 , xpos, linetaps),
                line(xystart.y + stepxy.y      , xpos, linetaps),
                line(xystart.y + stepxy.y * 2.0, xpos, linetaps),
                line(xystart.y + stepxy.y * 3.0, xpos, linetaps)) * columntaps;

            gl_FragColor.a = 1.0;
        }
    ]]></fragment>
</shader>
