   M S B A M L   `   `   `  ����  Kursovik    Kursovik.Menu   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Меню��5      $	��524��6   $	��800��6    � WindowStyle$ ThreeDBorderWindow=�6'   $��Arial Rounded MT Bold)�6I   $��16(�6l    � WindowStartupLocation$ CenterScreen=�6z   $y�Visible=�6�   .��5	      � -   5         �Name$ Mainroot��5	      ���	#ffdadada$��0,0,0,-6q�66   .+�5
   
   �� $	��400��6   $��15,108,15,57q�6    
�������$��Center=�6I    �� Padding$	  30q�6d   $	��500��6r    �� CornerRadius$ 25��6�   $	��334��6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6#      Color$ 	LightGray��63   	   ShadowDepth$	 0Q�6E   ._�5      �� $��-20,0,-20,0q�6   .+�5      �� $��Меню��6   $��30(�6(   $
��Bold"�66   $��0 0 0 20q�6H   $��Center=�6Z   � 5      $��0 0 0 0q�6   �� 5      -   5        
 ��Name$
 StudentsButton��5      $��Center=�61   $%��Список студентов��6N   
�������$	��300��6|   ���	#FFF7582A$	�� 12q�6�   ���	#FFF7582A6�   �� 5      -   5        $
 TestsButton��5      $#��Редактор тестов��6.   ���	#FFF7582A
�������$	��300��6r   ���	#FFF7582A$
��0 12q�6�   6�   �� 5      -   5        $
 OtchetButton��5      $+��%Составление отчетов��6/   ���	#FFF7582A
�������$	��300��6w   ���	#FFF7582A$
��0 12q�6�    � 	Resources 5       �� 
TargetType �� Property �� Value��%`   '��       �� 5      " ��6    .�5      ��  �@��CornerRadius$	 150��6=   5      5      5      �� 5      -   5        $
 InfoBtn��5      $��Справка��6*   ���	#FFF7582A
����������	#FFF7582A$��166,12,157,12q�6   $��Center=�6�   $	��157��6�   6�   5      5      5      5      