// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33278,y:32860,varname:node_3138,prsc:2|emission-8412-OUT;n:type:ShaderForge.SFN_TexCoord,id:5170,x:32233,y:32818,varname:node_5170,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector2,id:4845,x:32233,y:32985,varname:node_4845,prsc:2,v1:12.9898,v2:78.233;n:type:ShaderForge.SFN_Dot,id:1176,x:32474,y:32927,varname:node_1176,prsc:2,dt:0|A-5170-UVOUT,B-4845-OUT;n:type:ShaderForge.SFN_Sin,id:477,x:32667,y:32927,varname:node_477,prsc:2|IN-1176-OUT;n:type:ShaderForge.SFN_Vector1,id:8522,x:32654,y:33078,varname:node_8522,prsc:2,v1:43758.55;n:type:ShaderForge.SFN_Multiply,id:1144,x:32858,y:32963,varname:node_1144,prsc:2|A-477-OUT,B-8522-OUT;n:type:ShaderForge.SFN_Frac,id:8412,x:33035,y:32963,varname:node_8412,prsc:2|IN-1144-OUT;pass:END;sub:END;*/

Shader "Shader Forge/RandomNoise" {
    Properties {
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float node_8412 = frac((sin(dot(i.uv0,float2(12.9898,78.233)))*43758.55));
                float3 emissive = float3(node_8412,node_8412,node_8412);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
