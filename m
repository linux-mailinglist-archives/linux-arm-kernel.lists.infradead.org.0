Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6B9335D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGkFnmUuQ7sqwFR9msvM8V7ohJw1ZMLaqwGm4rErUDA=; b=pAjv6dV3nPBM5X
	9xsGCGJZ+ahWKtcx1d6qw8DsYkdJVTEOlyCnLNbsgiYk4ZN1zZIMblyJbF10DEhtY+rZuw3Annthl
	gLVsbuJbrO3292twHaJJw6K3PcQ0IB9/vhm7DlTAVe+mpm+ItsEMZJr0xDxSJlwd0cLieOHZWgmfg
	xsfrCxDooCFUYkk0SbT75et7YaiXOrColX3BhDnLz/2K+OwEkAYLrDiL6C/NE4Rf89DnhHN6bfy/Y
	6uaKRGRg49u5WcnZJyC/ko9XycsuJcqaRhwgQSz1XDOzZQDhX3v3/uarUNMfCicgtguTWXBWgAQru
	O6MJR+gQ38QMv+lnGNKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqIP-0003yP-Fo; Mon, 03 Jun 2019 16:58:53 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqFu-0000nk-8I
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:56:48 +0000
Received: by mail-qt1-x849.google.com with SMTP id 97so8086843qtb.16
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 09:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=v9MzlIb7HY1yKtXIqdaDnLUOCgnoLYityVGh+V+FCFI=;
 b=E8Ist5LC6WVHrU8hj11VtWQb5rjU7iBORWjaptcqcX3l9oPWYIMo05KmXzzCVgt3cu
 lYJ4Yvl8mbNlJpJWSEYMIryL5scHXmPmVUqUSjI9X7Fuxa39wo8rzDRZFWMAkoj3uwjY
 mqiCqrBWPtOVkiL+4ZV5H/HhzxJmpTR97uHC/IdXM4tljhuvgYTiLw3741mzKX8NYLUt
 uc6Aqh8uuXDuaxHP4yeJ0XLPpMovyAE85DGwVCzioR0Gt6moVfBUOYshZAWVCnGUBbU4
 06NzOvSR4tkaeqT9+eniQMZF90V1u65K6kkbFscWsH7pqN+ptT1wb5JpdkKVZRneJwoH
 CGYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=v9MzlIb7HY1yKtXIqdaDnLUOCgnoLYityVGh+V+FCFI=;
 b=RXzuRFY7JKOwSDTAwNN0cVa6zS4QXDKj3Nm1+g/Ausf07TI4ge6EuvSTPJJaqGPOAA
 C1mD5g3om6MUzcXOOEUNZUlt3/eDVGOgQIF0vmUSeOf4RcIntuj065QbLQjySzMnVe4Y
 LWniLGDoU1FhCDQAEyt10trzA+H144ltSZN+XjV/eQAZo5zPYeUIARCyJc+FdQRLZ44/
 fOI5gGdluhS8DTKlRZs2SnqSI4BSpp+gIhOIt4gNuu+2/e089lAobcJ1c0BsDB8mV4AS
 6tnb+8Y3/iUNru9/6RIDSy/QzavPfQGm1T+Wh5hDEQWmdK4X0KYxfQRNPiyBZCSmum7c
 Sb4w==
X-Gm-Message-State: APjAAAViec8lPaHcOOAGoI8jka+BWX1K8NpmnLex8GvSU+EqinUbXd0t
 uFNVM/G3l/HZY1jKVumRKwqRcXGdXirslokQv7sYTsTb4LIi4dQMoD+kBphAHlV7P00cniXIFoq
 J5yDS3wZ7X6VTvU+8ZetYpitiC+kmaeGvLZKZ6aRl5dxZ7/LDT4VC+gT7wU1KBjqswFuXRMJYV7
 ja3OlDzS4xiN2Ku/U=
X-Google-Smtp-Source: APXvYqyupRnjjQO94efnTljbt6p9DxywyyDuZaQUfwBf3Y405Fl40dWCznelJThhDpEIkj52c6mVbKSb6DjD/rvF
X-Received: by 2002:a37:de06:: with SMTP id h6mr3881914qkj.322.1559580976267; 
 Mon, 03 Jun 2019 09:56:16 -0700 (PDT)
Date: Mon,  3 Jun 2019 18:55:18 +0200
In-Reply-To: <cover.1559580831.git.andreyknvl@google.com>
Message-Id: <9e1b5998a28f82b16076fc85ab4f88af5381cf74.1559580831.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
Subject: [PATCH v16 16/16] selftests, arm64: add a selftest for passing tagged
 pointers to kernel
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_095618_963321_7B5901C7 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 tools/testing/selftests/arm64/.gitignore      |  1 +
 tools/testing/selftests/arm64/Makefile        | 22 ++++++++++
 .../testing/selftests/arm64/run_tags_test.sh  | 12 ++++++
 tools/testing/selftests/arm64/tags_lib.c      | 42 +++++++++++++++++++
 tools/testing/selftests/arm64/tags_test.c     | 18 ++++++++
 5 files changed, 95 insertions(+)
 create mode 100644 tools/testing/selftests/arm64/.gitignore
 create mode 100644 tools/testing/selftests/arm64/Makefile
 create mode 100755 tools/testing/selftests/arm64/run_tags_test.sh
 create mode 100644 tools/testing/selftests/arm64/tags_lib.c
 create mode 100644 tools/testing/selftests/arm64/tags_test.c

diff --git a/tools/testing/selftests/arm64/.gitignore b/tools/testing/selftests/arm64/.gitignore
new file mode 100644
index 000000000000..e8fae8d61ed6
--- /dev/null
+++ b/tools/testing/selftests/arm64/.gitignore
@@ -0,0 +1 @@
+tags_test
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
index 000000000000..8a674509216e
--- /dev/null
+++ b/tools/testing/selftests/arm64/tags_lib.c
@@ -0,0 +1,42 @@
+#include <stdlib.h>
+
+#define TAG_SHIFT	(56)
+#define TAG_MASK	(0xffUL << TAG_SHIFT)
+
+void *__libc_malloc(size_t size);
+void __libc_free(void *ptr);
+void *__libc_realloc(void *ptr, size_t size);
+void *__libc_calloc(size_t nmemb, size_t size);
+
+static void *tag_ptr(void *ptr)
+{
+	unsigned long tag = rand() & 0xff;
+	if (!ptr)
+		return ptr;
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
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
