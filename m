Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E186071EA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gic+O45XQgWkivd+dIUq/ixVopdvMqQtkztJYAII1DU=; b=RHC1Ypoy+DN9B3
	mTmB2Wwrd+jI9AAyG+GvwmmbyawX6Rs0uFfGSR7xX054XxY+zF5w++i9/t9auFohGJCMd2Og6Tqbx
	J08gFqinX6PBcLrPm3geM9ZwTelM8OVbRfpLKGuu7NqAdeoc669gKrpVm7rnYZ/68ICzFLkN1Nkzz
	37BdU2OFewWrcGrH3ii+uBMQz9QbvmV6PWSGlWFyC2vB91BcbuZURAXkk+Ot7zMIUfLRXJz4nySFM
	+tTRd1V4Lgue8OdVVdY6IB+C4l2p4Le94LEZ0yM3MzgXAnN/dm4Ak3pkMhn/u6sBRKjzgOF/iXnm2
	sVu7zIGeABUEL6bCC1cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz9g-0002SG-T7; Tue, 23 Jul 2019 18:04:52 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz4w-0005yJ-DC
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 18:00:01 +0000
Received: by mail-pg1-x549.google.com with SMTP id a21so19559838pgv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=jOShWl3tVsknYDB/YoUvrUIV3eQMt6LYV5d/jQUs6fk=;
 b=h3Kq7We2lcnT64/ZTs7I4tdBthajlqrQq0s3uG0rcdUUGUvc4KeWtl8Lap+IaEU0xC
 yYJQXzHFT7D2Jqscee4HDCwPCbx8Wu4vGwr8iHjoxORK9KGqLusafVkNZ/vi+rdiyHeG
 jdIKwPH4OSoAMEvF/wL6dPzkou8jWXYcRntfsmvla/c6SEeJlZfF2ghZPEbGkeY9ptz1
 cvZXKirYuxY3KSRTfpbbshoiYk3G2vA59VITNzPxXSGn8hhh7sloFpM7Eqe6wa8z0eYK
 HPQ0vNQ1FWKABTpWUeLw9Zvt3IMDsn825fB13HkZ/3l6+zJgRTNpYSRvvg1VGXgpvW9L
 /8xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=jOShWl3tVsknYDB/YoUvrUIV3eQMt6LYV5d/jQUs6fk=;
 b=E79BdXW4dtbgBBJ+6ctdtkhrC2BY9pvoQSwtqbBAOQcZJpdT44ggCeLhh449y3penz
 1/kxrRNCuiae11I9VkdJgwwqeTzrCLrn6jZ4hkn7tayFOnPbEZOn4aMIcAB3BG7zzVB5
 Z9XYUqDhz82nxHIafk0svRm8iTom4bNjMzDQTNw/0fp6mh2Bc8SP+TfdBD3YZo4307G+
 e/XCZCNsQKXhOy5QPqeClQJpAAc9gMAWlhyto6NY8mv5lIGVC2ubnplFBLuLoj1x8m3k
 6MeTDowg41/Qbs1S3wgeUF9TRahv5cO1n/ZtrCjGJj6D4kjA22wAtyGllcEQXKQSym65
 IxZQ==
X-Gm-Message-State: APjAAAXMaNPocGsoHPePx8kXTmYQvsVsJSF70+YQklDYd/4ZGuZzF5gU
 cBpbQc7L+dwAuMbFmNUB6SGtHVdDZhBjGs9vbkDmmSSDWcpAlmXuRGT8tLn7VcXgUAqsSQbUKqm
 qN+k/UgG5IJ6PLyRCq7kVbUPL147fA67ozPjoswFlpPxUCgo99XEdC15XZYDiUJr5AwqDtTrDlm
 bQMCXA/haXQenFDvM=
X-Google-Smtp-Source: APXvYqxAti31RDws7lqydpjpU2QNSIYIBexpp6X7xTgogP1B1IYuH3vnzKrv44nIChFaGEFwrbMkdTHOIZSmLzhz
X-Received: by 2002:a65:5a44:: with SMTP id z4mr77715645pgs.41.1563904795339; 
 Tue, 23 Jul 2019 10:59:55 -0700 (PDT)
Date: Tue, 23 Jul 2019 19:58:52 +0200
In-Reply-To: <cover.1563904656.git.andreyknvl@google.com>
Message-Id: <c1e6aad230658bc175b42d92daeff2e30050302a.1563904656.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v19 15/15] selftests, arm64: add a selftest for passing tagged
 pointers to kernel
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105958_493053_C7F55A17 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

This patch is a part of a series that extends kernel ABI to allow to pass
tagged user pointers (with the top byte set to something else other than
0x00) as syscall arguments.

This patch adds a simple test, that calls the uname syscall with a
tagged user pointer as an argument. Without the kernel accepting tagged
user pointers the test fails with EFAULT.

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Acked-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 tools/testing/selftests/arm64/.gitignore      |  1 +
 tools/testing/selftests/arm64/Makefile        | 11 +++++++
 .../testing/selftests/arm64/run_tags_test.sh  | 12 ++++++++
 tools/testing/selftests/arm64/tags_test.c     | 29 +++++++++++++++++++
 4 files changed, 53 insertions(+)
 create mode 100644 tools/testing/selftests/arm64/.gitignore
 create mode 100644 tools/testing/selftests/arm64/Makefile
 create mode 100755 tools/testing/selftests/arm64/run_tags_test.sh
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
index 000000000000..a61b2e743e99
--- /dev/null
+++ b/tools/testing/selftests/arm64/Makefile
@@ -0,0 +1,11 @@
+# SPDX-License-Identifier: GPL-2.0
+
+# ARCH can be overridden by the user for cross compiling
+ARCH ?= $(shell uname -m 2>/dev/null || echo not)
+
+ifneq (,$(filter $(ARCH),aarch64 arm64))
+TEST_GEN_PROGS := tags_test
+TEST_PROGS := run_tags_test.sh
+endif
+
+include ../lib.mk
diff --git a/tools/testing/selftests/arm64/run_tags_test.sh b/tools/testing/selftests/arm64/run_tags_test.sh
new file mode 100755
index 000000000000..745f11379930
--- /dev/null
+++ b/tools/testing/selftests/arm64/run_tags_test.sh
@@ -0,0 +1,12 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+
+echo "--------------------"
+echo "running tags test"
+echo "--------------------"
+./tags_test
+if [ $? -ne 0 ]; then
+	echo "[FAIL]"
+else
+	echo "[PASS]"
+fi
diff --git a/tools/testing/selftests/arm64/tags_test.c b/tools/testing/selftests/arm64/tags_test.c
new file mode 100644
index 000000000000..22a1b266e373
--- /dev/null
+++ b/tools/testing/selftests/arm64/tags_test.c
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <unistd.h>
+#include <stdint.h>
+#include <sys/prctl.h>
+#include <sys/utsname.h>
+
+#define SHIFT_TAG(tag)		((uint64_t)(tag) << 56)
+#define SET_TAG(ptr, tag)	(((uint64_t)(ptr) & ~SHIFT_TAG(0xff)) | \
+					SHIFT_TAG(tag))
+
+int main(void)
+{
+	static int tbi_enabled = 0;
+	struct utsname *ptr, *tagged_ptr;
+	int err;
+
+	if (prctl(PR_SET_TAGGED_ADDR_CTRL, PR_TAGGED_ADDR_ENABLE, 0, 0, 0) == 0)
+		tbi_enabled = 1;
+	ptr = (struct utsname *)malloc(sizeof(*ptr));
+	if (tbi_enabled)
+		tagged_ptr = (struct utsname *)SET_TAG(ptr, 0x42);
+	err = uname(tagged_ptr);
+	free(ptr);
+
+	return err;
+}
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
