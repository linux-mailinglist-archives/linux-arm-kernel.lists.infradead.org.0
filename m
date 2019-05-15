Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B941B1F47E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 14:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=dYKwyIwZKI2FbvAV4WqvrEmqsmnnbciS1f8KkPy7uh4=; b=an
	kaHjsTokfjQhOXDNFgvfymMWRncFYEmr4ocZ4EIhrMvfw+obnkaVA/cPOvnOR2b4eItCXxA57KP+j
	UNIaTcxg+lSpc4LcjOJ0Dh49M2ryIp6UIrrJo9GX3xt5tpOx4YNmJeFtQ5bv6HBqTvWxaVGvXvGQL
	X66f7fP1DBOTDem2VWl1qLs2YHeJ2ZUhiG3PcE6/EWE7LuXPD5jyXy9K8vZFhypsW+nJ6loLGUWe0
	vVbixbbMBlx7RRM2zgO5w/Ly5CYiAfCn9EVgr3qq/f9jnDKhWezW4HIjSPeOip6eC9EAMlqEJGvgY
	meZLjIrI/GHPVaw7y6mRf0Jqa8cBQa6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQt7n-0002if-SG; Wed, 15 May 2019 12:35:11 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQt7b-0002PS-Rw
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 12:35:02 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190515123456euoutp013c6a3845879dd66b2c0ea73f8b0ab283~e21kJPPpK2210422104euoutp01P;
 Wed, 15 May 2019 12:34:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190515123456euoutp013c6a3845879dd66b2c0ea73f8b0ab283~e21kJPPpK2210422104euoutp01P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1557923696;
 bh=Qnc23u7sMOYVD9w4XZQHqBtnLf6RMaImcgtoqnr+UJE=;
 h=From:To:Cc:Subject:Date:References:From;
 b=Ca4D5IFNANt47KOQ7kKOlfWK5NeYRBNYSN+sh99L7hyBHgJfcQvGfzLNM30mIWdYA
 gPyHS9cGAv58iPYrFqjBxqkwy+4Gd3SUYd1fOkfVinaPulRWZ8FrNy4MeO3TWpZbXh
 lDN4/b0WhJleknnL6QqqP6zm8yoXwY9uMc4C4tN4=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190515123455eucas1p1bd676b6aaf2b86d4acf79b15e442086e~e21jfJXjr1125211252eucas1p1c;
 Wed, 15 May 2019 12:34:55 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 61.9D.04377.F670CDC5; Wed, 15
 May 2019 13:34:55 +0100 (BST)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190515123455eucas1p2901074694b5835e16ca0b2916d2e4139~e21i44Gdb3078930789eucas1p2F;
 Wed, 15 May 2019 12:34:55 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-09-5cdc076f558b
Received: from eusync4.samsung.com ( [203.254.199.214]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E6.09.04140.E670CDC5; Wed, 15
 May 2019 13:34:54 +0100 (BST)
Received: from AMDC2765.DIGITAL.local ([106.120.51.73]) by
 eusync4.samsung.com (Oracle Communications Messaging Server 7.0.5.31.0 64bit
 (built May  5 2014)) with ESMTPA id <0PRJ00AQZPLAG360@eusync4.samsung.com>;
 Wed, 15 May 2019 13:34:54 +0100 (BST)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH/RFC] ARM: Add workaround for I-Cache line size mismatch
 between CPU cores
Date: Wed, 15 May 2019 14:33:56 +0200
Message-id: <20190515123356.31924-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrJIsWRmVeSWpSXmKPExsWy7djPc7r57HdiDL6sV7VYMe8no8XfScfY
 LTbOWM9q8X5ZD6PF+fMb2C02Pb7GanF51xw2ixnn9zFZrD1yl91i6fWLTBaX+icyWcyY/JLN
 4uXHEywOvB5r5q1h9Lh87SKzx+9fkxg9Nq3qZPPYvKTeo2/LKkaPz5vkAtijuGxSUnMyy1KL
 9O0SuDIm7zjEUrBfveJF027WBsa1Cl2MnBwSAiYSW1YvYO9i5OIQEljBKHF381w2COczo8TU
 uRdYYKrm/P3NDJFYxijx+uAtqJb/jBIrL2xkAqliEzCU6HrbxQZiiwi4SfxbdwhsFLPASWaJ
 NzuawEYJC0RLTPw9nxnEZhFQlXjx4ShYM6+ArcSbn8/ZIdbJS6zecABsnYTACjaJL01roe5w
 kTh37TczhC0jcXlyNwtEUTOjxMNza9khnB5GictNMxghqqwlDh+/yApiMwvwSUzaNh2omwMo
 zivR0SYEUeIhMe/1fUaQsJBArMTUG/kTGMUXMDKsYhRPLS3OTU8tNspLLdcrTswtLs1L10vO
 z93ECIzQ0/+Of9nBuOtP0iFGAQ5GJR5eix+3Y4RYE8uKK3MPMUpwMCuJ8G54DxTiTUmsrEot
 yo8vKs1JLT7EKM3BoiTOW83wIFpIID2xJDU7NbUgtQgmy8TBKdXAaLO/QLXu8K8T/hkTHp1c
 bhAQ0sjmynRrSdOMuU91ujIVzzmenj5HQWj13l75Ekmth+crms+UmbvEc/m8sLnyZRrrJIGZ
 gZmfs/+vzFZccHPfjU0/1NZvYc67ciL2WeicR4JVG1b/Tvfel5LqUJAt+fmRxDXVKe9MurfH
 dvywjt0hvcrTYsJTFSWW4oxEQy3mouJEAJMccMjMAgAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOLMWRmVeSWpSXmKPExsVy+t/xa7p57HdiDCbctrJYMe8no8XfScfY
 LTbOWM9q8X5ZD6PF+fMb2C02Pb7GanF51xw2ixnn9zFZrD1yl91i6fWLTBaX+icyWcyY/JLN
 4uXHEywOvB5r5q1h9Lh87SKzx+9fkxg9Nq3qZPPYvKTeo2/LKkaPz5vkAtijuGxSUnMyy1KL
 9O0SuDIm7zjEUrBfveJF027WBsa1Cl2MnBwSAiYSc/7+Zu5i5OIQEljCKPFo7SwWCKeRSeLC
 g2nMIFVsAoYSXW+72EBsEQE3iX/rDrGBFDELnGSW+NDTywiSEBaIlnjX+oYdxGYRUJV48eEo
 E4jNK2Ar8ebnc3aIdfISqzccYJ7AyLWAkWEVo0hqaXFuem6xkV5xYm5xaV66XnJ+7iZGYHBt
 O/Zzyw7GrnfBhxgFOBiVeHgn/LodI8SaWFZcmXuIUYKDWUmEd8N7oBBvSmJlVWpRfnxRaU5q
 8SFGaQ4WJXHeDoGDMUIC6YklqdmpqQWpRTBZJg5OqQbGaZlXNgoHbjBQfMcjfPGThQDTG2EG
 kefB0ge2dz6K1s36IWo7dVXJF77OZMY3oZ+XLdRIklVfqndQ+n2pi+VpwZkSa2LeL4g7UGG0
 7+7ZS9Lzd9dcZLa/phleP7/O9W5m/DkhKed9l+wvLbuxjcd81u+t/wuVo3uZ722KyRN1tvn0
 O+nsPt8mJZbijERDLeai4kQAVxS/yCoCAAA=
X-CMS-MailID: 20190515123455eucas1p2901074694b5835e16ca0b2916d2e4139
CMS-TYPE: 201P
X-CMS-RootMailID: 20190515123455eucas1p2901074694b5835e16ca0b2916d2e4139
References: <CGME20190515123455eucas1p2901074694b5835e16ca0b2916d2e4139@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_053500_208347_8F65F05A 
X-CRM114-Status: GOOD (  20.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-samsung-soc@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will.deacon@arm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some big.LITTLE systems have mismatch of I-Cache line size between
LITTLE and big cores. This patch adds workaround for proper I-Cache
support on such systems. Without it, some kind of userspace code
(typically self-modifying) might suffer from random SIGILL failures.

Similar workaround exists for ARM64 architecture, added by commit
116c81f427ff ("arm64: Work around systems with mismatched cache line
sizes").

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
This workaround is needed on all supported Exynos big.LITTLE SoCs: 5420,
5422 and 5800.
---
 arch/arm/configs/exynos_defconfig |  1 +
 arch/arm/include/asm/cacheflush.h |  7 +++++++
 arch/arm/kernel/smp.c             |  1 +
 arch/arm/mm/Kconfig               |  8 ++++++++
 arch/arm/mm/cache-v7.S            | 13 +++++++++++++
 arch/arm/mm/init.c                | 16 ++++++++++++++++
 arch/arm/mm/mm.h                  |  2 ++
 7 files changed, 48 insertions(+)

diff --git a/arch/arm/configs/exynos_defconfig b/arch/arm/configs/exynos_defconfig
index c95c54284da2..9b959afaaa12 100644
--- a/arch/arm/configs/exynos_defconfig
+++ b/arch/arm/configs/exynos_defconfig
@@ -9,6 +9,7 @@ CONFIG_MODULE_UNLOAD=y
 CONFIG_PARTITION_ADVANCED=y
 CONFIG_ARCH_EXYNOS=y
 CONFIG_ARCH_EXYNOS3=y
+CONFIG_CPU_ICACHE_MISMATCH_WORKAROUND=y
 CONFIG_SMP=y
 CONFIG_BIG_LITTLE=y
 CONFIG_NR_CPUS=8
diff --git a/arch/arm/include/asm/cacheflush.h b/arch/arm/include/asm/cacheflush.h
index ec1a5fd0d294..ec4fd2e2dd60 100644
--- a/arch/arm/include/asm/cacheflush.h
+++ b/arch/arm/include/asm/cacheflush.h
@@ -479,4 +479,11 @@ static inline void __sync_cache_range_r(volatile void *p, size_t size)
 void flush_uprobe_xol_access(struct page *page, unsigned long uaddr,
 			     void *kaddr, unsigned long len);
 
+
+#ifdef CONFIG_CPU_ICACHE_MISMATCH_WORKAROUND
+void check_cpu_icache_size(int cpuid);
+#else
+static inline void check_cpu_icache_size(int cpuid) { }
+#endif
+
 #endif
diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
index 8687d619260f..261be0e5bc03 100644
--- a/arch/arm/kernel/smp.c
+++ b/arch/arm/kernel/smp.c
@@ -373,6 +373,7 @@ static void smp_store_cpu_info(unsigned int cpuid)
 	cpu_info->cpuid = read_cpuid_id();
 
 	store_cpu_topology(cpuid);
+	check_cpu_icache_size(cpuid);
 }
 
 /*
diff --git a/arch/arm/mm/Kconfig b/arch/arm/mm/Kconfig
index b169e580bf82..d4733e086f2b 100644
--- a/arch/arm/mm/Kconfig
+++ b/arch/arm/mm/Kconfig
@@ -780,6 +780,14 @@ config CPU_ICACHE_DISABLE
 	  Say Y here to disable the processor instruction cache. Unless
 	  you have a reason not to or are unsure, say N.
 
+config CPU_ICACHE_MISMATCH_WORKAROUND
+	bool "Workaround for I-Cache line size mismatch between CPU cores"
+	depends on SMP && CPU_V7
+	help
+	  Some big.LITTLE systems have mismatch of I-Cache line size between
+	  LITTLE and big cores.  Say Y here to enable workaround for proper
+	  I-Cache support on such systems.  If unsure, say N.
+
 config CPU_DCACHE_DISABLE
 	bool "Disable D-Cache (C-bit)"
 	depends on (CPU_CP15 && !SMP) || CPU_V7M
diff --git a/arch/arm/mm/cache-v7.S b/arch/arm/mm/cache-v7.S
index 2149b47a0c5a..db3986708c8a 100644
--- a/arch/arm/mm/cache-v7.S
+++ b/arch/arm/mm/cache-v7.S
@@ -19,6 +19,14 @@
 
 #include "proc-macros.S"
 
+#ifdef CONFIG_CPU_ICACHE_MISMATCH_WORKAROUND
+.globl icache_size
+	.data
+	.align	2
+icache_size:
+	.long	64
+	.text
+#endif
 /*
  * The secondary kernel init calls v7_flush_dcache_all before it enables
  * the L1; however, the L1 comes out of reset in an undefined state, so
@@ -284,7 +292,12 @@ ENTRY(v7_coherent_user_range)
 	cmp	r12, r1
 	blo	1b
 	dsb	ishst
+#ifdef CONFIG_CPU_ICACHE_MISMATCH_WORKAROUND
+	ldr	r3, =icache_size
+	ldr	r2, [r3, #0]
+#else
 	icache_line_size r2, r3
+#endif
 	sub	r3, r2, #1
 	bic	r12, r0, r3
 2:
diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index be0b42937888..1a66af5bd259 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -242,6 +242,22 @@ static void __init arm_initrd_init(void)
 #endif
 }
 
+#ifdef CONFIG_CPU_ICACHE_MISMATCH_WORKAROUND
+void check_cpu_icache_size(int cpuid)
+{
+	u32 size, ctr;
+
+	asm("mrc p15, 0, %0, c0, c0, 1" : "=r" (ctr));
+
+	size = 1 << ((ctr & 0xf) + 2);
+	if (cpuid != 0 && icache_size != size)
+		pr_info("CPU%u: detected I-Cache line size mismatch, workaround enabled\n",
+			cpuid);
+	if (icache_size > size)
+		icache_size = size;
+}
+#endif
+
 void __init arm_memblock_init(const struct machine_desc *mdesc)
 {
 	/* Register the kernel text, kernel data and initrd with memblock. */
diff --git a/arch/arm/mm/mm.h b/arch/arm/mm/mm.h
index 6b045c6653ea..941356d95a67 100644
--- a/arch/arm/mm/mm.h
+++ b/arch/arm/mm/mm.h
@@ -8,6 +8,8 @@
 /* the upper-most page table pointer */
 extern pmd_t *top_pmd;
 
+extern int icache_size;
+
 /*
  * 0xffff8000 to 0xffffffff is reserved for any ARM architecture
  * specific hacks for copying pages efficiently, while 0xffff4000
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
