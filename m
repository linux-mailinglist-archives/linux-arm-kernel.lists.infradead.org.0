Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76062FA67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VX7fFmYd3zNL+x04s9hg1B99aapWuXecLpO+qc+YaE=; b=iUqPzxl7j3zITG
	eVC/l+rZkN31v1kX3ddf2QcjQCaWr8dTQBa/BW6Z7RF7hSgIffmw8aFmwhUReogrTtc5DkocXJqxm
	2upDUiMDMl6cpUrmLlL3tr9fzLPmOPIoPk1yFxXjsw9bp/HnqZM70Dea2b5+cvDnBcscIhzULjJDj
	6L+BeU5+YeNhVu9gMoaS8s7ZUCrFmaICXy0R8wg/YD7WWQdZfK4iopt2gOXP4oltzQEIS7CMS9+xB
	UiukJQuHCWaE25GF+nIjQsgc3/NnCGn0VYJmJBd4RbUKk4n+KfrU25KgB+4qNGUHQMpB5V0HbvKd+
	tOyNauS+vkNmPhiuiK3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSp8-00064r-KW; Tue, 30 Apr 2019 13:29:30 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSlw-0002WL-TY
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:26:42 +0000
Received: by mail-qk1-x749.google.com with SMTP id q79so11718334qke.18
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 06:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=CUfyrLNe/T3EcKv5qduPdE7e3xDRgpU9AlrvCv3qwqI=;
 b=ACzTueebTGZuzKKoCgKBIgO56T+v/kmKwHjurWtS7UbHoL/8XDJlDb5ck/BSEBSEkL
 L/cpQLHEpHyLmFxTqXzMv0MYxpPJ/tdSuF6iSO5LSNmbylvOUvYffcEQgPGf+AHIVemF
 X7c/hUL69n/uOjY+uNJSNPAVfbcNbVaSMzD0uei9BaIXpxtVKCRwsIlHAcYOHL9EFavB
 iCJAtq03WGCgnaX+tP7fN2qD5Hnfneud42YH1gQK4xFPHVYPeqPOAqGnfhU4Bvx5JZ4h
 WVQJpJkjflxIoXEbOmqcqlW6kZy64vV5a1g9LW1u4aQq8hQq2UTluPLfVENOwe2MSfHQ
 GaaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=CUfyrLNe/T3EcKv5qduPdE7e3xDRgpU9AlrvCv3qwqI=;
 b=ZwRPiUhemh15yTqCci5uwokD8CyUxNoJ9/gUbDvFUvfK+kpyodOm5lmt5k8hW6Kg0a
 iOjeFpe2tsJfT812fH+iOPbsKLLm71YLBMu6DS2CuPpAfwW52q8+TpYTV+2IRDVTlE6A
 AVBQclIhS7E9qil9giM8i+DQzFS9XqQLVn0WD9NcFplseYLyL4P1i0uW1nS0eqe3jfeP
 udHiv580/buRbYs14aPYNJIuw5omPwNnOFF+N9hDwvTQsjRacUFH1/AHmVpveGQJaepA
 3LltBjvUvbj1myTEnehzKh+WVSLZabDUp/JAHXcoZ83UPo9OP/uwylrr9i26W7F0utQh
 I7Ag==
X-Gm-Message-State: APjAAAUQDQSf4mPerY/7rG8Gs/oago7y2DyVF9hBBwv88GJpPLW5Ty8a
 aj4aloWVjK6GtSWtXbh+gd7F9oaBbO+w7UsxA0WfXxQamPphn5IgfzzSYQuJY1eU0EINy+1t+e0
 HESIMxVHGk8NYMrc/NhoII0ZeyW8xu8Ujxo7O82S8EhD5Sb/HF8gIfVjJllU8NEoM0iCPIOuK2+
 EWTwhBE6u4M4MYnzc=
X-Google-Smtp-Source: APXvYqysB3GTYMj0WGj5xIZkllIRnPABiLNbQUXAXOCL1Y4t6SI5ksxcGzuX1TZYAhDJVUrbxfYKc2E7kTYKjt+4
X-Received: by 2002:a05:620a:482:: with SMTP id
 2mr43219855qkr.323.1556630770597; 
 Tue, 30 Apr 2019 06:26:10 -0700 (PDT)
Date: Tue, 30 Apr 2019 15:25:13 +0200
In-Reply-To: <cover.1556630205.git.andreyknvl@google.com>
Message-Id: <d8f017e7ab36f698d05e6cc775115730c917ca77.1556630205.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v14 17/17] selftests, arm64: add a selftest for passing tagged
 pointers to kernel
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_062613_429311_5E1AFAE3 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Koenig@google.com,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Chintan Pandya <cpandya@codeaurora.org>,
 Felix <Felix.Kuehling@amd.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Kuehling@google.com, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>, Deucher@google.com,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian <Christian.Koenig@amd.com>,
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
 tools/testing/selftests/arm64/Makefile        | 11 ++++++++++
 .../testing/selftests/arm64/run_tags_test.sh  | 12 +++++++++++
 tools/testing/selftests/arm64/tags_test.c     | 21 +++++++++++++++++++
 4 files changed, 45 insertions(+)
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
index 000000000000..2bd1830a7ebe
--- /dev/null
+++ b/tools/testing/selftests/arm64/tags_test.c
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <unistd.h>
+#include <stdint.h>
+#include <sys/utsname.h>
+
+#define SHIFT_TAG(tag)		((uint64_t)(tag) << 56)
+#define SET_TAG(ptr, tag)	(((uint64_t)(ptr) & ~SHIFT_TAG(0xff)) | \
+					SHIFT_TAG(tag))
+
+int main(void)
+{
+	struct utsname *ptr = (struct utsname *)malloc(sizeof(*ptr));
+	void *tagged_ptr = (void *)SET_TAG(ptr, 0x42);
+	int err = uname(tagged_ptr);
+
+	free(ptr);
+	return err;
+}
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
