// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

/*
 * 色をつけるだけのシェーダ
 *
 */

Shader "Custom/Colored" {
	Properties {
		_Color("Color", Color) = (0, 0, 0, 1)
	}
	SubShader {
		ZWrite On ZTest LEqual Fog { Mode Off }
		Pass {
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma glsl_no_auto_normalization
			#pragma fragmentoption ARB_precision_hint_fastest
			
			struct appdata {
				float4 vertex : POSITION;
			};
			struct v2f {
				float4 pos : SV_POSITION;
			};
			v2f vert(appdata v) {
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);
				return o;
			}
			
			uniform fixed4 _Color;
			
			fixed4 frag(v2f i) : COLOR {
				return _Color;
			}
			ENDCG
		}
	}
	FallBack off
}
