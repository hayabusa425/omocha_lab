Shader "Custom/sample" {
	SubShader {
		Tags { "Queue"="Transparent" }
		LOD 200
		
		CGPROGRAM
		#pragma surface surf Standard alpha:fade
		#pragma target 3.0

		struct Input {
			float3 worldNormal;
      			float3 viewDir;
		};

		void surf (Input IN, inout SurfaceOutputStandard o) {
			o.Albedo = fixed4(1, 1, 1, 1);

            // dotはベクトルの内積(法線ベクトルと視線ベクトルの角度)
			// 直行するときは0，平行のときは1または-1
            float alpha = 1 - (abs(dot(IN.viewDir, IN.worldNormal)));
     		
            float weighting_factor = 1.5;

            o.Alpha =  alpha * weighting_factor;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
