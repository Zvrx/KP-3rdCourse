   M S B A M L   `   `   `  ����C  ?Kursovik, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KursovikKursovik  5   	       Kursovik.AddGroup   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   "localclr-namespace:Kursovik  5   	   -   5          � Title$.  (Список групп колледжа��5	      $��542.5��6   $��954.5��6.    � WindowStyle$ ThreeDBorderWindow=�6<   $��Arial Rounded MT Bold)�6]   $��16(�6�    � WindowStartupLocation$ CenterScreen=�6�   .��5
      � -   5         �Name$ Mainroot��5
      ���	#ffdadada$��0,0,-8,0q�66   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��StudentssGrid��5   �      
IsReadOnly . $
��Left=�6>   $	��450��6Y   $��	54,21,0,0q�6f   $	��Top=�6y   $	��424��6�      AutoGenerateColumns . 5      �� 5   
   $	��200��6   $��516,322,0,0q�6    
�������$	��Top=�6H    �� Padding$ 30q�6`   $	��500��6m    �� CornerRadius$ 25��6|   $	��149��6�   $
��Left=�6�   $	��183��6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      	   
BlurRadius$	 30Q�6#   
   Color$
 	LightGray��63      ShadowDepth$ 0Q�6E   ._�5      �� $��-20,-20,-210,-20q�6   $��Center=�63   $	��129��6N   .+�5      �� -   5         ��Name$ DeleteStudentBtn��5      $!��Удалить группу��63   ���	#FFF7582A
����������	#FFF7582A$��15,12,216,12q�6�   6�   �� 5      -   5        $ GoBack��5      $��
Назад��6)   ���	#FFF7582A
����������	#FFF7582A$��15,12,259,12q�6{   6�   5      5      �� 5   
   $	��400��6   $��
516,21,0,0q�6    
�������$	��Top=�6G   $ 30q�6_   $	��500��6l   $ 25��6{   $	��277��6�   $
��Left=�6�   $	��400��6�    5        5      $	 30Q�6#   $
 	LightGray��63   $ 0Q�6E   ._�5      �� $��-20,0,-20,0q�6   $��Center=�6.   .+�5      �� $��22(�6   
���   �$'��!Добавление группы��69   $��Center=�6U   6t   �� 5      -   5         ��Name$ 
TextBoxNum��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$- ' Введите номер группы��6.    %  !MaterialDesignFloatingHintTextBox#��[  6e   �� 5      
������ $��
Поиск��61   $��Center=�6A   6`   �� 5      -   5        $ TextBoxSpec��5      $= 7 Введите специальность группы��6/   #��[  6n   �� 5       
������ $��
Поиск��61   $��Center=�6A   6`   �� 5!      -   5        $ 	AddGroups��5!      $��Добавить��6,   ���	#FFF7582A
����������	#FFF7582A J� RenderTransformOrigin$ 1,0.5&�6�   $��130,12,144,0q�6�   6�   5"      5#      5$      5%      