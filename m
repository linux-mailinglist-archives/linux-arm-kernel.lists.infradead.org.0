Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 314DAA3C65
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DD2FLROSkSEw+llTNVoeVhZTkZU6BvaufnlQnp76JOQ=; b=NlsrQ0YtW8dbQ6toKWOpnzTjQR
	xfXX+r8vHrF6jVcWz4/l+sqJS5x71JFqTZCdgy699TwBzVdO1m5+NvLwrGogNxJ1lg96F09JFLfuU
	16nSgFr6C7U5aPi9100VT/CwEzFpwJceDsSuDvwXVQzpXADxoYSc3i3tk9bpYg+4Efba7Vrv9W8r+
	mu2evafaA7pUhMQ6JOQFUZQnWsEZIDsz7Dw5xQpJJ9t5VU60+GfLKMZCBfagtuLEbW7uPClRKzs4+
	aUu6qRkhyB3wUqE+bzeIM9jspmNokbSCTSPUNEp1J+2AHxTRHZnqUpG4i/P+aPDh1CNokFHhPOzPK
	P1YKKP3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3k0W-0003RI-Hy; Fri, 30 Aug 2019 16:44:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jzr-0002xn-NF
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:43:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3AC82360;
 Fri, 30 Aug 2019 09:43:35 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 528823F718;
 Fri, 30 Aug 2019 09:43:34 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v4 01/11] kselftest: arm64: add skeleton Makefile
Date: Fri, 30 Aug 2019 17:42:38 +0100
Message-Id: <20190830164248.16238-2-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830164248.16238-1-cristian.marussi@arm.com>
References: <20190830164248.16238-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_094335_883156_2C576A64 
X-CRM114-Status: GOOD (  12.74  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, dave.martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new arm64-specific empty subsystem amongst TARGETS of KSFT build
framework; keep these new arm64 KSFT testcases separated into distinct
subdirs inside tools/testing/selftests/arm64/ depending on the specific
subsystem targeted.

Run the new KSFT TARGETS=arm64 related tests from the toplevel
KSFT Makefile in the usual ways.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
v3--->v4
- comment reword
- simplified documentation in README
- dropped README about standalone
---
 tools/testing/selftests/Makefile       |  1 +
 tools/testing/selftests/arm64/Makefile | 51 ++++++++++++++++++++++++++
 tools/testing/selftests/arm64/README   | 20 ++++++++++
 3 files changed, 72 insertions(+)
 create mode 100644 tools/testing/selftests/arm64/Makefile
 create mode 100644 tools/testing/selftests/arm64/README

diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
index 25b43a8c2b15..1722dae9381a 100644
--- a/tools/testing/selftests/Makefile
+++ b/tools/testing/selftests/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 TARGETS = android
+TARGETS += arm64
 TARGETS += bpf
 TARGETS += breakpoints
 TARGETS += capabilities
diff --git a/tools/testing/selftests/arm64/Makefile b/tools/testing/selftests/arm64/Makefile
new file mode 100644
index 000000000000..03a0d4f71218
--- /dev/null
+++ b/tools/testing/selftests/arm64/Makefile
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0
+# Copyright (C) 2019 ARM Limited
+
+# When ARCH not overridden for crosscompiling, lookup machine
+ARCH ?= $(shell uname -m)
+ARCH := $(shell echo $(ARCH) | sed -e s/aarch64/arm64/)
+
+ifeq ("x$(ARCH)", "xarm64")
+SUBDIRS :=
+else
+SUBDIRS :=
+endif
+
+CFLAGS := -Wall -O2 -g
+
+export CC
+export CFLAGS
+
+all:
+	@for DIR in $(SUBDIRS); do				\
+		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
+		mkdir -p $$BUILD_TARGET;			\
+		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
+	done
+
+install: all
+	@for DIR in $(SUBDIRS); do				\
+		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
+		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
+	done
+
+run_tests: all
+	@for DIR in $(SUBDIRS); do				\
+		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
+		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
+	done
+
+# Avoid any output on non arm64 on emit_tests
+emit_tests: all
+	@for DIR in $(SUBDIRS); do				\
+		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
+		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
+	done
+
+clean:
+	@for DIR in $(SUBDIRS); do				\
+		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
+		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
+	done
+
+.PHONY: all clean install run_tests emit_tests
diff --git a/tools/testing/selftests/arm64/README b/tools/testing/selftests/arm64/README
new file mode 100644
index 000000000000..aca892e62a6c
--- /dev/null
+++ b/tools/testing/selftests/arm64/README
@@ -0,0 +1,20 @@
+KSelfTest ARM64
+===============
+
+- These tests are arm64 specific and so not built or run but just skipped
+  completely when env-variable ARCH is found to be different than 'arm64'
+  and `uname -m` reports other than 'aarch64'.
+
+- Holding true the above, ARM64 KSFT tests can be run within the KSelfTest
+  framework using standard Linux top-level-makefile targets:
+
+      $ make TARGETS=arm64 kselftest-clean
+      $ make TARGETS=arm64 kselftest
+
+      or
+
+      $ make -C tools/testing/selftests TARGETS=arm64 \
+		INSTALL_PATH=<your-installation-path> install
+
+   Further details on building and running KFST can be found in:
+     Documentation/dev-tools/kselftest.rst
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
