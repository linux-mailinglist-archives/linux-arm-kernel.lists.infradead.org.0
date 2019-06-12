Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B45BA42D78
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9uMvhSeqK+kqoZjapz45J2gvJH2SXDb+XLpSn93jyVY=; b=XcB84yblcGcHmg
	3EOMAqwzt069wyTMtD9qjJmSP7jDXWYAC8ISyfmu4lYlz5+YXctM041Ap7S+kbWB+5zaM6eOZbi/b
	p6FKAtBJjUROpyVZXLsgTITTrQLP0sD4Y4UiI9HD/vmNqP9m4psFy1CFUecazq5brd8mKVcsUJi6h
	T0k3r6zaWxpD8qjVVOXjGjyigczvJagaRkd2aNhbBO5FPvMpW6q6pwz+IPtj0hCRQmb1dS+xC09AK
	Z0CGjHKVCie0y8/rOWn8CcN6Zan7Nkz8wCvODCT2pY5CEkPWBHWAVreBa9kv0LbhaRLyHjMKaZxRq
	b8oijG099Vgbjqb+UPng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb73O-00077F-Q5; Wed, 12 Jun 2019 17:28:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb71s-0005vg-Pd
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:27:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4A63CC14;
 Wed, 12 Jun 2019 10:27:20 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.13.15])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DD3333F246;
 Wed, 12 Jun 2019 10:27:18 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 04/10] arm64: mm: Introduce VA_BITS_MIN
Date: Wed, 12 Jun 2019 18:26:52 +0100
Message-Id: <20190612172658.28522-5-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190612172658.28522-1-steve.capper@arm.com>
References: <20190612172658.28522-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_102721_041315_0274C3CD 
X-CRM114-Status: GOOD (  17.21  )
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

In order to support 52-bit kernel addresses detectable at boot time, the
kernel needs to know the most conservative VA_BITS possible should it
need to fall back to this quantity due to lack of hardware support.

A new compile time constant VA_BITS_MIN is introduced in this patch and
it is employed in the KASAN end address, KASLR, and EFI stub.

For Arm, if 52-bit VA support is unavailable the fallback is to 48-bits.

In other words: VA_BITS_MIN = min (48, VA_BITS)

Signed-off-by: Steve Capper <steve.capper@arm.com>
---
 arch/arm64/Kconfig                 | 4 ++++
 arch/arm64/include/asm/efi.h       | 4 ++--
 arch/arm64/include/asm/memory.h    | 5 ++++-
 arch/arm64/include/asm/processor.h | 2 +-
 arch/arm64/kernel/head.S           | 2 +-
 arch/arm64/kernel/kaslr.c          | 6 +++---
 arch/arm64/mm/kasan_init.c         | 3 ++-
 7 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 89edcb211990..4421e5409bb8 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -792,6 +792,10 @@ config ARM64_VA_BITS
 	default 47 if ARM64_VA_BITS_47
 	default 48 if ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52
 
+config ARM64_VA_BITS_MIN
+	int
+	default ARM64_VA_BITS
+
 choice
 	prompt "Physical address space size"
 	default ARM64_PA_BITS_48
diff --git a/arch/arm64/include/asm/efi.h b/arch/arm64/include/asm/efi.h
index c9e9a6978e73..a87e78f3f58d 100644
--- a/arch/arm64/include/asm/efi.h
+++ b/arch/arm64/include/asm/efi.h
@@ -79,7 +79,7 @@ static inline unsigned long efi_get_max_fdt_addr(unsigned long dram_base)
 
 /*
  * On arm64, we have to ensure that the initrd ends up in the linear region,
- * which is a 1 GB aligned region of size '1UL << (VA_BITS - 1)' that is
+ * which is a 1 GB aligned region of size '1UL << (VA_BITS_MIN - 1)' that is
  * guaranteed to cover the kernel Image.
  *
  * Since the EFI stub is part of the kernel Image, we can relax the
@@ -90,7 +90,7 @@ static inline unsigned long efi_get_max_fdt_addr(unsigned long dram_base)
 static inline unsigned long efi_get_max_initrd_addr(unsigned long dram_base,
 						    unsigned long image_addr)
 {
-	return (image_addr & ~(SZ_1G - 1UL)) + (1UL << (VA_BITS - 1));
+	return (image_addr & ~(SZ_1G - 1UL)) + (1UL << (VA_BITS_MIN - 1));
 }
 
 #define efi_call_early(f, ...)		sys_table_arg->boottime->f(__VA_ARGS__)
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 13b9cfbbb319..4814c8e77daf 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -63,6 +63,9 @@
 #define PCI_IO_END		(VMEMMAP_START - SZ_2M)
 #define PCI_IO_START		(PCI_IO_END - PCI_IO_SIZE)
 #define FIXADDR_TOP		(PCI_IO_START - SZ_2M)
+#define VA_BITS_MIN		(CONFIG_ARM64_VA_BITS_MIN)
+#define _VA_START(va)		(UL(0xffffffffffffffff) - \
+				(UL(1) << ((va) - 1)) + 1)
 
 #define KERNEL_START      _text
 #define KERNEL_END        _end
@@ -89,7 +92,7 @@
 #endif
 #else
 #define KASAN_THREAD_SHIFT	0
-#define KASAN_SHADOW_END	(VA_START)
+#define KASAN_SHADOW_END	(_VA_START(VA_BITS_MIN))
 #endif
 
 #define MIN_THREAD_SHIFT	(14 + KASAN_THREAD_SHIFT)
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index fcd0e691b1ea..307cd2173813 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -53,7 +53,7 @@
  * TASK_UNMAPPED_BASE - the lower boundary of the mmap VM area.
  */
 
-#define DEFAULT_MAP_WINDOW_64	(UL(1) << VA_BITS)
+#define DEFAULT_MAP_WINDOW_64	(UL(1) << VA_BITS_MIN)
 #define TASK_SIZE_64		(UL(1) << vabits_user)
 
 #ifdef CONFIG_COMPAT
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index fcae3f85c6cd..ab68c3fe7a19 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -325,7 +325,7 @@ __create_page_tables:
 	mov	x5, #52
 	cbnz	x6, 1f
 #endif
-	mov	x5, #VA_BITS
+	mov	x5, #VA_BITS_MIN
 1:
 	adr_l	x6, vabits_user
 	str	x5, [x6]
diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index 06941c1fe418..c341580fc10a 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -119,15 +119,15 @@ u64 __init kaslr_early_init(u64 dt_phys)
 	/*
 	 * OK, so we are proceeding with KASLR enabled. Calculate a suitable
 	 * kernel image offset from the seed. Let's place the kernel in the
-	 * middle half of the VMALLOC area (VA_BITS - 2), and stay clear of
+	 * middle half of the VMALLOC area (VA_BITS_MIN - 2), and stay clear of
 	 * the lower and upper quarters to avoid colliding with other
 	 * allocations.
 	 * Even if we could randomize at page granularity for 16k and 64k pages,
 	 * let's always round to 2 MB so we don't interfere with the ability to
 	 * map using contiguous PTEs
 	 */
-	mask = ((1UL << (VA_BITS - 2)) - 1) & ~(SZ_2M - 1);
-	offset = BIT(VA_BITS - 3) + (seed & mask);
+	mask = ((1UL << (VA_BITS_MIN - 2)) - 1) & ~(SZ_2M - 1);
+	offset = BIT(VA_BITS_MIN - 3) + (seed & mask);
 
 	/* use the top 16 bits to randomize the linear region */
 	memstart_offset_seed = seed >> 48;
diff --git a/arch/arm64/mm/kasan_init.c b/arch/arm64/mm/kasan_init.c
index 0d3027be7bf8..0e0b69af0aaa 100644
--- a/arch/arm64/mm/kasan_init.c
+++ b/arch/arm64/mm/kasan_init.c
@@ -158,7 +158,8 @@ static void __init kasan_pgd_populate(unsigned long addr, unsigned long end,
 /* The early shadow maps everything to a single page of zeroes */
 asmlinkage void __init kasan_early_init(void)
 {
-	BUILD_BUG_ON(!IS_ALIGNED(KASAN_SHADOW_START, PGDIR_SIZE));
+	BUILD_BUG_ON(!IS_ALIGNED(_KASAN_SHADOW_START(VA_BITS), PGDIR_SIZE));
+	BUILD_BUG_ON(!IS_ALIGNED(_KASAN_SHADOW_START(VA_BITS_MIN), PGDIR_SIZE));
 	BUILD_BUG_ON(!IS_ALIGNED(KASAN_SHADOW_END, PGDIR_SIZE));
 	kasan_pgd_populate(KASAN_SHADOW_START, KASAN_SHADOW_END, NUMA_NO_NODE,
 			   true);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
