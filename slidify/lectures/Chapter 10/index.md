---
title       : Chapter 10 -- Inequality of Capital Ownership
subtitle    : Thomas Piketty, Capital in the 21st Century (Harvard University Press 2014)
author      : Patrick Toche
framework   : io2012  # minimal, io2012, html5slides, shower, dzslides
mode        : selfcontained  # selfcontained, standalone, draft
widgets     : mathjax   # [mathjax, quiz, bootstrap]
ext_widgets : {rCharts: [libraries/nvd3]}  # libraries/morris, libraries/highcharts, libraries/rickshaw, libraries/dimple
url         : {lib: "../../libraries", assets: "../../assets"}
lecnum      : "10"
--- {class: cover-slide}



---

### Introduction  

- This set of slides surveys selected topics from *Capital in the Twenty-First Century*, a book written by economist Thomas Piketty, published in English in 2014 to great acclaim.
- All source files for this course are available for download by anyone without restrictions at https://github.com/ptoche/piketty
- The full course is expected to be completed by April 2015.
- Chapter 9 analyzed the dynamics of labor income inequality, in particular the recent explosion of wage inequalities and the rise of the super-manager.
- Chapter 10 reviews the historical evolution of wealth inequality and the factors behind the historic compression of inequality.

---

#### **The World Wealthiest Individuals**


| Rank | Name | Wealth (Billion)  | Age | Company | Country |
|------|:----:|------------------:|----:|--------:|--------:|
| 1  | Bill Gates          | $79.2 | 59 | Microsoft          | United States  |
| 2	 | Carlos Slim Helu    | $77.1 | 75 | telecom            | Mexico         | 
| 3	 | Warren Buffett      | $72.7 | 84 | Berkshire Hathaway | United States  |
| 4  | Amancio Ortega      | $64.5 | 78 | Zara               | Spain          |
| 5	 | Larry Ellison       | $54.3 | 70 | Oracle             | United States  |
| 6  | Charles Koch        | $42.9 | 79 | diversified        | United States  |
| 6	 | David Koch          | $42.9 | 74 | diversified        | United States  |
| 8  | Christy Walton      | $41.7 | 60 | Wal-Mart           | United States  |
| 9	 | Jim Walton          | $40.6 | 67 | Wal-Mart           | United States  |
| 10 | Liliane Bettencourt | $40.1 | 92 | L'Oreal            | France         |
| 11 | Alice Walton	       | $39.4 | 65 | Wal-Mart           | United States  |
| 12 | S. Robson Walton    | $39.1 | 71 | Wal-Mart           | United States  |
| 13 | Bernard Arnault     | $37.2 | 65 | LVMH               | France         |
| 14 | Michael Bloomberg   | $35.5 | 73 | Bloomberg LP       | United States  |
| 15 | Jeff Bezos          | $34.8 | 51 | Amazon.com         | United States  |
<footer class = 'footnote'>[The 2015 Forbes Billionaires List](http://www.forbes.com/billionaires/list/) by ``Forbes Magazine``
</footer> 

---

#### **The World Wealthiest Individuals (continued)**


| Rank | Name | Wealth (Billion)  | Age | Company | Country |
|------|:----:|------------------:|----:|--------:|--------:|
| 16 | Mark Zuckerberg     | $33.4 | 30 | Facebook           | United States  |
| 17 | Li Ka-shing         | $33.3 | 86 | diversified        | Hong Kong      |
| 18 | Sheldon Adelson     | $31.4 | 81 | casinos            | United States  |
| 19 | Larry Page          | $29.7 | 41 | Google             | United States  |
| 20 | Sergey Brin         | $29.2 | 41 | Google             | United States  |
| 21 | Georg Schaeffler    | $26.9 | 50 | ball bearings      | Germany        |
| 22 | Forrest Mars, Jr.   | $26.6 | 83 | candy              | United States  |
| 22 | Jacqueline Mars     | $26.6 | 75 | candy              | United States  |
| 22 | John Mars           | $26.6 | 78 | candy              | United States  |
| 25 | David Thomson       | $25.5 | 57 | media              | Canada         |
| 26 | Jorge Paulo Lemann  | $25.0 | 75 | beer               | Brazil         |
| 27 | Lee Shau Kee        | $24.8 | 87 | real estate        | Hong Kong      |
| 28 | Stefan Persson      | $24.5 | 67 | H&M                | Sweden         |
| 29 | George Soros        | $24.2 | 84 | hedge funds        | United States  |
| 29 | Wang Jianlin        | $24.2 | 60 | real estate        | China          |
<footer class = 'footnote'>[The 2015 Forbes Billionaires List](http://www.forbes.com/billionaires/list/) by ``Forbes Magazine``
</footer> 

---

<figure class = "centered">  
<img src = "../../tables/Table_10_1.png" alt = "The composition of Parisian portfolios, 1872-1912" style="max-width: 1000px!important; max-height: 600px!important; margin: 0em; padding: 0em;">
</figure> 

<!---

### Wealth inequality in France

<figure class = "captioned">  
<img src = "../../figures/Figure_10_1.png" alt = "Figure 10.1. Wealth inequality in France, 1810-2010.">  
<figcaption class = 'figcaption'>Figure 10.1. The top decile (the top 10 percent highest wealth holders) owns 80-90 percent of total wealth in 1810-1910, and 60-65 percent today.</figcaption>  
</figure> 
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``ggplot2`` (author: Hadley Wickham)
</footer>  

-->

---

### Wealth inequality in France


<iframe src = "figures/Figure_10_1.html" alt = "Figure 10.1. Wealth inequality in France, 1810-2010.">
</iframe><icaption class = 'icaption'>Figure 10.1. The top decile (the top 10 percent highest wealth holders) owns 80-90 percent of total wealth in 1810-1910, and 60-65 percent today.</icaption>
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``rCharts`` (author: Ramnath Vaidyanathan)  
</footer>  

<!---  

### Wealth inequality in Paris versus France

<figure class = "captioned">  
<img src = "../../figures/Figure_10_2.png" alt = "Figure 10.2. Wealth inequality in Paris versus France, 1810-2010.">  
<figcaption class = 'figcaption'>Figure 10.2. The top percentile (the top 1 percent wealth holders) owns 70 percent of aggregate wealth in Paris on the eve of World War I.</figcaption>  
</figure> 
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``ggplot2`` (author: Hadley Wickham)
</footer>  

-->

---

### Wealth inequality in Paris versus France


<iframe src = 'figures/Figure_10_2.html' alt = "Figure 10.2. Wealth inequality in Paris versus France, 1810-2010.">
</iframe><icaption class = 'icaption'>Figure 10.2. The top percentile (the top 1 percent wealth holders) owns 70 percent of aggregate wealth in Paris on the eve of World War I.</icaption>
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``rCharts`` (author: Ramnath Vaidyanathan)  
</footer>  

<!---

### Wealth inequality in Sweden

<figure class = "captioned">  
<img src = "../../figures/Figure_10_3.png" alt = "Figure 10.3. Wealth inequality in Sweden, 1810-2010.">  
<figcaption class = 'figcaption'>Figure 10.3. The top 10 percent holds 80-90 percent of total wealth in 1810-1910 and 55-60 percent today.</figcaption>  
</figure> 
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``ggplot2`` (author: Hadley Wickham)
</footer>  

-->

---

### Wealth inequality in Sweden


<iframe src = 'figures/Figure_10_3.html' alt = "Figure 10.3. Wealth inequality in Sweden, 1810-2010.">
</iframe><icaption class = 'icaption'>Figure 10.3. The top 10 percent holds 80-90 percent of total wealth in 1810-1910 and 55-60 percent today.</icaption>
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``rCharts`` (author: Ramnath Vaidyanathan)  
</footer>  

<!---

### The composition of top incomes in France in 2005

<figure class = "captioned">  
<img src = "../../figures/Figure_10_4.png" alt = "Figure 10.4. The composition of top incomes in France in 2005.">  
<figcaption class = 'figcaption'>Figure 10.4. Capital income becomes dominant at the level of the top 0.1 percent in France in 2005, as opposed to the top 0.5 percent in 1932.</figcaption>  
</figure> 
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``ggplot2`` (author: Hadley Wickham)
</footer>  

-->

---

### The composition of top incomes in France in 2005


<iframe src = 'figures/Figure_10_4.html' alt = "Figure 10.4. The composition of top incomes in France in 2005.">
</iframe><icaption class = 'icaption'>Figure 10.4. Capital income becomes dominant at the level of the top 0.1 percent in France in 2005, as opposed to the top 0.5 percent in 1932.</icaption>
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``rCharts`` (author: Ramnath Vaidyanathan)  
</footer>  

<!---

### Wealth inequality in the United States

<figure class = "captioned">  
<img src = "../../figures/Figure_10_5.png" alt = "Figure 10.5. Wealth inequality in the United States, 1810-2010.">  
<figcaption class = 'figcaption'>Figure 10.5. The top 10 percent wealth holders own about 80 percent of total wealth in 1910 and 75 percent today.</figcaption>  
</figure> 
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``ggplot2`` (author: Hadley Wickham)
</footer>  

-->

---

### Wealth inequality in the United States


<iframe src = 'figures/Figure_10_5.html' alt = "Figure 10.5. Wealth inequality in the United States, 1810-2010.">
</iframe><icaption class = 'icaption'>Figure 10.5. The top 10 percent wealth holders own about 80 percent of total wealth in 1910 and 75 percent today.</icaption>
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``rCharts`` (author: Ramnath Vaidyanathan)  
</footer>  

<!---

### Wealth inequality in Europe versus the United States

<figure class = "captioned">  
<img src = "../../figures/Figure_10_6.png" alt = "Figure 10.6. Wealth inequality in Europe versus the United States, 1810-2010.">  
<figcaption class = 'figcaption'>Figure 10.6. Until the mid-twentieth century, wealth inequality was higher in Europe than in the United States.</figcaption>  
</figure> 
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``ggplot2`` (author: Hadley Wickham)
</footer>  

-->

---

### Wealth inequality in Europe versus the United States


<iframe src = 'figures/Figure_10_6.html' alt = "Figure 10.6. Wealth inequality in Europe versus the United States, 1810-2010.">
</iframe><icaption class = 'icaption'>Figure 10.6. Until the mid-twentieth century, wealth inequality was higher in Europe than in the United States.</icaption>
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``rCharts`` (author: Ramnath Vaidyanathan)  
</footer>  

<!---

### Return to capital and growth: France

<figure class = "captioned">  
<img src = "../../figures/Figure_10_7.png" alt = "Figure 10.7. Return to capital and growth: France, 1820-1913.">  
<figcaption class = 'figcaption'>Figure 10.7. The rate of return on capital is a lot higher than the growth rate in France between 1820 and 1913.</figcaption>  
</figure> 
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``ggplot2`` (author: Hadley Wickham)
</footer>  

-->

---

### Return to capital and growth: France


<iframe src = 'figures/Figure_10_7.html' alt = "Figure 10.7. Return to capital and growth: France, 1820-1913.">
</iframe><icaption class = 'icaption'>Figure 10.7. The rate of return on capital is a lot higher than the growth rate in France between 1820 and 1913.</icaption>
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``rCharts`` (author: Ramnath Vaidyanathan)  
</footer>  

<!---

### Capital share and saving rate: France

<figure class = "captioned">  
<img src = "../../figures/Figure_10_8.png" alt = "Figure 10.8. Capital share and saving rate: France, 1820-1913.">  
<figcaption class = 'figcaption'>Figure 10.8. The share of capital income in national income is much larger than the saving rate in France between 1820 and 1913.</figcaption>  
</figure> 
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``ggplot2`` (author: Hadley Wickham)
</footer>  

-->

---

### Capital share and saving rate: France


<iframe src = 'figures/Figure_10_8.html' alt = "Figure 10.8. Capital share and saving rate: France, 1820-1913.">
</iframe><icaption class = 'icaption'>Figure 10.8. The share of capital income in national income is much larger than the saving rate in France between 1820 and 1913.</icaption> 
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``rCharts`` (author: Ramnath Vaidyanathan)  
</footer>  

<!---

### Rate of return versus growth rate at the world level (pre-tax)

<figure class = "captioned">  
<img src = "../../figures/Figure_10_9.png" alt = "Figure 10.9. Rate of return versus growth rate at the world level, from Antiquity until 2100.">  
<figcaption class = 'figcaption'>Figure 10.9. The rate of return to capital (pre-tax) has always been higher than the world growth rate, but the gap was reduced during the twentieth century, and might widen again in the twenty-first century.</figcaption>  
</figure> 
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``ggplot2`` (author: Hadley Wickham)
</footer>  

-->

---

### Rate of return versus growth rate at the world level (pre-tax)


<iframe src = 'figures/Figure_10_9.html' alt = "Figure 10.9. Rate of return versus growth rate at the world level, from Antiquity until 2100.">
</iframe><icaption class = 'icaption'>Figure 10.9. The rate of return to capital (pre-tax) has always been higher than the world growth rate, but the gap was reduced during the twentieth century, and might widen again in the twenty-first century.</icaption> 
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``rCharts`` (author: Ramnath Vaidyanathan)  
</footer>  

<!---

### Rate of return versus growth rate at the world level (post-tax)

<figure class = "captioned">  
<img src = "../../figures/Figure_10_10.png" alt = "Figure 10.10. After-tax rate of return versus growth rate at the world level, from Antiquity until 2100.">  
<figcaption class = 'figcaption'>Figure 10.10. The rate of return to capital (after tax and capital losses) fell below the growth rate during the twentieth century, and may again surpass it in the twenty-first century.</figcaption>  
</figure> 
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``ggplot2`` (author: Hadley Wickham)
</footer>  

-->

---

### Rate of return versus growth rate at the world level (post-tax)


<iframe src = 'figures/Figure_10_10.html' alt = "Figure 10.10. After-tax rate of return versus growth rate at the world level, from Antiquity until 2100.">
</iframe><icaption class = 'icaption'>Figure 10.10. The rate of return to capital (after tax and capital losses) fell below the growth rate during the twentieth century, and may again surpass it in the twenty-first century.</icaption> 
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``rCharts`` (author: Ramnath Vaidyanathan)  
</footer>  

<!---

### Rate of return versus growth rate at the world level (post-tax)

<figure class = "captioned">  
<img src = "../../figures/Figure_10_11.png" alt = "Figure 10.11. After-tax rate of return versus growth rate at the world level, from Antiquity until 2200.">  
<figcaption class = 'figcaption'>Figure 10.11. The rate of return to capital (after tax and capital losses) fell below the growth rate during the twentieth century, and might again surpass it in the twenty-first century.</figcaption>  
</figure> 
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``ggplot2`` (author: Hadley Wickham)
</footer>  

-->

---

### Rate of return versus growth rate at the world level (post-tax)


<iframe src = 'figures/Figure_10_11.html' alt = "Figure 10.11. After-tax rate of return versus growth rate at the world level, from Antiquity until 2200.">
</iframe><icaption class = 'icaption'>Figure 10.11. The rate of return to capital (after tax and capital losses) fell below the growth rate during the twentieth century, and might again surpass it in the twenty-first century.</icaption> 
<footer class = 'footnote'>Concept and data: Thomas Piketty. Chart created with ``rCharts`` (author: Ramnath Vaidyanathan)  
</footer>  

