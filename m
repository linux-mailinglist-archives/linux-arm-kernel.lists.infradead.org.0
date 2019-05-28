Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DBD2C14D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=ROMp438Q2W03+cb4ZQ7wLWuBD8Epr6cumgAG9JDgUwU=; b=dM
	QRwAexVgitJ/SmVSBGth2xzUvZZhYTiPKpky7RDJGBrOYqFpifOA+MUue/7XhwRU6TLZX9nIaMEq/
	aLaw7pP5cdmB9TL9QXirYoYCHo40fk/JiG6sZZuUnhFlH4QSkrZj+2oD4fzFsHvgr/668cd1jW0yt
	jSO3Nyn6L2WpbOdb4PpzQMDEF7Uz3Lkuoi99aCuru9bH/ABquCi64dQDSleWoXwcd4zLX9VlJTqx8
	zpsb2r0YFPbt0x6ZvyFpTWIoER5KPi+bq7mPssmlNlswGhMEPvK1jd6saDgV4HZAETA4FZlnjrFIp
	Ct7bJIMTAoUCdR4NowqKfILKJ0jp7fpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXTw-0005PK-OD; Tue, 28 May 2019 08:29:16 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXTo-0005Oo-8g
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:29:10 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190528082904euoutp02f74e4ea7c776c9420856c69fb02c9b00~iy3nLgFDt0482304823euoutp02h
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 08:29:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190528082904euoutp02f74e4ea7c776c9420856c69fb02c9b00~iy3nLgFDt0482304823euoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1559032145;
 bh=kFl50E8Qi83qjX/8DqP/5HqxA8uWo6ug40nboJxFnKM=;
 h=From:To:Cc:Subject:Date:References:From;
 b=BKzLZFhevFPMXIi3T9MGkDevSQcCr52cfFbRyo6+buwddwAy2YWijpP4ea2k9PgyF
 QiOt9l4SYuvQMrpUE+B1qLsZ4pgsC6De48Zkt2QhZDe+MhxAtkzR8QzxIQCHSbFouV
 djKnmMxt6nbU1CvT/g8v+DmokOhYXtYkrZY/8rD4=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190528082904eucas1p17053f374f000ce23f580f6777027ff49~iy3mcgrxH0427304273eucas1p15;
 Tue, 28 May 2019 08:29:04 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id CB.3C.04377.F41FCEC5; Tue, 28
 May 2019 09:29:03 +0100 (BST)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190528082903eucas1p1ef54fa6aee420bffa11be61d5efb4c46~iy3l1Cw1V3124731247eucas1p1i;
 Tue, 28 May 2019 08:29:03 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-51-5cecf14f4a54
Received: from eusync1.samsung.com ( [203.254.199.211]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 8A.1C.04140.F41FCEC5; Tue, 28
 May 2019 09:29:03 +0100 (BST)
Received: from AMDC2765.DIGITAL.local ([106.120.51.73]) by
 eusync1.samsung.com (Oracle Communications Messaging Server 7.0.5.31.0 64bit
 (built May  5 2014)) with ESMTPA id <0PS7005Z8GWASQ00@eusync1.samsung.com>;
 Tue, 28 May 2019 09:29:03 +0100 (BST)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: Add workaround for I-Cache line size mismatch between
 CPU cores
Date: Tue, 28 May 2019 10:28:46 +0200
Message-id: <20190528082846.21625-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrFIsWRmVeSWpSXmKPExsWy7djPc7r+H9/EGJz6aGGxYt5PRou/k46x
 W2ycsZ7V4v2yHkaL8+c3sFtsenyN1eLyrjlsFjPO72OyWHvkLrvF0usXmSwu9U9kspgx+SWb
 xcuPJ1gceD3WzFvD6HH52kVmj9+/JjF6bFrVyeaxeUm9R9+WVYwenzfJBbBHcdmkpOZklqUW
 6dslcGUsa53NWHBCo2LB1qmsDYwzFbsYOTkkBEwk/v75wNTFyMUhJLCCUeLAhbdsEM5nRone
 uW0sMFWrJ85gh0gsY5SY0veSFcL5zyhxausnZpAqNgFDia63XWwgtoiAm8S/dYfARjELnGSW
 eLOjCWyUsEC4xJzOp4wgNouAqsTKQ3/AGngFbCVOb9/NBrFOXmL1hgPMIM0SAivYJPY9v8sI
 kXCRuNR2gR3ClpG4PLmbBaKomVHi4bm17BBOD6PE5aYZUB3WEoePX2QFsZkF+CQmbZsONJYD
 KM4r0dEmBFHiIdG1qR3sBSGBWIl1K++wTmAUX8DIsIpRPLW0ODc9tdgoL7Vcrzgxt7g0L10v
 OT93EyMwRk//O/5lB+OuP0mHGAU4GJV4eB8cfx0jxJpYVlyZe4hRgoNZSYTXdsqbGCHelMTK
 qtSi/Pii0pzU4kOM0hwsSuK81QwPooUE0hNLUrNTUwtSi2CyTBycUg2M6zzzzlpKrY0xnbbj
 1XmV2VceuuxSPhf1h2tvh6HMmtTOaOlNs5IjDB5/lLfdtvNQ3/oPb6T9FoWlqT9ytChmqJAO
 Kbp667+mRyWn48cjz/ddjzhmOL/p1IMd0Wt4y9uW8T1/O/fXv3V1s/UNxJJKn/wv4J4+Z0v1
 uyDB77FxVTde1PyX/H72rxJLcUaioRZzUXEiAAIWnhrNAgAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGLMWRmVeSWpSXmKPExsVy+t/xy7r+H9/EGBzZKWuxYt5PRou/k46x
 W2ycsZ7V4v2yHkaL8+c3sFtsenyN1eLyrjlsFjPO72OyWHvkLrvF0usXmSwu9U9kspgx+SWb
 xcuPJ1gceD3WzFvD6HH52kVmj9+/JjF6bFrVyeaxeUm9R9+WVYwenzfJBbBHcdmkpOZklqUW
 6dslcGUsa53NWHBCo2LB1qmsDYwzFbsYOTkkBEwkVk+cwQ5iCwksYZSYt9e5i5ELyG5kkph8
 9x0rSIJNwFCi620XG4gtIuAm8W/dITaQImaBk8wSH3p6GUESwgLhEp9WXAabxCKgKrHy0B+w
 Bl4BW4nT23ezQWyTl1i94QDzBEauBYwMqxhFUkuLc9Nzi430ihNzi0vz0vWS83M3MQJDa9ux
 n1t2MHa9Cz7EKMDBqMTDa3HqdYwQa2JZcWXuIUYJDmYlEV7bKW9ihHhTEiurUovy44tKc1KL
 DzFKc7AoifN2CByMERJITyxJzU5NLUgtgskycXBKNTCWXHv5Y3dhf5lSacN+9SI+464tITs9
 pA8b36tbx7Wiu86eu2L2FQEDj8aTTzpk58/Nj01++W7i/OqPtg81jA9l+m2QWD6Z89T3BI6F
 q2Y/mLg0tSPgg436QVZPe513VQ2s6vKTF800WxOwvFFjr17/op+5BX/6Vz27nMH2f9/8fSJv
 X2drH7ugxFKckWioxVxUnAgAWhxy8SkCAAA=
X-CMS-MailID: 20190528082903eucas1p1ef54fa6aee420bffa11be61d5efb4c46
CMS-TYPE: 201P
X-CMS-RootMailID: 20190528082903eucas1p1ef54fa6aee420bffa11be61d5efb4c46
References: <CGME20190528082903eucas1p1ef54fa6aee420bffa11be61d5efb4c46@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_012908_600508_956EFC72 
X-CRM114-Status: GOOD (  23.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

Some big.LITTLE systems have I-Cache line size mismatch between
LITTLE and big cores. This patch adds a workaround for proper I-Cache
support on such systems. Without it, some class of the userspace code
(typically self-modifying) might suffer from random SIGILL failures.

Similar workaround already exists for ARM64 architecture. I has been
added by commit 116c81f427ff ("arm64: Work around systems with mismatched
cache line sizes").

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
This workaround is needed on all supported Exynos big.LITTLE SoCs: 5420,
5422 and 5800.

Resend reason: removed RFC tag as there are no comments, I will upload
this patch to the patch tracking system
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
+	  Some big.LITTLE systems have I-Cache line size mismatch between
+	  LITTLE and big cores.  Say Y here to enable a workaround for
+	  proper I-Cache support on such systems.  If unsure, say N.
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
