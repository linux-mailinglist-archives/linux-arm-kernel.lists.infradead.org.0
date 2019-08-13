Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B28EC8BE80
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llCexY06wYbuAudyz9gaqzyEelH//jDmwFWD9ar+BFo=; b=M1aHTB80j/YWUo
	nve8IsVd7/uwTHl44EZOHcTLSDM3SrqRYjkVW5jDV51qzdm7/QboTEaJ2qg5QOVFKYcauVEgECLkw
	YL4pN1+4BGFntFqjFGfxoQPolYRi2BS96Cdm+yZfB8FwkVyrwPB0IWjNeMZZH56SY7inIP8TdOC+S
	kGU43u+FBzm8/M9UvQQB+vT5WU6Te1Bn8f0xGQIeLtP2TpBZdpDoyLN2NxzLUvvQ7JI3irGq8geEN
	H73Bkgvcrdfy/dSmD0PpySekvFYVTcBwpkZ7/TLwCSlQS3RdCLuOdRKBZtxXcLkiqwxn6vfrGr438
	S5ydDaj0uQXyKnI4Okeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZdT-0006Q1-8b; Tue, 13 Aug 2019 16:26:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZaG-00024h-OU
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 16:23:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 46BF1337;
 Tue, 13 Aug 2019 09:23:40 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5D6F33F706;
 Tue, 13 Aug 2019 09:23:39 -0700 (PDT)
Date: Tue, 13 Aug 2019 17:23:37 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v3 01/11] kselftest: arm64: introduce new boilerplate code
Message-ID: <20190813162337.GY10425@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
 <20190802170300.20662-2-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802170300.20662-2-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092340_894014_F4CD1DDB 
X-CRM114-Status: GOOD (  24.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org,
 dave.martin@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

^ Regarding the subject line, "boilerplate code" sounds a bit vague.
Could we say something like "Add skeleton Makefile"?

On Fri, Aug 02, 2019 at 06:02:50PM +0100, Cristian Marussi wrote:
> Added a new arm64-specific empty subsystem amongst TARGETS of KSFT build
> framework; once populated with testcases, it will be possible to build
> and invoke the new KSFT TARGETS=arm64 related tests from the toplevel
> Makefile in the usual ways.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> Reviewed the build instructions reported in the README, to be more
> agnostic regarding user/device etc..
> ---
>  tools/testing/selftests/Makefile       |  1 +
>  tools/testing/selftests/arm64/Makefile | 51 ++++++++++++++++++++++++++
>  tools/testing/selftests/arm64/README   | 43 ++++++++++++++++++++++
>  3 files changed, 95 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/Makefile
>  create mode 100644 tools/testing/selftests/arm64/README
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
> index 000000000000..dee3306071cc
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/README
> @@ -0,0 +1,43 @@
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
> +      $ make -C tools/testing/selftest/arm64/signal \
> +		INSTALL_PATH=<your-installation-path> install
> +
> +      and then launching on the target device inside the installed path:
> +
> +      $ <your-installed-path>/test_arm64_signals.sh [-k | -v]
> +
> +   + within the KSelfTest framework using standard Linux top-level-makefile
> +     targets:
> +
> +      $ make TARGETS=arm64 kselftest-clean
> +      $ make TARGETS=arm64 kselftest
> +
> +   Further details on building and running KFST can be found in:
> +     Documentation/dev-tools/kselftest.rst

The next two paragraphs aren't relevant yet.  Can we split them out of
this patch and add them alongside the relevant code / Makefile changes?

> +
> +- Tests can depend on some arch-specific definitions which can be found in a
> +  standard Kernel Headers installation in $(top_srcdir)/usr/include.
> +  Such Kernel Headers are automatically installed (via make headers_install)
> +  by KSFT framework itself in a dedicated directory when tests are launched
> +  via KSFT itself; when running standalone, instead, a Warning is issued
> +  if such headers cannot be found somewhere (we try to guess a few standard
> +  locations anyway)
> +
> +- Some of these tests may be related to possibly not implemented ARMv8
> +  features: depending on their implementation status on the effective HW
> +  we'll expect different results. The tests' harness will take care to check
> +  at run-time if the required features are supported and will act accordingly.
> +  Moreover, in order to avoid any kind of compile-time dependency on the
> +  toolchain (possibly due to the above mentioned not-implemented features),
> +  we make strictly use of direct 'S3_ sysreg' raw-encoding while checking for
> +  those features and/or lookin up sysregs.

This last paragraph is only relevant for people adding new tests.  It
probably makes sense to start "When adding new tests, try to avoid
unnecessary toolchain dependencies where possible. [...]"

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
