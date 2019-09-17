Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5787AB5080
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 16:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgiNb4Ijal1CXY7sz8GK2d2oByvW0MXyq6brx9/TqN4=; b=sY4JRbCC+jLwjI
	qgpJqZw/jjEoQu7/B2O7Dixh57p8wZgI5i6NJa/WHs4oHecQszUJTCL02GsDQAT1werl6TPHBI7pl
	v9dHdOZeYX2YcVjZ3v62AVei0RtwQpRzbLFv/mY7jtrfv1psGME7WMBCe2Tt5/vLorlxIWOuLvkUa
	EzA2bha1P4FLLlG8UY1vQLLyezEeNDU9egLSw6ZfxZ2fwRoEvYXWTkEtY6cf1IEDW8pxrgps3sPvE
	XhFG4TSwZXlIjhiRrAxrfK+TQzC3EWFiVmbXNPRI7XLnRxz86mUCfOvLiI1Yiz6ybj9es+Ea4+5lF
	XIFYrvHRKNTc2ONA7hcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAEa3-0004xs-KW; Tue, 17 Sep 2019 14:35:47 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEZY-0004mb-Fw
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 14:35:18 +0000
Received: by mail-lj1-x244.google.com with SMTP id m7so3104505lji.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 07:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9eGI4/NM5cOizWQeNzvBft8UI2p8lpZEa97UX/N6jZA=;
 b=Zijv/whYVRDItufE1jFHqj1z+GDbb53g0TUXN8UI6M64Ba1VKvinDnxyjkDgz0Cbi8
 LCE/Uycz2X/A5oDTs82BE4UBEC9QxWm0+YViQS5318yk9ZgZ14mVKekgrLvNNVM11Par
 u3qk5tLYDdxgYurev48m4sHhGP8SFYp+wPe1adjkv/IYaB+wstUPVugxvm+mbXdCThy2
 p9RL3n6QP0vPC555DLa0sJp/bBq6YHfSIxWWfsLxWijscjHhElhmAmFVk5ymOpfRe+9U
 2ifyi8Lqp8y7tq+5GSDVuosPkCvadWfmRuoYT7Py3dnW+SWmZ8koQ3+cFH7g4smtxr4F
 uSxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9eGI4/NM5cOizWQeNzvBft8UI2p8lpZEa97UX/N6jZA=;
 b=PwvYfLkSBj/h9A0wxlr9OZ/YWrIrue/thqmYncSsW6zMaNvl64Fv8HDkv4iBbcPMYY
 uhwJ85og5z0JwzTwFOzWCsWT/tJRoXWi38YPLdwvC5mEm+RDhy45GEK5olz/pMTTdjQL
 RsH6cnoFFVu2YRmaW/M4GO7FqU5tqrt8R51/V+SSmlHsmBseaQ42YmIqpz8I847INIfB
 Bp6K2S7bWDk/7qFlNM6JzBffj+ID1RWDS2yJq5PsQxTVhchbRrCsA4Oy3xneaUBToVet
 h++c0pLvyiEzRsxwFKF6ujfFxg3JxJ94Ztjun8OyxmFfmPSqsrgnUwEq8LAWoJlq43cX
 L1xg==
X-Gm-Message-State: APjAAAVIEKbP7e8RgJen/WHNf9eqhM63+RHvdtLJqypyH/n9zAseKMsd
 GwXJYgZVYPINPJd9oE90NawDVg==
X-Google-Smtp-Source: APXvYqyMYIluOAUOUZcQMg82w7YPic7WDDMnrJuH3VtTYcT3ixJlyn6c9aEUUDDP8wDEo0Lm7q6LlQ==
X-Received: by 2002:a2e:9c99:: with SMTP id x25mr2128152lji.9.1568730913136;
 Tue, 17 Sep 2019 07:35:13 -0700 (PDT)
Received: from localhost.localdomain
 (c-413e70d5.07-21-73746f28.bbcust.telenor.se. [213.112.62.65])
 by smtp.gmail.com with ESMTPSA id o15sm472266lff.22.2019.09.17.07.35.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Sep 2019 07:35:12 -0700 (PDT)
Date: Tue, 17 Sep 2019 15:42:23 +0200
From: Anders Roxell <anders.roxell@linaro.org>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v6 01/11] kselftest: arm64: extend toplevel skeleton
 Makefile
Message-ID: <20190917134223.GA2695@localhost.localdomain>
References: <20190910123111.33478-1-cristian.marussi@arm.com>
 <20190910123111.33478-2-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910123111.33478-2-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_073516_537361_384ED997 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: andreyknvl@google.com, linux-kselftest@vger.kernel.org,
 amit.kachhap@arm.com, shuah@kernel.org, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-10 13:31, Cristian Marussi wrote:
> Modify KSFT arm64 toplevel Makefile to maintain arm64 kselftests organized
> by subsystem, keeping them into distinct subdirectories under arm64 custom
> KSFT directory: tools/testing/selftests/arm64/
> 
> Add to such toplevel Makefile a mechanism to guess the effective location
> of Kernel headers as installed by KSFT framework.
> 
> Fit existing arm64 tags kselftest into this new schema moving them into
> their own subdirectory (arm64/tags).
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> Based on:
> commit 9ce1263033cd ("selftests, arm64: add a selftest for passing
> 		     tagged pointers to kernel")
> ---
> v5 --> v6
> - using realpath to avoid passing down relative paths
> - fix commit msg & Copyright
> - removed unneded Makefile export
> - added SUBTARGETS specification, to allow building specific only some
>   arm64 test subsystems
> v4 --> v5
> - rebased on arm64/for-next/core
> - merged this patch with KSFT arm64 tags patch, while moving the latter
>   into its own subdir
> - moved kernel header includes search mechanism from KSFT arm64
>   SIGNAL Makefile
> - export proper top_srcdir ENV for lib.mk
> v3 --> v4
> - comment reword
> - simplified documentation in README
> - dropped README about standalone
> ---
>  tools/testing/selftests/Makefile              |  1 +
>  tools/testing/selftests/arm64/Makefile        | 63 +++++++++++++++++--
>  tools/testing/selftests/arm64/README          | 25 ++++++++
>  tools/testing/selftests/arm64/tags/Makefile   |  6 ++
>  .../arm64/{ => tags}/run_tags_test.sh         |  0
>  .../selftests/arm64/{ => tags}/tags_test.c    |  0
>  6 files changed, 91 insertions(+), 4 deletions(-)
>  create mode 100644 tools/testing/selftests/arm64/README
>  create mode 100644 tools/testing/selftests/arm64/tags/Makefile
>  rename tools/testing/selftests/arm64/{ => tags}/run_tags_test.sh (100%)
>  rename tools/testing/selftests/arm64/{ => tags}/tags_test.c (100%)
> 
> diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
> index 25b43a8c2b15..1722dae9381a 100644
> --- a/tools/testing/selftests/Makefile
> +++ b/tools/testing/selftests/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  TARGETS = android
> +TARGETS += arm64
>  TARGETS += bpf
>  TARGETS += breakpoints
>  TARGETS += capabilities
> diff --git a/tools/testing/selftests/arm64/Makefile b/tools/testing/selftests/arm64/Makefile
> index a61b2e743e99..cbb2a5a9e3fc 100644
> --- a/tools/testing/selftests/arm64/Makefile
> +++ b/tools/testing/selftests/arm64/Makefile
> @@ -1,11 +1,66 @@
>  # SPDX-License-Identifier: GPL-2.0
>  
> -# ARCH can be overridden by the user for cross compiling
> +# When ARCH not overridden for crosscompiling, lookup machine
>  ARCH ?= $(shell uname -m 2>/dev/null || echo not)
>  
>  ifneq (,$(filter $(ARCH),aarch64 arm64))
> -TEST_GEN_PROGS := tags_test
> -TEST_PROGS := run_tags_test.sh
> +SUBTARGETS ?= tags
> +else
> +SUBTARGETS :=
>  endif
>  
> -include ../lib.mk
> +CFLAGS := -Wall -O2 -g
> +
> +# A proper top_srcdir is needed by KSFT(lib.mk)
> +top_srcdir = $(realpath ../../../../)
> +
> +# Additional include paths needed by kselftest.h and local headers
> +CFLAGS += -I$(top_srcdir)/tools/testing/selftests/
> +
> +# Guessing where the Kernel headers could have been installed
> +# depending on ENV config
> +ifeq ($(KBUILD_OUTPUT),)
> +khdr_dir = $(top_srcdir)/usr/include
> +else
> +# the KSFT preferred location when KBUILD_OUTPUT is set
> +khdr_dir = $(KBUILD_OUTPUT)/kselftest/usr/include
> +endif
> +
> +CFLAGS += -I$(khdr_dir)
> +
> +export CFLAGS
> +export top_srcdir
> +
> +all:
> +	@for DIR in $(SUBTARGETS); do				\
> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
> +		mkdir -p $$BUILD_TARGET;			\
> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
> +	done
> +
> +install: all
> +	@for DIR in $(SUBTARGETS); do				\
> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
> +	done
> +
> +run_tests: all
> +	@for DIR in $(SUBTARGETS); do				\
> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
> +	done
> +
> +# Avoid any output on non arm64 on emit_tests
> +emit_tests: all
> +	@for DIR in $(SUBTARGETS); do				\
> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
> +	done
> +
> +clean:
> +	@for DIR in $(SUBTARGETS); do				\
> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
> +	done
> +
> +.PHONY: all clean install run_tests emit_tests
> diff --git a/tools/testing/selftests/arm64/README b/tools/testing/selftests/arm64/README
> new file mode 100644
> index 000000000000..cc1e51796fee
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/README
> @@ -0,0 +1,25 @@
> +KSelfTest ARM64
> +===============
> +
> +- These tests are arm64 specific and so not built or run but just skipped
> +  completely when env-variable ARCH is found to be different than 'arm64'
> +  and `uname -m` reports other than 'aarch64'.
> +
> +- Holding true the above, ARM64 KSFT tests can be run within the KSelfTest
> +  framework using standard Linux top-level-makefile targets:
> +
> +      $ make TARGETS=arm64 kselftest-clean
> +      $ make TARGETS=arm64 kselftest
> +
> +      or
> +
> +      $ make -C tools/testing/selftests TARGETS=arm64 \
> +		INSTALL_PATH=<your-installation-path> install
> +
> +      or, alternatively, only specific arm64/ subtargets can be picked:
> +
> +      $ make -C tools/testing/selftests TARGETS=arm64 SUBTARGETS="tags signal" \
> +		INSTALL_PATH=<your-installation-path> install
> +
> +   Further details on building and running KFST can be found in:
> +     Documentation/dev-tools/kselftest.rst
> diff --git a/tools/testing/selftests/arm64/tags/Makefile b/tools/testing/selftests/arm64/tags/Makefile
> new file mode 100644
> index 000000000000..dcc8b0467b68
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/tags/Makefile
> @@ -0,0 +1,6 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +TEST_GEN_PROGS := tags_test

This should be TEST_GEN_FILES, since its used by run_tags_test.sh.
If its TEST_GEN_PROGS it will be added to the script run_kselftest.sh,
and I don't think thats the intent, even though it looked like that
before.

Cheers,
Anders

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
