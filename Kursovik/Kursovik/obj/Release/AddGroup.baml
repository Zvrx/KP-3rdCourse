   M S B A M L   `   `   `  ���� C  ?Kursovik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KursovikKursovik      Kursovik.AddGroup   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  "localclr-namespace:Kursovik  -     � Title$.  (Список групп колледжа��$��542.5��$��954.5�� � WindowStyle$ ThreeDBorderWindow=�$��Arial Rounded MT Bold)�$��16(� � WindowStartupLocation$ CenterScreen=�.��� -    �Name$ Mainroot�����	#ffdadada$��0,0,-8,0q�.+�&   System.Windows.Controls.DataGrid  -   $��StudentssGrid��   
IsReadOnly . $
��Left=�$	��450��$��	54,21,0,0q�$	��Top=�$	��424��   AutoGenerateColumns . �� $	��200��$��516,322,0,0q�
�������$	��Top=� �� Padding$ 30q�$	��500�� �� CornerRadius$ 25��$	��149��$
��Left=�$	��183�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect  	   
BlurRadius$	 30Q�
   Color$
 	LightGray��   ShadowDepth$ 0Q�._��� $��-20,-20,-210,-20q�$��Center=�$	��129��.+��� -    ��Name$ DeleteStudentBtn��$!��Удалить группу�����	#FFF7582A
����������	#FFF7582A$��15,12,216,12q��� -   $ GoBack��$��
Назад�����	#FFF7582A
����������	#FFF7582A$��15,12,259,12q��� $	��400��$��
516,21,0,0q�
�������$	��Top=�$ 30q�$	��500��$ 25��$	��277��$
��Left=�$	��400��   $	 30Q�$
 	LightGray��$ 0Q�._��� $��-20,0,-20,0q�$��Center=�.+��� $��22(�
���   �$'��!Добавление группы��$��Center=��� -    ��Name$ 
TextBoxNum��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$- ' Введите номер группы�� %  !MaterialDesignFloatingHintTextBox#��[  �� 
������ $��
Поиск��$��Center=��� -   $ TextBoxSpec��$= 7 Введите специальность группы��#��[  �� 
������ $��
Поиск��$��Center=��� -   $ 	AddGroups��$��Добавить�����	#FFF7582A
����������	#FFF7582A J� RenderTransformOrigin$ 1,0.5&�$��130,12,144,0q�