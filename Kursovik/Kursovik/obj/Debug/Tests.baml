   M S B A M L   `   `   `  ����C  ?Kursovik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KursovikKursovik  5   	       Kursovik.Tests   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Kursovik     5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$#  Редактор тестов��5	   	   $	��450��6!   $��493.667��6.   
������� � WindowStartupLocation$ CenterScreen=�6V   .��5
      � .+�5   
   �� $	��400��6   $��
42,21,42,0q�6    
�������$	��Top=�6G    �� Padding$ 10q�6_   $	��500��6l    �� CornerRadius$ 20��6{   $	��341��6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6#      Color$ 	LightGray��63      ShadowDepth$ 2Q�6E   ._�5      �� .+�5      �� $;��5Подготовка к созданию тестов��6   $��Center=�6?   
���   �$��18(�6o   6�   � 5      $��0 0 0 20q�6   �� 5      -   5         ��Name$ 
NameOfTest��5   `   $��20,5,0,5q�63   $
��Left=�6E   )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$(	 "Введите тему теста��6t    %  !MaterialDesignFloatingHintTextBox#��[  6�   $	��285��6�   �� 5      $6��0Выбор количества вопросов��6   $
��Left=�6<   
���   �$��12(�6j   $��20,0,0,0q�6x   $	��256��6�   �� 5      -   5        
 ��Name$
 CountOFQuestions��5      $
��20 5q�65   $
��Left=�6C   $	��110��6^   .@�5      �� $��8��6#   �� 5      $��10��6#   �� 5      $��12��6#   5      �� 5      $�� ��6   $
��Left=�6$   
������ $��12(�6X   $��20,0,0,0q�6f   $	��256��6x   �� 5      $�� ��6   $
��Left=�6$   
������ $��12(�6X   $��20,0,0,0q�6f   $	��256��6x   �� 5      $�� ��6   $
��Left=�6$   
������ $��12(�6X   $��20,0,0,0q�6f   $	��256��6x   �� 5      $�� ��6   $
��Left=�6$   
������ $��12(�6X   $��20,0,0,0q�6f   $	��256��6x   �� 5      $�� ��6   $
��Left=�6$   
������ $��12(�6X   $��20,0,0,0q�6f   $	��256��6x   �� 5      -   5         ��Name$ NextBtn��5      $��
Далее��6*   ���	#FFF7582A
�������$	��110��6d   ���	#FF5BA0F0$��	0,0,252,0q�6�   $��32��6�   $��Right=�6�   6�   5!      5"      �� 5#   
   -   5        $ GoBack��5#      +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�6!   $
��Left=�6R   $��196,317,0,79q�6m   
������ $
��Auto��6�   $��54��6�    � Cursor$
 Hand��6�   ��5$      �� 5%       �� ImageSource$i cimg/png-transparent-white-arrow-symbol-pointer-visual-language-chart-black-black-and-white-line.png��6    �� RelativeTransform 5&      V� 5'      .~�5(      ��  �� CenterY$	 0.5Q�6-    �� CenterX$	 0.5Q�6;   �� 5)       �� CenterX$	 0.5Q�6,    �� CenterY$	 0.5Q�6:   �� 5*       �� Angle$	 180Q�6.    �� CenterX$	 0.5Q�6:    �� CenterY$	 0.5Q�6H   T� 5+      5,      5.      50      52      53      