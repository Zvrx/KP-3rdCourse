   M S B A M L   `   `   `  ���� C  ?Kursovik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KursovikKursovik      Kursovik.StudentsList   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  "localclr-namespace:Kursovik  -     � Title$H  BСписок студентов состоящих на учете��$��901.5��$��1635.5�� � WindowStyle$ ThreeDBorderWindow=�$��Arial Rounded MT Bold)�$��16(� � WindowStartupLocation$ CenterScreen=�.��� -    �Name$ Mainroot�����	#ffdadada$��0,0,-8,0q�.+�&   System.Windows.Controls.DataGrid  -   $��StudentssGrid��   
IsReadOnly . $
��Left=�$	��808��$��	54,34,0,0q�$	��Top=�$
��1072��   AutoGenerateColumns . �� $	��400��$��1148,34,0,0q�
�������$	��Top=� �� Padding$ 30q�$	��500�� �� CornerRadius$ 25��$	��378��$
��Left=�$	��422�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect  	   
BlurRadius$	 30Q�
   Color$
 	LightGray��   ShadowDepth$ 0Q�._��� $��-20,0,-20,0q�$��Center=�.+��� -    ��Name$ 
EditButton��$7��1Редактирование информации�����	#FFF7582A
�������$	��350�����	#FFF7582A$
��0 12q��� -   $ ResetButton��$'��!Сброс результатов�����	#FFF7582A
�������$	��350�����	#FFF7582A$
��0 12q��� -   $ 
AddStudent��$5��/Добавить студента на учет�����	#FFF7582A
�������$	��350�����	#FFF7582A$
��0 12q��� -   $ DeleteStudent��$D��>Снять выбранного студента с учета�����	#FFF7582A
�������$	��350�����	#FFF7582A$
��0 12q��� -   $ ArchieveButton��$J��DПерейти в архив выписанных студентов�����	#FFF7582A
�������$	��350�����	#FFF7582A$
��0 12q��� -	    ��Name$ GoBackButton�����	#FFF7582A$	��100��$��32�� �� RadiusX$ 15�� �� RadiusY$ 15���� -
    ��Name$ GoBackLabel��$
��Left=�$��1330,350,0,0q�$��
Назад��$	��Top=�
������� J� RenderTransformOrigin$ 0.582,2.444&��� $	��400��$��1148,434,0,0q�
�������$	��Top=�$ 30q�$	��500��$ 25��$	��408��$
��Left=�$	��422��   $	 30Q�$
 	LightGray��$ 0Q�._��� $��-20,0,-20,0q�$��Center=�.+��� $��22(�
���   �$��
Поиск��$��Center=��� -    ��Name$ TextBoxName��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$  Введите ФИО�� %  !MaterialDesignFloatingHintTextBox#��[  �� -   $ SearchButton��$��Поиск по Ф.И.О�����	#FFF7582A
����������	#FFF7582A$ 1,0.5&�$	��204��$��Right=�$��
0,12,198,0q��� 
������ $��
Поиск��$��Center=��� -   $ TextBoxGroup��$- ' Введите номер группы��#��[  �� -   $ SearchByGroupBtn��$/��)Поиск по номеру группы�����	#FFF7582A
����������	#FFF7582A$ 1,0.5&�$��
0,12,198,0q��� 
������ $��
Поиск��$��Center=��� -   $ TextBoxCourse��$+ % Введите номер курса��#��[  �� -   $ SearchByCourseBtn��$-��'Поиск по номеру курса�����	#FFF7582A$��Center=�
����������	#FFF7582A$ 1,0.5&�$��
0,12,198,0q�