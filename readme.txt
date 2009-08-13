The folder contains the following: 

1. The primary template conforming to the NCSU thesis requirements. 
	a. The template file for doctoral students is ncsudoctoralthesis.cls
	b. The template file for masters students with four members in the committee
		is ncsuthesis4.cls	
	c. The template file for masters students with three members in the committee
		is ncsuthesis3.cls

2. A sample thesis which includes comments on how to use the template for the basic layout. The thesis is split into the following files: 
	a. front.tex
	B. intro.tex
	c. Chapter1.tex , Chapter2.tex
	d. thesis.tex (the overall document which puts all pieces together)
	e. appendix1.tex

3. Finally, for those people who use a Makefile or Bibliography file for building their LaTeX documents, there's included a Makefile and mybib for this setup. I have not tested whether it works, but it seems correct overall. If you find any issues with it and are able to correct it, please contact the Thesis Editor and provide them the corrected Makefile so future students can use it. 
	These files are optional and are not necessary for using the template

4. For those of you using Texmaker I have also included an english dictionary file en_US.

5. To build the thesis type "make all" at the command prompt
