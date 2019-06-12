Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9556442D73
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQlXMeozatkrz+qMrB63PO5jve1KSTGNh5guqpP4Tow=; b=iFtSsPqyQGvR2E
	871ebqlEP65PRas866MfTHPpROEAkStEB5Q5JsK8FZj5IoTGoNgFoESL3YFFiUEgGkUpVJw2FOtjY
	v6H1dmSVFsaP0jdt8bgpxUlMjz3rCxvZ2JD6/o1ynQU86b+kuLU0lz6RlaLiAHpcwV7TGmxJbnzSo
	nozAcftrEAqWHadsINOGMMvwgxVU4V0TDfW+sG4auzwGdbZP3pMGoLQYWZBvvRW3tXTX37i+yMuIX
	/JA9r+seX7lGeIATM0auESYAqEPEKVlkGWrP+i9lrG6UGh0B1/+9Py9tyRit3qU/V9QBqi9dQn7hk
	5i6GaxAzO6+pTuWwEwTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb72k-0006Wd-La; Wed, 12 Jun 2019 17:28:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb71p-0005vg-21
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:27:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5837BA5E;
 Wed, 12 Jun 2019 10:27:16 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.13.15])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 117AA3F246;
 Wed, 12 Jun 2019 10:27:12 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 02/10] arm64: kasan: Switch to using KASAN_SHADOW_OFFSET
Date: Wed, 12 Jun 2019 18:26:50 +0100
Message-Id: <20190612172658.28522-3-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190612172658.28522-1-steve.capper@arm.com>
References: <20190612172658.28522-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_102717_339658_09E16AAD 
X-CRM114-Status: GOOD (  17.60  )
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
index 697ea0510729..89edcb211990 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -292,6 +292,21 @@ config ARCH_SUPPORTS_UPROBES
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
index 5cd2eb8cb424..13b9cfbbb319 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -53,7 +53,7 @@
 #define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
 	(UL(1) << VA_BITS) + 1)
 #define KIMAGE_VADDR		(MODULES_END)
-#define BPF_JIT_REGION_START	(VA_START + KASAN_SHADOW_SIZE)
+#define BPF_JIT_REGION_START	(KASAN_SHADOW_END)
 #define BPF_JIT_REGION_SIZE	(SZ_128M)
 #define BPF_JIT_REGION_END	(BPF_JIT_REGION_START + BPF_JIT_REGION_SIZE)
 #define MODULES_END		(MODULES_VADDR + MODULES_VSIZE)
@@ -79,11 +79,17 @@
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
