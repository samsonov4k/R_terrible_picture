

library(ggplot2)

penguins$sex_icon <- ifelse(penguins$sex == "male", "♂️", "♀️")





ggplot(penguins, aes(x = body_mass/1000, y = flipper_len, 
                     color = species,      
                     shape = sex)) +      
  geom_text(aes(label = sex_icon), size = 7, alpha = 0.9) +
  coord_polar() +
  
 
  # ПАЛИТРА ДЛЯ ВИДОВ ПИНГВИНОВ
  scale_color_manual(
    values = c(
      "Adelie"     = "#FF0040",    
      "Gentoo"     = "#00FF41",    
      "Chinstrap"  = "cyan"
    )
  ) +
  
  

  theme(
    plot.background = element_rect(fill = "black"),
    panel.background = element_rect(fill = "#CEFF1D"),  
    
    
    
    legend.position = "none",
    axis.text = element_blank(),           
    axis.title = element_text(size = 16, face = "bold.italic", 
                              color = "#BB0000", family = "serif"),
    
    panel.grid.major = element_blank(),    # Главная сетка
    panel.grid.minor = element_blank(),    # Мелкая сетка    
    plot.title = element_text(size = 17, face = "bold.italic", 
                              color = "cyan4", hjust = 0.5, family = "Impact")
  ) +
  labs(
    title = "«Пингвины — это те самые существа, 

которые смотрят на тебя так, будто 

ты им должен 8 месяцев зарплаты»

— Терри Пратчетт, The Science of Discworld (1999)",
    x = "Поворот по часовой стрелке показывает возрастание массы", 
    y = " Радиус — это длина ласта в миллиметрах (Flipper_len в датасете). \n Ластами пингвины плавают под водой со скоростью до 36 км/ч!!!"
  ) +
  annotate("text", x = 3.5, y = 230, label = "Chinstrap", size = 11, color = "cyan")+
  annotate("text", x = 2.9, y = 240, label = "Adelie" , size = 11, color = "#FF0040") +
  annotate("text", x = 5.3, y = 240, label = "Gentoo" , size = 11, color = "#00FF41")+


annotate("text", x = 4.5, y = 233, 
         label = 
"Датасет Palmer Penguins представляет морфометрические данные трёх видов
антарктических пингвинов (Adelie, Gentoo, Chinstrap), собранные в 2007-2009 годах.
у станции Palmer. Полярная проекция раскрывает половой диморфизм: 
самцы (♂️) крупнее самок (♀️) по массе и ластам — адаптация для конкуренции за
территории колоний (до 1000 особей/га). Неоновая триада цветов визуализирует 
экологическую нишу: Adelie — манёвренные  охотники на мелководье, Gentoo — 
глубоководные спринтеры, Chinstrap — универсалы",
         size = 3.4, color = "magenta", alpha=0.7)
         
         
