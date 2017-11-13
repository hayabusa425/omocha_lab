Shader "Custom/sample" {
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		#pragma surface surf Standard fullforwardshadows
		#pragma target 3.0

		struct Input {
            // ここが空だとコンパイルできないため，必要ないけど一旦書いとく
			float2 uv_MainTex;
		};

		void surf (Input IN, inout SurfaceOutputStandard o) {
			o.Albedo = fixed4(1.0f, 1.0f, 1.0f, 1);
		}
		ENDCG
	}
	FallBack "Diffuse"
}
