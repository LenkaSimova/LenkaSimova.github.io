GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex       �      &�y���ڞu;>��.p   res://Icon.tscn 0      �      AEP7�ƩB|���
�s   res://ScoreLabel.gd.remap   �#      %       ��/�U�8gY��yՔ   res://ScoreLabel.gdc       Z      ����	6��b�>�iP#�   res://UI.tscn   �      �      �I�GxGƤQ�LI7��   res://default_env.tres  �	      �       um�`�N��<*ỳ�8   res://dish.gd.remap  $             ��D&�����KCс5F   res://dish.gdc  0
      w      o5�ݺCi����J��   res://dish.tscn �      K      =������d\n��O   res://game.gd.remap @$             &=F�k'b�Зz��ع   res://game.gdc         ,      !/���H"�?6q���V�   res://game.tscn 0      �      y�O���T����M� ҉   res://icon.png  �$      �      G1?��z�c��vN��   res://icon.png.import   �      �      ��fe��6�B��^ U�   res://player.gd.remap   `$      !       �ؿk�5s0n��;P   res://player.gdc�      _      ���sac�a�c?S��   res://project.binary�1      o
      ���+9N#%���5p�j�    [gd_scene load_steps=4 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://player.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 28, 27 )

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( -1, 0 )
shape = SubResource( 1 )
          GDSC             +      ����ڶ��   �����϶�   �����������������������Ҷ���   ��������Ӷ��   ���¶���                                                 	   	   
   
                                                         "      )      3YYYYYYYYY0�  PQV�  -YYYYYYYY0�  P�  V�  QV�  �  �>  P�  QY`      [gd_scene load_steps=2 format=2]

[ext_resource path="res://ScoreLabel.gd" type="Script" id=1]

[node name="CanvasLayer" type="CanvasLayer"]

[node name="UI" type="Control" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ScoreLabel" type="Label" parent="UI"]
margin_left = 55.0
margin_top = 35.0
margin_right = 65.0
margin_bottom = 49.0
rect_scale = Vector2( 5, 5 )
text = "0"
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
       [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC            U      ���ӄ�   ����Ҷ��   �����϶�   �������Ŷ���   ����׶��   �������ض���   ϶��   ��������������������Ҷ��   ���϶���   ���Ӷ���   ���������Ӷ�   ����Ӷ��   ���������Ӷ�   �        Player                                                            	      
                                       !      )      *      +      2      :      <      =      H      O      S      3YYYYY;�  YYYYY0�  PQV�  -YYYY0�  P�  QV�  �  T�  �  �  YYY0�  P�  QV�  &�  T�	  �  V�  .�  �  �  T�
  P�  T�  �  Q�  �?  P�  T�  Q�  �  PQY`         [gd_scene load_steps=4 format=2]

[ext_resource path="res://dish.gd" type="Script" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 27.5, 26.25 )

[node name="Dish" type="Area2D"]
script = ExtResource( 1 )

[node name="Icon" type="Sprite" parent="."]
position = Vector2( 7, -4 )
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 8, -7 )
shape = SubResource( 1 )

[connection signal="body_entered" from="." to="." method="_on_Dish_body_entered"]
     GDSC   
         O      ���ӄ�   ���������Ӷ�   �����϶�   �������Ŷ���   ����׶��   ����������޶   ���޶���   �������Ӷ���   �������ض���   ��������Ҷ��      res://dish.tscn                 �                                                      	      
                                             %      '      (      .      7      H      M      3YYY;�  ?PQYYYYYYYY0�  PQV�  -YYYY0�  P�  QV�  -�  Y0�  PQV�  ;�  �  T�  PQ�  �  T�  �  P�(  P�  R�  QR�  Q�  �	  P�  QY`    [gd_scene load_steps=6 format=2]

[ext_resource path="res://Icon.tscn" type="PackedScene" id=1]
[ext_resource path="res://game.gd" type="Script" id=3]
[ext_resource path="res://UI.tscn" type="PackedScene" id=4]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 60.0115, 299.75 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 528.756, 41.875 )

[node name="Game" type="Node2D"]
script = ExtResource( 3 )

[node name="UI" parent="." instance=ExtResource( 4 )]

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 632, 68 )

[node name="StaticBody2D" type="StaticBody2D" parent="."]
position = Vector2( 526, 290 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D"]
position = Vector2( 570, 11.25 )
shape = SubResource( 1 )

[node name="CollisionShape2D2" type="CollisionShape2D" parent="StaticBody2D"]
position = Vector2( -592, 7 )
shape = SubResource( 1 )

[node name="CollisionShape2D3" type="CollisionShape2D" parent="StaticBody2D"]
position = Vector2( 0, 353 )
shape = SubResource( 2 )

[node name="CollisionShape2D4" type="CollisionShape2D" parent="StaticBody2D"]
position = Vector2( -23, -338 )
shape = SubResource( 2 )

[node name="Timer" type="Timer" parent="."]
wait_time = 0.1
autostart = true

[connection signal="score_changed" from="Player" to="UI/UI/ScoreLabel" method="_on_Player_score_changed"]
[connection signal="timeout" from="Timer" to="." method="create_dish"]

[editable path="UI"]
  GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDSC      
   $   �      ������������τ�   ������������Ҷ��   ��������Ӷ��   ���������Ӷ�   ����Ӷ��   ����������ڶ   ������������Ӷ��   �������϶���   ���������Ӷ�   ����Ҷ��   �����϶�   ���������������Ŷ���   ����׶��   ����¶��   ����¶��   �������Ŷ���   ζ��   ϶��   ���������������������Ҷ�   ����������Ķ   �������������Ӷ�      score_changed      �            �     ,        Hello world!   	   move_left      
   move_right        jump                               
                           	      
   #      -      2      3      8      =      >      ?      @      A      B      C      I      N      O      P      Q      X      e      m      u      �       �   !   �   "   �   #   �   $   3YYYB�  P�  QYY0�  P�  QV�  �  �  �  �  PR�  QYY;�  �  Y;�  �  P�  R�  QY;�  �  YY;�	  �  Y;�  �  YYYYYYY0�
  PQV�  �?  P�  QYYYY0�  P�  QV�  ;�  V�  T�  P�  R�  Q�  �  T�  �  �	  �  �  T�  �  �  �  &�  T�  P�  Q�  PQV�  �  T�  �  �  �  �  P�  R�  P�  R�	  QQ�  YY` [remap]

path="res://ScoreLabel.gdc"
           [remap]

path="res://dish.gdc"
 [remap]

path="res://game.gdc"
 [remap]

path="res://player.gdc"
               �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG
      application/config/name         New Game Project   application/run/main_scene         res://game.tscn    application/config/icon         res://icon.png     input/move_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      W      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode           unicode           echo          script         input/move_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      S      unicode           echo          script         input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      A      unicode           echo          script         input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      D      unicode           echo          script      
   input/jump�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      W      unicode           echo          script      )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres   