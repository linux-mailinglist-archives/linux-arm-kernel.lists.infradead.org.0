Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCA3424B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLtY03mK//rZC2j87wPvyFwGGrNOi45zaVe7VbY6Rq8=; b=SOGIu8/y9Ct3Pi
	HmQIygX0RTchjaPR0RvJtS7secaWcuF+1sqRnD5YdthBarkbkcSnOeVZ6DsATddcwOi7k2kGr5d/0
	b2HGA+Nc5IJQJV8cf0Buf9HdwAqvzrbrKWIy9I9zUKZlus9qw66rXYYjRkcUoFMe6XphlLLbOvIaZ
	BezHR9Kl7CA1rgGQFGpSkT1ydF28COpQqhwgxNgXPj4ny2Flxk6ucS+np9+C5AOgCiPvi6wwL8QrY
	gX5tvkz3RyJi1I+bgTGbguw+TkuO4nNYshfDx5jCEK5jtOhSUpw1xmRGpSrPhDbLZn/x11kE1deo9
	Hnz6VPJQmd0terFi5AbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1kX-0004v3-Sj; Wed, 12 Jun 2019 11:49:05 +0000
Received: from mail-yw1-xc49.google.com ([2607:f8b0:4864:20::c49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1g1-0007O8-O3
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:44:27 +0000
Received: by mail-yw1-xc49.google.com with SMTP id w127so16916522ywe.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=gGgZ3a6eTnEUj++uQZqNg8ohQ9SAhJYSqDRRhc7mNEI=;
 b=IyYT4UbafS5twM0xOLKRaXywnDFDdbDqJgnUILJhttHP1uH2L+NNxbnxVgYAee8lTj
 qqRpjg9Px1/VzqAAM6upfA449si21/4lJ1XkboyBr77Ub0YTrQLbJn5sOIwz1IVA69V5
 Ap8ARpNEkRP6VF2Emm63QaD9Cx3fvDSKZaN/HHC/Xocn6hv1419HlST6JCQQ1Z5EHlL/
 CiJ+tHOg0rDi38FsnXC87324szrGfxAi8RWcHgDsH+2gfi2ulhbLZaNJ0gAKDJ3X8Gkg
 JxyfovuFPvVfND0iTfX5ByU+bmOloPTC5uiR6JL5swcvm2UzXNQY3tCHhrlAltKj98wk
 GeRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=gGgZ3a6eTnEUj++uQZqNg8ohQ9SAhJYSqDRRhc7mNEI=;
 b=gox5a/jON50tJk7ivwL+89rWfGfslfUZU0C0dz19RbhIr6dXyOz33k2zk71fLQEL74
 MvrG5/JvciUpZV8+atRchasIB1AlRWA2iGWXdUqo4sRhimJoZafasEFGH/ifE5OKa2BI
 7TTCz5WBQh3A7zYTitmnrPW/cF1AYg7Hp0YsnjEAPQJ81+S1aOVXNUEcHRNelgSzYTbA
 oHv0kauh2I5t+a3NnBJdDtLRQNoyuR4OVlTSMpQ3PanXSQvIZZf7nrsMXAOwjU5MZQtR
 zYNgupsnn1IFO3+AlVfJ3J3aAbPRi8jr8Fm/mrEI2Fx1pYTsfC0lFw5DvjKPBVNts5vN
 v7sw==
X-Gm-Message-State: APjAAAX6GOoNrZYsSNTPmAbfJbOiWy84UmuWEB679R3lkU87eGtrsb9h
 bmjDkBEji9PDqAcbLhH1U7/M1kTNuGMOB0EoXKxWhILnwPdtrMsS4CkuoGi+Z6+StX6NO6XJ+8x
 IDMwg54sOqhD0lAjHI0eowj/4MN8Y1n9yocLxbUkOVKeiwOxoE/WxLQEc4Z063qK/a06kzycJun
 CaMfIjHT8FmE8Ud+E=
X-Google-Smtp-Source: APXvYqw2mEWzgJjQoV5VS4+2oS4fV2R/NqpuRE12+fqx+o9WDuiIlBB+xhQmG1zgiCj0aRJhgLJNrenJlX6SsR3w
X-Received: by 2002:a81:6d46:: with SMTP id i67mr906534ywc.103.1560339863971; 
 Wed, 12 Jun 2019 04:44:23 -0700 (PDT)
Date: Wed, 12 Jun 2019 13:43:32 +0200
In-Reply-To: <cover.1560339705.git.andreyknvl@google.com>
Message-Id: <e024234e652f23be4d76d63227de114e7def5dff.1560339705.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v17 15/15] selftests, arm64: add a selftest for passing tagged
 pointers to kernel
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_044425_793782_B7AFBE03 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Khalid Aziz <khalid.aziz@oracle.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is a part of a series that extends arm64 kernel ABI to allow to
pass tagged user pointers (with the top byte set to something else other
than 0x00) as syscall arguments.

This patch adds a simple test, that calls the uname syscall with a
tagged user pointer as an argument. Without the kernel accepting tagged
user pointers the test fails with EFAULT.

Co-developed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 tools/testing/selftests/arm64/.gitignore      |  2 +
 tools/testing/selftests/arm64/Makefile        | 22 +++++++
 .../testing/selftests/arm64/run_tags_test.sh  | 12 ++++
 tools/testing/selftests/arm64/tags_lib.c      | 62 +++++++++++++++++++
 tools/testing/selftests/arm64/tags_test.c     | 18 ++++++
 5 files changed, 116 insertions(+)
 create mode 100644 tools/testing/selftests/arm64/.gitignore
 create mode 100644 tools/testing/selftests/arm64/Makefile
 create mode 100755 tools/testing/selftests/arm64/run_tags_test.sh
 create mode 100644 tools/testing/selftests/arm64/tags_lib.c
 create mode 100644 tools/testing/selftests/arm64/tags_test.c

diff --git a/tools/testing/selftests/arm64/.gitignore b/tools/testing/selftests/arm64/.gitignore
new file mode 100644
index 000000000000..9b6a568de17f
--- /dev/null
+++ b/tools/testing/selftests/arm64/.gitignore
@@ -0,0 +1,2 @@
+tags_test
+tags_lib.so
diff --git a/tools/testing/selftests/arm64/Makefile b/tools/testing/selftests/arm64/Makefile
new file mode 100644
index 000000000000..9dee18727923
--- /dev/null
+++ b/tools/testing/selftests/arm64/Makefile
@@ -0,0 +1,22 @@
+# SPDX-License-Identifier: GPL-2.0
+
+include ../lib.mk
+
+# ARCH can be overridden by the user for cross compiling
+ARCH ?= $(shell uname -m 2>/dev/null || echo not)
+
+ifneq (,$(filter $(ARCH),aarch64 arm64))
+
+TEST_CUSTOM_PROGS := $(OUTPUT)/tags_test
+
+$(OUTPUT)/tags_test: tags_test.c $(OUTPUT)/tags_lib.so
+	$(CC) -o $@ $(CFLAGS) $(LDFLAGS) $<
+
+$(OUTPUT)/tags_lib.so: tags_lib.c
+	$(CC) -o $@ -shared $(CFLAGS) $(LDFLAGS) $^
+
+TEST_PROGS := run_tags_test.sh
+
+all: $(TEST_CUSTOM_PROGS)
+
+endif
diff --git a/tools/testing/selftests/arm64/run_tags_test.sh b/tools/testing/selftests/arm64/run_tags_test.sh
new file mode 100755
index 000000000000..2bbe0cd4220b
--- /dev/null
+++ b/tools/testing/selftests/arm64/run_tags_test.sh
@@ -0,0 +1,12 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+
+echo "--------------------"
+echo "running tags test"
+echo "--------------------"
+LD_PRELOAD=./tags_lib.so ./tags_test
+if [ $? -ne 0 ]; then
+	echo "[FAIL]"
+else
+	echo "[PASS]"
+fi
diff --git a/tools/testing/selftests/arm64/tags_lib.c b/tools/testing/selftests/arm64/tags_lib.c
new file mode 100644
index 000000000000..55f64fc1aae6
--- /dev/null
+++ b/tools/testing/selftests/arm64/tags_lib.c
@@ -0,0 +1,62 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <stdlib.h>
+#include <sys/prctl.h>
+
+#define TAG_SHIFT	(56)
+#define TAG_MASK	(0xffUL << TAG_SHIFT)
+
+#define PR_SET_TAGGED_ADDR_CTRL	55
+#define PR_GET_TAGGED_ADDR_CTRL	56
+#define PR_TAGGED_ADDR_ENABLE	(1UL << 0)
+
+void *__libc_malloc(size_t size);
+void __libc_free(void *ptr);
+void *__libc_realloc(void *ptr, size_t size);
+void *__libc_calloc(size_t nmemb, size_t size);
+
+static void *tag_ptr(void *ptr)
+{
+	static int tagged_addr_err = 1;
+	unsigned long tag = 0;
+
+	/*
+	 * Note that this code is racy. We only use it as a part of a single
+	 * threaded test application. Beware of using in multithreaded ones.
+	 */
+	if (tagged_addr_err == 1)
+		tagged_addr_err = prctl(PR_SET_TAGGED_ADDR_CTRL,
+				PR_TAGGED_ADDR_ENABLE, 0, 0, 0);
+
+	if (!ptr)
+		return ptr;
+	if (!tagged_addr_err)
+		tag = rand() & 0xff;
+
+	return (void *)((unsigned long)ptr | (tag << TAG_SHIFT));
+}
+
+static void *untag_ptr(void *ptr)
+{
+	return (void *)((unsigned long)ptr & ~TAG_MASK);
+}
+
+void *malloc(size_t size)
+{
+	return tag_ptr(__libc_malloc(size));
+}
+
+void free(void *ptr)
+{
+	__libc_free(untag_ptr(ptr));
+}
+
+void *realloc(void *ptr, size_t size)
+{
+	return tag_ptr(__libc_realloc(untag_ptr(ptr), size));
+}
+
+void *calloc(size_t nmemb, size_t size)
+{
+	return tag_ptr(__libc_calloc(nmemb, size));
+}
diff --git a/tools/testing/selftests/arm64/tags_test.c b/tools/testing/selftests/arm64/tags_test.c
new file mode 100644
index 000000000000..263b302874ed
--- /dev/null
+++ b/tools/testing/selftests/arm64/tags_test.c
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <unistd.h>
+#include <stdint.h>
+#include <sys/utsname.h>
+
+int main(void)
+{
+	struct utsname *ptr;
+	int err;
+
+	ptr = (struct utsname *)malloc(sizeof(*ptr));
+	err = uname(ptr);
+	free(ptr);
+	return err;
+}
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
