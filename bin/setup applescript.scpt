FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ~xThis script will:1) Create a username / Library / Scripts folder (if none exists)2) Create a username / Library / Scripts / iTunes folder (if none exists)3) Create a username / Library / Scripts / Applications folder (if none exists)4) Create an alias to username / Library / Scripts / iTunes folder in username / Library / Scripts / Applications (if none exists)5) Create "tasking" sub-folders in username / Library / Scripts / iTunes folder (if none exist)Afterwards, place your collection of iTunes AppleScripts in the username / Library / Scripts / iTunes folder, distributingamong the tasking sub-folders if you wish.     � 	 	�  T h i s   s c r i p t   w i l l :  1 )   C r e a t e   a   u s e r n a m e   /   L i b r a r y   /   S c r i p t s   f o l d e r   ( i f   n o n e   e x i s t s )  2 )   C r e a t e   a   u s e r n a m e   /   L i b r a r y   /   S c r i p t s   /   i T u n e s   f o l d e r   ( i f   n o n e   e x i s t s )  3 )   C r e a t e   a   u s e r n a m e   /   L i b r a r y   /   S c r i p t s   /   A p p l i c a t i o n s   f o l d e r   ( i f   n o n e   e x i s t s )  4 )   C r e a t e   a n   a l i a s   t o   u s e r n a m e   /   L i b r a r y   /   S c r i p t s   /   i T u n e s   f o l d e r   i n   u s e r n a m e   /   L i b r a r y   /   S c r i p t s   /   A p p l i c a t i o n s   ( i f   n o n e   e x i s t s )  5 )   C r e a t e   " t a s k i n g "   s u b - f o l d e r s   i n   u s e r n a m e   /   L i b r a r y   /   S c r i p t s   /   i T u n e s   f o l d e r   ( i f   n o n e   e x i s t )   A f t e r w a r d s ,   p l a c e   y o u r   c o l l e c t i o n   o f   i T u n e s   A p p l e S c r i p t s   i n   t h e   u s e r n a m e   /   L i b r a r y   /   S c r i p t s   /   i T u n e s   f o l d e r ,   d i s t r i b u t i n g  a m o n g   t h e   t a s k i n g   s u b - f o l d e r s   i f   y o u   w i s h .    
  
 l     ��������  ��  ��        j     �� �� 0 new_folders    J            m        �    M a n a g i n g   T r a c k s      m       �   & M a n a g i n g   T r a c k   I n f o      m       �   $ M a n a g i n g   P l a y l i s t s      m       �   $ C o n t r o l l i n g   i T u n e s     !   m     " " � # #  E x p o r t i n g   I n f o !  $ % $ m     & & � ' '  M a n a g i n g   F i l e s %  ( ) ( m     * * � + +  N e t w o r k i n g )  , - , m     . . � / /  I n t e r n e t -  0 1 0 m    	 2 2 � 3 3  i P o d 1  4 5 4 m   	 
 6 6 � 7 7  M i s c e l l a n e o u s 5  8�� 8 m   
  9 9 � : :  W i t h   O t h e r   A p p s��     ; < ; l     ��������  ��  ��   <  = > = l    	 ?���� ? r     	 @ A @ c      B C B l     D���� D I    �� E��
�� .earsffdralis        afdr E m     ��
�� afdrdlib��  ��  ��   C m    ��
�� 
TEXT A o      ���� 0 path_to_local_library  ��  ��   >  F G F l  
  H���� H r   
  I J I c   
  K L K l  
  M���� M I  
 �� N O
�� .earsffdralis        afdr N m   
 ��
�� afdrdlib O �� P��
�� 
from P m    ��
�� fldmfldu��  ��  ��   L m    ��
�� 
TEXT J o      ���� 0 path_to_user_library  ��  ��   G  Q R Q l    S���� S r     T U T b     V W V o    ���� 0 path_to_user_library   W m     X X � Y Y  i T u n e s : S c r i p t s : U o      ���� @0 original_itunes_scripts_folder original_iTunes_scripts_folder��  ��   R  Z [ Z l     ��������  ��  ��   [  \ ] \ l     �� ^ _��   ^ B < check for Scripts folder in user Library, otherwise, create    _ � ` ` x   c h e c k   f o r   S c r i p t s   f o l d e r   i n   u s e r   L i b r a r y ,   o t h e r w i s e ,   c r e a t e ]  a b a l   # c���� c I    #�� d���� 0 check_or_make   d  e f e o    ���� 0 path_to_user_library   f  g�� g m     h h � i i  S c r i p t s��  ��  ��  ��   b  j k j l  $ ) l���� l r   $ ) m n m b   $ ' o p o o   $ %���� 0 path_to_user_library   p m   % & q q � r r  S c r i p t s : n o      ����  0 path_to_user_library_scripts  ��  ��   k  s t s l     ��������  ��  ��   t  u v u l     �� w x��   w I C check for iTunes folder in user Library:Scripts, otherwise, create    x � y y �   c h e c k   f o r   i T u n e s   f o l d e r   i n   u s e r   L i b r a r y : S c r i p t s ,   o t h e r w i s e ,   c r e a t e v  z { z l     �� | }��   | V P this is the folder that we will eventually load scripts and nested folders into    } � ~ ~ �   t h i s   i s   t h e   f o l d e r   t h a t   w e   w i l l   e v e n t u a l l y   l o a d   s c r i p t s   a n d   n e s t e d   f o l d e r s   i n t o {   �  l  * 1 ����� � I   * 1�� ����� 0 check_or_make   �  � � � o   + ,����  0 path_to_user_library_scripts   �  ��� � m   , - � � � � �  i T u n e s��  ��  ��  ��   �  � � � l  2 7 ����� � r   2 7 � � � b   2 5 � � � o   2 3����  0 path_to_user_library_scripts   � m   3 4 � � � � �  i T u n e s : � o      ���� '0 #path_to_user_library_scripts_itunes  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � O I check for Applications folder in user Library:Scripts, otherwise, create    � � � � �   c h e c k   f o r   A p p l i c a t i o n s   f o l d e r   i n   u s e r   L i b r a r y : S c r i p t s ,   o t h e r w i s e ,   c r e a t e �  � � � l  8 A ����� � I   8 A�� ����� 0 check_or_make   �  � � � o   9 :����  0 path_to_user_library_scripts   �  ��� � m   : = � � � � �  A p p l i c a t i o n s��  ��  ��  ��   �  � � � l  B K ����� � r   B K � � � b   B G � � � o   B C����  0 path_to_user_library_scripts   � m   C F � � � � �  A p p l i c a t i o n s : � o      ���� -0 )path_to_user_library_scripts_applications  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � R L check for alias of Scripts:iTunes in Scripts:Applications; otherwise create    � � � � �   c h e c k   f o r   a l i a s   o f   S c r i p t s : i T u n e s   i n   S c r i p t s : A p p l i c a t i o n s ;   o t h e r w i s e   c r e a t e �  � � � l  L � ����� � O   L � � � � Z   R � � ����� � H   R c � � l  R b ����� � I  R b�� ���
�� .coredoexbool        obj  � 4   R ^�� �
�� 
alia � l  V ] ����� � b   V ] � � � o   V Y���� -0 )path_to_user_library_scripts_applications   � m   Y \ � � � � �  i T u n e s��  ��  ��  ��  ��   � I  f ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   j m��
�� 
alia � �� � �
�� 
insh � l  p w ����� � c   p w � � � o   p s���� -0 )path_to_user_library_scripts_applications   � m   s v��
�� 
alis��  ��   � �� ���
�� 
to   � 4   z ��� �
�� 
cfol � o   ~ ���� '0 #path_to_user_library_scripts_itunes  ��  ��  ��   � m   L O � ��                                                                                  MACS  alis    f  Cider HD                   ��PH+    +
Finder.app                                                       ��Ƙ�        ����  	                CoreServices    ��D      ƘK�      +   �   �  /Cider HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    C i d e r   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ; 5 create nested "tasking" folders in Scripts:iTunes...    � � � � j   c r e a t e   n e s t e d   " t a s k i n g "   f o l d e r s   i n   S c r i p t s : i T u n e s . . . �  � � � l  � � ����� � X   � � ��� � � I   � ��� ����� 0 check_or_make   �  � � � o   � ����� '0 #path_to_user_library_scripts_itunes   �  ��� � o   � ����� 0 a_folder_name  ��  ��  �� 0 a_folder_name   � o   � ����� 0 new_folders  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ' ! open the folder in the Finder...    � � � � B   o p e n   t h e   f o l d e r   i n   t h e   F i n d e r . . . �  � � � l  � ����� � O   � � � � k   � � �  � � � I  � ��� ���
�� .aevtodocnull  �    alis � 4   � ��� �
�� 
cfol � o   � ��� '0 #path_to_user_library_scripts_itunes  ��   �  � � � I  � ��~�}�|
�~ .miscactvnull��� ��� obj �}  �|   �  � � � I  � ��{ � �
�{ .sysodlogaskr        TEXT � m   � � � � � � �j P l a c e   y o u r   i T u n e s   s c r i p t s   i n t o   t h e s e   f o l d e r s .   T h e y   t h e n   w i l l   b e   d i s p l a y e d   i n   t h e   S c r i p t   M e n u   i n   t h e   u s e r   s c r i p t s   s e c t i o n   o r ,   i f   i T u n e s   i s   a c t i v e ,   i n   t h e   a p p l i c a t i o n   s c r i p t s   s e c t i o n . � �z � �
�z 
btns � J   � � � �  � � � m   � � � � � � � 4 O p e n   i T u n e s   S c r i p t s   f o l d e r �  ��y � m   � � � � � � �  O K�y   � �x � 
�x 
dflt � m   � ��w�w   �v�u
�v 
disp m   � ��t�t �u   � �s Z   ��r�q >  � � n   � � 1   � ��p
�p 
bhit 1   � ��o
�o 
rslt m   � �		 �

  O K Q   �	�n I  � �m�l
�m .aevtodocnull  �    alis 4   � ��k
�k 
cfol o   � ��j�j @0 original_itunes_scripts_folder original_iTunes_scripts_folder�l   R      �i�h�g
�i .ascrerr ****      � ****�h  �g  �n  �r  �q  �s   � m   � ��                                                                                  MACS  alis    f  Cider HD                   ��PH+    +
Finder.app                                                       ��Ƙ�        ����  	                CoreServices    ��D      ƘK�      +   �   �  /Cider HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    C i d e r   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  l     �f�e�d�f  �e  �d   �c i    I      �b�a�b 0 check_or_make    o      �`�` 0 parent_folder   �_ o      �^�^ 0 folder_name  �_  �a   O     , Z    +�]�\ H     l   �[�Z I   �Y�X
�Y .coredoexbool        obj  4    �W 
�W 
cfol  l   !�V�U! c    "#" b    $%$ b    	&'& o    �T�T 0 parent_folder  ' o    �S�S 0 folder_name  % m   	 
(( �))  :# m    �R
�R 
TEXT�V  �U  �X  �[  �Z   I   '�Q*�P
�Q .sysoexecTEXT���     TEXT* b    #+,+ b    -.- b    /0/ m    11 �22  c d  0 n    343 1    �O
�O 
strq4 n    565 1    �N
�N 
psxp6 l   7�M�L7 o    �K�K 0 parent_folder  �M  �L  . m    88 �99  ;   m k d i r  , n    ":;: 1     "�J
�J 
strq; o     �I�I 0 folder_name  �P  �]  �\   m     <<�                                                                                  MACS  alis    f  Cider HD                   ��PH+    +
Finder.app                                                       ��Ƙ�        ����  	                CoreServices    ��D      ƘK�      +   �   �  /Cider HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    C i d e r   H D  &System/Library/CoreServices/Finder.app  / ��  �c       �H=>?@�H  = �G�F�E�G 0 new_folders  �F 0 check_or_make  
�E .aevtoappnull  �   � ****> �DA�D A       " & * . 2 6 9? �C�B�ABC�@�C 0 check_or_make  �B �?D�? D  �>�=�> 0 parent_folder  �= 0 folder_name  �A  B �<�;�< 0 parent_folder  �; 0 folder_name  C 
<�:(�9�81�7�68�5
�: 
cfol
�9 
TEXT
�8 .coredoexbool        obj 
�7 
psxp
�6 
strq
�5 .sysoexecTEXT���     TEXT�@ -� )*ᠡ%�%�&/j  ��,�,%�%��,%j 	Y hU@ �4E�3�2FG�1
�4 .aevtoappnull  �   � ****E k    HH  =II  FJJ  QKK  aLL  jMM  NN  �OO  �PP  �QQ  �RR  �SS  ��0�0  �3  �2  F �/�/ 0 a_folder_name  G .�.�-�,�+�*�)�( X�' h�& q�% � ��$ � ��# ��" ��!� ���������� �� � ������	��
�. afdrdlib
�- .earsffdralis        afdr
�, 
TEXT�+ 0 path_to_local_library  
�* 
from
�) fldmfldu�( 0 path_to_user_library  �' @0 original_itunes_scripts_folder original_iTunes_scripts_folder�& 0 check_or_make  �%  0 path_to_user_library_scripts  �$ '0 #path_to_user_library_scripts_itunes  �# -0 )path_to_user_library_scripts_applications  
�" 
alia
�! .coredoexbool        obj 
�  
kocl
� 
insh
� 
alis
� 
to  
� 
cfol� 
� .corecrel****      � null
� 
cobj
� .corecnte****       ****
� .aevtodocnull  �    alis
� .miscactvnull��� ��� obj 
� 
btns
� 
dflt
� 
disp
� .sysodlogaskr        TEXT
� 
rslt
� 
bhit�  �  �1�j �&E�O���l �&E�O��%E�O*��l+ 
O��%E�O*��l+ 
O��%E�O*�a l+ 
O�a %E` Oa  :*a _ a %/j  %*a a a _ a &a *a �/a  Y hUO #b   [a a l kh  *Ϡl+ 
[OY��Oa  X*a �/j  O*j !Oa "a #a $a %lva &la 'ka  (O_ )a *,a +  *a �/j  W X , -hY hU ascr  ��ޭ