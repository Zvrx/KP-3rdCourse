   M S B A M L   `   `   `  ����C  ?Kursovik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KursovikKursovik  5   	       Kursovik.StudentsList   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   "localclr-namespace:Kursovik  5   	   -   5          � Title$H  BСписок студентов состоящих на учете��5	      $��901.5��6-   $��1635.5��6<    � WindowStyle$ ThreeDBorderWindow=�6K   $��Arial Rounded MT Bold)�6l   $��16(�6�    � WindowStartupLocation$ CenterScreen=�6�   .��5
      � -   5         �Name$ Mainroot��5
      ���	#ffdadada$��0,0,-8,0q�66   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��StudentssGrid��5   �      
IsReadOnly . $
��Left=�6>   $	��808��6Y   $��	54,34,0,0q�6f   $	��Top=�6y   $
��1072��6�      AutoGenerateColumns . 5      �� 5   
   $	��400��6   $��1148,34,0,0q�6    
�������$	��Top=�6H    �� Padding$ 30q�6`   $	��500��6m    �� CornerRadius$ 25��6|   $	��378��6�   $
��Left=�6�   $	��422��6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      	   
BlurRadius$	 30Q�6#   
   Color$
 	LightGray��63      ShadowDepth$ 0Q�6E   ._�5      �� $��-20,0,-20,0q�6   $��Center=�6.   .+�5      �� -   5         ��Name$ 
EditButton��5      $7��1Редактирование информации��6-   ���	#FFF7582A
�������$	��350��6{   ���	#FFF7582A$
��0 12q�6�   6�   �� 5      -   5        $ ResetButton��5      $'��!Сброс результатов��6.   ���	#FFF7582A
�������$	��350��6t   ���	#FFF7582A$
��0 12q�6�   6�   �� 5      -   5        $ 
AddStudent��5      $5��/Добавить студента на учет��6-   ���	#FFF7582A
�������$	��350��6{   ���	#FFF7582A$
��0 12q�6�   6�   �� 5      -   5        $ DeleteStudent��5      $D��>Снять выбранного студента с учета��60   ���	#FFF7582A
�������$	��350��6�   ���	#FFF7582A$
��0 12q�6�   6�   �� 5      -   5        $ ArchieveButton��5      $J��DПерейти в архив выписанных студентов��61   ���	#FFF7582A
�������$	��350��6�   ���	#FFF7582A$
��0 12q�6�   6�   �� 5      -	   5         ��Name$ GoBackButton��5      ���	#FFF7582A$	��100��6C   $��32��6O    �� RadiusX$ 15��6[    �� RadiusY$ 15��6h   5      5      �� 5   
   -
   5         ��Name$ GoBackLabel��5       � Cursor$
 Hand��6%   $
��Left=�63   $��1330,350,0,0q�6N   $��
Назад��6d   $	��Top=�6t   
������� J� RenderTransformOrigin$ 0.582,2.444&�6�   �� 5   
   $	��400��6   $��1148,434,0,0q�6    
�������$	��Top=�6I   $ 30q�6a   $	��500��6n   $ 25��6}   $	��408��6�   $
��Left=�6�   $	��422��6�    5        5      $	 30Q�6#   $
 	LightGray��63   $ 0Q�6E   ._�5       �� $��-20,0,-20,0q�6   $��Center=�6.   .+�5!      �� $��22(�6   
���   �$��
Поиск��69   $��Center=�6I   6h   �� 5"      -   5         ��Name$ TextBoxName��5"      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$  Введите ФИО��6/    %  !MaterialDesignFloatingHintTextBox#��[  6]   �� 5#      -   5        $ SearchButton��5#      $��Поиск по Ф.И.О��6/   ���	#FFF7582A
����������	#FFF7582A$ 1,0.5&�6�   $	��204��6�   $��Right=�6�   $��
0,12,198,0q�6�   �� 5$      
������ $��
Поиск��61   $��Center=�6A   6`   �� 5%      -   5        $ TextBoxGroup��5%      $- ' Введите номер группы��60   #��[  6g   �� 5&      -   5        $ SearchByGroupBtn��5&      $/��)Поиск по номеру группы��63   ���	#FFF7582A
����������	#FFF7582A$ 1,0.5&�6�   $��
0,12,198,0q�6�   �� 5'      
������ $��
Поиск��61   $��Center=�6A   6`   �� 5(      -   5        $ TextBoxCourse��5(      $+ % Введите номер курса��61   #��[  6g   �� 5)      -   5        $ SearchByCourseBtn��5)      $-��'Поиск по номеру курса��64   ���	#FFF7582A$��Center=�6k   
����������	#FFF7582A$ 1,0.5&�6�   $��
0,12,198,0q�6�   5*      5+      5,      5-      