   M S B A M L   `   `   `  ����C  ?Kursovik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KursovikKursovik  5   	       Kursovik.AddStudent   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   "localclr-namespace:Kursovik  5   	   -   5          � Title$+  %Добавление студента��5	      $	��435��6   $
��1100��6*    � WindowStyle$ ThreeDBorderWindow=�67   $��Arial Rounded MT Bold)�6X   $��16(�6{    � WindowStartupLocation$ CenterScreen=�6�   .��5
      � -   5         �Name$ MainRoot��5
      ���	#ffdadada.+�5   
   �� $	��400��6   $��11,25,551,0q�6    
�������$	��Top=�6H    �� Padding$ 10q�6`   $	��500��6m    �� CornerRadius$ 20��6|   $	��350��6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6#      Color$ 	LightGray��63   	   ShadowDepth$	 2Q�6E   ._�5      �� .+�5      � $��0 0 0 20q�6   �� 5      -   5        
 ��Name$

 Name��5   C   $
��20 5q�6   $
��Left=�6(   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Введите ФИО��6Q    %  !MaterialDesignFloatingHintTextBox#��[  6~   $	��237��6�   �� 5      -   5        $	
 Age��5   C   $
��20 5q�6   $
��Left=�6(   $4 .Введите кол-во полных лет��6P   #��[  6�   $	��240��6�   �� 5      -   5         ��Name$ 
GenderList��5   )   $
��20 5q�6   $
��Left=�6=   $	��110��6X   .@�5      �� $��Жен.��6#   64   �� 5      $��Муж.��6#   64   5      �� 5      -   5        $
 	Diagnosis��5      $
��20 5q�6-   $
��Left=�6;    �� 	IsEnabled .  �� AcceptsReturn .  �� TextWrapping$
 Wrap=�6�   $ Диагноз��6�   #��[  6�   $��75��6�   $	��320��6  5      5      �� 5   
   $	��400��6   $��551,25,11,0q�6    
�������$	��Top=�6H   $ 10q�6`   $	��500��6m   $ 20��6|   $	��350��6�    5        5      $ 30Q�6#   $ 	LightGray��63   $	 0Q�6E   ._�5      �� .+�5      � $��0 0 0 20q�6   �� 5       -   5        $ 
CourseList��5    r   $
��20 5q�6d   $
��Left=�6�   $	��110��6�   .@�5!      �� -   5         ��Name$ 	AddCourse��5!   +   $��10(�6   
������ 
������ 
���   �$!��Добаавить курс��6�   6�   5"      �� 5#      -	   5        $

 Spec��5#      $
��20 5q�6(   $
��Left=�66   $/ )Введите специальность��6Q   #��[  6�   $	��240��6�    � Cursor$ IBeam��6�   �� 5$      -
   5        $ 
GroupsList��5$   r   $
��20 5q�6d   $
��Left=�6�   $	��110��6�   .@�5%      �� -   5        $ AddGroup��5%   +   $��10(�6   
������ 
������ 
���   �$'��!Добаавить группау��6�   6�   5&      �� 5'      -   5        $
 Notes��5'   �   $
��20 5q�6   $
��Left=�6(    .  . $
 Wrap=�6t   $ Примечания��6�   #��[  6�   $��75��6�   $	��320��6
  �� 5(      -   5        $ 	AddButton��5(      $
��Left=�6,   $
��20 5q�6G   $'��!Добавить студента��6U   ���	#FFF7582A
����������	#FFF7582A$��32��6�   $	��182��6�   6�   �� 5)      -   5        $ GoBack��5)      +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�6)   $
��Left=�6Z   $
��20 5q�6u   
������ $��23��6�   $��54��6�   $
 Hand��6�   ��5*      �� 5+       �� ImageSource$i cimg/png-transparent-white-arrow-symbol-pointer-visual-language-chart-black-black-and-white-line.png��6%    �� RelativeTransform 5,      V� 5-   "   .~�5.   &   ��  �� CenterY$	 0.5Q�65    �� CenterX$	 0.5Q�6C   �� 5/   &    �� CenterX$	 0.5Q�64    �� CenterY$	 0.5Q�6B   �� 50   &    �� Angle$	 180Q�66    �� CenterX$	 0.5Q�6B    �� CenterY$	 0.5Q�6P   T� 51   &   52   #   54      56      57      58      59      5:      