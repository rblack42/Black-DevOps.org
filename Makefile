SITE	=	blog.black-devops.org

.PHONY:	all
all:
	cd $(SITE) && nikola build

.PHONY: view
view:
	cd $(SITE) && nikola serve

.PHONY:	reqs
reqs:
	pip install -r requirements.txt

.PHONY:	site
site:
	nikola init $(SITE)
