   M S B A M L   `   `   `  ����C  ?Workshop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:WorkshopWorkshop  5   	       Workshop.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Workshop     5   	     � Title$  Warsztat 1.0��5   	   $	��350��6   $	��800��6+   .��5	      � .+�5
   
   �� -   5         ��Name$ button��5
      $��Button��6!   $
��Left=�62   $��	10,10,0,0q�6M   $	��Top=�6`   $��75��6x    J� RenderTransformOrigin$ -0.936,-3.968&�6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ UsersDataGrid��5      $
��Left=�6*   $��*��6E   $��	10,60,0,0q�6P   $	��Top=�6c   $	��772��6{   $ 0.498,0.496&�6�      AutoGenerateColumns .   � 	Resources 5      =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value��%�   '        �� 5      "  6   .�5      ��  � ��
 �����63   �� 5       � ��$ Medium"�63   �� 5       � ��$ 0,0,1,2q�68   �� 5       � ��
 �   �64   5      5      	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Id��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *Id+6H     5      $
 Imię��6%   $ * 63    6=   �� *	FirstName+  5      $
 Nazwisko��6%   $ * 67    6A   �� *
LastName+  5      $
 Email��6%   $ * 64    6>   �� *Email+4  .System.Windows.Controls.DataGridTemplateColumn  5         MinWidth$	 100Q�6)   $
 Akcje��68      CellTemplate 5      �� 5      .R�5      ��  �� Orientation$ 
Horizontal=�6)   .+�5   "   �� -   5        .��5   ?   Edytuj6G   �� 5    "   -   5        .��5    ?   Usuń6E   5!      5"      5$      5&      5'      5(      