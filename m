Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D541A790C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IV0iJrwI9aes1voNBY7UxUhWYw9qqMNNLKMEylIiutk=; b=WS/4gEp2/E3lCa
	8oavgoTyxip+NWk8jf+6u1TfCCGYY8J6wHGB3MNyY7KZ0ZpGNw9xx2JBW3JH5xj9m0Yu6UGcplIYt
	r2zVNpHKbyGLA9PIeab9wfVx8Z25iBmQEZGSTGlOsWa2LngZcMGSMMlhFrrUxwuXg0vEQSmf/PeWc
	pRrdwUw0LU7Cxuxt+Cf25Q3rBkgnYJtjXniaUJYQ6UPvx7Vbq3F2m2HgOKNPFZHI2WmJeLQf+HHVi
	6MWRx92BUFtiPWHNKg8E4qe1l0rYe2y6HA0/S0MxdUOaJHvz29dyu4CHND3GCNRaeOx2q0r9O8xj6
	n+xRLJ0Qd4zq5d6m/Z2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8Sn-0007Vv-Sv; Mon, 29 Jul 2019 16:25:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8PZ-0005oj-BY
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:22:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 668D615A2;
 Mon, 29 Jul 2019 09:22:05 -0700 (PDT)
Received: from capper-ampere.manchester.arm.com
 (capper-ampere.manchester.arm.com [10.32.98.74])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3B26A3F694;
 Mon, 29 Jul 2019 09:22:04 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 05/11] arm64: mm: Introduce VA_BITS_MIN
Date: Mon, 29 Jul 2019 17:21:11 +0100
Message-Id: <20190729162117.832-6-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729162117.832-1-steve.capper@arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_092209_490573_0FAC21DD 
X-CRM114-Status: GOOD (  17.58  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 bhsharma@redhat.com, Steve Capper <steve.capper@arm.com>, maz@kernel.org,
 will@kernel.org
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
index f7f23e47c28f..0206804b0868 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -797,6 +797,10 @@ config ARM64_VA_BITS
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
index 8e79ce9c3f5c..f6dbc0149dae 100644
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
index 8b0f1599b2d1..a8a91a573bff 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -52,6 +52,9 @@
 #define PCI_IO_END		(VMEMMAP_START - SZ_2M)
 #define PCI_IO_START		(PCI_IO_END - PCI_IO_SIZE)
 #define FIXADDR_TOP		(PCI_IO_START - SZ_2M)
+#define VA_BITS_MIN		(CONFIG_ARM64_VA_BITS_MIN)
+#define _VA_START(va)		(UL(0xffffffffffffffff) - \
+				(UL(1) << ((va) - 1)) + 1)
 
 #define KERNEL_START      _text
 #define KERNEL_END        _end
@@ -78,7 +81,7 @@
 #endif
 #else
 #define KASAN_THREAD_SHIFT	0
-#define KASAN_SHADOW_END	(VA_START)
+#define KASAN_SHADOW_END	(_VA_START(VA_BITS_MIN))
 #endif
 
 #define MIN_THREAD_SHIFT	(14 + KASAN_THREAD_SHIFT)
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 844e2964b0f5..0e1f2770192a 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -42,7 +42,7 @@
  * TASK_UNMAPPED_BASE - the lower boundary of the mmap VM area.
  */
 
-#define DEFAULT_MAP_WINDOW_64	(UL(1) << VA_BITS)
+#define DEFAULT_MAP_WINDOW_64	(UL(1) << VA_BITS_MIN)
 #define TASK_SIZE_64		(UL(1) << vabits_user)
 
 #ifdef CONFIG_COMPAT
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 2cdacd1c141b..ac58c69993ec 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -314,7 +314,7 @@ __create_page_tables:
 	mov	x5, #52
 	cbnz	x6, 1f
 #endif
-	mov	x5, #VA_BITS
+	mov	x5, #VA_BITS_MIN
 1:
 	adr_l	x6, vabits_user
 	str	x5, [x6]
diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index 708051655ad9..5a59f7567f9c 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -116,15 +116,15 @@ u64 __init kaslr_early_init(u64 dt_phys)
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
index 9e68e3d12956..881d545d252a 100644
--- a/arch/arm64/mm/kasan_init.c
+++ b/arch/arm64/mm/kasan_init.c
@@ -154,7 +154,8 @@ static void __init kasan_pgd_populate(unsigned long addr, unsigned long end,
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
