.PHONY: build clean test

MAKE_FLAGS=-j $$(nproc)

# ============================================================================ #
#  BUILD
# ============================================================================ #
BUILD_TYPE = "Release"

EXAMPLES = "ON"
STATS = "OFF"

build:
	@mkdir -p build/ && cd build/ && cmake -D CMAKE_BUILD_TYPE=$(BUILD_TYPE) \
                                         -D BUDDY_STATS=$(STATS) \
                                         -D BUDDY_EXAMPLES=$(EXAMPLES) ..
	cd build && $(MAKE)

# ============================================================================ #
#  CLEAN
# ============================================================================ #
clean:
	@rm -rf build

# ============================================================================ #
#  Examples
# ============================================================================ #
test:
	@cd build/examples/ && ./runregression
