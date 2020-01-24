Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A94D147710
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 04:06:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FPyvsCcwk4cB29CBD5u2MZHFCr57GcKbyR3FOraiams=; b=aHC
	3lEPpBQlDT3Ke5GCDND8972THQvz3/cLSUkzCoAs8tVSNEqhYl4xuGoWqGy2xOmhWDuyl4UPougnp
	myR1dJn76YWFvT13pu8lJC/zf3IM1N4v7IS+dRaCrbaNQLC1Ib9FAiQQIwq/9l4wpi6SIq6WaAUh1
	1xP39XjGL3NFdiQSh80yraRL1mv5Y5UoGD0spl0TvKsTsM86x+Sn+uUAmRtQN+NTIpe/0nsshKgPs
	gDy+vjLy/4OxYkNXiZyaZjF5IbD3pNsI+xMnM3DdbkpyGD6pc0QvNm9zWT3Ap5zhFOU+xtjuBP1g8
	jMCcqD3nVzlWxexeEdILnSuRbHBrUcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iupIT-0004Ky-R2; Fri, 24 Jan 2020 03:06:13 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iupIK-0004KH-RA
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 03:06:06 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id 00O35dQZ031262;
 Fri, 24 Jan 2020 12:05:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 00O35dQZ031262
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579835140;
 bh=Z1gS4LF4hQkhr1ejpSr7y9vteTmAU7u1ol05muyeoxQ=;
 h=From:To:Cc:Subject:Date:From;
 b=iOd2B4tva1ow+8Gzmvs3WIhbOkMy6Q3cEp5IhD0tdRK8Wd04dDaGAoNzRb8sJeqhf
 o6YVYvXmcNVYYkAQSiZcOGWrmdr9uTTc+SUY2h7LRqvgAHcdMe6kgxR69J8iahz4XO
 Y24tfR8QI9YANlEsno2P6ASOe9gEC18z5ft9apOlzvUrD+n/A8UmTrootfm8oAulWV
 CDqUgd+4DA4lmnHci8e3x6qiAgC5L4m3DnNLojE1NBvzEDHMTXMmlu3+Sg5AegkYIl
 cnUIblkLrzMmlJsFB61x6+iUWOTEVClfq1g9cih7P9QqRIofI8EyR0iCobSJQi8S27
 5qhi00qAJppDw==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: patches@arm.linux.org.uk
Subject: [PATCH v3] ARM: decompressor: simplify libfdt builds
Date: Fri, 24 Jan 2020 12:05:35 +0900
Message-Id: <20200124030535.10994-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_190605_107715_A05E8ECB 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
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

There is a subtle problem when generated files are turned into
check-in files.

When you are doing a rebuild of an existing object tree with O=
option, there exists stale "shipped" copies that the old Makefile
implementation created. The build system ends up with compiling the
stale generated files because Make searches for prerequisites in the
current directory, i.e. $(objtree) first, and then the directory
listed in VPATH, i.e. $(srctree).

To mend this issue, I added the following code:

  ifdef building_out_of_srctree
  $(shell rm -f $(addprefix $(obj)/, fdt_rw.c fdt_ro.c fdt_wip.c fdt.c))
  endif

This will need to stay for a while because "git bisect" crossing this
commit, otherwise, would result in a build error.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---
KernelVersion: v5.5-rc1

Changes in v3:
  - remove stale generated

Changes in v2:
  - fix build error

 arch/arm/boot/compressed/.gitignore     |  9 ------
 arch/arm/boot/compressed/Makefile       | 39 ++++++++++---------------
 arch/arm/boot/compressed/atags_to_fdt.c |  1 +
 arch/arm/boot/compressed/fdt.c          |  1 +
 arch/arm/boot/compressed/fdt_ro.c       |  1 +
 arch/arm/boot/compressed/fdt_rw.c       |  1 +
 arch/arm/boot/compressed/fdt_wip.c      |  1 +
 arch/arm/boot/compressed/libfdt_env.h   | 24 ---------------
 8 files changed, 21 insertions(+), 56 deletions(-)
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
index da599c3a1193..1bef7995107a 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -76,29 +76,31 @@ compress-$(CONFIG_KERNEL_LZMA) = lzma
 compress-$(CONFIG_KERNEL_XZ)   = xzkern
 compress-$(CONFIG_KERNEL_LZ4)  = lz4
 
-# Borrowed libfdt files for the ATAG compatibility mode
-
-libfdt		:= fdt_rw.c fdt_ro.c fdt_wip.c fdt.c
-libfdt_hdrs	:= fdt.h libfdt.h libfdt_internal.h
-
-libfdt_objs	:= $(addsuffix .o, $(basename $(libfdt)))
+ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
+libfdt_objs = fdt_rw.o fdt_ro.o fdt_wip.o fdt.o atags_to_fdt.o
 
-$(addprefix $(obj)/,$(libfdt) $(libfdt_hdrs)): $(obj)/%: $(srctree)/scripts/dtc/libfdt/%
-	$(call cmd,shipped)
+OBJS	+= $(libfdt_objs)
 
-$(addprefix $(obj)/,$(libfdt_objs) atags_to_fdt.o): \
-	$(addprefix $(obj)/,$(libfdt_hdrs))
+# -fstack-protector-strong triggers protection checks in this code,
+# but it is being used too early to link to meaningful stack_chk logic.
+nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
+$(foreach o, $(libfdt_objs), \
+	$(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt $(nossp-flags-y)))
+
+# These were previously generated C files. When you are building the kernel
+# with O=, make sure to remove the stale files in the output tree. Otherwise,
+# the build system wrongly compiles the stale ones.
+ifdef building_out_of_srctree
+$(shell rm -f $(addprefix $(obj)/, fdt_rw.c fdt_ro.c fdt_wip.c fdt.c))
+endif
 
-ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
-OBJS	+= $(libfdt_objs) atags_to_fdt.o
 endif
 
 targets       := vmlinux vmlinux.lds piggy_data piggy.o \
 		 lib1funcs.o ashldi3.o bswapsdi2.o \
 		 head.o $(OBJS)
 
-clean-files += piggy_data lib1funcs.S ashldi3.S bswapsdi2.S \
-		$(libfdt) $(libfdt_hdrs) hyp-stub.S
+clean-files += piggy_data lib1funcs.S ashldi3.S bswapsdi2.S hyp-stub.S
 
 KBUILD_CFLAGS += -DDISABLE_BRANCH_PROFILING
 KBUILD_CFLAGS += $(DISABLE_ARM_SSP_PER_TASK_PLUGIN)
@@ -108,15 +110,6 @@ ORIG_CFLAGS := $(KBUILD_CFLAGS)
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
