uniform mat4 uMVPMatrix; //�ܱ任����
uniform mat4 uMMatrix; //�任����

attribute vec3 aPosition;  //����λ��
attribute vec4 aColor;    //������ɫ

attribute vec2 aTexCoor;    //������������
attribute vec3 aNormal;    //��Ӧ�� ������

varying vec2 vTextureCoord; //���ڴ��ݸ�ƬԪ��ɫ���ı���

varying vec4 vColor;  //���ڴ��ݸ�ƬԪ��ɫ���ı���
varying vec3 vPosition;//���ڴ��ݸ�ƬԪ��ɫ���Ķ���λ��


void main()  {                            		
   gl_Position = uMVPMatrix * vec4(aPosition,1); //�����ܱ任�������˴λ��ƴ˶���λ��
   vColor = aColor;//�����յ���ɫ���ݸ�ƬԪ��ɫ��
   vPosition=(uMMatrix * vec4(aPosition,1)).xyz;
   
   vTextureCoord = aTexCoor;
}                      