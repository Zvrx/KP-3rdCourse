   M S B A M L   `   `   `  ����C  ?Kursovik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KursovikKursovik  5   	       Kursovik.Otchet   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Kursovik     5   	   -   5          � Title$+  %Составление отчетов��5   	   $��364.5��6%   $	��701��64    � WindowStartupLocation$ CenterScreen=�6@   
�������.��5	      � .+�5
   
   �� $	��400��6   
�������$	��Top=�63    �� Padding$ 30q�6K   $	��500��6X    �� CornerRadius$ 25��6g   $	��198��6y   $
��Left=�6�   $	��400��6�   $��
124,52,0,0q�6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6#      Color$ 	LightGray��63      ShadowDepth$ 0Q�6E   ._�5      �� $��-20,0,-20,0q�6   $��Center=�6.   .+�5      �� $0��*Выбор критериев отчета��6   $��16(�69   $��Center=�6G   
���   �$��
121,0,67,0q�6x   $	��192��6�   �� 5      -   5         ��Name$ ChoiseTable��5      $
��20 5q�60   $
��Left=�6>   $	��110��6Y   .@�5      �� $$��Принятые на учет��6#   �� 5      $��Выписанные��6#   5      �� 5      $	��123��6   $��20(�6'   
������ 6P   �� 5      -   5        	 ��Name$	 	CreateBtn��5      $��Создать��6,   ���	#FFF7582A
����������	#FF5BA0F0$��127,12,116,12q�6�   6�   5      5      &   System.Windows.Controls.DataGrid  5   
   -   5        
  Name$
 
SourseGrid��5      $
��Left=�6'   $	��100��6B   $��
10,223,0,0q�6O   $	��Top=�6c   $	��100��6{   
������ 6�   5      5      