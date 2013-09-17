STYLESHEETS_DIR = /usr/share/xml/docbook/stylesheet/nwalsh
NAME = RapportLab1


all: html pdf

html:
	xsltproc -o $(NAME).html $(STYLESHEETS_DIR)/xhtml/docbook.xsl $(NAME).xml

fo:
	xsltproc -o $(NAME).fo $(STYLESHEETS_DIR)/fo/docbook.xsl $(NAME).xml

pdf: fo
	fop -pdf $(NAME).pdf -fo $(NAME).fo

clean:
	rm -rf $(NAME).html $(NAME).fo $(NAME).pdf
