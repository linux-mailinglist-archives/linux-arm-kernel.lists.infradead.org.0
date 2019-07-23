Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FA171178
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 07:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZsI7cw80m9oGS+BGmGYo5W331N2hA0zQiCkWsaIWRiY=; b=AL+AkQcNrrjhTL
	bwHYgvIvdBcCSkDRx5Ij0JNDk/+c0KzQWDu+7YxgalDuoMf9npj8PcCC60Kk+NEJ9MxgmaNKHeIxG
	UaYTDhKG4fMqSWnojiYD3d2y58DT9JmTUweC92ee0zxa/peQ3DSx9Yt+kIi/C0rnTv+PlxqI5Bx7l
	87JHdNNh418AncEcGnjZ0u3S19J1Yw05WjNSDH3SjuaFGF2PzlmGtq11rM6fVawcowzkv8udJJz7n
	KDep01tPjv0S6rrYBKvtIQJJaukY+HZ7myoBPO44L824s6o1Rwykx3NDW/ya0jtWF2ses69ayKoJc
	Jk8cOTxfG5I5NR2kFueQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpnlG-00049f-Ed; Tue, 23 Jul 2019 05:54:54 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpnkJ-0003ed-Bt
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 05:53:58 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id E1F76BCD23BD65A58604;
 Tue, 23 Jul 2019 13:53:49 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Tue, 23 Jul 2019 13:53:43 +0800
From: Hanjun Guo <guohanjun@huawei.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Andrew Morton
 <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, "Jia
 He" <hejianet@gmail.com>, Mike Rapoport <rppt@linux.ibm.com>, Will Deacon
 <will@kernel.org>
Subject: [PATCH v12 1/2] mm: page_alloc: introduce memblock_next_valid_pfn()
 (again) for arm64
Date: Tue, 23 Jul 2019 13:51:12 +0800
Message-ID: <1563861073-47071-2-git-send-email-guohanjun@huawei.com>
X-Mailer: git-send-email 1.7.12.4
In-Reply-To: <1563861073-47071-1-git-send-email-guohanjun@huawei.com>
References: <1563861073-47071-1-git-send-email-guohanjun@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_225355_578978_C3D5E9C5 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jia He <hejianet@gmail.com>

Commit b92df1de5d28 ("mm: page_alloc: skip over regions of invalid pfns
where possible") optimized the loop in memmap_init_zone(). But it causes
possible panic on x86 due to specific memory mapping on x86_64 which will
skip valid pfns as well, so Daniel Vacek reverted it later.

But as suggested by Daniel Vacek, it is fine to using memblock to skip
gaps and finding next valid frame with CONFIG_HAVE_ARCH_PFN_VALID.

Daniel said:
"On arm and arm64, memblock is used by default. But generic version of
pfn_valid() is based on mem sections and memblock_next_valid_pfn() does
not always return the next valid one but skips more resulting in some
valid frames to be skipped (as if they were invalid). And that's why
kernel was eventually crashing on some !arm machines."

Introduce a new config option CONFIG_HAVE_MEMBLOCK_PFN_VALID and only
selected for arm64, using the new config option to guard the
memblock_next_valid_pfn().

This was tested on a HiSilicon Kunpeng920 based ARM64 server, the speedup
is pretty impressive for bootmem_init() at boot:

with 384G memory,
before: 13310ms
after:  1415ms

with 1T memory,
before: 20s
after:  2s

Suggested-by: Daniel Vacek <neelx@redhat.com>
Signed-off-by: Jia He <hejianet@gmail.com>
Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
---
 arch/arm64/Kconfig     |  1 +
 include/linux/mmzone.h |  9 +++++++++
 mm/Kconfig             |  3 +++
 mm/memblock.c          | 31 +++++++++++++++++++++++++++++++
 mm/page_alloc.c        |  4 +++-
 5 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 697ea0510729..058eb26579be 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -893,6 +893,7 @@ config ARCH_FLATMEM_ENABLE
 
 config HAVE_ARCH_PFN_VALID
 	def_bool y
+	select HAVE_MEMBLOCK_PFN_VALID
 
 config HW_PERF_EVENTS
 	def_bool y
diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
index 70394cabaf4e..24cb6bdb1759 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -1325,6 +1325,10 @@ static inline int pfn_present(unsigned long pfn)
 #endif
 
 #define early_pfn_valid(pfn)	pfn_valid(pfn)
+#ifdef CONFIG_HAVE_MEMBLOCK_PFN_VALID
+extern unsigned long memblock_next_valid_pfn(unsigned long pfn);
+#define next_valid_pfn(pfn)	memblock_next_valid_pfn(pfn)
+#endif
 void sparse_init(void);
 #else
 #define sparse_init()	do {} while (0)
@@ -1347,6 +1351,11 @@ struct mminit_pfnnid_cache {
 #define early_pfn_valid(pfn)	(1)
 #endif
 
+/* fallback to default definitions */
+#ifndef next_valid_pfn
+#define next_valid_pfn(pfn)	(pfn + 1)
+#endif
+
 void memory_present(int nid, unsigned long start, unsigned long end);
 
 /*
diff --git a/mm/Kconfig b/mm/Kconfig
index f0c76ba47695..c578374b6413 100644
--- a/mm/Kconfig
+++ b/mm/Kconfig
@@ -132,6 +132,9 @@ config HAVE_MEMBLOCK_NODE_MAP
 config HAVE_MEMBLOCK_PHYS_MAP
 	bool
 
+config HAVE_MEMBLOCK_PFN_VALID
+	bool
+
 config HAVE_GENERIC_GUP
 	bool
 
diff --git a/mm/memblock.c b/mm/memblock.c
index 7d4f61ae666a..d57ba51bb9cd 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -1251,6 +1251,37 @@ int __init_memblock memblock_set_node(phys_addr_t base, phys_addr_t size,
 	return 0;
 }
 #endif /* CONFIG_HAVE_MEMBLOCK_NODE_MAP */
+
+#ifdef CONFIG_HAVE_MEMBLOCK_PFN_VALID
+unsigned long __init_memblock memblock_next_valid_pfn(unsigned long pfn)
+{
+	struct memblock_type *type = &memblock.memory;
+	unsigned int right = type->cnt;
+	unsigned int mid, left = 0;
+	phys_addr_t addr = PFN_PHYS(++pfn);
+
+	do {
+		mid = (right + left) / 2;
+
+		if (addr < type->regions[mid].base)
+			right = mid;
+		else if (addr >= (type->regions[mid].base +
+				  type->regions[mid].size))
+			left = mid + 1;
+		else {
+			/* addr is within the region, so pfn is valid */
+			return pfn;
+		}
+	} while (left < right);
+
+	if (right == type->cnt)
+		return -1UL;
+	else
+		return PHYS_PFN(type->regions[right].base);
+}
+EXPORT_SYMBOL(memblock_next_valid_pfn);
+#endif /* CONFIG_HAVE_MEMBLOCK_PFN_VALID */
+
 #ifdef CONFIG_DEFERRED_STRUCT_PAGE_INIT
 /**
  * __next_mem_pfn_range_in_zone - iterator for for_each_*_range_in_zone()
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index d66bc8abe0af..70933c40380a 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -5811,8 +5811,10 @@ void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
 		 * function.  They do not exist on hotplugged memory.
 		 */
 		if (context == MEMMAP_EARLY) {
-			if (!early_pfn_valid(pfn))
+			if (!early_pfn_valid(pfn)) {
+				pfn = next_valid_pfn(pfn) - 1;
 				continue;
+			}
 			if (!early_pfn_in_nid(pfn, nid))
 				continue;
 			if (overlap_memmap_init(zone, &pfn))
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
