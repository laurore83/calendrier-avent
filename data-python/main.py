# import streamlit as st
# import numpy as np
# import pandas as pd
import random
# import seaborn as sns

# df_user = pd.DataFrame()

########### ACTIVITY
col_activity = ['id_activity', 'activity', 'type_id', 'link', 'image', 'day_type', 'content', 'adress', 'opening_hours']

########### MUSIC
col_music = ['music_id', 'music_link']
row_music = []
# link_music = []
# Definir le format de la musique
# pour lien 

########### TYPE            DONE
col_type = ['type_id', 'name']
row_type = [[1,'restaurant'], [2,'sortie'], [3,'recette'], [4,'cadeau'], [5,'DIY']]

########### PREFERENCE      DONE
col_preference = ['pref_id', 'user_id', 'type_id', 'value']
# pref_id = 1 à 10
# user_id = random(1,10)
# type_id = random(1,5)
# value = random(1,10)
row_preference = []
for i in range(1,11):
    row_preference.append([i,random.randint(1,10), random.randint(1,5), random.randint(1,10)])
    print(f"({random.randint(1,10)}, {random.randint(1,5)}, {random.randint(1,10)})")
########### USER            DONE
col_user = ['user_id', 'pseudo', 'password']
# une dizaine de valeur
row_user = []
list_pseudo = ['FrappeFrançaise', 'ParisPixel', 'LyonLaser',
                'MarseilleMana', 'NantesNinja', 'GuerrierGaulois',
                'LoupLorrain', 'ProvencePhoenix', 'ToulouseTitan',
                'BretagneBlaster']
for i in range(1,11):
    row_user.append([i,list_pseudo[i-1],"mdp123"])
    # print(f"INSERT INTO `user` VALUES ({i},{list_pseudo[i-1]},mdp123); ")

# INSERT INTO `activity` VALUES (1,'Marché de noel',2,'https://maps.app.goo.gl/No4VYx2op89sbts88','https://th.bing.com/th/id/OIP.fOsYKLG0YDXYyDXzWgg24QHaE8?rs=1&pid=ImgDetMain',0,'Marché sur les allées Tourny',' All. de Tourny, 33000 Bordeaux',21);

########### CONSUMED           DONE
col_consumed = ['id', 'user_id', 'activity_id', 'fav']
# vide



# df_user.to_sql()