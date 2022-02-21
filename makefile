CHART_NAMESPACE		:= "prom"
CHART_PROJECT		:= "prom"

update-dependencies:
	helm dependencies update ./

install:
	helm upgrade \
		$(CHART_PROJECT) \
		./ \
		--namespace $(CHART_NAMESPACE) \
		--create-namespace \
		--install