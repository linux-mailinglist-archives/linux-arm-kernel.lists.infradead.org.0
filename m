Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA219112235
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 05:50:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yjXfh4L3bNaZXjam3XV6G1f2Ldjj+UAXR2zFhbUfD0w=; b=Skc
	oEcV6mk9Z4p+s0eF6ZKUOhIsnyt1eHU/SkkU4KpHCdI4F0nFM1chlwhdYPGwQHloL00yuTW6+od3z
	wKIV/BIhh2gCbJuk49xx72oaBaxIFIFYk7OYebGIBBSBV9DPZJPNxMbAaP77atK9LZPeWmDo+lLeZ
	Wkd7AAxGNSrCAyiWPfy0vRQ9xqLqUFwcILtR0oHmZi/58F7PZ0Ee+2bAZLyREdsQp9vT5nV8iwV1i
	KwJRyqGkviFtD+zAJVIliOl3vu5bEibY7KoLIBhC3pRN3+OYzTEvmEnMdKVuUi0/Svrd8iw4SDHKI
	VDCERrMr9c2tNfTO4a+u3fM1iiSfzRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icMcJ-0006I2-IY; Wed, 04 Dec 2019 04:50:23 +0000
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icMcC-0006Hc-4u
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 04:50:18 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id xB44nqwx028807;
 Wed, 4 Dec 2019 13:49:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com xB44nqwx028807
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1575434993;
 bh=Jt7OPPgzmKjsthv+1fEhc/PB2RQML0mCHB/Yk4eNpNM=;
 h=From:To:Cc:Subject:Date:From;
 b=VrRX0cOfzpxSGvNmzzdQh0kNkcAtNB8Cb66qhyQf0UGmGl8TeheA+xVlfDDsx8oTd
 ihGuCs2kY4Pr+9z9J8nqgtAO8+eO2LOQ0zrzEwUdZHx/ZQ9nHPhuYWHon0x/O0Fnpg
 5rt+uRgMvAAAdrgMm0yy9pxfWqGApcLo+xO/1su5oNizCS6GED3NtjZMsHPiTQpTWL
 FEEoPUgfmPjop9Y2WDJssDfI+1dVnTJynKSvUMETpPNHsf00ot9xMRCfUeULrEVXKJ
 cXYaJFXomi2+r70KP8QRaHHQptdnDXcURrZNyvkIMwejKFr1wtm82d9x1YYB30mq1a
 lVwcaIoUGFiAA==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: patches@arm.linux.org.uk
Subject: [PATCH] ARM: decompressor: simplify libfdt builds
Date: Wed,  4 Dec 2019 13:49:50 +0900
Message-Id: <20191204044950.10418-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_205016_420084_C75894CF 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.74 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Copying source files during the build time may not end up with
as clean code as expected.

lib/fdt*.c simply wrap scripts/dtc/libfdt/fdt*.c, and it works
nicely. Let's follow that approach for the arm decompressor, too.

Add four wrappers, arch/arm/boot/compressed/fdt*.c and remove
the Makefile messes. Another nice thing is we no longer need to
maintain the own libfdt_env.h because the decompressor can include
<linux/libfdt_env.h>.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

KernelVersion: v5.5-rc1


 arch/arm/boot/compressed/.gitignore     |  9 -------
 arch/arm/boot/compressed/Makefile       | 33 +++++++------------------
 arch/arm/boot/compressed/atags_to_fdt.c |  1 +
 arch/arm/boot/compressed/fdt.c          |  1 +
 arch/arm/boot/compressed/fdt_ro.c       |  1 +
 arch/arm/boot/compressed/fdt_rw.c       |  1 +
 arch/arm/boot/compressed/fdt_wip.c      |  1 +
 arch/arm/boot/compressed/libfdt_env.h   | 24 ------------------
 8 files changed, 14 insertions(+), 57 deletions(-)
 create mode 100644 arch/arm/boot/compressed/fdt.c
 create mode 100644 arch/arm/boot/compressed/fdt_ro.c
 create mode 100644 arch/arm/boot/compressed/fdt_rw.c
 create mode 100644 arch/arm/boot/compressed/fdt_wip.c
 delete mode 100644 arch/arm/boot/compressed/libfdt_env.h

diff --git a/arch/arm/boot/compressed/.gitignore b/arch/arm/boot/compressed/.gitignore
index 86b2f5d28240..2fdb4885846b 100644
--- a/arch/arm/boot/compressed/.gitignore
+++ b/arch/arm/boot/compressed/.gitignore
@@ -6,12 +6,3 @@ hyp-stub.S
 piggy_data
 vmlinux
 vmlinux.lds
-
-# borrowed libfdt files
-fdt.c
-fdt.h
-fdt_ro.c
-fdt_rw.c
-fdt_wip.c
-libfdt.h
-libfdt_internal.h
diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index da599c3a1193..d01ce71afac6 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -76,29 +76,23 @@ compress-$(CONFIG_KERNEL_LZMA) = lzma
 compress-$(CONFIG_KERNEL_XZ)   = xzkern
 compress-$(CONFIG_KERNEL_LZ4)  = lz4
 
-# Borrowed libfdt files for the ATAG compatibility mode
-
-libfdt		:= fdt_rw.c fdt_ro.c fdt_wip.c fdt.c
-libfdt_hdrs	:= fdt.h libfdt.h libfdt_internal.h
-
-libfdt_objs	:= $(addsuffix .o, $(basename $(libfdt)))
-
-$(addprefix $(obj)/,$(libfdt) $(libfdt_hdrs)): $(obj)/%: $(srctree)/scripts/dtc/libfdt/%
-	$(call cmd,shipped)
+ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
+libfdt_objs = fdt_rw.o fdt_ro.o fdt_wip.o fdt.o atags_to_fdt.o
 
-$(addprefix $(obj)/,$(libfdt_objs) atags_to_fdt.o): \
-	$(addprefix $(obj)/,$(libfdt_hdrs))
+OBJS	+= $(libfdt_objs)
 
-ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
-OBJS	+= $(libfdt_objs) atags_to_fdt.o
+# -fstack-protector-strong triggers protection checks in this code,
+# but it is being used too early to link to meaningful stack_chk logic.
+nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
+$(foreach o, $(libfdt_objs), \
+	$(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt) $(nossp-flags-y))
 endif
 
 targets       := vmlinux vmlinux.lds piggy_data piggy.o \
 		 lib1funcs.o ashldi3.o bswapsdi2.o \
 		 head.o $(OBJS)
 
-clean-files += piggy_data lib1funcs.S ashldi3.S bswapsdi2.S \
-		$(libfdt) $(libfdt_hdrs) hyp-stub.S
+clean-files += piggy_data lib1funcs.S ashldi3.S bswapsdi2.S hyp-stub.S
 
 KBUILD_CFLAGS += -DDISABLE_BRANCH_PROFILING
 KBUILD_CFLAGS += $(DISABLE_ARM_SSP_PER_TASK_PLUGIN)
@@ -108,15 +102,6 @@ ORIG_CFLAGS := $(KBUILD_CFLAGS)
 KBUILD_CFLAGS = $(subst -pg, , $(ORIG_CFLAGS))
 endif
 
-# -fstack-protector-strong triggers protection checks in this code,
-# but it is being used too early to link to meaningful stack_chk logic.
-nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
-CFLAGS_atags_to_fdt.o := $(nossp-flags-y)
-CFLAGS_fdt.o := $(nossp-flags-y)
-CFLAGS_fdt_ro.o := $(nossp-flags-y)
-CFLAGS_fdt_rw.o := $(nossp-flags-y)
-CFLAGS_fdt_wip.o := $(nossp-flags-y)
-
 ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin -I$(obj)
 asflags-y := -DZIMAGE
 
diff --git a/arch/arm/boot/compressed/atags_to_fdt.c b/arch/arm/boot/compressed/atags_to_fdt.c
index 64c49747f8a3..8452753efebe 100644
--- a/arch/arm/boot/compressed/atags_to_fdt.c
+++ b/arch/arm/boot/compressed/atags_to_fdt.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
+#include <linux/libfdt_env.h>
 #include <asm/setup.h>
 #include <libfdt.h>
 
diff --git a/arch/arm/boot/compressed/fdt.c b/arch/arm/boot/compressed/fdt.c
new file mode 100644
index 000000000000..49bc1fc1e273
--- /dev/null
+++ b/arch/arm/boot/compressed/fdt.c
@@ -0,0 +1 @@
+#include "../../../../lib/fdt.c"
diff --git a/arch/arm/boot/compressed/fdt_ro.c b/arch/arm/boot/compressed/fdt_ro.c
new file mode 100644
index 000000000000..fc7f8313e93e
--- /dev/null
+++ b/arch/arm/boot/compressed/fdt_ro.c
@@ -0,0 +1 @@
+#include "../../../../lib/fdt_ro.c"
diff --git a/arch/arm/boot/compressed/fdt_rw.c b/arch/arm/boot/compressed/fdt_rw.c
new file mode 100644
index 000000000000..7e9777da2708
--- /dev/null
+++ b/arch/arm/boot/compressed/fdt_rw.c
@@ -0,0 +1 @@
+#include "../../../../lib/fdt_rw.c"
diff --git a/arch/arm/boot/compressed/fdt_wip.c b/arch/arm/boot/compressed/fdt_wip.c
new file mode 100644
index 000000000000..f0b580e760a7
--- /dev/null
+++ b/arch/arm/boot/compressed/fdt_wip.c
@@ -0,0 +1 @@
+#include "../../../../lib/fdt_wip.c"
diff --git a/arch/arm/boot/compressed/libfdt_env.h b/arch/arm/boot/compressed/libfdt_env.h
deleted file mode 100644
index 6a0f1f524466..000000000000
--- a/arch/arm/boot/compressed/libfdt_env.h
+++ /dev/null
@@ -1,24 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef _ARM_LIBFDT_ENV_H
-#define _ARM_LIBFDT_ENV_H
-
-#include <linux/limits.h>
-#include <linux/types.h>
-#include <linux/string.h>
-#include <asm/byteorder.h>
-
-#define INT32_MAX	S32_MAX
-#define UINT32_MAX	U32_MAX
-
-typedef __be16 fdt16_t;
-typedef __be32 fdt32_t;
-typedef __be64 fdt64_t;
-
-#define fdt16_to_cpu(x)		be16_to_cpu(x)
-#define cpu_to_fdt16(x)		cpu_to_be16(x)
-#define fdt32_to_cpu(x)		be32_to_cpu(x)
-#define cpu_to_fdt32(x)		cpu_to_be32(x)
-#define fdt64_to_cpu(x)		be64_to_cpu(x)
-#define cpu_to_fdt64(x)		cpu_to_be64(x)
-
-#endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
