Shader "Custom/StencilShader"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("Albedo (RGB)", 2D) = "white" {}
        _Glossiness ("Smoothness", Range(0,1)) = 0.5
        _Metallic ("Metallic", Range(0,1)) = 0.0
    }
    SubShader
        {
            Tags { "RenderType" = "Opaque" }
            LOD 200

            Pass
            {
                Blend Zero One
                ColorMask 0
                Zwrite Off

                Stencil
                {
                    Ref 2
                    Comp Always
                    Pass Replace
                }
            }
        }
}
