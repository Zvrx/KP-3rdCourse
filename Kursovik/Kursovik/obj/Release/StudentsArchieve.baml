   M S B A M L   `   `   `  ���� C  ?Kursovik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KursovikKursovik      Kursovik.StudentsArchieve   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  "localclr-namespace:Kursovik  -     � Title$L  FСписок студентов находящихся в архиве��$	��759��$��1432.5�� � WindowStyle$ ThreeDBorderWindow=�$��Arial Rounded MT Bold)�$��16(� � WindowStartupLocation$ CenterScreen=�.��� -    �Name$ Mainroot�����	#ffdadada$��0,0,2,0q�.+�&   System.Windows.Controls.DataGrid  -   $��ArchieveGrid��   
IsReadOnly . $
��Left=�$	��673��$��	54,21,0,0q�$	��Top=�$
��1031��   AutoGenerateColumns . �� $	��300��$��1106,21,0,0q�
������� �� Padding$ 30q�$	��500�� �� CornerRadius$ 25��$	��226��$	��198��$	��Top=�$
��Left=� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect  	   
BlurRadius$	 30Q�
   Color$
 	LightGray��   ShadowDepth$ 0Q�._��� $��-20,0,-20,0q�$��Center=�.+��� -    ��Name$ 
DropButton��$!��Очистить архив�����	#FFF7582A
����������	#FFF7582A$��15,12,113,12q��� -   $ UpdateStudent��$3��-Вернуть студента на учет�����	#FFF7582A
����������	#FFF7582A$��15,12,47,12q��� -   $ GoBackStudent��$
��Left=�$��
Назад�����	#FFF7582A
����������	#FFF7582A$��
15,12,0,12q�$��25��$��78��