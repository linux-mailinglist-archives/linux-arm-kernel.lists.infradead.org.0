Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA302CB3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Tzs+CmN2eu5ex1ondpZDHqq8ih1LVYU/4efTDDZY0E=; b=WZfnBpnZH2s/Kx
	Wl2s91md55IdIXZX5mjVBhZ4gOjWeIXH+9KYRRflm4hE3wdP+ETB+LZSsltRWQugWzLj6iUVlhzzs
	7eSJGfgQx9T1ShUwxiUUQLPV5oHVVszzbCo7jFwLdUdScbP6qxSWO85VeyCO0LRv3oyCsZZ3i+2n+
	6MLk8Y3j45J44Dcr4tADORMgAlkZ4mPRViyqgiEsoflIB1r/mVfFXT4GePcfp5UnrG5QVXtH3PtlP
	qI8ZVk4OwAgB3eOwMrKnvP8pXX/AnzaLiZsvWfqsmwOlwLRv3898tVqo2PIXW3q36XfP18uQEyOBD
	idtTVCnfog0Qz6SkhgaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVeh8-0004pA-9X; Tue, 28 May 2019 16:11:22 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVegY-0004L2-Qg
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:10:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9094F15AD;
 Tue, 28 May 2019 09:10:46 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.12.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C2DAC3F59C;
 Tue, 28 May 2019 09:10:44 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 03/12] arm64: kasan: Switch to using KASAN_SHADOW_OFFSET
Date: Tue, 28 May 2019 17:10:17 +0100
Message-Id: <20190528161026.13193-4-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161026.13193-1-steve.capper@arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091047_056288_1AD964BF 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KASAN_SHADOW_OFFSET is a constant that is supplied to gcc as a command
line argument and affects the codegen of the inline address sanetiser.

Essentially, for an example memory access:
    *ptr1 = val;
The compiler will insert logic similar to the below:
    shadowValue = *(ptr1 >> KASAN_SHADOW_SCALE_SHIFT + KASAN_SHADOW_OFFSET)
    if (somethingWrong(shadowValue))
        flagAnError();

This code sequence is inserted into many places, thus
KASAN_SHADOW_OFFSET is essentially baked into many places in the kernel
text.

If we want to run a single kernel binary with multiple address spaces,
then we need to do this with KASAN_SHADOW_OFFSET fixed.

Thankfully, due to the way the KASAN_SHADOW_OFFSET is used to provide
shadow addresses we know that the end of the shadow region is constant
w.r.t. VA space size:
    KASAN_SHADOW_END = ~0 >> KASAN_SHADOW_SCALE_SHIFT + KASAN_SHADOW_OFFSET

This means that if we increase the size of the VA space, the start of
the KASAN region expands into lower addresses whilst the end of the
KASAN region is fixed.

Currently the arm64 code computes KASAN_SHADOW_OFFSET at build time via
build scripts with the VA size used as a parameter. (There are build
time checks in the C code too to ensure that expected values are being
derived). It is sufficient, and indeed is a simplification, to remove
the build scripts (and build time checks) entirely and instead provide
KASAN_SHADOW_OFFSET values.

This patch removes the logic to compute the KASAN_SHADOW_OFFSET in the
arm64 Makefile, and instead we adopt the approach used by x86 to supply
offset values in kConfig. To help debug/develop future VA space changes,
the Makefile logic has been preserved in a script file in the arm64
Documentation folder.

Signed-off-by: Steve Capper <steve.capper@arm.com>

---

Changed in V3, rebase to include KASAN_SHADOW_SCALE_SHIFT, wording
tidied up.
---
 Documentation/arm64/kasan-offsets.sh | 27 +++++++++++++++++++++++++++
 arch/arm64/Kconfig                   | 15 +++++++++++++++
 arch/arm64/Makefile                  |  8 --------
 arch/arm64/include/asm/kasan.h       | 11 ++++-------
 arch/arm64/include/asm/memory.h      | 12 +++++++++---
 arch/arm64/mm/kasan_init.c           |  2 --
 6 files changed, 55 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/arm64/kasan-offsets.sh

diff --git a/Documentation/arm64/kasan-offsets.sh b/Documentation/arm64/kasan-offsets.sh
new file mode 100644
index 000000000000..2b7a021db363
--- /dev/null
+++ b/Documentation/arm64/kasan-offsets.sh
@@ -0,0 +1,27 @@
+#!/bin/sh
+
+# Print out the KASAN_SHADOW_OFFSETS required to place the KASAN SHADOW
+# start address at the mid-point of the kernel VA space
+
+print_kasan_offset () {
+	printf "%02d\t" $1
+	printf "0x%08x00000000\n" $(( (0xffffffff & (-1 << ($1 - 1 - 32))) \
+			+ (1 << ($1 - 32 - $2)) \
+			- (1 << (64 - 32 - $2)) ))
+}
+
+echo KASAN_SHADOW_SCALE_SHIFT = 3
+printf "VABITS\tKASAN_SHADOW_OFFSET\n"
+print_kasan_offset 48 3
+print_kasan_offset 47 3
+print_kasan_offset 42 3
+print_kasan_offset 39 3
+print_kasan_offset 36 3
+echo
+echo KASAN_SHADOW_SCALE_SHIFT = 4
+printf "VABITS\tKASAN_SHADOW_OFFSET\n"
+print_kasan_offset 48 4
+print_kasan_offset 47 4
+print_kasan_offset 42 4
+print_kasan_offset 39 4
+print_kasan_offset 36 4
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 4780eb7af842..d30046c7de7f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -291,6 +291,21 @@ config ARCH_SUPPORTS_UPROBES
 config ARCH_PROC_KCORE_TEXT
 	def_bool y
 
+config KASAN_SHADOW_OFFSET
+	hex
+	depends on KASAN
+	default 0xdfffa00000000000 if (ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52) && !KASAN_SW_TAGS
+	default 0xdfffd00000000000 if ARM64_VA_BITS_47 && !KASAN_SW_TAGS
+	default 0xdffffe8000000000 if ARM64_VA_BITS_42 && !KASAN_SW_TAGS
+	default 0xdfffffd000000000 if ARM64_VA_BITS_39 && !KASAN_SW_TAGS
+	default 0xdffffffa00000000 if ARM64_VA_BITS_36 && !KASAN_SW_TAGS
+	default 0xefff900000000000 if (ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52) && KASAN_SW_TAGS
+	default 0xefffc80000000000 if ARM64_VA_BITS_47 && KASAN_SW_TAGS
+	default 0xeffffe4000000000 if ARM64_VA_BITS_42 && KASAN_SW_TAGS
+	default 0xefffffc800000000 if ARM64_VA_BITS_39 && KASAN_SW_TAGS
+	default 0xeffffff900000000 if ARM64_VA_BITS_36 && KASAN_SW_TAGS
+	default 0xffffffffffffffff
+
 source "arch/arm64/Kconfig.platforms"
 
 menu "Kernel Features"
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 2dad2ae6b181..764201c76d77 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -111,14 +111,6 @@ KBUILD_CFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
 KBUILD_CPPFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
 KBUILD_AFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
 
-# KASAN_SHADOW_OFFSET = VA_START + (1 << (VA_BITS - KASAN_SHADOW_SCALE_SHIFT))
-#				 - (1 << (64 - KASAN_SHADOW_SCALE_SHIFT))
-# in 32-bit arithmetic
-KASAN_SHADOW_OFFSET := $(shell printf "0x%08x00000000\n" $$(( \
-	(0xffffffff & (-1 << ($(CONFIG_ARM64_VA_BITS) - 1 - 32))) \
-	+ (1 << ($(CONFIG_ARM64_VA_BITS) - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) \
-	- (1 << (64 - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) )) )
-
 export	TEXT_OFFSET GZFLAGS
 
 core-y		+= arch/arm64/kernel/ arch/arm64/mm/
diff --git a/arch/arm64/include/asm/kasan.h b/arch/arm64/include/asm/kasan.h
index b52aacd2c526..10d2add842da 100644
--- a/arch/arm64/include/asm/kasan.h
+++ b/arch/arm64/include/asm/kasan.h
@@ -18,11 +18,8 @@
  * KASAN_SHADOW_START: beginning of the kernel virtual addresses.
  * KASAN_SHADOW_END: KASAN_SHADOW_START + 1/N of kernel virtual addresses,
  * where N = (1 << KASAN_SHADOW_SCALE_SHIFT).
- */
-#define KASAN_SHADOW_START      (VA_START)
-#define KASAN_SHADOW_END        (KASAN_SHADOW_START + KASAN_SHADOW_SIZE)
-
-/*
+ *
+ * KASAN_SHADOW_OFFSET:
  * This value is used to map an address to the corresponding shadow
  * address by the following formula:
  *     shadow_addr = (address >> KASAN_SHADOW_SCALE_SHIFT) + KASAN_SHADOW_OFFSET
@@ -33,8 +30,8 @@
  *      KASAN_SHADOW_OFFSET = KASAN_SHADOW_END -
  *				(1ULL << (64 - KASAN_SHADOW_SCALE_SHIFT))
  */
-#define KASAN_SHADOW_OFFSET     (KASAN_SHADOW_END - (1ULL << \
-					(64 - KASAN_SHADOW_SCALE_SHIFT)))
+#define _KASAN_SHADOW_START(va)	(KASAN_SHADOW_END - (1UL << ((va) - KASAN_SHADOW_SCALE_SHIFT)))
+#define KASAN_SHADOW_START      _KASAN_SHADOW_START(VA_BITS)
 
 void kasan_init(void);
 void kasan_copy_shadow(pgd_t *pgdir);
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index d19bf9965d34..fbd841f986ff 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -54,7 +54,7 @@
 	(UL(1) << VA_BITS) + 1)
 #define PAGE_OFFSET_END		(VA_START)
 #define KIMAGE_VADDR		(MODULES_END)
-#define BPF_JIT_REGION_START	(VA_START + KASAN_SHADOW_SIZE)
+#define BPF_JIT_REGION_START	(KASAN_SHADOW_END)
 #define BPF_JIT_REGION_SIZE	(SZ_128M)
 #define BPF_JIT_REGION_END	(BPF_JIT_REGION_START + BPF_JIT_REGION_SIZE)
 #define MODULES_END		(MODULES_VADDR + MODULES_VSIZE)
@@ -80,11 +80,17 @@
  * significantly, so double the (minimum) stack size when they are in use.
  */
 #ifdef CONFIG_KASAN
-#define KASAN_SHADOW_SIZE	(UL(1) << (VA_BITS - KASAN_SHADOW_SCALE_SHIFT))
+#define KASAN_SHADOW_OFFSET	_AC(CONFIG_KASAN_SHADOW_OFFSET, UL)
+#define KASAN_SHADOW_END	((UL(1) << (64 - KASAN_SHADOW_SCALE_SHIFT)) \
+					+ KASAN_SHADOW_OFFSET)
+#ifdef CONFIG_KASAN_EXTRA
+#define KASAN_THREAD_SHIFT	2
+#else
 #define KASAN_THREAD_SHIFT	1
+#endif
 #else
-#define KASAN_SHADOW_SIZE	(0)
 #define KASAN_THREAD_SHIFT	0
+#define KASAN_SHADOW_END	(VA_START)
 #endif
 
 #define MIN_THREAD_SHIFT	(14 + KASAN_THREAD_SHIFT)
diff --git a/arch/arm64/mm/kasan_init.c b/arch/arm64/mm/kasan_init.c
index 8066621052db..0d3027be7bf8 100644
--- a/arch/arm64/mm/kasan_init.c
+++ b/arch/arm64/mm/kasan_init.c
@@ -158,8 +158,6 @@ static void __init kasan_pgd_populate(unsigned long addr, unsigned long end,
 /* The early shadow maps everything to a single page of zeroes */
 asmlinkage void __init kasan_early_init(void)
 {
-	BUILD_BUG_ON(KASAN_SHADOW_OFFSET !=
-		KASAN_SHADOW_END - (1UL << (64 - KASAN_SHADOW_SCALE_SHIFT)));
 	BUILD_BUG_ON(!IS_ALIGNED(KASAN_SHADOW_START, PGDIR_SIZE));
 	BUILD_BUG_ON(!IS_ALIGNED(KASAN_SHADOW_END, PGDIR_SIZE));
 	kasan_pgd_populate(KASAN_SHADOW_START, KASAN_SHADOW_END, NUMA_NO_NODE,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
