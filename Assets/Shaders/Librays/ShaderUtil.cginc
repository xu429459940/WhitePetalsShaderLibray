﻿#ifndef SHADER_UTIL_INCLUDE
#define SHADER_UTIL_INCLUDE

half3 ACESToneMapping(half3 color, half adapted_lum)
{
	const half A = 2.51;
	const half B = 0.03;
	const half C = 2.43;
	const half D = 0.59;
	const half E = 0.14;

	color *= adapted_lum;
	return (color * (A * color + B)) / (color * (C * color + D) + E);
}

#endif