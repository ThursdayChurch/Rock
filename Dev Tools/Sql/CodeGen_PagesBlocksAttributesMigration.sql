��- -   N O T E :   i f   y o u   h a v e   S S M S   2 0 1 2   o r   n e w e r ,   y o u   m i g h t   w h a t   t o   t u r n   o n   O p t i o n s   >   Q u e r y   R e s u l t s   >   S q l   S e r v e r   >   R e s u l t s   t o   G r i d   >   ' R e t a i n   C R / L F   o n   c o p y   o r   s a v e '  
 - -   T h i s   w i l l   a l l o w   y o u   t o   C o p y   a n d   P a s t e   d i r e c t l y   f r o m   t h e   G r i d   r e s u l t s  
  
 d e c l a r e  
 - -   s e t   t o   1   t o   i n c l u d e   a n y   b l o c k   a t t r i b u t e   v a l u e s   u p d a t e d   i n   t h e   l a s t   6 0   m i n u t e s ,   e v e n   i f   t h e i r   B l o c k T y p e   A t t r i b u t e   i s   I s S y s t e m = 1  
 @ f o r c e I n c l u d e R e c e n t l y U p d a t e d B l o c k A t t r i b u t e V a l u e s   b i t   =   0 ,  
  
 - -   s e t   t o   a   s p e c i f i c   p a g e I d   i f   y o u   w a n t   t o   g e n e r a t e   ' A d d B l o c k A t t r i b u t e V a l u e '   m i g r a t i o n s   f o r   a l l   t h e   b l o c k   a t t r i b u t e   v a l u e s   o n   t h e   p a g e ,   n o t   j u s t   t h e   n e w   o n e s  
 @ f o r c e I n c l u d e B l o c k A t t r i b u t e s V a l u e s F o r P a g e I d   i n t   =   n u l l ;  
  
 s e t   n o c o u n t   o n  
 d e c l a r e  
 @ c r l f   v a r c h a r ( 2 )   =   c h a r ( 1 3 )   +   c h a r ( 1 0 )  
  
 b e g i n  
  
 I F   O B J E C T _ I D ( ' t e m p d b . . # c o d e T a b l e ' )   I S   N O T   N U L L  
         D R O P   T A B L E   # c o d e T a b l e  
  
 I F   O B J E C T _ I D ( ' t e m p d b . . # b l o c k s T e m p ' )   I S   N O T   N U L L  
         D R O P   T A B L E   # b l o c k s T e m p  
  
 I F   O B J E C T _ I D ( ' t e m p d b . . # k n o w n G u i d s T o I g n o r e ' )   I S   N O T   N U L L  
         D R O P   T A B L E   # k n o w n G u i d s T o I g n o r e  
  
 c r e a t e   t a b l e   # k n o w n G u i d s T o I g n o r e (  
         [ G u i d ]   U n i q u e I d e n t i f i e r ,    
         C O N S T R A I N T   [ p k _ k n o w n G u i d s T o I g n o r e ]   P R I M A R Y   K E Y   C L U S T E R E D     (   [ G u i d ] )    
 ) ;  
  
 - -   E x t e r n a l   S i t e   L a y o u t s  
 i n s e r t   i n t o   # k n o w n G u i d s T o I g n o r e   v a l u e s    
 ( ' 9 D 2 1 B E 8 A - F D 3 A - 4 B 9 1 - 8 5 9 4 - 5 3 C 1 5 2 8 4 6 8 A 1 ' ) ,   - - D i a l o g  
 ( ' 8 3 7 8 B 2 9 3 - 4 6 4 2 - 4 F 1 B - 9 0 A 8 - 5 0 2 1 8 7 9 8 4 F C B ' ) ,   - - T h r e e   C o l u m n  
 ( ' 2 2 F 9 5 2 A B - D E 3 3 - 4 6 0 7 - 9 8 6 7 - 7 5 A C 5 E 9 7 A 9 2 8 ' ) ,   - - E r r o r  
 ( ' A D C 7 8 6 6 C - D 0 B 3 - 4 B 9 7 - 9 A B 2 - E A C B 3 6 E A 2 4 E D ' )   - - R i g h t   S i d e b a r  
  
 - -   I n t e r n a l   S i t e   L a y o u t s  
 i n s e r t   i n t o   # k n o w n G u i d s T o I g n o r e   v a l u e s    
 ( ' 9 4 3 3 0 4 1 E - F D 9 6 - 4 D D 8 - A 6 0 F - A 6 4 1 C 4 8 B E D 7 D ' ) ,   - - E r r o r  
 ( ' 1 A 8 A 4 5 5 E - 6 1 9 F - 4 3 7 E - A 7 B D - 5 0 C 0 9 B 5 B 3 5 7 6 ' )   - - H o m e p a g e  
  
 - -   I n t e r n a l   S i t e   P a g e s  
 i n s e r t   i n t o   # k n o w n G u i d s T o I g n o r e   v a l u e s    
 ( ' 0 C 4 B 3 F 4 D - 5 3 F D - 4 A 6 5 - 8 C 9 3 - 3 8 6 8 C E 4 D A 1 3 7 ' ) ,   - - I n t r a n e t  
 ( ' 7 F 2 5 8 1 A 1 - 9 4 1 E - 4 D 5 1 - 8 A 9 D - 5 B E 9 B 8 8 1 B 0 0 3 ' ) ,   - - O f f i c e   I n f o  
 ( ' 8 9 5 F 5 8 F B - C 1 C 4 - 4 3 9 9 - A 4 D 8 - A 9 A 1 0 2 2 5 E A 0 9 ' ) ,   - - E m p l o y e e   R e s o u r c e s  
 ( ' F B C 1 6 1 5 3 - 8 9 7 B - 4 5 7 C - A 3 5 F - 2 8 F D F D C 4 6 6 B 6 ' )   - - S h a r e d   D o c u m e n t s  
  
 - -   E x t e r n a l   S i t e   P a g e s  
 i n s e r t   i n t o   # k n o w n G u i d s T o I g n o r e   v a l u e s    
 ( ' 1 6 1 5 E 0 9 0 - 1 8 8 9 - 4 2 F F - A B 1 8 - 5 F 7 B E 9 F 2 4 4 9 8 ' ) ,   - - G i v e   N o w  
 ( ' A 9 7 4 A 9 6 5 - 4 1 4 B - 4 7 A 6 - 9 C C 1 - D 3 A 1 7 5 D A 9 6 5 B ' ) ,   - - P l e d g e  
 ( ' E B A A 5 1 4 0 - 4 B 8 F - 4 4 B 8 - B 1 E 8 - C 7 3 B 6 5 4 E 4 B 2 2 ' ) ,   - - S u p p o r t   P a g e s  
 ( ' D 0 2 5 E 1 4 C - F 3 8 5 - 4 3 F B - A 7 3 5 - A B D 2 4 A D C 1 4 8 0 ' ) ,   - - L o g i n  
 ( ' B B A D 3 1 2 7 - 8 6 2 9 - 4 0 0 C - B D 1 1 - 9 A 5 5 4 A A 1 0 7 C 7 ' ) ,   - - A c c o u n t   R e g i s t r a t i o n  
 ( ' 5 E B 0 7 6 8 6 - D 0 3 2 - 4 1 A 5 - 9 5 C 0 - F D 3 6 F 9 3 9 F A 5 2 ' ) ,   - - A d   D e t a i l s  
 ( ' 2 1 C 1 D 3 1 E - B B 6 6 - 4 0 5 0 - A 2 A C - 3 A 0 5 7 B 4 8 4 5 9 6 ' ) ,   - - N e w   H e r e ?  
 ( ' 1 1 1 F E D B 6 - 7 1 4 9 - 4 C 6 B - 9 3 B E - 2 E C A E 8 0 6 D 4 F 3 ' ) ,   - - R e s o u r c e s  
 ( ' 2 8 8 D B E C 5 - 8 A 4 3 - 4 1 3 3 - 9 3 1 3 - A A 2 F E 8 1 F B A 8 6 ' ) ,   - - A c c o u n t   C o n f i r m a t i o n  
 ( ' C A E C A A 2 E - 2 4 B 3 - 4 6 0 D - 9 6 6 C - A 9 6 2 8 4 A 5 D 1 B 0 ' ) ,   - - F o r g o t   P a s s w o r d  
 ( ' F A D 4 F 9 8 A - 2 C B C - 4 C 3 E - B 5 9 7 - 6 C 6 3 E 2 1 7 7 E 7 D ' ) ,   - - C h a n g e   P a s s w o r d  
 ( ' 8 B B 3 0 3 A F - 7 4 3 C - 4 9 D C - A 7 F F - C C 1 2 3 6 B 4 B 1 D 9 ' ) ,   - - G i v e  
 ( ' 7 6 2 5 A 6 3 E - 6 6 5 0 - 4 8 8 6 - B 6 0 5 - 5 3 C 2 2 3 4 F A 5 E 1 ' ) ,   - - C o n n e c t  
 ( ' A 7 E A 0 5 3 F - B D 8 B - 4 2 D 1 - 8 5 7 5 - 9 C 3 7 C 8 2 9 8 F 4 6 ' ) ,   - - C h i l d r e n  
 ( ' D B 9 F 7 1 1 8 - 6 E 4 1 - 4 B 3 6 - A A 0 E - E 2 5 9 4 2 2 0 7 E 4 F ' ) ,   - - S t u d e n t s  
 ( ' F A E 0 0 3 B C - E C 5 9 - 4 A F D - 8 D 0 8 - A B 0 9 2 8 9 9 C B 7 3 ' ) ,   - - A d u l t s  
 ( ' 7 0 1 9 7 3 6 A - 8 F 3 0 - 4 4 0 2 - 8 A 4 8 - C E 5 3 0 8 2 1 8 6 1 8 ' ) ,   - - P r a y e r  
 ( ' 5 A 8 F B B 9 2 - 8 5 E 5 - 4 F D 3 - A F 8 8 - F 3 8 9 7 C 6 C B C 3 5 ' ) ,   - - M i s s i o n s  
 ( ' 2 A A 7 1 9 F D - 5 B 9 F - 4 A 9 A - A 8 B F - C 1 3 5 E E A 0 2 B C 8 ' ) ,   - - S e r v e  
 ( ' E A 5 1 5 F D 1 - 7 D 7 1 - 4 E 2 4 - A 0 9 D - E A 9 E C 3 4 B E C 7 1 ' ) ,   - - S m a l l   G r o u p s  
 ( ' 5 9 C 3 8 C 8 6 - A A B 2 - 4 8 6 4 - A E 0 5 - 0 4 5 0 8 B D 7 8 3 F 0 ' ) ,   - - P r a y e r   T e a m  
 ( ' 6 2 1 E 0 3 C 5 - 6 5 8 6 - 4 5 0 B - A 3 4 0 - C C 7 D 9 7 2 7 B 6 9 A ' ) ,   - - V i e w   M y   G i v i n g   P a g e  
 ( ' F F F D C E 2 3 - 7 B 6 7 - 4 B 0 D - 8 D A 0 - E 4 4 D 8 8 3 7 0 8 C C ' ) ,   - - M a n a g e   G i v i n g   P r o f i l e s  
 ( ' 2 0 7 2 F 4 B C - 5 3 B 4 - 4 4 8 1 - B C 1 5 - 3 8 F 1 4 4 2 5 C 6 C 9 ' ) ,   - - E d i t   G i v i n g   P r o f i l e  
 ( ' C 0 8 5 4 F 8 4 - 2 E 8 B - 4 7 9 C - A 3 F B - 6 B 4 7 B E 8 9 B 7 9 5 ' )   - - M y   A c c o u n t  
  
 - -   E x t e r n a l   s i t e   b l o c k s  
 i n s e r t   i n t o   # k n o w n G u i d s T o I g n o r e   v a l u e s    
 ( ' A 2 A E C 6 5 5 - D C 6 A - 4 6 B 6 - 9 2 3 6 - 2 0 9 C 8 6 1 0 A F 2 9 ' ) ,   - -   B l o c k : A d   L i s t ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 1 8 F 2 C 1 E 7 - 4 8 E 2 - 4 A 9 8 - B 1 8 4 - 8 C 1 5 D 6 F 3 D 4 3 3 ' ) ,   - -   B l o c k : A d   R o t a t o r ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 9 3 2 F 7 6 9 B - 2 5 7 5 - 4 F 3 1 - 8 9 9 3 - C 5 B B 4 F 6 D B A 6 F ' ) ,   - -   B l o c k : A d d   P r a y e r   R e q u e s t ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 E 5 9 5 0 E 9 - E 8 5 4 - 4 3 C A - A 1 0 F - 3 0 2 F D 4 E B B 8 3 4 ' ) ,   - -   B l o c k : C h a n g e   P a s s w o r d ,   P a g e :   C h a n g e   P a s s w o r d ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' E A 7 C 6 D 4 A - 1 4 3 F - 4 7 F F - B 0 A 8 - D 1 3 2 9 F D 8 A F 9 5 ' ) ,   - -   B l o c k : C o n f i r m   A c c o u n t ,   P a g e :   A c c o u n t   C o n f i r m a t i o n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 A C 3 5 C 5 D - C 3 9 5 - 4 0 B 0 - 9 2 9 3 - 8 8 1 5 3 D F 1 D 1 B 3 ' ) ,   - -   B l o c k : C o n t e n t ,   P a g e :   G i v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 1 8 6 D 8 9 D 6 - 8 3 6 6 - 4 0 1 D - 8 2 C D - 4 3 6 7 3 5 5 A A 2 D 6 ' ) ,   - -   B l o c k : C o n t e n t ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 9 1 7 D F D E - D 2 E 2 - 4 5 0 6 - A D 7 C - B 0 0 E 4 4 F E C 3 D D ' ) ,   - -   B l o c k : C o n t e n t ,   P a g e :   C o n n e c t ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 E 1 F 8 3 F A - 7 F 4 5 - 4 A 4 5 - B E 8 C - A F 3 8 F 6 2 0 F B C F ' ) ,   - -   B l o c k : C o n t e n t ,   P a g e :   C h i l d r e n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B D 3 4 0 1 D C - 5 C F 7 - 4 8 4 4 - 8 4 C 9 - 3 3 3 5 F 5 F 9 D C D D ' ) ,   - -   B l o c k : C o n t e n t ,   P a g e :   S t u d e n t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 2 A 6 1 C F 9 9 - A 5 8 B - 4 D 9 3 - 8 9 8 9 - 8 9 1 7 6 5 0 4 F 4 6 5 ' ) ,   - -   B l o c k : C o n t e n t ,   P a g e :   A d u l t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D 4 3 D 2 B D 0 - 4 D 6 8 - 4 C 7 5 - 9 1 2 6 - 4 0 D E C 9 2 9 C F 5 E ' ) ,   - -   B l o c k : C o n t e n t ,   P a g e :   M i s s i o n s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 9 6 A 4 9 0 5 3 - 7 5 E F - 4 E 2 F - 8 7 D A - 2 4 5 8 D 7 D A 2 8 5 9 ' ) ,   - -   B l o c k : C o n t e n t ,   P a g e :   S e r v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 9 4 3 2 D 8 0 4 - 7 D E 1 - 4 B 0 9 - 8 6 F 8 - 0 F B D 1 B 9 4 4 D A C ' ) ,   - -   B l o c k : C o n t e n t ,   P a g e :   S m a l l   G r o u p s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 3 D 4 D B 3 6 - A 7 9 6 - 4 8 7 0 - B 2 7 6 - A 4 9 4 9 1 7 4 8 6 9 F ' ) ,   - -   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C F E C D 4 3 5 - F F 9 1 - 4 D F 6 - 9 3 0 5 - A D D 0 3 A 4 2 4 5 E 0 ' ) ,   - -   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 C 8 E 7 9 0 5 - 2 7 3 C - 4 C D D - B 2 C 2 - F 7 6 1 6 7 2 9 6 F B 0 ' ) ,   - -   B l o c k : F o o t e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 A 5 6 D 1 0 F - 4 D B 3 - 4 4 7 4 - 8 B 0 C - B E 7 6 5 D A 5 6 5 6 7 ' ) ,   - -   B l o c k : F o o t e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B 1 C C 5 2 0 8 - C 9 C 5 - 4 3 D 5 - B 5 0 3 - 2 2 C D 5 4 1 4 7 5 5 B ' ) ,   - -   B l o c k : F o o t e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 A 5 3 F 5 1 0 - E 1 2 F - 4 2 B 4 - B F 6 8 - B 1 9 2 E B 9 2 3 5 4 E ' ) ,   - -   B l o c k : F o r g o t   U s e r N a m e ,   P a g e :   F o r g o t   P a s s w o r d ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C A B F B 3 3 1 - 8 8 7 8 - 4 6 B F - A A E 0 - 6 5 E 2 8 5 6 0 A E B B ' ) ,   - -   B l o c k : H e a d e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C F 0 6 9 E D 5 - F E 6 5 - 4 F 0 F - 9 3 E 3 - 8 6 E 5 B A B 2 8 3 9 6 ' ) ,   - -   B l o c k : H e a d e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 1 8 D 5 C A D 5 - A C 7 B - 4 6 C 3 - B 9 8 1 - 0 B 7 0 D 1 1 E F 2 0 C ' ) ,   - -   B l o c k : H e a d e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' A 8 E 2 2 1 F 0 - D E 4 E - 4 B 0 F - B 6 6 0 - B C 7 A C 2 2 9 8 E F 8 ' ) ,   - -   B l o c k : L o g i n ,   P a g e :   L o g i n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 5 A 5 C 6 0 6 3 - E A 0 D - 4 E D D - A 3 9 4 - 4 B 1 B 7 7 2 F 2 0 4 1 ' ) ,   - -   B l o c k : L o g i n   S t a t u s ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 5 C E 3 D 6 6 8 - 8 5 B F - 4 B 3 F - 9 1 B E - A B 4 B F 8 B A 2 4 B 9 ' ) ,   - -   B l o c k : L o g i n   S t a t u s ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' A D 5 D 5 1 5 5 - D 5 A C - 4 4 4 5 - A 2 C 1 - C 4 E 8 D C 6 C F 2 3 E ' ) ,   - -   B l o c k : L o g i n   S t a t u s ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 B 8 B D 9 5 3 - E A D 9 - 4 C 3 2 - B D 4 B - 0 6 C 3 9 D F 8 5 1 2 5 ' ) ,   - -   B l o c k : M a r k e t i n g   C a m p a i g n   A d   D e t a i l ,   P a g e :   A d   D e t a i l s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 9 D 2 C E F 0 0 - 3 A 7 E - 4 6 1 A - A 2 4 5 - 9 8 F 3 A 6 6 3 7 B E 4 ' ) ,   - -   B l o c k : N a v i g a t i o n ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C B 1 C 0 E 0 3 - E 5 9 0 - 4 5 1 D - A 6 D A - 7 E E E F F 9 1 A 5 3 1 ' ) ,   - -   B l o c k : N e w   A c c o u n t ,   P a g e :   A c c o u n t   R e g i s t r a t i o n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D D F E A D 2 B - 0 2 7 8 - 4 4 E 8 - 9 5 5 2 - 4 D 6 E 9 F 6 D 5 E 4 5 ' ) ,   - -   B l o c k : O r g   I n f o ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C 8 B 7 D E 9 D - 9 0 F A - 4 5 A 1 - B 6 C E - E 9 9 4 9 C F 7 E E 4 7 ' ) ,   - -   B l o c k : P a g e   C o n t e n t ,   P a g e :   N e w   H e r e ? ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' E A 5 9 2 A E 0 - 0 E 5 6 - 4 7 2 B - 9 F A 4 - F 3 2 A 4 A C 3 A 7 9 0 ' ) ,   - -   B l o c k : P a g e   C o n t e n t ,   P a g e :   R e s o u r c e s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 5 3 D 1 0 D 8 - 0 C 3 0 - 4 7 2 1 - 8 4 4 6 - E 4 6 3 6 9 6 9 A 5 2 4 ' ) ,   - -   B l o c k : P a g e   M e n u ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 6 A B C F B 9 - 3 D 1 D - 4 A 2 B - 9 0 1 2 - 6 E C F F C B 0 0 D E 9 ' ) ,   - -   B l o c k : P a g e   N a v ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 2 B 5 6 A 2 F 3 - 8 C B 9 - 4 3 3 E - 8 4 F F - D E A 9 5 F 5 9 2 C B D ' ) ,   - -   B l o c k : S e p a r a t o r ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C 7 1 6 B D E 0 - F 3 0 B - 4 2 3 3 - 8 5 8 7 - 1 3 3 4 0 B 7 8 F 7 8 9 ' ) ,   - -   B l o c k : S u b   N a v ,   P a g e :   M i s s i o n s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 3 3 9 3 8 C B 4 - 4 C C C - 4 5 B 6 - 8 9 D 8 - A 5 A 1 4 E A C 0 4 E E ' ) ,   - -   B l o c k : S u b   N a v ,   P a g e :   S e r v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 8 3 A 9 8 1 B E - D 0 D 2 - 4 0 3 1 - 8 2 3 0 - 6 E 9 7 E 5 7 8 B C F F ' ) ,   - -   B l o c k : S u b   N a v ,   P a g e :   S m a l l   G r o u p s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 5 E 2 F 9 D 0 4 - B E 2 C - 4 C E 7 - 9 C 9 6 - E B C 5 D 8 F E 9 5 1 3 ' ) ,   - -   B l o c k : S u b   N a v ,   P a g e :   C h i l d r e n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' F 4 3 7 F 7 9 A - 9 4 5 2 - 4 9 3 2 - 8 0 A A - C C 1 6 E 7 B 8 4 C 8 7 ' ) ,   - -   B l o c k : S u b   N a v ,   P a g e :   S t u d e n t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 9 2 9 7 0 C 5 5 - 6 9 7 8 - 4 B D 7 - 8 3 2 A - 9 8 3 2 9 5 0 5 2 3 0 3 ' ) ,   - -   B l o c k : S u b   N a v ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D B 3 6 C 9 7 A - D 4 6 2 - 4 9 B 7 - 8 7 3 5 - 6 6 E C 2 B 1 D 3 0 9 2 ' ) ,   - -   B l o c k : S u b   N a v ,   P a g e :   A d u l t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' A B B 7 8 D C 8 - 3 E 9 1 - 4 7 7 8 - B F 4 F - 7 A 1 6 1 F 9 7 7 B D A ' ) ,   - -   B l o c k : S u b   N a v ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C C E 6 2 5 4 5 - 6 B 2 A - 4 1 8 C - B A A C - 0 7 5 2 1 A 6 F 4 F 1 6 ' ) ,   - -   B l o c k : S u b   N a v ,   P a g e :   G i v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C 6 0 0 7 4 3 7 - A 5 6 5 - 4 1 4 4 - 9 D B 3 - D D 5 9 0 D 6 2 D 5 E 2 ' ) ,   - -   B l o c k : S u b   N a v ,   P a g e :   P l e d g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' E 7 B 2 E E F 7 - B 0 6 E - 4 F F F - 8 4 4 3 - A 1 0 D E C 3 0 E 1 F D ' ) ,   - -   B l o c k   t o   P a g e :   G i v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 8 A 5 E 5 1 4 4 - 3 0 5 4 - 4 F C 9 - A D 8 A - B 0 F 4 8 1 3 C 9 4 E 4 ' ) ,   - -   B l o c k   t o   P a g e :   V i e w   M y   G i v i n g ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 B 6 2 A 7 2 7 - 1 A E B - 4 1 3 4 - A F A E - 1 E B B 7 3 A 6 B 0 9 8 ' ) ,   - -   B l o c k   t o   P a g e :   V i e w   M y   G i v i n g ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B 4 F A D F 7 6 - E D 2 5 - 4 6 4 1 - A 0 4 1 - 4 A E 2 D 4 6 F D 6 8 9 ' ) ,   - -   B l o c k   t o   P a g e :   V i e w   M y   G i v i n g ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 9 5 C 6 0 0 4 1 - E 6 C 7 - 4 0 1 1 - 8 8 4 1 - 6 2 4 3 E 2 C 0 2 0 8 C ' ) ,   - -   B l o c k   t o   P a g e :   G i v e   N o w ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 1 A A 8 0 7 E - D D 7 5 - 4 C 1 B - 9 6 E 0 - 7 6 0 D 1 A D 0 6 0 1 5 ' ) ,   - -   B l o c k   t o   P a g e :   M a n a g e   G i v i n g   P r o f i l e s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 8 8 4 1 5 B D 1 - A 4 5 8 - 4 1 1 1 - B D C 9 - 3 F 6 6 D C 7 8 2 E 7 1 ' ) ,   - -   B l o c k   t o   P a g e :   M a n a g e   G i v i n g   P r o f i l e s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 D 9 1 D D 2 F - 5 1 9 C - 4 A 4 A - A B 0 3 - 0 9 3 3 F C 1 2 B E 7 E ' ) ,   - -   B l o c k   t o   P a g e :   M a n a g e   G i v i n g   P r o f i l e s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 0 3 0 4 1 2 3 - B 2 7 F - 4 A 7 E - 8 2 5 B - 5 B 2 8 5 E 6 C C F 1 3 ' ) ,   - -   B l o c k   t o   P a g e :   E d i t   G i v i n g   P r o f i l e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 5 F 1 5 3 9 7 - 3 B 8 2 - 4 8 7 9 - B 0 6 9 - D A B D 3 6 1 9 F A A 3 ' ) ,   - -   B l o c k   t o   P a g e :   E d i t   G i v i n g   P r o f i l e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 F 9 C 0 A 6 C - B D A F - 4 6 2 C - B 1 A 2 - C 6 1 E 3 D E 6 0 E C 9 ' ) ,   - -   B l o c k   t o   P a g e :   P l e d g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 8 3 D 0 0 1 8 A - C A E 4 - 4 6 9 F - 8 4 A 7 - A 1 1 3 C D 2 E C 0 3 3 ' ) ,   - -   B l o c k   t o   P a g e :   P l e d g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 2 3 0 5 7 9 2 4 - 1 0 4 C - 4 3 B 4 - 8 6 C E - 2 9 7 B 8 B 2 3 6 C D 2 ' ) ,   - -   B l o c k : S u b N a v ,   P a g e :   C o n n e c t ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 9 5 0 2 7 C B - 9 1 1 4 - 4 C D 5 - A B E 8 - 1 E 8 8 8 2 4 2 2 D C F ' ) ,   - -   B l o c k   t o   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 2 E 0 F F D 2 9 - B 4 A F - 4 A 5 E - B 5 2 8 - 6 6 7 1 6 8 7 6 2 A B C ' )   - -   B l o c k   t o   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
  
 - -   I n t e r n a l   s i t e   P e r s o n D e t a i l   b l o c k s  
 i n s e r t   i n t o   # k n o w n G u i d s T o I g n o r e   v a l u e s    
 ( ' 7 F B 0 B E 5 5 - 6 6 9 5 - 4 8 B 6 - 9 E A 3 - D 5 A 5 3 3 7 5 2 E D 8 ' ) ,   - -   P a g e :   E x t e n d e d   A t t r i b u t e s ,   B l o c k : M e m b e r S h i p  
 ( ' 8 E 8 6 F D C D - 4 1 8 9 - 4 E A 4 - 8 3 7 0 - 2 4 A B D 6 4 6 3 5 1 6 ' ) ,   - -   P a g e :   E x t e n d e d   A t t r i b u t e s ,   B l o c k : V i s i t   I n f o r m a t i o n  
 ( ' 4 4 1 F 8 4 9 F - 3 7 C 2 - 4 7 0 9 - B 9 B B - 4 1 7 2 0 4 A F 3 1 6 8 ' ) ,   - -   P a g e :   E x t e n d e d   A t t r i b u t e s ,   B l o c k : C h i l d h o o d   I n f o r m a t i o n  
 ( ' 4 6 D 2 5 4 C 2 - 5 A 3 6 - 4 F 9 9 - 9 7 A 3 - 4 5 D A 8 A 4 9 D B 9 0 ' ) ,   - -   P a g e :   E x t e n d e d   A t t r i b u t e s ,   B l o c k : E m p l o y m e n t  
 ( ' F F C 9 D F 5 7 - 3 E 1 8 - 4 9 2 C - B 6 2 2 - 3 E A 1 6 7 D 7 E B A 1 ' )   - -   P a g e :   E x t e n d e d   A t t r i b u t e s ,   B l o c k : E d u c a t i o n  
  
 - -   I n t e r n a l   s i t e   b l o c k s  
 i n s e r t   i n t o   # k n o w n G u i d s T o I g n o r e   v a l u e s    
 ( ' 7 1 8 C 5 1 6 F - 0 A 1 D - 4 D B C - A 9 3 9 - 1 D 9 7 7 7 2 0 8 F E C ' ) ,   - -   P a g e :   I n t r a n e t   >   E m p l o y e e   R e s o u r c e s ,   B l o c k : H R   I N f o  
 ( ' B 8 2 2 4 C 7 2 - 4 1 6 8 - 4 0 F 0 - 9 6 B E - 3 8 F 2 A F D 5 2 5 F 5 ' ) ,   - -   P a g e :   I n t r a n e t   >   S h a r e d   D o c s ,    
 ( ' 6 A 6 4 8 E 7 7 - A B A 9 - 4 A A F - A 8 B B - 0 2 7 A 1 2 2 6 1 E D 9 ' ) ,   - -   I n t e r n a l   H o m e   P a g e   >   H T M L   C o n t e n t   Q u i c k   L i n k s  
 ( ' C B 8 F 9 1 5 2 - 0 8 B B - 4 5 7 6 - B 7 A 1 - B 0 D D D 9 8 8 0 C 4 4 ' ) ,   - -   I n t e r n a l   H o m e   P a g e   >   A c t i v e   U s e r s   I n t e r n a l  
 ( ' 0 3 F C B F 5 A - 4 2 E 0 - 4 F 4 5 - B 6 7 0 - B C 8 E 3 2 4 B D 5 7 3 ' )     - -   I n t e r n a l   H o m e   P a g e   >   A c t i v e   U s e r s   E x t e r n a l  
  
 - -   I n t e r n a l   s i t e   P e r s o n D e t a i l   b l o c k   a t t r i b u t e   v a l u e s  
 i n s e r t   i n t o   # k n o w n G u i d s T o I g n o r e   v a l u e s    
 ( ' e 9 1 9 e 7 2 2 - f 8 9 5 - 4 4 a 4 - b 8 6 d - 3 8 d b 8 f b a 1 8 4 4 ' ) ,   - -   A t t r i b u t e : C a t e g o r y   P a g e   ,   P a g e :   E x t e n d e d   A t t r i b u t e s ,   B l o c k : M e m b e r S h i p  
 ( ' 7 b 8 7 9 9 2 2 - 5 d a 6 - 4 1 e e - a c 0 b - 4 5 c e f f b 9 9 4 5 8 ' ) ,   - -   A t t r i b u t e : C a t e g o r y   P a g e   ,   P a g e :   E x t e n d e d   A t t r i b u t e s ,   B l o c k : V i s i t   I n f o r m a t i o n  
 ( ' 7 5 2 d c 6 9 2 - 8 3 6 e - 4 a 3 e - b 6 7 0 - 4 3 2 5 c d 7 7 2 4 b f ' ) ,   - -   A t t r i b u t e : C a t e g o r y   P a g e   ,   P a g e :   E x t e n d e d   A t t r i b u t e s ,   B l o c k : C h i l d h o o d   I n f o r m a t i o n  
 ( ' f 6 b 9 8 d 0 c - 1 9 7 d - 4 3 3 a - 9 1 7 b - 0 c 3 9 a 8 0 a 7 9 e 8 ' ) ,   - -   A t t r i b u t e : C a t e g o r y   P a g e   ,   P a g e :   E x t e n d e d   A t t r i b u t e s ,   B l o c k : E m p l o y m e n t  
 ( ' 9 a f 2 8 5 9 3 - e 6 3 1 - 4 1 e 4 - b 6 9 6 - 7 8 0 1 5 a 4 d 6 f 7 b ' )   - -   A t t r i b u t e : C a t e g o r y   P a g e   ,   P a g e :   E x t e n d e d   A t t r i b u t e s ,   B l o c k : E d u c a t i o n  
  
 - -   E x t e r n a l   s i t e   b l o c k   a t t r i b u t e   v a l u e s  
 i n s e r t   i n t o   # k n o w n G u i d s T o I g n o r e   v a l u e s    
 ( ' 5 4 1 7 9 2 8 7 - 4 7 5 7 - 4 0 6 9 - 8 D 9 C - 0 4 3 C A A 3 D A 0 9 6 ' ) ,   - -   A t t r i b u t e / V a l u e : A d   T y p e s / 2 ,   B l o c k : A d   L i s t ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 0 1 B 5 A 8 E - 4 0 7 2 - 4 8 B C - B 9 C 0 - 1 8 3 B 9 0 1 B A 0 8 8 ' ) ,   - -   A t t r i b u t e / V a l u e : A u d i e n c e / 5 7 b 2 a 2 3 f - 3 b 0 c - 4 3 a 8 - 9 f 4 5 - 3 3 2 1 2 0 d ,   B l o c k : A d   L i s t ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 2 B A 5 8 E 7 - A 6 E 5 - 4 9 E 1 - 9 7 5 F - 3 4 2 A 6 B 1 3 9 8 5 A ' ) ,   - -   A t t r i b u t e / V a l u e : A u d i e n c e   P r i m a r y   S e c o n d a r y / 1 , 2 ,   B l o c k : A d   L i s t ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 3 A B C F 0 E A - 5 1 5 9 - 4 5 E 9 - 8 3 1 D - D 7 A 4 3 A 6 9 5 6 6 8 ' ) ,   - -   A t t r i b u t e / V a l u e : C a m p u s e s / 1 ,   B l o c k : A d   L i s t ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 9 7 8 9 D 3 B C - 8 8 7 8 - 4 5 0 E - B 6 6 4 - 8 8 C E A C C C C B 8 9 ' ) ,   - -   A t t r i b u t e / V a l u e : D e t a i l   P a g e / 5 e b 0 7 6 8 6 - d 0 3 2 - 4 1 a 5 - 9 5 c 0 - f d 3 6 f 9 3 ,   B l o c k : A d   L i s t ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D 0 5 6 4 6 0 0 - 3 6 1 D - 4 5 2 B - 9 8 B 8 - 2 5 9 3 B 2 5 A D D 7 1 ' ) ,   - -   A t t r i b u t e / V a l u e : E n a b l e   D e b u g / F a l s e ,   B l o c k : A d   L i s t ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 1 D 5 6 9 A 7 - C 9 8 3 - 4 0 B 1 - B 3 4 B - 3 6 E 9 3 9 E 2 2 5 5 A ' ) ,   - -   A t t r i b u t e / V a l u e : I m a g e   H e i g h t / ,   B l o c k : A d   L i s t ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 5 6 6 4 C 9 9 F - 3 2 E 7 - 4 C 7 6 - 8 5 C 8 - 4 3 F 0 C B 0 3 0 F 3 2 ' ) ,   - -   A t t r i b u t e / V a l u e : I m a g e   T y p e s / P r o m o t i o n I m a g e ,   B l o c k : A d   L i s t ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D 6 0 6 E B 8 C - 0 4 0 3 - 4 0 3 D - 8 3 2 8 - F 5 5 C 6 B D 9 9 0 0 E ' ) ,   - -   A t t r i b u t e / V a l u e : I m a g e   W i d t h / 4 0 0 ,   B l o c k : A d   L i s t ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D 8 4 6 4 6 C E - 5 D C 4 - 4 B F 2 - A F 2 9 - 8 3 2 3 C 5 0 9 F E 6 F ' ) ,   - -   A t t r i b u t e / V a l u e : M a x   I t e m s / 3 ,   B l o c k : A d   L i s t ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 8 4 4 5 C E 3 2 - 2 7 4 E - 4 B A 4 - B 9 2 1 - B 0 0 C D E 3 F 5 8 B E ' ) ,   - -   A t t r i b u t e / V a l u e : T e m p l a t e / { %   i n c l u d e   ' A d L i s t '   % } ,   B l o c k : A d   L i s t ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C 0 7 6 F 5 1 A - 6 F B 3 - 4 8 D 3 - A B 1 2 - 8 B 1 8 7 B 7 0 7 9 6 E ' ) ,   - -   A t t r i b u t e / V a l u e : A d   T y p e s / 2 ,   B l o c k : A d   R o t a t o r ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 9 B 1 A 9 A 0 D - 8 B A 6 - 4 3 0 8 - A 5 B 5 - 8 A 0 9 7 D 2 2 C B 4 0 ' ) ,   - -   A t t r i b u t e / V a l u e : A u d i e n c e / b 3 6 4 c d e e - f 0 0 0 - 4 9 6 5 - a e 6 7 - 0 c 8 0 d d a ,   B l o c k : A d   R o t a t o r ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 5 4 B 2 E 0 F - 4 E 4 0 - 4 C C B - A C 2 F - 4 6 A 6 9 6 7 3 7 6 D 2 ' ) ,   - -   A t t r i b u t e / V a l u e : A u d i e n c e   P r i m a r y   S e c o n d a r y / 1 , 2 ,   B l o c k : A d   R o t a t o r ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 1 A 5 C 3 5 2 - 5 7 F 1 - 4 7 F B - B 5 4 B - C 0 D B 9 D 7 A 1 7 2 F ' ) ,   - -   A t t r i b u t e / V a l u e : C a m p u s e s / 1 ,   B l o c k : A d   R o t a t o r ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' A 0 2 7 3 2 4 6 - E 0 E 5 - 4 6 B F - B 2 8 4 - A 8 0 6 9 0 3 0 9 E D 9 ' ) ,   - -   A t t r i b u t e / V a l u e : D e t a i l   P a g e / 5 e b 0 7 6 8 6 - d 0 3 2 - 4 1 a 5 - 9 5 c 0 - f d 3 6 f 9 3 ,   B l o c k : A d   R o t a t o r ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 3 B 0 1 0 1 E D - 7 B 4 A - 4 8 C 1 - B 5 5 4 - D 4 E E D F 8 C A 6 C C ' ) ,   - -   A t t r i b u t e / V a l u e : E n a b l e   D e b u g / F a l s e ,   B l o c k : A d   R o t a t o r ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 1 3 6 3 4 C 1 - 0 4 5 6 - 4 E 2 2 - 8 4 6 0 - D C 2 9 9 E 4 F 1 4 F D ' ) ,   - -   A t t r i b u t e / V a l u e : I m a g e   H e i g h t / ,   B l o c k : A d   R o t a t o r ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 3 5 4 D A A 2 - 6 E C 2 - 4 5 B 2 - 8 A 7 1 - 7 8 6 F A E 8 B 3 E 0 1 ' ) ,   - -   A t t r i b u t e / V a l u e : I m a g e   T y p e s / P r o m o t i o n I m a g e ,   B l o c k : A d   R o t a t o r ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 8 1 A 8 6 6 6 - 9 4 8 0 - 4 8 C 4 - 8 B F F - 2 2 F 3 D 7 2 1 4 3 F E ' ) ,   - -   A t t r i b u t e / V a l u e : I m a g e   W i d t h / ,   B l o c k : A d   R o t a t o r ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B 4 1 7 D A 0 4 - D 0 8 0 - 4 E C 0 - B 3 7 E - 4 1 F D E C 0 5 0 9 5 2 ' ) ,   - -   A t t r i b u t e / V a l u e : M a x   I t e m s / 7 ,   B l o c k : A d   R o t a t o r ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 0 A 7 2 4 6 D - 2 6 F C - 4 1 C 2 - A F 0 F - 8 7 9 C F 2 5 6 5 4 F D ' ) ,   - -   A t t r i b u t e / V a l u e : T e m p l a t e / { %   i n c l u d e   ' A d R o t a t o r '   % } ,   B l o c k : A d   R o t a t o r ,   P a g e :   E x t e r n a l   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 3 4 4 4 A E 2 9 - 8 6 0 4 - 4 0 C 7 - A 9 1 A - 2 4 E 4 2 3 5 9 1 F 3 3 ' ) ,   - -   A t t r i b u t e / V a l u e : C a c h e   D u r a t i o n / 3 6 0 0 ,   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D 3 0 9 8 1 9 8 - 9 B F 8 - 4 1 F 4 - A F B 1 - 6 3 5 A 6 5 7 C 3 0 A 7 ' ) ,   - -   A t t r i b u t e / V a l u e : C a c h e   D u r a t i o n / 3 6 0 0 ,   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' E E 0 5 6 1 1 7 - 7 7 0 8 - 4 3 3 E - B F 6 6 - 4 D C 6 E A 1 C 6 2 7 6 ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   N a m e / F o o t e r A d d r e s s ,   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B D 3 0 E F 3 7 - E C 9 E - 4 B A 8 - 8 2 B 6 - 4 9 E B 7 D 3 4 9 1 4 C ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   N a m e / F o o t e r A d d r e s s ,   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' A 3 C 1 0 1 2 E - 2 3 C 5 - 4 A C 0 - B 0 2 0 - D A C 5 0 4 C 1 4 5 8 3 ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   P a r a m e t e r / ,   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 9 0 6 D C F 5 1 - E 2 C 9 - 4 2 3 9 - 9 5 4 1 - 7 E 2 B 9 E F 8 3 F 6 C ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   P a r a m e t e r / ,   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B C B A 5 8 E 4 - 3 E 5 8 - 4 1 5 9 - 8 7 9 7 - A 7 6 A C 8 2 6 A 4 C B ' ) ,   - -   A t t r i b u t e / V a l u e : P o s t - T e x t / < / d i v > ,   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 7 3 4 4 8 D 0 - 1 C A 8 - 4 B 7 B - 8 4 3 F - F A F D 5 C 0 8 5 7 7 6 ' ) ,   - -   A t t r i b u t e / V a l u e : P o s t - T e x t / < / d i v > ,   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' A 5 2 8 F 9 8 8 - 8 7 6 B - 4 5 4 9 - B 5 2 A - F 1 F 2 E F 2 2 9 C F 3 ' ) ,   - -   A t t r i b u t e / V a l u e : P r e - T e x t / < d i v   c l a s s = " f o o t e r - a d d r e s s " > ,   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B 7 5 F C E B E - 4 5 D E - 4 E C 7 - 9 B E 5 - C 9 2 E 0 8 D E 2 B E 2 ' ) ,   - -   A t t r i b u t e / V a l u e : P r e - T e x t / < d i v   c l a s s = " f o o t e r - a d d r e s s " > ,   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C E 4 B 3 5 9 6 - B B F D - 4 C F 7 - 8 4 D 0 - 9 2 8 0 F 3 E 9 C F 0 1 ' ) ,   - -   A t t r i b u t e / V a l u e : R e q u i r e   A p p r o v a l / F a l s e ,   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 8 2 F F 2 8 E 2 - A C 4 9 - 4 B 5 C - 8 B 3 F - 4 A B A C B 3 B D 0 1 3 ' ) ,   - -   A t t r i b u t e / V a l u e : R e q u i r e   A p p r o v a l / F a l s e ,   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 9 C 5 B 3 F E - 2 F 4 1 - 4 2 6 B - 8 E 4 F - D 5 8 3 C 4 3 D 7 9 8 5 ' ) ,   - -   A t t r i b u t e / V a l u e : S u p p o r t   V e r s i o n s / F a l s e ,   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B D 7 D D 9 B 5 - E C D D - 4 1 8 3 - 9 9 5 5 - B C F B 0 E F B 2 A 8 6 ' ) ,   - -   A t t r i b u t e / V a l u e : S u p p o r t   V e r s i o n s / F a l s e ,   B l o c k : F o o t e r   A d d r e s s ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 2 8 4 0 A 6 0 5 - 1 0 F 8 - 4 F 2 F - B 3 E 1 - 1 A 2 D F 5 4 0 7 D 8 7 ' ) ,   - -   A t t r i b u t e / V a l u e : C a c h e   D u r a t i o n / 3 6 0 0 ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 E D 4 A 0 A 0 - C 7 3 B - 4 D B 1 - B 9 9 E - 7 C A 6 3 7 4 1 7 7 9 1 ' ) ,   - -   A t t r i b u t e / V a l u e : C a c h e   D u r a t i o n / 3 6 0 0 ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 2 C 2 C F 5 D 9 - A 9 6 E - 4 A C 9 - A B 8 E - D 3 6 E A E A 2 0 B 1 2 ' ) ,   - -   A t t r i b u t e / V a l u e : C a c h e   D u r a t i o n / 3 6 0 0 ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 2 7 2 7 1 C F C - 1 E B 7 - 4 8 2 5 - 8 8 F B - C 7 A B 2 E 4 D F 3 1 E ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   N a m e / E x t e r n a l S i t e F o o t e r T e x t ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' F C F 5 7 4 C 9 - A C F 5 - 4 1 1 0 - B 8 D F - 6 9 9 B B B 6 D 2 8 A 9 ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   N a m e / E x t e r n a l S i t e F o o t e r T e x t ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C 8 E 4 5 6 D 3 - B 8 2 F - 4 E 7 4 - B 5 8 2 - 1 A 4 5 6 E 9 2 5 1 5 2 ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   N a m e / E x t e r n a l S i t e F o o t e r T e x t ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 8 F 7 F 6 F 0 - C D 0 E - 4 A F 6 - 9 7 E 6 - A 2 D 5 1 9 1 E 9 7 6 2 ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   P a r a m e t e r / ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 4 1 5 D F 5 D - F 7 5 0 - 4 D 7 5 - 8 8 2 9 - 6 9 4 4 B D B B B A E B ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   P a r a m e t e r / ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D A 7 2 C D C 0 - 6 A 9 6 - 4 C F 3 - A 6 4 6 - E C D F 2 7 5 0 E 9 6 7 ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   P a r a m e t e r / ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' E E B 2 B D 3 E - 9 2 9 4 - 4 5 E 9 - 8 E 0 5 - E B 7 2 1 0 0 2 6 8 6 7 ' ) ,   - -   A t t r i b u t e / V a l u e : P o s t - T e x t / < / d i v > ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 A 2 E 3 2 6 B - A 2 8 9 - 4 C 4 0 - 8 3 1 3 - F 5 0 D C 9 D D 3 E C 3 ' ) ,   - -   A t t r i b u t e / V a l u e : P o s t - T e x t / < / d i v > ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 2 0 D 2 2 7 7 - 3 B 4 B - 4 C E 9 - B 1 4 B - 0 2 C 5 6 2 9 0 8 9 4 3 ' ) ,   - -   A t t r i b u t e / V a l u e : P o s t - T e x t / < / d i v > ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 3 D A C 0 2 D A - 5 8 6 2 - 4 D A B - B B 3 D - 2 4 E 9 4 2 6 9 8 6 2 A ' ) ,   - -   A t t r i b u t e / V a l u e : P r e - T e x t / < d i v   c l a s s = " f o o t e r - m e s s a g e " > ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B C F 7 0 0 6 6 - B C 6 0 - 4 1 B D - 8 E 5 F - 2 3 0 6 D 8 1 5 E 7 7 D ' ) ,   - -   A t t r i b u t e / V a l u e : P r e - T e x t / < d i v   c l a s s = " f o o t e r - m e s s a g e " > ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 E 2 9 8 8 A B - F A 5 B - 4 3 2 3 - A 2 5 6 - B D F 6 0 0 8 4 B E 2 6 ' ) ,   - -   A t t r i b u t e / V a l u e : P r e - T e x t / < d i v   c l a s s = " f o o t e r - m e s s a g e " > ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C B 8 5 F F 8 4 - B F 7 4 - 4 7 6 1 - 9 D 9 E - B B 2 C 3 6 E 9 1 A 1 D ' ) ,   - -   A t t r i b u t e / V a l u e : R e q u i r e   A p p r o v a l / F a l s e ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 8 E 9 E A 6 4 2 - E A D 8 - 4 7 8 A - 9 B F B - F 8 C A 4 0 3 5 1 3 D E ' ) ,   - -   A t t r i b u t e / V a l u e : R e q u i r e   A p p r o v a l / F a l s e ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C 7 5 B 6 4 3 C - 4 E 5 A - 4 5 B 8 - 8 A A 0 - B 0 D 6 E 4 5 B 7 A A 3 ' ) ,   - -   A t t r i b u t e / V a l u e : R e q u i r e   A p p r o v a l / F a l s e ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C 4 9 B 4 5 3 3 - 8 0 D 5 - 4 F 4 0 - A 3 F C - D 5 2 1 2 3 A 2 D 5 1 1 ' ) ,   - -   A t t r i b u t e / V a l u e : S u p p o r t   V e r s i o n s / F a l s e ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 2 0 9 B 2 7 0 - 1 E 0 0 - 4 F 6 D - B 8 B 3 - A 5 F 9 5 6 1 5 5 3 0 B ' ) ,   - -   A t t r i b u t e / V a l u e : S u p p o r t   V e r s i o n s / F a l s e ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 5 E 8 3 3 E 4 5 - 5 D B 3 - 4 C C B - 8 B D B - C 7 3 4 3 2 9 0 3 D B C ' ) ,   - -   A t t r i b u t e / V a l u e : S u p p o r t   V e r s i o n s / F a l s e ,   B l o c k : F o o t e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' F F 1 1 F 1 B 3 - D E 1 6 - 4 B 6 2 - 8 7 5 4 - 4 7 8 2 6 B 4 4 2 E 7 C ' ) ,   - -   A t t r i b u t e / V a l u e : C o n f i r m a t i o n   P a g e / 2 8 8 d b e c 5 - 8 a 4 3 - 4 1 3 3 - 9 3 1 3 - a a 2 f e 8 1 ,   B l o c k : F o r g o t   U s e r N a m e ,   P a g e :   F o r g o t   P a s s w o r d ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 3 6 2 5 9 8 D 2 - D 0 E C - 4 9 9 5 - B A 5 0 - C B 5 2 B 3 E C 6 E 1 C ' ) ,   - -   A t t r i b u t e / V a l u e : H e a d i n g   C a p t i o n / E n t e r   y o u r   e m a i l   a d d r e s s   b e l o w   ,   B l o c k : F o r g o t   U s e r N a m e ,   P a g e :   F o r g o t   P a s s w o r d ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' F E 2 E 6 2 0 5 - D 8 8 8 - 4 A 4 D - 8 B 3 C - 3 8 F 2 E 0 D 8 B A 9 B ' ) ,   - -   A t t r i b u t e / V a l u e : I n v a l i d   E m a i l   C a p t i o n / T h e r e   a r e   n o t   a n y   a c c o u n t s   f o r   ,   B l o c k : F o r g o t   U s e r N a m e ,   P a g e :   F o r g o t   P a s s w o r d ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 8 8 3 8 8 E E 1 - 2 0 C D - 4 4 6 C - A A 3 0 - 1 F B 8 A 6 B C 8 B 3 C ' ) ,   - -   A t t r i b u t e / V a l u e : S u c c e s s   C a p t i o n / Y o u r   u s e r   n a m e   h a s   b e e n   s e n t   t o ,   B l o c k : F o r g o t   U s e r N a m e ,   P a g e :   F o r g o t   P a s s w o r d ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C 2 0 E B 2 0 4 - 8 1 7 9 - 4 7 C 4 - 8 C F 2 - F E F 6 4 1 8 5 D 3 A 1 ' ) ,   - -   A t t r i b u t e / V a l u e : C a c h e   D u r a t i o n / 3 6 0 0 ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 5 6 C B F 9 F 5 - 9 F 6 5 - 4 E 9 A - A A A 2 - 0 D 2 0 0 1 5 1 6 D B 1 ' ) ,   - -   A t t r i b u t e / V a l u e : C a c h e   D u r a t i o n / 3 6 0 0 ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 6 D 2 C 0 4 F - A C 2 4 - 4 F A 8 - 9 F F 8 - A 3 F E 3 E 7 A 4 7 D 8 ' ) ,   - -   A t t r i b u t e / V a l u e : C a c h e   D u r a t i o n / 3 6 0 0 ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' F 0 E 7 8 4 C 1 - 1 B D B - 4 E 8 0 - A 9 C F - 9 E 9 8 2 E E B 7 3 2 D ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   N a m e / E x t e r n a l S i t e H e a d e r T e x t ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 E A 0 E 8 8 2 - F C 1 B - 4 4 C D - A D F 3 - A E 9 A E 2 F 5 7 A B 8 ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   N a m e / E x t e r n a l S i t e H e a d e r T e x t ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 8 4 7 2 D 2 1 5 - 7 F 6 C - 4 2 6 0 - 8 F 9 C - 4 7 0 3 0 0 E C 7 3 E F ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   N a m e / E x t e r n a l S i t e H e a d e r T e x t ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 0 F 5 D 7 2 C - 7 8 F 7 - 4 7 D E - 9 0 7 1 - F 7 4 F F 7 B F 6 2 5 2 ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   P a r a m e t e r / ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 9 2 D F F 4 C 0 - 8 8 8 3 - 4 E 6 F - A B E C - F D 2 D 8 E 2 2 A 1 6 C ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   P a r a m e t e r / ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B B 5 F 6 6 E 9 - 9 A A C - 4 E E 0 - A B 0 D - 8 4 F B 5 2 2 D C B 5 2 ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   P a r a m e t e r / ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 B 3 0 C 7 3 7 - 4 F 4 D - 4 9 3 7 - 8 0 C 3 - 9 2 4 C D 1 E E D 8 E 9 ' ) ,   - -   A t t r i b u t e / V a l u e : P o s t - T e x t / ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 8 C 8 8 8 4 2 - 4 4 C 5 - 4 0 C B - 8 7 B 8 - 7 E E 4 4 E B B 6 C F 2 ' ) ,   - -   A t t r i b u t e / V a l u e : P o s t - T e x t / ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 2 D 5 F 9 3 9 - 1 6 0 0 - 4 E C 4 - B E A A - A 8 D 9 F F 1 8 3 1 F C ' ) ,   - -   A t t r i b u t e / V a l u e : P o s t - T e x t / ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 5 C C D 4 D 4 7 - B 9 F 5 - 4 7 9 A - B E 8 3 - 6 4 C 4 B B B 7 B 9 9 E ' ) ,   - -   A t t r i b u t e / V a l u e : P r e - T e x t / ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D F 1 D E 8 A D - A 7 2 1 - 4 B 5 E - A 7 4 9 - 7 4 B 5 A 6 E D 7 F 0 5 ' ) ,   - -   A t t r i b u t e / V a l u e : P r e - T e x t / ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D 1 B B 6 C 1 9 - E E 8 E - 4 7 E A - A E 1 E - 0 9 F 3 2 1 E F 1 6 3 6 ' ) ,   - -   A t t r i b u t e / V a l u e : P r e - T e x t / ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 0 B E A D 4 D - 8 C 4 5 - 4 D 1 6 - A 1 B F - 9 0 4 5 E 7 A 3 0 4 A 7 ' ) ,   - -   A t t r i b u t e / V a l u e : R e q u i r e   A p p r o v a l / F a l s e ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D 7 9 D 6 3 A A - A D 3 E - 4 5 6 7 - B 5 9 F - 1 4 F 6 9 A 6 6 1 2 2 E ' ) ,   - -   A t t r i b u t e / V a l u e : R e q u i r e   A p p r o v a l / F a l s e ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B 1 C 6 9 3 4 7 - 7 A B 6 - 4 B 6 4 - 8 9 3 E - 7 9 3 B E F 4 0 4 B A 3 ' ) ,   - -   A t t r i b u t e / V a l u e : R e q u i r e   A p p r o v a l / F a l s e ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 1 D D 8 5 4 4 6 - D 4 8 0 - 4 D B 7 - 9 5 4 3 - D 9 B 7 0 C 1 E B 8 F 3 ' ) ,   - -   A t t r i b u t e / V a l u e : S u p p o r t   V e r s i o n s / F a l s e ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 1 7 C 0 8 4 2 E - 1 D A 2 - 4 9 8 D - 9 3 5 D - F C 3 9 3 B C F 2 1 5 3 ' ) ,   - -   A t t r i b u t e / V a l u e : S u p p o r t   V e r s i o n s / F a l s e ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 6 E C 6 7 E 0 - 7 6 5 4 - 4 E 3 6 - B D 4 1 - 4 3 1 1 A 5 C D 3 9 8 B ' ) ,   - -   A t t r i b u t e / V a l u e : S u p p o r t   V e r s i o n s / F a l s e ,   B l o c k : H e a d e r   T e x t ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 3 C E 5 B 8 F 3 - 3 B F 5 - 4 6 9 4 - 9 E 0 A - A E 4 2 6 E 0 F D 6 9 5 ' ) ,   - -   A t t r i b u t e / V a l u e : L a y o u t / < i m g   s r c = " / G e t I m a g e . a s h x ? I d = { {   ,   B l o c k : M a r k e t i n g   C a m p a i g n   A d   D e t a i l ,   P a g e :   A d   D e t a i l s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 8 E 3 C 3 1 9 - 2 6 E 1 - 4 F 3 5 - 9 6 1 B - C 8 5 8 0 E 7 5 C 4 1 5 ' ) ,   - -   A t t r i b u t e / V a l u e : C S S   F i l e / ,   B l o c k : N a v i g a t i o n ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 3 C 3 B B 7 6 C - B 0 7 F - 4 2 9 C - B E 8 E - E 8 2 D E 8 0 3 4 5 8 4 ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   P a r a m e t e r s / F a l s e ,   B l o c k : N a v i g a t i o n ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' A 5 6 4 E 3 D 5 - 4 5 F B - 4 A 9 9 - B C 4 1 - 7 2 C 7 3 1 1 2 2 A C A ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   Q u e r y S t r i n g / F a l s e ,   B l o c k : N a v i g a t i o n ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C 4 5 C 7 2 C 2 - F B 0 D - 4 D 0 A - 8 1 9 D - C D 9 E 4 0 F 4 B B 4 C ' ) ,   - -   A t t r i b u t e / V a l u e : N u m b e r   o f   L e v e l s / 1 ,   B l o c k : N a v i g a t i o n ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 8 3 E 2 F 8 5 5 - 8 5 E 1 - 4 D 8 1 - 9 7 A 4 - 0 A C D 4 8 7 F E E A 3 ' ) ,   - -   A t t r i b u t e / V a l u e : R o o t   P a g e / 8 5 f 2 5 8 1 9 - e 9 4 8 - 4 9 6 0 - 9 d d f - 0 0 f 5 4 d 3 ,   B l o c k : N a v i g a t i o n ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C 4 F 6 5 E 1 D - F D 9 3 - 4 C F 6 - A 5 C 4 - 0 3 4 5 3 B 3 7 9 7 C 8 ' ) ,   - -   A t t r i b u t e / V a l u e : S h o w   D e b u g / F a l s e ,   B l o c k : N a v i g a t i o n ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C 3 4 B C 5 F A - 6 8 F 4 - 4 1 A 3 - 8 6 5 D - 8 D F A 7 C 6 5 5 2 2 D ' ) ,   - -   A t t r i b u t e / V a l u e : T e m p l a t e / { %   i n c l u d e   ' P a g e N a v '   % } ,   B l o c k : N a v i g a t i o n ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' A E B 2 9 4 C A - F F 2 F - 4 2 7 9 - 8 9 C 9 - 5 D 3 C 1 D 8 C F D 6 E ' ) ,   - -   A t t r i b u t e / V a l u e : C h e c k   f o r   D u p l i c a t e s / T r u e ,   B l o c k : N e w   A c c o u n t ,   P a g e :   A c c o u n t   R e g i s t r a t i o n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 1 D 8 5 0 D C B - A 4 F D - 4 D 8 1 - 8 C 7 7 - 9 8 2 0 6 1 E 5 7 E A 5 ' ) ,   - -   A t t r i b u t e / V a l u e : C o n f i r m   C a p t i o n / B e c a u s e   y o u ' v e   s e l e c t e d   a n   e x i s ,   B l o c k : N e w   A c c o u n t ,   P a g e :   A c c o u n t   R e g i s t r a t i o n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B 9 3 0 F 1 0 C - 6 E B C - 4 1 E 8 - A 5 7 8 - A 3 6 6 4 1 E E 4 F 3 D ' ) ,   - -   A t t r i b u t e / V a l u e : C o n f i r m a t i o n   P a g e / 2 8 8 d b e c 5 - 8 a 4 3 - 4 1 3 3 - 9 3 1 3 - a a 2 f e 8 1 ,   B l o c k : N e w   A c c o u n t ,   P a g e :   A c c o u n t   R e g i s t r a t i o n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 8 4 B 1 0 6 0 E - C B 2 8 - 4 3 7 8 - 9 2 7 5 - 1 A 9 1 4 5 A 7 3 7 2 A ' ) ,   - -   A t t r i b u t e / V a l u e : E x i s t i n g   A c c o u n t   C a p t i o n / { 0 } ,   y o u   a l r e a d y   h a v e   a n   e x i s t i ,   B l o c k : N e w   A c c o u n t ,   P a g e :   A c c o u n t   R e g i s t r a t i o n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B 4 B 9 6 7 0 6 - 7 D A A - 4 1 8 4 - B 8 B C - C 0 7 1 8 9 F E E B B E ' ) ,   - -   A t t r i b u t e / V a l u e : F o u n d   D u p l i c a t e   C a p t i o n / T h e r e   a r e   a l r e a d y   o n e   o r   m o r e   p ,   B l o c k : N e w   A c c o u n t ,   P a g e :   A c c o u n t   R e g i s t r a t i o n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 1 E 5 F B 1 8 B - 2 9 3 C - 4 0 1 2 - B 7 6 4 - 6 7 3 D 1 C 3 F 2 C 3 3 ' ) ,   - -   A t t r i b u t e / V a l u e : L o g i n   P a g e / d 0 2 5 e 1 4 c - f 3 8 5 - 4 3 f b - a 7 3 5 - a b d 2 4 a d ,   B l o c k : N e w   A c c o u n t ,   P a g e :   A c c o u n t   R e g i s t r a t i o n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 F A 8 4 1 F 8 - F F C 7 - 4 B A 6 - 9 A 8 4 - 5 C 0 7 A A B 0 D 5 0 1 ' ) ,   - -   A t t r i b u t e / V a l u e : S e n t   L o g i n   C a p t i o n / Y o u r   u s e r n a m e   h a s   b e e n   e m a i l e d   ,   B l o c k : N e w   A c c o u n t ,   P a g e :   A c c o u n t   R e g i s t r a t i o n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 9 6 C 6 F 5 8 A - A 4 8 3 - 4 3 6 D - 8 C 5 3 - 0 0 C 0 E B B 8 B D 0 E ' ) ,   - -   A t t r i b u t e / V a l u e : S u c c e s s   C a p t i o n / { 0 } ,   Y o u r   a c c o u n t   h a s   b e e n   c r e a ,   B l o c k : N e w   A c c o u n t ,   P a g e :   A c c o u n t   R e g i s t r a t i o n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' F 8 B E 6 5 1 D - F 4 B 4 - 4 2 A 2 - 9 A 5 3 - 9 5 4 5 E 6 6 C B 0 5 0 ' ) ,   - -   A t t r i b u t e / V a l u e : C a c h e   D u r a t i o n / 3 6 0 0 ,   B l o c k : O r g   I n f o ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 3 1 4 F E B A F - 2 B F 3 - 4 0 B E - 8 8 3 4 - 7 4 A 7 E 7 A B 5 1 9 B ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   N a m e / F o o t e r A d d r e s s ,   B l o c k : O r g   I n f o ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 3 6 D 4 C E 6 3 - B 2 3 6 - 4 A E C - 8 4 8 9 - 6 0 E 0 3 8 7 4 A 2 7 B ' ) ,   - -   A t t r i b u t e / V a l u e : C o n t e x t   P a r a m e t e r / ,   B l o c k : O r g   I n f o ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' E E 4 8 E 2 7 E - 8 A F B - 4 5 9 9 - A 4 6 7 - 7 3 E 4 7 3 3 2 3 0 D 1 ' ) ,   - -   A t t r i b u t e / V a l u e : P o s t - T e x t / < / d i v > ,   B l o c k : O r g   I n f o ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 5 D 1 B F 8 7 6 - 2 2 2 D - 4 1 3 B - A 5 9 2 - 6 0 1 5 A 9 A B 0 3 5 9 ' ) ,   - -   A t t r i b u t e / V a l u e : P r e - T e x t / < d i v   c l a s s = " f o o t e r - a d d r e s s " > ,   B l o c k : O r g   I n f o ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 4 7 9 8 A 3 C - 6 1 F A - 4 C A F - 9 9 C B - F 0 4 C 5 0 6 C D 3 2 3 ' ) ,   - -   A t t r i b u t e / V a l u e : R e q u i r e   A p p r o v a l / F a l s e ,   B l o c k : O r g   I n f o ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 5 A 0 8 E 7 3 B - E D 9 1 - 4 6 2 9 - 8 9 1 E - 6 6 7 A 2 7 1 F 5 9 C 1 ' ) ,   - -   A t t r i b u t e / V a l u e : S u p p o r t   V e r s i o n s / F a l s e ,   B l o c k : O r g   I n f o ,   L a y o u t :   H o m e p a g e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 1 1 8 4 9 F 2 D - D 6 E 4 - 4 1 2 8 - 9 E 9 8 - 5 D 5 0 E 8 4 6 D 8 E B ' ) ,   - -   A t t r i b u t e / V a l u e : C S S   F i l e / ,   B l o c k : P a g e   M e n u ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 3 8 D 6 9 0 A - A 0 9 4 - 4 0 F E - A 5 1 E - 2 6 0 D 9 D B B B 6 F B ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   P a r a m e t e r s / T r u e ,   B l o c k : P a g e   M e n u ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 B F 9 7 0 1 6 - 8 0 8 E - 4 0 B A - B 2 6 1 - 4 E D 0 1 A 9 2 2 D B D ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   Q u e r y S t r i n g / T r u e ,   B l o c k : P a g e   M e n u ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 6 1 9 1 B 9 D - 7 C 5 B - 4 8 6 4 - B E E 8 - 2 F 9 1 E C F 4 C 1 3 A ' ) ,   - -   A t t r i b u t e / V a l u e : N u m b e r   o f   L e v e l s / 1 ,   B l o c k : P a g e   M e n u ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C 5 7 1 2 7 7 B - B 3 4 B - 4 1 5 A - B C 3 4 - 0 1 E 8 0 0 B 8 4 1 F 1 ' ) ,   - -   A t t r i b u t e / V a l u e : R o o t   P a g e / 8 5 f 2 5 8 1 9 - e 9 4 8 - 4 9 6 0 - 9 d d f - 0 0 f 5 4 d 3 ,   B l o c k : P a g e   M e n u ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' E C 8 B 9 9 2 F - 1 0 4 9 - 4 D 9 5 - 8 6 E E - 2 F 6 4 B E 2 3 F D 9 F ' ) ,   - -   A t t r i b u t e / V a l u e : T e m p l a t e / { %   i n c l u d e   ' P a g e N a v '   % } ,   B l o c k : P a g e   M e n u ,   L a y o u t :   L e f t S i d e b a r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' F E D 8 3 4 C 3 - F 4 E 1 - 4 B 9 2 - 9 6 9 7 - A 4 A B 8 B C 7 7 9 5 D ' ) ,   - -   A t t r i b u t e / V a l u e : C S S   F i l e / ,   B l o c k : P a g e   N a v ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B B 4 E 5 5 6 8 - 6 C E 9 - 4 E A F - A E 0 5 - A 5 A 4 5 3 E D 5 9 3 B ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   P a r a m e t e r s / F a l s e ,   B l o c k : P a g e   N a v ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B 4 B C 1 9 4 B - A D 0 7 - 4 7 7 9 - A 3 1 F - B 0 0 8 B C 9 B 0 B 4 0 ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   Q u e r y S t r i n g / F a l s e ,   B l o c k : P a g e   N a v ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C B 7 E 3 B 9 8 - 2 6 F C - 4 C D D - 8 8 D 1 - F 4 3 5 0 8 9 F E F 1 4 ' ) ,   - -   A t t r i b u t e / V a l u e : N u m b e r   o f   L e v e l s / 1 ,   B l o c k : P a g e   N a v ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 9 D A 5 9 9 C - 4 9 3 0 - 4 A 3 D - B C 6 8 - 8 2 E 0 4 9 5 A C 4 F 1 ' ) ,   - -   A t t r i b u t e / V a l u e : R o o t   P a g e / 8 5 f 2 5 8 1 9 - e 9 4 8 - 4 9 6 0 - 9 d d f - 0 0 f 5 4 d 3 ,   B l o c k : P a g e   N a v ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' F 5 3 7 9 F E 8 - F 6 1 B - 4 0 7 5 - A 3 0 A - 3 0 1 0 5 9 0 D 0 5 5 9 ' ) ,   - -   A t t r i b u t e / V a l u e : T e m p l a t e / { %   i n c l u d e   ' P a g e N a v '   % } ,   B l o c k : P a g e   N a v ,   L a y o u t :   F u l l W i d t h ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' A 6 E 8 9 3 F 4 - 8 A 8 A - 4 4 1 C - 9 9 2 5 - 7 5 1 F 8 4 0 3 F 8 2 E ' ) ,   - -   A t t r i b u t e / V a l u e : C S S   F i l e / ,   B l o c k : S u b   N a v ,   P a g e :   G i v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 2 4 E F 8 C 4 9 - 1 D 2 5 - 4 2 0 6 - A 2 C 4 - D 4 F A B 1 4 0 2 6 9 5 ' ) ,   - -   A t t r i b u t e / V a l u e : C S S   F i l e / ,   B l o c k : S u b   N a v ,   P a g e :   C h i l d r e n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' F 5 9 1 E 9 6 6 - 5 1 4 B - 4 F 6 3 - 9 3 A 2 - 8 3 0 1 2 A E 1 9 7 2 D ' ) ,   - -   A t t r i b u t e / V a l u e : C S S   F i l e / ,   B l o c k : S u b   N a v ,   P a g e :   S t u d e n t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 9 0 7 A D 0 6 - E 6 5 B - 4 4 2 2 - B D 5 9 - D 4 2 9 8 A 4 B 1 3 6 F ' ) ,   - -   A t t r i b u t e / V a l u e : C S S   F i l e / ,   B l o c k : S u b   N a v ,   P a g e :   A d u l t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D 5 B 8 3 B 5 B - E F B 5 - 4 C B A - 9 2 3 4 - F F E 3 2 0 E 8 B 9 A 7 ' ) ,   - -   A t t r i b u t e / V a l u e : C S S   F i l e / ,   B l o c k : S u b   N a v ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D 2 A 4 4 F D A - E F C 3 - 4 5 D C - 8 1 C F - 2 F C 4 6 4 A 2 F 3 E 2 ' ) ,   - -   A t t r i b u t e / V a l u e : C S S   F i l e / ,   B l o c k : S u b   N a v ,   P a g e :   M i s s i o n s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 9 D E 0 4 F E 6 - 0 4 0 2 - 4 C 2 6 - B 4 E 2 - 9 D 5 6 5 3 D 5 5 1 F 2 ' ) ,   - -   A t t r i b u t e / V a l u e : C S S   F i l e / ,   B l o c k : S u b   N a v ,   P a g e :   S e r v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 5 2 7 6 9 3 9 9 - 8 3 A F - 4 7 6 9 - B 5 F 2 - D A 8 B A 3 0 C F E B 2 ' ) ,   - -   A t t r i b u t e / V a l u e : C S S   F i l e / ,   B l o c k : S u b   N a v ,   P a g e :   S m a l l   G r o u p s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 2 7 D E 9 C 6 3 - 7 5 1 4 - 4 D E B - B 2 0 E - A D B 9 9 C E 9 3 2 B D ' ) ,   - -   A t t r i b u t e / V a l u e : C S S   F i l e / ,   B l o c k : S u b   N a v ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D A 9 A 5 9 6 1 - 2 A F D - 4 9 4 8 - B C A 7 - 4 F E F 3 E 1 6 F 2 2 C ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   P a r a m e t e r s / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' E 4 0 9 0 A 5 7 - D B C 8 - 4 B D A - B 3 6 7 - 8 F E A C D 4 6 2 B 8 B ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   P a r a m e t e r s / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   S m a l l   G r o u p s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 2 B E 3 E 6 D 0 - 4 4 6 1 - 4 8 E 9 - 8 E 6 D - D 2 5 B F F 2 1 F 2 4 A ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   P a r a m e t e r s / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   S e r v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' F 7 A A B B 9 E - D 5 9 5 - 4 8 F 1 - A 1 0 3 - 5 7 9 B 4 7 1 5 A E A F ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   P a r a m e t e r s / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   M i s s i o n s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B 4 6 A 1 4 B 6 - A 4 9 3 - 4 D E 9 - 8 8 2 3 - 3 0 B 6 E 1 C F 9 5 8 D ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   P a r a m e t e r s / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 9 2 6 C 8 1 7 E - A C F 7 - 4 4 0 0 - A D 5 2 - 7 2 5 F A 5 5 3 1 7 A 1 ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   P a r a m e t e r s / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   A d u l t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 9 7 5 B 6 1 C 1 - 4 C 7 5 - 4 6 5 0 - A 2 2 6 - B 0 9 8 5 D 7 F 8 6 3 3 ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   P a r a m e t e r s / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   S t u d e n t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 1 C 6 5 A 0 E A - F C D 7 - 4 3 A 1 - 8 C 1 9 - C 6 4 6 9 8 A D 1 D 5 2 ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   P a r a m e t e r s / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   C h i l d r e n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B C C 7 C 8 E 4 - F 0 8 C - 4 A 7 E - B A 8 3 - 3 D 0 1 7 E E E C 7 9 F ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   P a r a m e t e r s / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   G i v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 5 8 D 0 0 5 4 - 2 C B F - 4 8 7 0 - 8 F 5 8 - 6 4 C B 7 9 B 7 3 D A 8 ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   Q u e r y S t r i n g / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   G i v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D D 9 C A F 2 A - 7 6 C 2 - 4 4 4 1 - 9 4 6 B - 7 2 9 F 9 2 0 E B F A 9 ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   Q u e r y S t r i n g / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   C h i l d r e n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 D C B 8 8 B 6 - 1 9 C 2 - 4 9 4 E - B 9 3 8 - 1 B 2 D 1 C 1 E E 5 7 E ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   Q u e r y S t r i n g / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   S t u d e n t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 9 6 B 7 D B 7 7 - 1 2 6 7 - 4 D F F - 8 C C 5 - B 5 3 E 4 D C 8 0 D 4 2 ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   Q u e r y S t r i n g / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   A d u l t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 6 E D C F B A - A A 8 B - 4 C 3 E - 9 0 0 1 - 4 9 6 B 9 7 B 6 B 1 5 3 ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   Q u e r y S t r i n g / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D 1 3 6 7 2 3 B - 1 0 4 A - 4 2 B E - 9 D 6 D - F F 5 4 5 2 1 C F 3 5 B ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   Q u e r y S t r i n g / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   M i s s i o n s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 5 7 0 F 0 3 6 2 - 4 4 B 7 - 4 8 4 D - A C 2 A - F B 2 6 E F 1 D 1 F 7 7 ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   Q u e r y S t r i n g / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   S e r v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 8 4 D 9 5 0 0 - 9 F 6 C - 4 5 8 E - 8 2 6 8 - 0 E E 1 8 2 F 3 8 0 A A ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   Q u e r y S t r i n g / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   S m a l l   G r o u p s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 4 1 1 E 1 B A - 4 2 E E - 4 B F C - 8 4 F 7 - 5 D D A 6 5 0 E 3 A C 8 ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   Q u e r y S t r i n g / F a l s e ,   B l o c k : S u b   N a v ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' C C 3 B F 7 8 7 - 9 1 9 8 - 4 B 3 7 - 9 0 9 9 - D 7 E F 5 9 D 5 9 5 6 2 ' ) ,   - -   A t t r i b u t e / V a l u e : N u m b e r   o f   L e v e l s / 1 ,   B l o c k : S u b   N a v ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 A 0 D 9 8 8 C - 5 B 8 B - 4 C C C - 9 4 0 2 - A 9 0 A B 6 0 7 B D 6 3 ' ) ,   - -   A t t r i b u t e / V a l u e : N u m b e r   o f   L e v e l s / 1 ,   B l o c k : S u b   N a v ,   P a g e :   S m a l l   G r o u p s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' F C 2 B 8 3 A 1 - 9 4 3 B - 4 9 8 4 - A E B 1 - 1 0 3 C 1 9 3 8 F B A A ' ) ,   - -   A t t r i b u t e / V a l u e : N u m b e r   o f   L e v e l s / 1 ,   B l o c k : S u b   N a v ,   P a g e :   S e r v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 C 5 8 A D 4 9 - E 1 E 2 - 4 0 6 7 - 8 9 D 3 - 8 9 3 2 7 F 5 6 2 9 1 6 ' ) ,   - -   A t t r i b u t e / V a l u e : N u m b e r   o f   L e v e l s / 1 ,   B l o c k : S u b   N a v ,   P a g e :   M i s s i o n s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 1 9 9 0 1 D E B - B 4 F F - 4 E C 8 - 9 A D C - 0 F F 6 8 0 B D 4 7 1 D ' ) ,   - -   A t t r i b u t e / V a l u e : N u m b e r   o f   L e v e l s / 1 ,   B l o c k : S u b   N a v ,   P a g e :   A d u l t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' E D 9 6 D F A D - C 7 9 E - 4 D A 1 - A 8 E 6 - 7 0 8 A 3 C A 9 C B 2 8 ' ) ,   - -   A t t r i b u t e / V a l u e : N u m b e r   o f   L e v e l s / 1 ,   B l o c k : S u b   N a v ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B E 0 E A B 2 8 - 1 4 6 2 - 4 4 1 E - B 2 1 8 - 0 3 8 3 4 7 E C B 8 6 E ' ) ,   - -   A t t r i b u t e / V a l u e : N u m b e r   o f   L e v e l s / 1 ,   B l o c k : S u b   N a v ,   P a g e :   C h i l d r e n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' F 2 5 8 B 8 9 0 - 1 E 0 1 - 4 5 C 3 - A 5 8 E - F 7 3 3 6 6 7 1 A 8 D 6 ' ) ,   - -   A t t r i b u t e / V a l u e : N u m b e r   o f   L e v e l s / 1 ,   B l o c k : S u b   N a v ,   P a g e :   S t u d e n t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 1 5 C D 0 C 3 - 8 1 6 F - 4 5 6 1 - A 9 B 2 - 1 A E 4 F 3 D 2 0 1 1 D ' ) ,   - -   A t t r i b u t e / V a l u e : N u m b e r   o f   L e v e l s / 2 ,   B l o c k : S u b   N a v ,   P a g e :   G i v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 8 1 6 1 1 E E - 9 F 3 B - 4 5 2 4 - A F C F - 7 1 7 0 9 0 4 2 E C 8 8 ' ) ,   - -   A t t r i b u t e / V a l u e : R o o t   P a g e / 8 b b 3 0 3 a f - 7 4 3 c - 4 9 d c - a 7 f f - c c 1 2 3 6 b ,   B l o c k : S u b   N a v ,   P a g e :   G i v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 7 8 5 0 D 6 A - C 0 A 0 - 4 D E 0 - 9 C 1 1 - 1 0 F 8 8 5 8 6 4 D 1 8 ' ) ,   - -   A t t r i b u t e / V a l u e : R o o t   P a g e / 7 6 2 5 a 6 3 e - 6 6 5 0 - 4 8 8 6 - b 6 0 5 - 5 3 c 2 2 3 4 ,   B l o c k : S u b   N a v ,   P a g e :   S t u d e n t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 5 4 E C 4 6 2 2 - C 2 E 4 - 4 6 8 5 - B F E A - 5 3 B 4 3 9 A 5 3 6 B E ' ) ,   - -   A t t r i b u t e / V a l u e : R o o t   P a g e / 7 6 2 5 a 6 3 e - 6 6 5 0 - 4 8 8 6 - b 6 0 5 - 5 3 c 2 2 3 4 ,   B l o c k : S u b   N a v ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 4 3 F C 8 1 E - 1 1 5 8 - 4 5 7 8 - B 2 6 F - 7 A 9 0 8 8 2 B D 0 4 2 ' ) ,   - -   A t t r i b u t e / V a l u e : R o o t   P a g e / 7 6 2 5 a 6 3 e - 6 6 5 0 - 4 8 8 6 - b 6 0 5 - 5 3 c 2 2 3 4 ,   B l o c k : S u b   N a v ,   P a g e :   A d u l t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 8 6 5 D 4 B 4 6 - C 5 5 8 - 4 C 4 3 - A 4 9 2 - E E C 1 3 6 8 B E 6 5 6 ' ) ,   - -   A t t r i b u t e / V a l u e : R o o t   P a g e / 7 6 2 5 a 6 3 e - 6 6 5 0 - 4 8 8 6 - b 6 0 5 - 5 3 c 2 2 3 4 ,   B l o c k : S u b   N a v ,   P a g e :   C h i l d r e n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' E 8 3 9 9 D 6 8 - 3 5 2 E - 4 5 E 8 - 8 E 6 E - 5 1 1 E 6 5 3 6 C C 6 C ' ) ,   - -   A t t r i b u t e / V a l u e : R o o t   P a g e / 7 6 2 5 a 6 3 e - 6 6 5 0 - 4 8 8 6 - b 6 0 5 - 5 3 c 2 2 3 4 ,   B l o c k : S u b   N a v ,   P a g e :   M i s s i o n s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' B E A 2 5 5 0 3 - E 2 4 7 - 4 A 9 B - B 5 3 C - 0 F 2 E 0 4 1 6 0 4 D 5 ' ) ,   - -   A t t r i b u t e / V a l u e : R o o t   P a g e / 7 6 2 5 a 6 3 e - 6 6 5 0 - 4 8 8 6 - b 6 0 5 - 5 3 c 2 2 3 4 ,   B l o c k : S u b   N a v ,   P a g e :   S e r v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 2 B 1 7 B 8 7 C - E B B 9 - 4 0 A 4 - A A 7 C - D C 2 7 1 7 5 9 5 6 7 E ' ) ,   - -   A t t r i b u t e / V a l u e : R o o t   P a g e / 7 6 2 5 a 6 3 e - 6 6 5 0 - 4 8 8 6 - b 6 0 5 - 5 3 c 2 2 3 4 ,   B l o c k : S u b   N a v ,   P a g e :   S m a l l   G r o u p s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' A 7 B E 6 A E 0 - 1 E 9 3 - 4 F 0 6 - 9 9 9 B - 6 3 8 B 9 F 2 2 7 F A 8 ' ) ,   - -   A t t r i b u t e / V a l u e : R o o t   P a g e / ,   B l o c k : S u b   N a v ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' A 1 8 C B B 2 6 - D 1 3 A - 4 D 8 E - A 0 D A - 4 C B D 5 E 8 D 3 7 9 5 ' ) ,   - -   A t t r i b u t e / V a l u e : T e m p l a t e / { %   i n c l u d e   ' P a g e S u b N a v '     % } ,   B l o c k : S u b   N a v ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 D 1 9 9 5 4 A - 9 7 D 1 - 4 D 4 F - A B F 5 - 9 C E 6 E 7 8 1 1 6 7 3 ' ) ,   - -   A t t r i b u t e / V a l u e : T e m p l a t e / { %   i n c l u d e   ' P a g e S u b N a v '   % } ,   B l o c k : S u b   N a v ,   P a g e :   S m a l l   G r o u p s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 8 0 2 1 A 7 1 - 3 8 8 6 - 4 D 7 8 - 9 1 E 0 - 4 8 1 1 5 1 2 9 8 5 7 7 ' ) ,   - -   A t t r i b u t e / V a l u e : T e m p l a t e / { %   i n c l u d e   ' P a g e S u b N a v '   % } ,   B l o c k : S u b   N a v ,   P a g e :   M i s s i o n s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 4 C 6 B B D A B - 5 F E D - 4 B 4 7 - 8 D A 8 - C 6 A 1 D B 7 F 9 3 6 7 ' ) ,   - -   A t t r i b u t e / V a l u e : T e m p l a t e / { %   i n c l u d e   ' P a g e S u b N a v '   % } ,   B l o c k : S u b   N a v ,   P a g e :   S e r v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 8 1 6 5 5 F 1 4 - 7 1 8 4 - 4 A 2 8 - 8 3 1 A - F 1 E 6 7 4 1 7 4 6 F 6 ' ) ,   - -   A t t r i b u t e / V a l u e : T e m p l a t e / { %   i n c l u d e   ' P a g e S u b N a v '   % } ,   B l o c k : S u b   N a v ,   P a g e :   C h i l d r e n ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 A A B 2 2 C 0 - F C E 9 - 4 5 D E - 9 2 2 A - F 2 B F 4 D 2 4 E B C B ' ) ,   - -   A t t r i b u t e / V a l u e : T e m p l a t e / { %   i n c l u d e   ' P a g e S u b N a v '   % } ,   B l o c k : S u b   N a v ,   P a g e :   P r a y e r ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' E 5 8 9 3 9 A B - 3 9 5 8 - 4 2 9 5 - 8 6 1 1 - 6 8 8 3 0 0 2 F 4 F B 8 ' ) ,   - -   A t t r i b u t e / V a l u e : T e m p l a t e / { %   i n c l u d e   ' P a g e S u b N a v '   % } ,   B l o c k : S u b   N a v ,   P a g e :   A d u l t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' E 9 1 9 3 A 6 C - 3 5 B 5 - 4 7 C E - B 8 6 6 - D E 3 B C 5 8 E C 5 2 2 ' ) ,   - -   A t t r i b u t e / V a l u e : T e m p l a t e / { %   i n c l u d e   ' P a g e S u b N a v '   % } ,   B l o c k : S u b   N a v ,   P a g e :   S t u d e n t s ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 6 4 6 2 E 0 A B - B 2 E B - 4 F 0 3 - B 4 3 7 - 2 6 1 F 8 A 9 7 9 9 B 7 ' ) ,   - -   A t t r i b u t e / V a l u e : T e m p l a t e / { %   i n c l u d e   ' P a g e S u b N a v '     % } ,   B l o c k : S u b   N a v ,   P a g e :   G i v e ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 3 A F 7 D 9 7 8 - D C 8 8 - 4 D A 7 - A 0 5 6 - 1 B B B 1 F B 9 7 2 2 8 ' ) ,   - -   A t t r i b u t e / V a l u e : C S S   F i l e / ,   B l o c k : S u b N a v ,   P a g e :   C o n n e c t ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 0 2 0 D 9 2 0 9 - F 5 9 7 - 4 0 0 2 - 9 C A A - 5 F 8 6 3 3 2 A 9 7 3 D ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   P a r a m e t e r s / F a l s e ,   B l o c k : S u b N a v ,   P a g e :   C o n n e c t ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' D 1 B F 0 7 F A - B 9 4 1 - 4 E A A - 9 9 C 8 - 0 6 7 7 0 9 0 5 5 9 5 1 ' ) ,   - -   A t t r i b u t e / V a l u e : I n c l u d e   C u r r e n t   Q u e r y S t r i n g / F a l s e ,   B l o c k : S u b N a v ,   P a g e :   C o n n e c t ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 7 A 0 4 0 9 6 E - 3 A E 2 - 4 4 3 9 - A 4 7 B - C 8 E 6 D 7 7 A 0 0 E 8 ' ) ,   - -   A t t r i b u t e / V a l u e : N u m b e r   o f   L e v e l s / 3 ,   B l o c k : S u b N a v ,   P a g e :   C o n n e c t ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' A 4 8 3 E 4 A 7 - 6 E 1 F - 4 5 8 6 - B 9 8 1 - 8 2 2 2 6 F 3 B 3 F F D ' ) ,   - -   A t t r i b u t e / V a l u e : R o o t   P a g e / ,   B l o c k : S u b N a v ,   P a g e :   C o n n e c t ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' A D E B 9 5 F 0 - 8 D 1 9 - 4 C B 7 - 8 2 2 0 - 5 C A E 8 1 7 B 9 D 0 2 ' ) ,   - -   A t t r i b u t e / V a l u e : T e m p l a t e / { %   i n c l u d e   ' P a g e S u b N a v '   % } ,   B l o c k : S u b N a v ,   P a g e :   C o n n e c t ,   S i t e :   E x t e r n a l   W e b s i t e  
 ( ' 1 3 6 0 1 B 1 4 - C 4 F A - 4 5 2 D - 9 6 A 9 - 0 8 F 4 1 0 3 F E D 0 E ' ) ,   - -   A t t r i b   V a l u e   f o r   B l o c k : C r e a t e   P l e d g e ,   A t t r i b u t e : A c c o u n t   P a g e :   P l e d g e ,   S i t e :   R o c k   S o l i d   C h u r c h  
 ( ' F B 0 6 0 7 7 4 - C E A 8 - 4 E F 6 - B 4 F 9 - A B 8 2 F E B 2 B 5 F A ' ) ,   - -   A t t r i b   V a l u e   f o r   B l o c k : C r e a t e   P l e d g e ,   A t t r i b u t e : S h o w   P l e d g e   F r e q u e n c y   P a g e :   P l e d g e ,   S i t e :   R o c k   S o l i d   C h u r c h  
 ( ' 0 7 5 F 7 9 6 5 - 7 F B 5 - 4 E E 5 - 9 8 E D - B C 4 5 5 F 6 8 A 0 E F ' ) ,   - -   A t t r i b   V a l u e   f o r   B l o c k : C r e a t e   P l e d g e ,   A t t r i b u t e : E n a b l e   S m a r t   N a m e s   P a g e :   P l e d g e ,   S i t e :   R o c k   S o l i d   C h u r c h  
 ( ' 1 4 5 6 5 6 4 2 - 0 3 6 7 - 4 2 8 4 - B C 3 4 - B D 5 7 F 8 0 3 8 1 C 8 ' ) ,   - -   A t t r i b   V a l u e   f o r   B l o c k : C r e a t e   P l e d g e ,   A t t r i b u t e : N e w   C o n n e c t i o n   S t a t u s   P a g e :   P l e d g e ,   S i t e :   R o c k   S o l i d   C h u r c h  
 ( ' 4 C 3 5 C 9 D 1 - F 0 0 8 - 4 3 D D - B 0 4 C - C 1 2 D 2 5 F 0 D E 6 2 ' ) ,   - -   A t t r i b   V a l u e   f o r   B l o c k : C r e a t e   P l e d g e ,   A t t r i b u t e : P l e d g e   D a t e   R a n g e   P a g e :   P l e d g e ,   S i t e :   R o c k   S o l i d   C h u r c h  
 ( ' C A 6 9 B 3 8 5 - 6 9 6 E - 4 B D B - 8 0 9 1 - 4 B 3 9 5 6 C 7 E 5 E A ' ) ,   - -   A t t r i b   V a l u e   f o r   B l o c k : C r e a t e   P l e d g e ,   A t t r i b u t e : R e c e i p t   T e x t   P a g e :   P l e d g e ,   S i t e :   R o c k   S o l i d   C h u r c h  
 ( ' 7 5 E 1 B F A 0 - 2 9 E 3 - 4 6 2 9 - B C 1 C - 4 6 E F D 1 9 3 C 1 1 1 ' ) ,   - -   A t t r i b   V a l u e   f o r   B l o c k : C r e a t e   P l e d g e ,   A t t r i b u t e : E n a b l e   D e b u g   P a g e :   P l e d g e ,   S i t e :   R o c k   S o l i d   C h u r c h  
 ( ' 1 1 9 3 8 1 C C - 2 6 3 B - 4 A C 2 - B D 4 E - 4 7 5 3 E A A A F D E 2 ' ) ,   - -   A t t r i b   V a l u e   f o r   B l o c k : C r e a t e   P l e d g e ,   A t t r i b u t e : R e q u i r e   P l e d g e   F r e q u e n c y   P a g e :   P l e d g e ,   S i t e :   R o c k   S o l i d   C h u r c h  
 ( ' 0 B B 9 E 8 A 4 - 8 7 0 9 - 4 9 2 0 - A 0 B 2 - A 4 3 A 2 7 B B 2 A 8 9 ' ) ,   - -   A t t r i b   V a l u e   f o r   B l o c k : C r e a t e   P l e d g e ,   A t t r i b u t e : S a v e   B u t t o n   T e x t   P a g e :   P l e d g e ,   S i t e :   R o c k   S o l i d   C h u r c h  
 ( ' 4 C A B 6 D C C - E 5 8 C - 4 6 A 1 - 8 C 1 4 - 3 2 C E D C 3 7 8 E E 9 ' ) ,   - -   A t t r i b   V a l u e   f o r   B l o c k : C r e a t e   P l e d g e ,   A t t r i b u t e : N o t e   M e s s a g e   P a g e :   P l e d g e ,   S i t e :   R o c k   S o l i d   C h u r c h  
 ( ' B 8 F 4 9 A A 3 - 3 7 1 3 - 4 5 0 6 - B F F C - 7 E 1 5 6 4 6 D 6 3 9 5 ' )   - -   A t t r i b   V a l u e   f o r   B l o c k : C r e a t e   P l e d g e ,   A t t r i b u t e : C o n f i r m a t i o n   E m a i l   T e m p l a t e   P a g e :   P l e d g e ,   S i t e :   R o c k   S o l i d   C h u r c h  
  
  
 c r e a t e   t a b l e   # c o d e T a b l e   (  
         I d   i n t   i d e n t i t y ( 1 , 1 )   n o t   n u l l ,  
         C o d e T e x t   n v a r c h a r ( m a x ) ,  
         C O N S T R A I N T   [ p k _ c o d e T a b l e ]   P R I M A R Y   K E Y   C L U S T E R E D     (   [ I d ] )   ) ;  
          
 	 - -   l a y o u t s  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   '                         R o c k M i g r a t i o n H e l p e r . A d d L a y o u t ( " '   +  
                 C O N V E R T (   n v a r c h a r ( 5 0 ) ,   [ s ] . [ G u i d ] )   +   ' " , " ' +    
                 [ l ] . [ F i l e N a m e ]   +     ' " , " ' +  
                 [ l ] . [ N a m e ]   +     ' " , " ' +  
                 I S N U L L ( [ l ] . [ D e s c r i p t i o n ] , ' ' ) +     ' " , " ' +  
                 C O N V E R T (   n v a r c h a r ( 5 0 ) ,   [ l ] . [ G u i d ] ) +     ' " ) ; '   +   '   / /   S i t e : '   +   s . N a m e    
         F R O M   [ L a y o u t ]   [ l ]  
         j o i n   [ S i t e ]   [ s ]   o n   [ s ] . [ I d ]   =   [ l ] . [ S i t e I d ]  
         w h e r e   [ l ] . [ I s S y s t e m ]   =   0  
         a n d   [ l ] . [ G u i d ]   n o t   i n   ( s e l e c t   [ G u i d ]   f r o m   # k n o w n G u i d s T o I g n o r e )  
         o r d e r   b y   [ l ] . [ I d ]  
  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   @ c r l f  
  
 	 - -   p a g e s  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   '                         R o c k M i g r a t i o n H e l p e r . A d d P a g e ( '   +  
 	 	 '   t r u e ,   " '   +  
                 C O N V E R T (   n v a r c h a r ( 5 0 ) ,   [ p p ] . [ G u i d ] )   +   ' " , " ' +    
                 C O N V E R T (   n v a r c h a r ( 5 0 ) ,   [ l ] . [ G u i d ] )   +   ' " , " ' +    
                 [ p ] . [ I n t e r n a l N a m e ] +     ' " , " ' +      
                 I S N U L L ( [ p ] . [ D e s c r i p t i o n ] , ' ' ) +     ' " , " ' +  
                 C O N V E R T (   n v a r c h a r ( 5 0 ) ,   [ p ] . [ G u i d ] ) +     ' " , " ' +      
                 I S N U L L ( [ p ] . [ I c o n C s s C l a s s ] , ' ' ) +   ' " ) ; '   +   '   / /   S i t e : '   +   s . N a m e    
         F R O M   [ P a g e ]   [ p ]  
         j o i n   [ P a g e ]   [ p p ]   o n   [ p p ] . [ I d ]   =   [ p ] . [ P a r e n t P a g e I d ]  
 	 j o i n   [ L a y o u t ]   [ l ]   o n   [ l ] . [ I d ]   =   [ p ] . [ l a y o u t I d ]  
 	 j o i n   [ s i t e ]   [ s ]   o n   [ s ] . [ I d ]   =   [ l ] . [ s i t e I d ]  
         w h e r e   [ p ] . [ I s S y s t e m ]   =   0  
         a n d   [ p ] . [ G u i d ]   n o t   i n   ( s e l e c t   [ G u i d ]   f r o m   # k n o w n G u i d s T o I g n o r e )  
         o r d e r   b y   [ p ] . [ I d ]  
  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   @ c r l f  
  
         - -   p a g e   r o u t e s  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   '                         R o c k M i g r a t i o n H e l p e r . A d d P a g e R o u t e ( " '   +  
                 C O N V E R T (   n v a r c h a r ( 5 0 ) ,   [ p ] . [ G u i d ] ) +     ' " , " ' +      
                 C O N V E R T (   n v a r c h a r ( 5 0 ) ,   [ p r ] . [ R o u t e ] )   +   ' " , " ' +  
 	 	 C O N V E R T (   n v a r c h a r ( 5 0 ) ,   [ p r ] . [ G u i d ] ) +     ' " ) ; ' +   ' / /   f o r   P a g e : '   +   p . I n t e r n a l N a m e  
         F R O M   [ P a g e ]   [ p ]  
         j o i n   [ P a g e R o u t e ]   [ p r ]   o n   [ p r ] . [ P a g e I d ]   =   [ p ] . [ I d ]  
         w h e r e   [ p ] . [ I s S y s t e m ]   =   0  
         a n d   [ p ] . [ G u i d ]   n o t   i n   ( s e l e c t   [ G u i d ]   f r o m   # k n o w n G u i d s T o I g n o r e )  
         o r d e r   b y   [ p ] . [ I d ]  
  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   @ c r l f  
  
         - -   b l o c k   t y p e s  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   '                         R o c k M i g r a t i o n H e l p e r . U p d a t e B l o c k T y p e ( " ' +  
                 [ N a m e ] +   ' " , " ' +      
                 I S N U L L ( [ D e s c r i p t i o n ] , ' ' ) +   ' " , " ' +      
                 [ P a t h ] +   ' " , " ' +      
                 [ C a t e g o r y ] +   ' " , " ' +      
                 C O N V E R T (   n v a r c h a r ( 5 0 ) , [ G u i d ] ) +   ' " ) ; '  
         f r o m   [ B l o c k T y p e ]  
         w h e r e   [ I s S y s t e m ]   =   0  
         a n d   [ G u i d ]   n o t   i n   ( s e l e c t   [ G u i d ]   f r o m   # k n o w n G u i d s T o I g n o r e )   - -   s h o u l d n ' t   h a p p e n  
         o r d e r   b y   [ I d ]  
  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   @ c r l f  
  
         - -   b l o c k s  
 	 S E L E C T   p . I n t e r n a l N a m e   [ p . I n t e r n a l N a m e ]  
 	 	 	 , l . N A M E   [ l . N a m e ]  
 	 	 	 , s . N A M E   [ s . N a m e ]  
 	 	 	 , p . I d   [ p . I d ]  
   	 	 	 , p . [ G u i d ]   [ p . G u i d ]  
 	 	 	 , l . [ G u i d ]   [ l . G u i d ]  
 	 	 	 , b t . [ G u i d ]   [ b t . G u i d ]  
 	 	 	 , b . N a m e   [ b . N a m e ]  
 	 	 	 , b . Z o n e   [ b . Z o n e ]  
 	 	 	 , b . P r e H t m l   [ b . P r e H t m l ]  
 	 	 	 , b . P o s t H t m l   [ b . P o s t H t m l ]  
 	 	 	 , b . [ O r d e r ]   [ b . O r d e r ]  
 	 	 	 , b . [ G u i d ]   [ b . G u i d ]  
 	 	 	 , b . I d  
 	 	 	 i n t o   # b l o c k s T e m p  
 	 	 F R O M   [ B l o c k ]   [ b ]  
 	 	 J O I N   [ B l o c k T y p e ]   [ b t ]   O N   [ b t ] . [ I d ]   =   [ b ] . [ B l o c k T y p e I d ]  
 	 	 L E F T   O U T E R   J O I N   [ P a g e ]   [ p ]   O N   [ p ] . [ I d ]   =   [ b ] . [ P a g e I d ]  
 	 	 L E F T   O U T E R   J O I N   [ L a y o u t ]   [ l ]   O N   [ l ] . [ I d ]   =   [ b ] . [ L a y o u t I d ]  
 	 	 L E F T   O U T E R   J O I N   [ L a y o u t ]   [ p l ]   O N   [ p l ] . [ I d ]   =   [ p ] . [ L a y o u t I d ]  
 	 	 J O I N   [ s i t e ]   [ s ]   O N   [ s ] . [ I d ]   =   [ l ] . [ s i t e I d ]  
 	 	 	 O R   [ s ] . [ I d ]   =   [ p l ] . [ s i t e I d ]  
 	 	 W H E R E   [ b ] . [ I s S y s t e m ]   =   0  
 	 	 	 A N D   [ b ] . [ G u i d ]   N O T   I N   (  
 	 	 	 	 S E L E C T   [ G u i d ]  
 	 	 	 	 F R O M   # k n o w n G u i d s T o I g n o r e  
 	 	 	 	 )  
 	 	 O R D E R   B Y   [ b ] . [ I d ]  
 	  
          
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T    
                 '                         / /   A d d   B l o c k   t o   '   +   I S N U L L ( ' P a g e :   '   +   [ p . I n t e r n a l N a m e ] , ' ' )   +   I S N U L L ( ' L a y o u t :   '   +   [ l . N a m e ] ,   ' ' )   +   I S N U L L ( ' ,   S i t e :   '   +   [ s . N a m e ] ,   ' ' )   +  
                 @ c r l f   +    
 	 	 '                         R o c k M i g r a t i o n H e l p e r . A d d B l o c k ( '   +  
 	 	 '   t r u e ,   " '   +  
                 I S N U L L ( C O N V E R T ( n v a r c h a r ( 5 0 ) ,   [ p . G u i d ] ) , ' ' )   +   ' " , " ' +    
                 I S N U L L ( C O N V E R T ( n v a r c h a r ( 5 0 ) ,   [ l . G u i d ] ) , ' ' )   +   ' " , " ' +  
                 C O N V E R T ( n v a r c h a r ( 5 0 ) ,   [ b t . G u i d ] ) +   ' " , " ' +  
                 [ b . N a m e ] +   ' " , " ' +  
                 [ b . Z o n e ] +   ' " , @ " ' +  
 	 	 I S N U L L ( r e p l a c e ( [ b . P r e H t m l ] ,   ' " ' ,   ' " " ' ) ,   ' ' ) +   ' " , @ " ' +  
 	 	 I S N U L L ( r e p l a c e ( [ b . P o s t H t m l ] ,   ' " ' ,   ' " " ' ) ,   ' ' ) +   ' " , ' +  
                 C O N V E R T ( v a r c h a r ,   [ b . O r d e r ] ) +   ' , " ' +  
                 C O N V E R T ( n v a r c h a r ( 5 0 ) ,   [ b . G u i d ] ) +   ' " ) ;   ' +  
                 @ c r l f  
         f r o m   # b l o c k s T e m p  
  
 	 i f   e x i s t s   ( s e l e c t   *   f r o m   # b l o c k s T e m p   b t    
 	 j o i n   [ B l o c k ]   b   o n   b . P a g e I d   =   b t . [ p . I d ]   a n d   b . Z o n e   =   b t . [ b . Z o n e ]  
 	 w h e r e   b . P a g e I d   i n   ( s e l e c t   P a g e I d   f r o m   (  
 	 	 s e l e c t   c o u n t ( * )   [ P a g e B l o c k C o u n t ] ,   b b . P a g e I d ,   b b . Z o n e   f r o m   [ B l o c k ]   b b   g r o u p   b y   b b . P a g e I d ,   b b . Z o n e )   a  
 	 	 w h e r e   a . P a g e B l o c k C o u n t   >   1  
 	         a n d   P a g e I d   i s   n o t   n u l l ) )   b e g i n  
 	 	 i n s e r t   i n t o   # c o d e T a b l e   s e l e c t   '                         / /   u p d a t e   b l o c k   o r d e r   f o r   p a g e s   w i t h   n e w   b l o c k s   i f   t h e   p a g e , z o n e   h a s   m u l t i p l e   b l o c k s '  
 	 e n d  
  
 	  
 	 d e c l a r e   @ t e m p B l o c k O r d e r C o d e   t a b l e   ( f   n v a r c h a r ( m a x )   )  
  
 	 i n s e r t   i n t o   @ t e m p B l o c k O r d e r C o d e  
 	 s e l e c t   c o n c a t ( '                         S q l ( @ " ' ,   ' U P D A T E   [ B l o c k ]   S E T   [ O r d e r ]   =   ' ,   b . [ O r d e r ] ,   '   W H E R E   [ G u i d ]   =   ' ' ' ,   b . [ G u i d ]  
 	 ,   ' ' ' " ) ;     / /   P a g e :   ' ,   b t . [ p . I n t e r n a l N a m e ]  
 	 ,   ' ,     Z o n e :   ' ,   b . Z o n e  
 	 ,   ' ,     B l o c k :   ' ,   b . N a m e  
 	 )    
 	 f r o m   # b l o c k s T e m p   b t    
 	 j o i n   [ B l o c k ]   b   o n   b . P a g e I d   =   b t . [ p . I d ]   a n d   b . Z o n e   =   b t . [ b . Z o n e ]  
 	 w h e r e   b . P a g e I d   i n   ( s e l e c t   P a g e I d   f r o m   (  
 	 	 s e l e c t   c o u n t ( * )   [ P a g e B l o c k C o u n t ] ,   b b . P a g e I d ,   b b . Z o n e   f r o m   [ B l o c k ]   b b   g r o u p   b y   b b . P a g e I d ,   b b . Z o n e )   a  
 	 	 w h e r e   a . P a g e B l o c k C o u n t   >   1  
 	         a n d   P a g e I d   i s   n o t   n u l l )  
 	 o r d e r   b y   b t . [ p . I n t e r n a l N a m e ] ,   b . Z o n e ,   b . [ O r d e r ]  
  
 	 i n s e r t   i n t o   # c o d e T a b l e   s e l e c t   d i s t i n c t   *   f r o m   @ t e m p B l o c k O r d e r C o d e  
  
 	 i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   @ c r l f  
 	  
 	 D R O P   T A B L E   # b l o c k s T e m p  
  
         - -   h t m l   c o n t e n t   b l o c k s  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T  
                 '                         / /   A d d / U p d a t e   H t m l C o n t e n t   f o r   '   +   I S N U L L ( ' B l o c k :   '   +   b . N a m e , ' ' )   +  
                 @ c r l f   +    
 	 	 '                         R o c k M i g r a t i o n H e l p e r . U p d a t e H t m l C o n t e n t B l o c k ( " '   +  
                 I S N U L L ( C O N V E R T ( n v a r c h a r ( 5 0 ) ,   [ b ] . [ G u i d ] ) , ' ' )   +   ' " , @ " ' +    
                 r e p l a c e ( h . C o n t e n t ,   ' " ' ,   ' " " ' )   +   ' " , " ' +  
                 C O N V E R T ( n v a r c h a r ( 5 0 ) ,   [ h ] . [ G u i d ] ) +   ' " ) ;   ' +  
                 @ c r l f  
         f r o m   [ B l o c k ]   [ b ]  
         j o i n   [ B l o c k T y p e ]   [ b t ]   o n   [ b t ] . [ I d ]   =   [ b ] . [ B l o c k T y p e I d ]  
         j o i n   [ H t m l C o n t e n t ]   [ h ]   o n   [ h ] . B l o c k I d   =   b . I d  
         w h e r e   [ b ] . [ I s S y s t e m ]   =   0  
         a n d   [ b ] . [ G u i d ]   n o t   i n   ( s e l e c t   [ G u i d ]   f r o m   # k n o w n G u i d s T o I g n o r e )  
         o r d e r   b y   [ b ] . [ I d ]  
  
         - -   a t t r i b u t e s  
         i f   o b j e c t _ i d ( ' t e m p d b . . # a t t r i b u t e I d s ' )   i s   n o t   n u l l  
         b e g i n  
             d r o p   t a b l e   # a t t r i b u t e I d s  
         e n d  
  
         s e l e c t   *    
 	 i n t o   # a t t r i b u t e I d s    
 	 f r o m   (  
 	 	 s e l e c t   A . [ I d ]    
 	 	 f r o m   [ d b o ] . [ A t t r i b u t e ]   A  
 	 	 i n n e r   j o i n   [ E n t i t y T y p e ]   E    
 	 	 	 O N   E . [ I d ]   =   A . [ E n t i t y T y p e I d ]  
 	 	 w h e r e   A . [ I s S y s t e m ]   =   0  
                 a n d   [ A ] . [ G u i d ]   n o t   i n   ( s e l e c t   [ G u i d ]   f r o m   # k n o w n G u i d s T o I g n o r e )  
 	 	 a n d   E . [ N a m e ]   =   ' R o c k . M o d e l . B l o c k '  
 	 	 a n d   A . E n t i t y T y p e Q u a l i f i e r C o l u m n   =   ' B l o c k T y p e I d '  
 	 )   [ n e w a t t r i b s ]  
          
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   @ c r l f  
  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T    
                 '                         / /   A t t r i b   f o r   B l o c k T y p e :   '   +   b t . N a m e   +   ' : ' +   a . N a m e +  
                 @ c r l f   +  
                 '                         R o c k M i g r a t i o n H e l p e r . U p d a t e B l o c k T y p e A t t r i b u t e ( " ' +    
                 C O N V E R T ( n v a r c h a r ( 5 0 ) ,   b t . G u i d ) +   ' " , " ' +        
                 C O N V E R T ( n v a r c h a r ( 5 0 ) ,   f t . G u i d ) +   ' " , " ' +            
                 a . N a m e +   ' " , " ' +      
                 a . [ K e y ] +   ' " , " ' +    
                 ' ' +   ' " , @ " ' +    
 	 	 I S N U L L ( r e p l a c e ( a . [ D e s c r i p t i o n ] ,   ' " ' ,   ' " " ' ) , ' ' )   +   ' " , ' +    
                 C O N V E R T ( v a r c h a r ,   a . [ O r d e r ] ) +   ' , @ " ' +    
                 I S N U L L ( r e p l a c e ( a . [ D e f a u l t V a l u e ] ,   ' " ' ,   ' " " ' ) , ' ' )   +   ' " , " ' +  
                 C O N V E R T ( n v a r c h a r ( 5 0 ) ,   a . G u i d ) +   ' " ) ; '   +  
                 @ c r l f  
         f r o m   [ A t t r i b u t e ]   [ a ]  
         l e f t   o u t e r   j o i n   [ F i e l d T y p e ]   [ f t ]   o n   [ f t ] . [ I d ]   =   [ a ] . [ F i e l d T y p e I d ]  
         l e f t   o u t e r   j o i n   [ B l o c k T y p e ]   [ b t ]   o n   [ b t ] . [ I d ]   =   c a s t ( [ a ] . [ E n t i t y T y p e Q u a l i f i e r V a l u e ]   a s   i n t )  
         w h e r e   E n t i t y T y p e Q u a l i f i e r C o l u m n   =   ' B l o c k T y p e I d '  
         a n d   [ a ] . [ i d ]   i n   ( s e l e c t   [ I d ]   f r o m   # a t t r i b u t e I d s )  
         - -   o n l y   i n c l u d e   C u s t o m G r i d E n a b l e S t i c k y H e a d e r s   i f   i t   h a s   a n   A t t r i b u t e V a l u e   f o r   a n y   o f   i t s   b l o c k s  
 	 a n d   ( [ a ] . [ K e y ]   ! =   ' c o r e . C u s t o m G r i d E n a b l e S t i c k y H e a d e r s '   o r   a . I d   i n   ( s e l e c t   A t t r i b u t e I d   f r o m   A t t r i b u t e V a l u e   ) )  
 	 - -   o n l y   i n c l u d e   C u s t o m G r i d C o l u m n s C o n f i g   i f   i t   h a s   a n   A t t r i b u t e V a l u e   f o r   a n y   o f   i t s   b l o c k s  
 	 a n d   ( [ a ] . [ K e y ]   ! =   ' c o r e . C u s t o m G r i d C o l u m n s C o n f i g '   o r   a . I d   i n   ( s e l e c t   A t t r i b u t e I d   f r o m   A t t r i b u t e V a l u e   ) )  
  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   @ c r l f  
  
         - -   a t t r i b u t e s   v a l u e s   ( j u s t   B l o c k   A t t r i b u t e s )          
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T    
                 '                         / /   A t t r i b   V a l u e   f o r   B l o c k : ' +   b . N a m e   +   ' ,   A t t r i b u t e : ' +   a . N a m e   +   '   '   +   I S N U L L ( ' P a g e :   '   +   p . I n t e r n a l N a m e , ' ' )   +   I S N U L L ( ' ,   L a y o u t :   '   +   l . N a m e ,   ' ' )   +     I S N U L L ( ' ,   S i t e :   '   +   s . N a m e ,   ' ' )   +  
                 @ c r l f   +  
                 '                         R o c k M i g r a t i o n H e l p e r . A d d B l o c k A t t r i b u t e V a l u e ( " ' +            
                 C O N V E R T ( n v a r c h a r ( 5 0 ) ,   b . G u i d ) +   ' " , " ' +    
                 C O N V E R T ( n v a r c h a r ( 5 0 ) ,   a . G u i d ) +   ' " , @ " ' +    
                 I S N U L L ( r e p l a c e ( a v . V a l u e ,   ' " ' ,   ' " " ' ) , ' ' ) +   ' " ) ; ' +  
                 @ c r l f  
         f r o m   [ A t t r i b u t e V a l u e ]   [ a v ]  
         j o i n   B l o c k   b   o n   b . I d   =   a v . E n t i t y I d  
         j o i n   A t t r i b u t e   a   o n   a . i d   =   a v . A t t r i b u t e I d  
         l e f t   o u t e r   j o i n   [ P a g e ]   [ p ]   o n   [ p ] . [ I d ]   =   [ b ] . [ P a g e I d ]  
 	 l e f t   o u t e r   j o i n   [ L a y o u t ]   [ l ]   o n   [ l ] . [ I d ]   =   [ b ] . [ L a y o u t I d ]  
 	 l e f t   o u t e r   j o i n   [ L a y o u t ]   [ p l ]   o n   [ p l ] . [ I d ]   =   [ p ] . [ L a y o u t I d ]  
 	 j o i n   [ s i t e ]   [ s ]   o n   [ s ] . [ I d ]   =   [ l ] . [ s i t e I d ]   o r   [ s ] . [ I d ]   =   [ p l ] . [ s i t e I d ]  
         w h e r e   ( ( [ a v ] . [ A t t r i b u t e I d ]   i n   ( s e l e c t   [ I d ]   f r o m   # a t t r i b u t e I d s )    
                     - -   a l s o   i n c l u d e   A t t r i b u t e V a l u e s   f o r   n o n - s y s t e m / n o n - s h i p p i n g   b l o c k s  
                     o r   ( ( b . I s S y s t e m   =   0   a n d   [ b ] . [ G u i d ]   n o t   i n   ( s e l e c t   [ G u i d ]   f r o m   # k n o w n G u i d s T o I g n o r e )   )   a n d   a . E n t i t y T y p e Q u a l i f i e r C o l u m n   =   ' B l o c k T y p e I d '   )  
  
 	 	     - -   i f   e n a b l e d ,   i n c l u d e   a l l   b l o c k   a t t r i b u t e   v a l u e s   u p d a t e d   i n   t h e   l a s t   6 0   m i n u t e s ,   e v e n   i f   t h e i r   B l o c k T y p e   A t t r i b u t e   i s   a l r e a d y   I s S y s t e m = 1  
 	 	     o r   ( @ f o r c e I n c l u d e R e c e n t l y U p d a t e d B l o c k A t t r i b u t e V a l u e s   =   1   a n d   D A T E D I F F ( m i n u t e ,   S Y S D A T E T I M E ( ) , a v . M o d i f i e d D a t e T i m e )   < =   6 0 )  
                     )  
         a n d   [ a v ] . [ G u i d ]   n o t   i n   ( s e l e c t   [ G u i d ]   f r o m   # k n o w n G u i d s T o I g n o r e ) )  
 	 o r   ( @ f o r c e I n c l u d e B l o c k A t t r i b u t e s V a l u e s F o r P a g e I d   i s   n o t   n u l l   a n d   b . [ I d ]   i n   (  
 	 	 S E L E C T   b . [ I d ]  
 	 	 F R O M   [ b l o c k ]   b  
 	 	 W H E R E   b . [ P a g e I d ]   =   @ f o r c e I n c l u d e B l o c k A t t r i b u t e s V a l u e s F o r P a g e I d  
 	 ) )  
         o r d e r   b y   b . I d  
          
         d r o p   t a b l e   # a t t r i b u t e I d s  
  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   @ c r l f  
  
 	 - -   F i e l d   T y p e s  
 	 i n s e r t   i n t o   # c o d e T a b l e  
 	 S E L E C T  
                 '                         R o c k M i g r a t i o n H e l p e r . U p d a t e F i e l d T y p e ( " ' +          
                 f t . N a m e +   ' " , " ' +    
                 I S N U L L ( f t . D e s c r i p t i o n , ' ' ) +   ' " , " ' +    
                 f t . A s s e m b l y +   ' " , " ' +    
                 f t . C l a s s +   ' " , " ' +    
                 C O N V E R T ( n v a r c h a r ( 5 0 ) ,   f t . G u i d ) +   ' " ) ; ' +  
                 @ c r l f  
         f r o m   [ F i e l d T y p e ]   [ f t ]  
         w h e r e   ( f t . I s S y s t e m   =   0 )  
  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   @ c r l f  
          
         - -   P a g e   C o n t e x t s  
         i n s e r t   i n t o   # c o d e T a b l e  
             S E L E C T   '                         / /   A d d / U p d a t e   P a g e C o n t e x t   f o r   P a g e : '   +   p . I n t e r n a l N a m e   +   ' ,   E n t i t y :   '   +   p c . E n t i t y   +   ' ,   P a r a m e t e r :   '   +   p c . I d P a r a m e t e r      
             +   @ c r l f   +  
             +   '                         R o c k M i g r a t i o n H e l p e r . U p d a t e P a g e C o n t e x t (   " '   +   c o n v e r t ( n v a r c h a r ( m a x ) ,   p . G u i d )   +   ' " ,   " '   +   p c . E n t i t y   +     ' " ,   " '   +   p c . I d P a r a m e t e r   +     ' " ,   " '   +   c o n v e r t ( n v a r c h a r ( m a x ) ,   p c . G u i d )   +   ' " ) ; '  
             +   @ c r l f  
         F R O M   [ d b o ] . [ P a g e C o n t e x t ]   [ p c ]  
         j o i n   [ P a g e ]   [ p ]  
         o n   [ p ] . [ I d ]   =   [ p c ] . [ P a g e I d ]  
         w h e r e   [ p c ] . [ I s S y s t e m ]   =   0  
  
         s e l e c t   C o d e T e x t   [ M i g r a t i o n U p ]   f r o m   # c o d e T a b l e    
         w h e r e   R E P L A C E ( C o d e T e x t ,   @ c r l f ,   ' ' )   ! =   ' '  
         o r d e r   b y   I d  
         d e l e t e   f r o m   # c o d e T a b l e  
  
         - -   g e n e r a t e   M i g r a t i o n D o w n  
  
         i n s e r t   i n t o   # c o d e T a b l e   S E L E C T                    
                 '                         / /   A t t r i b   f o r   B l o c k T y p e :   '   +   b t . N a m e   +   ' : ' +   a . N a m e +  
                 @ c r l f   +  
                 '                         R o c k M i g r a t i o n H e l p e r . D e l e t e A t t r i b u t e ( " ' +    
 	 	 C O N V E R T ( n v a r c h a r ( 5 0 ) ,   [ A ] . [ G u i d ] )   +   ' " ) ; '    
 	 	 f r o m   [ A t t r i b u t e ]   [ A ]  
 	 	 i n n e r   j o i n   [ E n t i t y T y p e ]   E    
 	 	 	 O N   E . [ I d ]   =   A . [ E n t i t y T y p e I d ]  
 	 	 l e f t   o u t e r   j o i n   [ B l o c k T y p e ]   [ b t ]   o n   [ b t ] . [ I d ]   =   c a s t ( [ a ] . [ E n t i t y T y p e Q u a l i f i e r V a l u e ]   a s   i n t )  
 	 	 w h e r e   A . [ I s S y s t e m ]   =   0  
                 a n d   [ A ] . [ G u i d ]   n o t   i n   ( s e l e c t   [ G u i d ]   f r o m   # k n o w n G u i d s T o I g n o r e )    
 	 	 a n d   E . [ N a m e ]   =   ' R o c k . M o d e l . B l o c k '  
 	 	 a n d   A . E n t i t y T y p e Q u a l i f i e r C o l u m n   =   ' B l o c k T y p e I d '  
 	 	 - -   o n l y   i n c l u d e   C u s t o m G r i d E n a b l e S t i c k y H e a d e r s   i f   i t   h a s   a n   A t t r i b u t e V a l u e   f o r   a n y   o f   i t s   b l o c k s  
 	 	 a n d   ( [ a ] . [ K e y ]   ! =   ' c o r e . C u s t o m G r i d E n a b l e S t i c k y H e a d e r s '   o r   a . I d   i n   ( s e l e c t   A t t r i b u t e I d   f r o m   A t t r i b u t e V a l u e   ) )  
 	 	 - -   o n l y   i n c l u d e   C u s t o m G r i d C o l u m n s C o n f i g   i f   i t   h a s   a n   A t t r i b u t e V a l u e   f o r   a n y   o f   i t s   b l o c k s  
 	 	 a n d   ( [ a ] . [ K e y ]   ! =   ' c o r e . C u s t o m G r i d C o l u m n s C o n f i g '   o r   a . I d   i n   ( s e l e c t   A t t r i b u t e I d   f r o m   A t t r i b u t e V a l u e   ) )  
                
 	 	 o r d e r   b y   [ A ] . [ I d ]   d e s c        
  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   @ c r l f  
  
         i n s e r t   i n t o   # c o d e T a b l e    
 	 S E L E C T    
                 '                         / /   R e m o v e   B l o c k :   '   +   b . N a m e   +   ' ,   f r o m   '   +   I S N U L L ( ' P a g e :   '   +   p . I n t e r n a l N a m e , ' ' )   +   I S N U L L ( ' ,   L a y o u t :   '   +   l . N a m e ,   ' ' )     +     I S N U L L ( ' ,   S i t e :   '   +   s . N a m e ,   ' ' )   +  
                 @ c r l f   +    
 	 	 '                         R o c k M i g r a t i o n H e l p e r . D e l e t e B l o c k ( " ' +   C O N V E R T ( n v a r c h a r ( 5 0 ) ,   [ b ] . [ G u i d ] ) +   ' " ) ; '  
                 f r o m   [ B l o c k ]   [ b ]  
 	 	 l e f t   o u t e r   j o i n   [ P a g e ]   [ p ]   o n   [ p ] . [ I d ]   =   [ b ] . [ P a g e I d ]  
 	 	 l e f t   o u t e r   j o i n   [ L a y o u t ]   [ l ]   o n   [ l ] . [ I d ]   =   [ b ] . [ L a y o u t I d ]  
 	 	 l e f t   o u t e r   j o i n   [ L a y o u t ]   [ p l ]   o n   [ p l ] . [ I d ]   =   [ p ] . [ L a y o u t I d ]  
 	 	 j o i n   [ s i t e ]   [ s ]   o n   [ s ] . [ I d ]   =   [ l ] . [ s i t e I d ]   o r   [ s ] . [ I d ]   =   [ p l ] . [ s i t e I d ]  
 	 	 w h e r e   [ b ] . [ I s S y s t e m ]   =   0  
                 a n d   [ b ] . [ G u i d ]   n o t   i n   ( s e l e c t   [ G u i d ]   f r o m   # k n o w n G u i d s T o I g n o r e )    
 	 	 o r d e r   b y   [ b ] . [ I d ]   d e s c  
  
         i n s e r t   i n t o   # c o d e T a b l e    
 	 S E L E C T    
 	 	 '                         R o c k M i g r a t i o n H e l p e r . D e l e t e B l o c k T y p e ( " ' +   C O N V E R T ( n v a r c h a r ( 5 0 ) ,   [ G u i d ] ) +   ' " ) ;   / /   ' +    
 	 	 [ N a m e ]    
 	 f r o m   [ B l o c k T y p e ]    
 	 w h e r e   [ I s S y s t e m ]   =   0  
         a n d   [ G u i d ]   n o t   i n   ( s e l e c t   [ G u i d ]   f r o m   # k n o w n G u i d s T o I g n o r e )    
 	 o r d e r   b y   [ I d ]   d e s c  
  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   @ c r l f  
  
         i n s e r t   i n t o   # c o d e T a b l e    
 	 S E L E C T    
 	 	 '                         R o c k M i g r a t i o n H e l p e r . D e l e t e P a g e ( " ' +   C O N V E R T ( n v a r c h a r ( 5 0 ) ,   [ p ] . [ G u i d ] ) +   ' " ) ;   / /   '   +   I S N U L L ( '   P a g e :   '   +   p . I n t e r n a l N a m e , ' ' )   +   I S N U L L ( ' ,   L a y o u t :   '   +   l . N a m e ,   ' ' )     +     I S N U L L ( ' ,   S i t e :   '   +   s . N a m e ,   ' ' )    
 	 f r o m   [ P a g e ]   [ p ]  
 	 j o i n   [ L a y o u t ]   [ l ]   o n   [ l ] . [ I d ]   =   [ p ] . [ l a y o u t I d ]  
 	 j o i n   [ s i t e ]   [ s ]   o n   [ s ] . [ I d ]   =   [ l ] . [ s i t e I d ]  
         w h e r e   [ p ] . [ I s S y s t e m ]   =   0  
         a n d   [ p ] . [ G u i d ]   n o t   i n   ( s e l e c t   [ G u i d ]   f r o m   # k n o w n G u i d s T o I g n o r e )    
 	 o r d e r   b y   [ p ] . [ I d ]   d e s c    
  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   @ c r l f  
  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T    
 	 '                         R o c k M i g r a t i o n H e l p e r . D e l e t e L a y o u t ( " ' +   C O N V E R T ( n v a r c h a r ( 5 0 ) ,   [ l ] . [ G u i d ] ) +   ' " ) ;   / /   '     +   I S N U L L ( '   L a y o u t :   '   +   l . N a m e ,   ' ' )     +     I S N U L L ( ' ,   S i t e :   '   +   s . N a m e ,   ' ' )      
         F R O M   [ L a y o u t ]   [ l ]  
         j o i n   [ S i t e ]   [ s ]   o n   [ s ] . [ I d ]   =   [ l ] . [ S i t e I d ]  
         w h e r e   [ l ] . [ I s S y s t e m ]   =   0  
         a n d   [ l ] . [ G u i d ]   n o t   i n   ( s e l e c t   [ G u i d ]   f r o m   # k n o w n G u i d s T o I g n o r e )    
         o r d e r   b y   [ l ] . [ I d ]   d e s c  
  
         i n s e r t   i n t o   # c o d e T a b l e  
         S E L E C T   '                         / /   D e l e t e   P a g e C o n t e x t   f o r   P a g e : '   +   p . I n t e r n a l N a m e   +   ' ,   E n t i t y :   '   +   p c . E n t i t y   +   ' ,   P a r a m e t e r :   '   +   p c . I d P a r a m e t e r     +   @ c r l f   +  
         +   '                         R o c k M i g r a t i o n H e l p e r . D e l e t e P a g e C o n t e x t (   " '   +   c o n v e r t ( n v a r c h a r ( m a x ) ,   p c . G u i d )   +   ' " ) ; '  
         +   @ c r l f      
         F R O M   [ d b o ] . [ P a g e C o n t e x t ]   [ p c ]  
         j o i n   [ P a g e ]   [ p ]  
         o n   [ p ] . [ I d ]   =   [ p c ] . [ P a g e I d ]  
         w h e r e   [ p c ] . [ I s S y s t e m ]   =   0  
  
         s e l e c t   C o d e T e x t   [ M i g r a t i o n D o w n ]   f r o m   # c o d e T a b l e  
         w h e r e   R E P L A C E ( C o d e T e x t ,   @ c r l f ,   ' ' )   ! =   ' '  
         o r d e r   b y   I d  
  
 I F   O B J E C T _ I D ( ' t e m p d b . . # c o d e T a b l e ' )   I S   N O T   N U L L  
         D R O P   T A B L E   # c o d e T a b l e  
  
 I F   O B J E C T _ I D ( ' t e m p d b . . # k n o w n G u i d s T o I g n o r e ' )   I S   N O T   N U L L  
         D R O P   T A B L E   # k n o w n G u i d s T o I g n o r e  
  
 e n d 
