Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C75CED09BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JBjh5U/lnPJFA14+IoC4jmQhZPpUFban9OCC6OV9/lU=; b=bduNhvu3jO+ckxfX6W4Gm0FI3H
	xkG5liUGiatgfOV6czwDAjN8Yd/9uInlp4rv3wbq2DLj8afqYGrpygvv1drg9b3PQIgullSnf9qvq
	KZEZ6ycUKLOjVZK8qGbYwklfWz5s2D205j8PBh2j/qnc+O3gPCSzofa65+ZLY5UkNXSpZAh4SRI0k
	ons7GdcSa+qPT5+o3P1cdRFMwsxP6Xxjwvu+jT9qT6sISDOAaDw/dMrTKzwipKdRNV+1a7GiYhh9f
	vZgpGP0YcUvcb9Fwlea+pJCj0yVK/xYfnwQH3HojtrXiB1Jv4GVb8untFfTWZYORMNZy01WnPkdcR
	h3d/bhKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7JC-0003Xj-15; Wed, 09 Oct 2019 08:26:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7Ih-0003Il-Ng
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:26:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D1B2F1000;
 Wed,  9 Oct 2019 01:26:26 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E9E5D3F68E;
 Wed,  9 Oct 2019 01:26:25 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v8 01/12] kselftest: arm64: extend toplevel skeleton Makefile
Date: Wed,  9 Oct 2019 09:26:00 +0100
Message-Id: <20191009082611.9441-2-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009082611.9441-1-cristian.marussi@arm.com>
References: <20191009082611.9441-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_012627_856674_7D11B2DC 
X-CRM114-Status: GOOD (  15.51  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, dave.martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Modify KSFT arm64 toplevel Makefile to maintain arm64 kselftests organized
by subsystem, keeping them into distinct subdirectories under arm64 custom
KSFT directory: tools/testing/selftests/arm64/

Add to such toplevel Makefile a mechanism to guess the effective location
of Kernel headers as installed by KSFT framework.

Fit existing arm64 tags kselftest into this new schema moving them into
their own subdirectory (arm64/tags).

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
Based on:
commit 9ce1263033cd ("selftests, arm64: add a selftest for passing
		     tagged pointers to kernel")
---
v6 --> v7
- renamed SUBTARGETS to ARM64_SUBTARGETS to avoid name clashes
- rebased on v5.4-rc2 accounting for further new patches on top of commit 9ce1263033cd
v5 --> v6
- using realpath to avoid passing down relative paths
- fix commit msg & Copyright
- removed unneded Makefile export
- added SUBTARGETS specification, to allow building specific only some
  arm64 test subsystems
v4 --> v5
- rebased on arm64/for-next/core
- merged this patch with KSFT arm64 tags patch, while moving the latter
  into its own subdir
- moved kernel header includes search mechanism from KSFT arm64
  SIGNAL Makefile
- export proper top_srcdir ENV for lib.mk
v3 --> v4
- comment reword
- simplified documentation in README
- dropped README about standalone
---
 tools/testing/selftests/Makefile              |  1 +
 tools/testing/selftests/arm64/Makefile        | 64 +++++++++++++++++--
 tools/testing/selftests/arm64/README          | 25 ++++++++
 tools/testing/selftests/arm64/tags/Makefile   |  7 ++
 .../arm64/{ => tags}/run_tags_test.sh         |  0
 .../selftests/arm64/{ => tags}/tags_test.c    |  0
 6 files changed, 92 insertions(+), 5 deletions(-)
 create mode 100644 tools/testing/selftests/arm64/README
 create mode 100644 tools/testing/selftests/arm64/tags/Makefile
 rename tools/testing/selftests/arm64/{ => tags}/run_tags_test.sh (100%)
 rename tools/testing/selftests/arm64/{ => tags}/tags_test.c (100%)

diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
index c3feccb99ff5..b7c8ad3d0b34 100644
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
index f9f79fb272f0..cd27ca689224 100644
--- a/tools/testing/selftests/arm64/Makefile
+++ b/tools/testing/selftests/arm64/Makefile
@@ -1,12 +1,66 @@
 # SPDX-License-Identifier: GPL-2.0
 
-# ARCH can be overridden by the user for cross compiling
+# When ARCH not overridden for crosscompiling, lookup machine
 ARCH ?= $(shell uname -m 2>/dev/null || echo not)
 
 ifneq (,$(filter $(ARCH),aarch64 arm64))
-CFLAGS += -I../../../../usr/include/
-TEST_GEN_PROGS := tags_test
-TEST_PROGS := run_tags_test.sh
+ARM64_SUBTARGETS ?= tags
+else
+ARM64_SUBTARGETS :=
 endif
 
-include ../lib.mk
+CFLAGS := -Wall -O2 -g
+
+# A proper top_srcdir is needed by KSFT(lib.mk)
+top_srcdir = $(realpath ../../../../)
+
+# Additional include paths needed by kselftest.h and local headers
+CFLAGS += -I$(top_srcdir)/tools/testing/selftests/
+
+# Guessing where the Kernel headers could have been installed
+# depending on ENV config
+ifeq ($(KBUILD_OUTPUT),)
+khdr_dir = $(top_srcdir)/usr/include
+else
+# the KSFT preferred location when KBUILD_OUTPUT is set
+khdr_dir = $(KBUILD_OUTPUT)/kselftest/usr/include
+endif
+
+CFLAGS += -I$(khdr_dir)
+
+export CFLAGS
+export top_srcdir
+
+all:
+	@for DIR in $(ARM64_SUBTARGETS); do				\
+		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
+		mkdir -p $$BUILD_TARGET;			\
+		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
+	done
+
+install: all
+	@for DIR in $(ARM64_SUBTARGETS); do				\
+		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
+		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
+	done
+
+run_tests: all
+	@for DIR in $(ARM64_SUBTARGETS); do				\
+		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
+		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
+	done
+
+# Avoid any output on non arm64 on emit_tests
+emit_tests: all
+	@for DIR in $(ARM64_SUBTARGETS); do				\
+		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
+		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
+	done
+
+clean:
+	@for DIR in $(ARM64_SUBTARGETS); do				\
+		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
+		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
+	done
+
+.PHONY: all clean install run_tests emit_tests
diff --git a/tools/testing/selftests/arm64/README b/tools/testing/selftests/arm64/README
new file mode 100644
index 000000000000..a1badd882102
--- /dev/null
+++ b/tools/testing/selftests/arm64/README
@@ -0,0 +1,25 @@
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
+      or, alternatively, only specific arm64/ subtargets can be picked:
+
+      $ make -C tools/testing/selftests TARGETS=arm64 ARM64_SUBTARGETS="tags signal" \
+		INSTALL_PATH=<your-installation-path> install
+
+   Further details on building and running KFST can be found in:
+     Documentation/dev-tools/kselftest.rst
diff --git a/tools/testing/selftests/arm64/tags/Makefile b/tools/testing/selftests/arm64/tags/Makefile
new file mode 100644
index 000000000000..41cb75070511
--- /dev/null
+++ b/tools/testing/selftests/arm64/tags/Makefile
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0
+
+CFLAGS += -I../../../../../usr/include/
+TEST_GEN_PROGS := tags_test
+TEST_PROGS := run_tags_test.sh
+
+include ../../lib.mk
diff --git a/tools/testing/selftests/arm64/run_tags_test.sh b/tools/testing/selftests/arm64/tags/run_tags_test.sh
similarity index 100%
rename from tools/testing/selftests/arm64/run_tags_test.sh
rename to tools/testing/selftests/arm64/tags/run_tags_test.sh
diff --git a/tools/testing/selftests/arm64/tags_test.c b/tools/testing/selftests/arm64/tags/tags_test.c
similarity index 100%
rename from tools/testing/selftests/arm64/tags_test.c
rename to tools/testing/selftests/arm64/tags/tags_test.c
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
