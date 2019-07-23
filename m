Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EF87116E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 07:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QT8RP+Ox0zn+eD7baVGcLkAqQzzkni6fPZM8Ebs7pMY=; b=fnnKU15bgX9stF
	hlfdR+QRcM9wBb67u9QmZOmqrbnhYdymivWKXQFH2aja3ND3hc9kdZHdJCfieHVJbLw2eT2jLqj9g
	mKZJIzTb8KT87YDvNhaI/T7dvKTgsVPyUrzdbGqAMcBrD0/u1DM0BhUCGpesi4a3wSwcRBmEkhD6x
	5Z8fJTszQXkOfO6/36fGBEqiEyi22OjvIF8dVMJzFFbNtA6NPUzP0NXqDVhIEAAIbJK/RvreYcEAA
	LIIVVaXvgV05vDPav8zqxfdslaxcjSRYM7wJrSWymG7C6jBYQE2tUVi+Q76U+wzA26j8OkpibbLSI
	fUrmr2jhXNa0YvDXaOhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpnkZ-0003gN-Pm; Tue, 23 Jul 2019 05:54:12 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpnkJ-0003ee-Bv
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 05:53:57 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id DB94EAB89D521717DF39;
 Tue, 23 Jul 2019 13:53:49 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Tue, 23 Jul 2019 13:53:44 +0800
From: Hanjun Guo <guohanjun@huawei.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Andrew Morton
 <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, "Jia
 He" <hejianet@gmail.com>, Mike Rapoport <rppt@linux.ibm.com>, Will Deacon
 <will@kernel.org>
Subject: [PATCH v12 2/2] mm: page_alloc: reduce unnecessary binary search in
 memblock_next_valid_pfn
Date: Tue, 23 Jul 2019 13:51:13 +0800
Message-ID: <1563861073-47071-3-git-send-email-guohanjun@huawei.com>
X-Mailer: git-send-email 1.7.12.4
In-Reply-To: <1563861073-47071-1-git-send-email-guohanjun@huawei.com>
References: <1563861073-47071-1-git-send-email-guohanjun@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_225355_578978_AEB3CCD5 
X-CRM114-Status: GOOD (  14.83  )
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

After skipping some invalid pfns in memmap_init_zone(), there is still
some room for improvement.

E.g. if pfn and pfn+1 are in the same memblock region, we can simply pfn++
instead of doing the binary search in memblock_next_valid_pfn.

Furthermore, if the pfn is in a gap of two memory region, skip to next
region directly to speedup the binary search.

Signed-off-by: Jia He <hejianet@gmail.com>
Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
---
 mm/memblock.c | 37 +++++++++++++++++++++++++++++++------
 1 file changed, 31 insertions(+), 6 deletions(-)

diff --git a/mm/memblock.c b/mm/memblock.c
index d57ba51bb9cd..95d5916716a0 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -1256,28 +1256,53 @@ int __init_memblock memblock_set_node(phys_addr_t base, phys_addr_t size,
 unsigned long __init_memblock memblock_next_valid_pfn(unsigned long pfn)
 {
 	struct memblock_type *type = &memblock.memory;
+	struct memblock_region *regions = type->regions;
 	unsigned int right = type->cnt;
 	unsigned int mid, left = 0;
+	unsigned long start_pfn, end_pfn, next_start_pfn;
 	phys_addr_t addr = PFN_PHYS(++pfn);
+	static int early_region_idx __initdata_memblock = -1;
 
+	/* fast path, return pfn+1 if next pfn is in the same region */
+	if (early_region_idx != -1) {
+		start_pfn = PFN_DOWN(regions[early_region_idx].base);
+		end_pfn = PFN_DOWN(regions[early_region_idx].base +
+				regions[early_region_idx].size);
+
+		if (pfn >= start_pfn && pfn < end_pfn)
+			return pfn;
+
+		/* try slow path */
+		if (++early_region_idx == type->cnt)
+			goto slow_path;
+
+		next_start_pfn = PFN_DOWN(regions[early_region_idx].base);
+
+		if (pfn >= end_pfn && pfn <= next_start_pfn)
+			return next_start_pfn;
+	}
+
+slow_path:
+	/* slow path, do the binary searching */
 	do {
 		mid = (right + left) / 2;
 
-		if (addr < type->regions[mid].base)
+		if (addr < regions[mid].base)
 			right = mid;
-		else if (addr >= (type->regions[mid].base +
-				  type->regions[mid].size))
+		else if (addr >= (regions[mid].base + regions[mid].size))
 			left = mid + 1;
 		else {
-			/* addr is within the region, so pfn is valid */
+			early_region_idx = mid;
 			return pfn;
 		}
 	} while (left < right);
 
 	if (right == type->cnt)
 		return -1UL;
-	else
-		return PHYS_PFN(type->regions[right].base);
+
+	early_region_idx = right;
+
+	return PHYS_PFN(regions[early_region_idx].base);
 }
 EXPORT_SYMBOL(memblock_next_valid_pfn);
 #endif /* CONFIG_HAVE_MEMBLOCK_PFN_VALID */
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
