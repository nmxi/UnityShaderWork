Shader "Unlit/BrownMotion"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_Strength ("Strength", Range(1, 50)) = 1
		//[MaterialToggle] _IsShowGrid ("Is show Grid", int) = 0
	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				UNITY_FOG_COORDS(1)
				float4 vertex : SV_POSITION;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;

			half _Strength;
			//int _IsShowGrid;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				float2 st = i.uv * _Strength;
				float x = st.x;

				float amplitude = 7.;
				float frequency = .3;
				float y = sin(x * frequency);
				float t = 0.01 * (_Time.w * 130.0);
				y += sin(x*frequency*2.1 + t) * 4.5;
				y += sin(x*frequency*1.72 + t * 1.121) * 4.0;
				y += sin(x*frequency*2.221 + t * 0.437) * 5.0;
				y += sin(x*frequency*3.1122+ t * 4.269) * 2.5;
				y *= amplitude* 0.06;

				y = y + 10;
				fixed4 c = (abs(st.y - y) < .05) ? fixed4(1, 1, 1, 1) : fixed4(0, 0, 0, 1);
				//c.r = (_IsShowGrid > 0.5) ? c.r + (step(.9, st.x / 20) + step(.9, st.y / 20)) : c;
				return c;
			}
			ENDCG
		}
	}
}
