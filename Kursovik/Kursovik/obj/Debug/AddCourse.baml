   M S B A M L   `   `   `  ����C  ?Kursovik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KursovikKursovik  5   	       Kursovik.AddCourse   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   "localclr-namespace:Kursovik  5   	     � Title$%  Добавление курса��5	      $��277.975��6   $��486.762��6,    � WindowStyle$ ThreeDBorderWindow=�6<   $��Arial Rounded MT Bold)�6]   $��16(�6�    � WindowStartupLocation$ CenterScreen=�6�   .��5
      � -   5         �Name$ MainRoot��5
      
�������.+�5   
   �� $	��400��6   $��	44,28,0,0q�6    
������� �� Padding$ 10q�6F   $	��500��6S    �� CornerRadius$ 20��6b   $
��Left=�6t   $	��341��6�   $	��196��6�   $	��Top=�6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6#      Color$ 	LightGray��63   	   ShadowDepth$	 2Q�6E   ._�5      �� .+�5      � $��0 0 0 20q�6   �� 5      -   5        
 ��Name$	
 num��5   C   $
��20 5q�6   $
��Left=�6(   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$* $Введите номер курса��6P    %  !MaterialDesignFloatingHintTextBox#��[  6�   $	��237��6�   �� 5      -   5         ��Name$ AddCorse��5      $��Добавить курс��6+   $
��Left=�6C   $��20,5,0,5q�6^   ���	#FFF7582A
����������	#FFF7582A$��32��6�   $	��182��6�   6�   �� 5      -   5        $ 	ReturnBtn��5      $
��Left=�6,   $��
Назад��6G   ���	#FFF7582A
����������	#FFF7582A$��32��6�   $	��110��6�   $��	20,10,0,5q�6�   6�   5      5      5      5      