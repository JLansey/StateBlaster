.PHONY: format-swift
format-swift:
	swift format . --recursive --in-place 
	
.PHONY: test-swift
test-swift:
	swift test
