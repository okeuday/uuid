PROJECT = uuid

DEPS = quickrand
dep_quickrand = git https://github.com/okeuday/quickrand master

include erlang.mk

OTP_RELEASE := $(shell $(ERL) -eval "io:format(erlang:system_info(otp_release)), halt().")
ERLC_OPTS += "-DERLANG_OTP_VERSION_$(OTP_RELEASE)"
