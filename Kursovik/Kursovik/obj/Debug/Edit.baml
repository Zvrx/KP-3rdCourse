   M S B A M L   `   `   `  ����  Kursovik    Kursovik.Edit   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$"  Редактирование��5      $��506.948��6   $��805.611��6)    � WindowStyle$ ThreeDBorderWindow=�69   $��Arial Rounded MT Bold)�6[   $��16(�6~    � WindowStartupLocation$ CenterScreen=�6�   $y�Visible=�6�   .��5	      � -   5         �Name$ Mainroot��5	      ���	#ffdadada$��0,0,0,-6q�66   .+�5
   
   �� $	��400��6   $��202,31,196,0q�6    
�������$	��Top=�6I    �� Padding$ 10q�6a   $	��500��6n    �� CornerRadius$ 20��6}   $	��417��6�   $��Center=�6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6#      Color$ 	LightGray��63   	   ShadowDepth$	 2Q�6E   ._�5      �� .+�5      � $��0 0 0 20q�6   �� 5      -   5        
 ��Name$
 Group��5   C   $
��20 5q�6   $
��Left=�6(   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$, &Введите новую группу��6R    %  !MaterialDesignFloatingHintTextBox#��[  6�   $	��237��6�   �� 5      -   5        $

 Spec��5   C   $
��20 5q�6   $
��Left=�6(   $: 4Введите новую специальность��6Q   #��[  6�   $	��240��6�   �� 5      -   5        $	
 Age��5   C   $
��20 5q�6   $
��Left=�6(   $0 *Введите новый возвраст��6P   #��[  6�   $	��240��6�   �� 5      -   5        $
 	Diagnosis��5      $
��20 5q�6-   $
��Left=�6;    �� 	IsEnabled .  �� AcceptsReturn .  �� TextWrapping$
 Wrap=�6�   $. (Введите новый диагноз��6�   #��[  6�   $��44��6  $	��320��6  �� 5      -   5        $

 Name��5   C   $
��20 5q�6   $
��Left=�6(   $&  Введите новое ФИО��6Q   #��[  6�   $	��240��6�   �� 5      -   5        $
 Course��5   C   $
��20 5q�6   $
��Left=�6(   $( "Введите новый курс��6S   #��[  6�   $	��240��6�   �� 5      -   5         ��Name$ 	AddButton��5      $
��Left=�6,   $
��20 5q�6G   $+��%Сохранить изменения��6U   ���	#FFF7582A
����������	#FFF7582A$��32��6�   $	��182��6�   6�   5      5      5      5      