   M S B A M L   `   `   `  ���� C  ?Kursovik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KursovikKursovik      Kursovik.AddStudent   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  "localclr-namespace:Kursovik  -     � Title$+  %Добавление студента��$	��435��$
��1100�� � WindowStyle$ ThreeDBorderWindow=�$��Arial Rounded MT Bold)�$��16(� � WindowStartupLocation$ CenterScreen=�.��� -    �Name$ MainRoot�����	#ffdadada.+��� $	��400��$��11,25,551,0q�
�������$	��Top=� �� Padding$ 10q�$	��500�� �� CornerRadius$ 20��$	��350�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     
BlurRadius$ 30Q�   Color$ 	LightGray��	   ShadowDepth$	 2Q�._��� .+�� $��0 0 0 20q��� -   
 ��Name$

 Name��$
��20 5q�$
��Left=�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Введите ФИО�� %  !MaterialDesignFloatingHintTextBox#��[  $	��237���� -   $	
 Age��$
��20 5q�$
��Left=�$4 .Введите кол-во полных лет��#��[  $	��240���� -    ��Name$ 
GenderList��$
��20 5q�$
��Left=�$	��110��.@��� $��Жен.���� $��Муж.���� -   $
 	Diagnosis��$
��20 5q�$
��Left=� �� 	IsEnabled .  �� AcceptsReturn .  �� TextWrapping$
 Wrap=�$ Диагноз��#��[  $��75��$	��320���� $	��400��$��551,25,11,0q�
�������$	��Top=�$ 10q�$	��500��$ 20��$	��350��   $ 30Q�$ 	LightGray��$	 0Q�._��� .+�� $��0 0 0 20q��� -   $ 
CourseList��$
��20 5q�$
��Left=�$	��110��.@��� -    ��Name$ 	AddCourse��$��10(�
������ 
������ 
���   �$!��Добаавить курс���� -	   $

 Spec��$
��20 5q�$
��Left=�$/ )Введите специальность��#��[  $	��240�� � Cursor$ IBeam���� -
   $ 
GroupsList��$
��20 5q�$
��Left=�$	��110��.@��� -   $ AddGroup��$��10(�
������ 
������ 
���   �$'��!Добаавить группау���� -   $
 Notes��$
��20 5q�$
��Left=� .  . $
 Wrap=�$ Примечания��#��[  $��75��$	��320���� -   $ 	AddButton��$
��Left=�$
��20 5q�$'��!Добавить студента�����	#FFF7582A
����������	#FFF7582A$��32��$	��182���� -   $ GoBack��+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth0=�$
��Left=�$
��20 5q�
������ $��23��$��54��$
 Hand������  �� ImageSource$i cimg/png-transparent-white-arrow-symbol-pointer-visual-language-chart-black-black-and-white-line.png�� �� RelativeTransform V� .~���  �� CenterY$	 0.5Q� �� CenterX$	 0.5Q���  �� CenterX$	 0.5Q� �� CenterY$	 0.5Q���  �� Angle$	 180Q� �� CenterX$	 0.5Q� �� CenterY$	 0.5Q�T� 