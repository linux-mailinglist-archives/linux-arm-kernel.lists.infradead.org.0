Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCAE4E641
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/SM+sn9ulyoBA3JqvBJqNx1GXjGwjcIndUS9vWw99HU=; b=SH8hdPEa9OpmDK
	X5xmoxd5azZTQcd7XqyYvgvEyftmys8XrD/6v8IIv3EJdw35tHJuE7PJGgQBK9mhTXHr/o+8DzCtO
	h8Bl6f+5cE3fG0IoSDqGvmz0y/lEMe2nAj6S1ZiepDBR8A1mpUtnxF+GhS/PqcrtqWUg+ZfDTxG4k
	IJJbq+1OBLSM6hsmosvXGxZC7aGiweCYJnU+IjxN9bZXyCw6vfRjUB/42qUquGnUdtLaQXLnWvWEG
	7suEBLoA9Vn6tfvdewWNyaq8YEbbi9Jlz3m4JyCuatoXvck+NqQdL8J+gTuO6jkHX22aFtFGzxKmV
	e+o8B1xpcCnNg1CT5BzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGvq-0005el-JW; Fri, 21 Jun 2019 10:38:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGsf-0001vn-7q
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:34:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AE43E142F;
 Fri, 21 Jun 2019 03:34:52 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E19CC3F718;
 Fri, 21 Jun 2019 03:34:51 -0700 (PDT)
Date: Fri, 21 Jun 2019 11:34:49 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 01/13] kselftest: arm64: introduce new boilerplate code
Message-ID: <20190621103449.GI2790@e103592.cambridge.arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-2-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613111335.7645-2-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033453_393418_C6926E28 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 12:13:23PM +0100, Cristian Marussi wrote:
> Added a new arm64-specific empty subsystem amongst TARGETS of KSFT build
> framework; once populated with testcases, it will be possible to build
> and invoke the new KSFT TARGETS=arm64 related tests from the toplevel
> Makefile in the usual ways.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  tools/testing/selftests/Makefile       |  1 +
>  tools/testing/selftests/arm64/Makefile | 51 ++++++++++++++++++++++++++
>  tools/testing/selftests/arm64/README   | 44 ++++++++++++++++++++++
>  3 files changed, 96 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/Makefile
>  create mode 100644 tools/testing/selftests/arm64/README
> 
> diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
> index 9781ca79794a..4ff0b41ead8a 100644
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
> new file mode 100644
> index 000000000000..03a0d4f71218
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/Makefile
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: GPL-2.0
> +# Copyright (C) 2019 ARM Limited
> +
> +# When ARCH not overridden for crosscompiling, lookup machine
> +ARCH ?= $(shell uname -m)
> +ARCH := $(shell echo $(ARCH) | sed -e s/aarch64/arm64/)
> +
> +ifeq ("x$(ARCH)", "xarm64")
> +SUBDIRS :=
> +else
> +SUBDIRS :=
> +endif
> +
> +CFLAGS := -Wall -O2 -g
> +
> +export CC
> +export CFLAGS
> +
> +all:
> +	@for DIR in $(SUBDIRS); do				\
> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
> +		mkdir -p $$BUILD_TARGET;			\
> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
> +	done
> +
> +install: all
> +	@for DIR in $(SUBDIRS); do				\
> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
> +	done
> +
> +run_tests: all
> +	@for DIR in $(SUBDIRS); do				\
> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
> +	done
> +
> +# Avoid any output on non arm64 on emit_tests
> +emit_tests: all
> +	@for DIR in $(SUBDIRS); do				\
> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
> +	done
> +
> +clean:
> +	@for DIR in $(SUBDIRS); do				\
> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
> +	done
> +
> +.PHONY: all clean install run_tests emit_tests
> diff --git a/tools/testing/selftests/arm64/README b/tools/testing/selftests/arm64/README
> new file mode 100644
> index 000000000000..d5aa7a2eda78
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/README
> @@ -0,0 +1,44 @@
> +KSelfTest ARM64
> +===============
> +
> +- These tests are arm64 specific and so not built or run but just skipped
> +  completely when env-variable ARCH is found to be different than 'arm64'
> +  and `uname -m` reports other than 'aarch64'.
> +
> +- Holding true the above, ARM64 KSFT tests can be run:
> +
> +   + as standalone (example for signal tests)
> +
> +      $ make -C tools/testing/selftest/arm64/signal clean
> +      $ make -C tools/testing/selftest/arm64/signal \
> +		INSTALL_PATH=<your-installation-path> install
> +
> +      and then launching on the target device inside the installed path:
> +
> +      device# cd <your-installed-path> && ./test_arm64_signals.sh [-k | -v]

(Similar nits to those on the arm64-specific documentation in the next
patch.)

Otherwise, this looks sensible.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
