Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9C6C22D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTpVLUmnnJ3VAT77I0DalUgpLMaMwYbE8lMFBtzPM3c=; b=c0gIT4C0J887m0
	fcZPI3LhqjpV/VuHjpfFzP2jWJMwin8t3JVdLrghw6SxJd7LxmZOLNm6v2Gid+sjgrDnds9JimMkk
	9UDJwLb26AnzEXO70We9Ra8EhrmcX67HdHzXW+DpJ10LAUZ83F2BDh/9fkA2m+GPhgce+cGvvR1bK
	PWWPIRI4W63bB/BnB8Pbv/oqaWpaNIZnyH9WHpZk2fe3u+7pFNNeUD8DlYFcOmMxlbFQXoZoBpTiN
	1PlLx/CEB4pRIPcwjOKFBjjz54swYBicjpQHoLqKw/oVxGEn8RD/4/yiWA9dr99yYLBy6KtldSijT
	MhAghp+lB8+bjD5QrYNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEwOs-0005gC-TB; Mon, 30 Sep 2019 14:11:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEwOR-0005Vw-6S
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:11:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 439391570;
 Mon, 30 Sep 2019 07:11:14 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 25AA03F706;
 Mon, 30 Sep 2019 07:11:13 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 1/3] iommu/io-pgtable-arm: Correct Mali attributes
Date: Mon, 30 Sep 2019 15:11:00 +0100
Message-Id: <fc6ce3e89ae85c9010b25b9303589be944ba3811.1569851517.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1569851517.git.robin.murphy@arm.com>
References: <cover.1569851517.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_071115_324303_342087C8 
X-CRM114-Status: GOOD (  18.35  )
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, narmstrong@baylibre.com,
 joro@8bytes.org, steven.price@arm.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Whilst Midgard's MEMATTR follows a similar principle to the VMSA MAIR,
the actual attribute values differ, so although it currently appears to
work to some degree, we probably shouldn't be using our standard stage 1
MAIR for that. Instead, generate a reasonable MEMATTR with attribute
values borrowed from the kbase driver; at this point we'll be overriding
or ignoring pretty much all of the LPAE config, so just implement these
Mali details in a dedicated allocator instead of pretending to subclass
the standard VMSA format.

Fixes: d08d42de6432 ("iommu: io-pgtable: Add ARM Mali midgard MMU page table format")
Tested-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Steven Price <steven.price@arm.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/io-pgtable-arm.c | 53 +++++++++++++++++++++++++---------
 1 file changed, 40 insertions(+), 13 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 4c91359057c5..90cb37af761c 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -166,6 +166,9 @@
 #define ARM_MALI_LPAE_TTBR_READ_INNER	BIT(2)
 #define ARM_MALI_LPAE_TTBR_SHARE_OUTER	BIT(4)
 
+#define ARM_MALI_LPAE_MEMATTR_IMP_DEF	0x88ULL
+#define ARM_MALI_LPAE_MEMATTR_WRITE_ALLOC 0x8DULL
+
 /* IOPTE accessors */
 #define iopte_deref(pte,d) __va(iopte_to_paddr(pte, d))
 
@@ -1015,27 +1018,51 @@ arm_32_lpae_alloc_pgtable_s2(struct io_pgtable_cfg *cfg, void *cookie)
 static struct io_pgtable *
 arm_mali_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
 {
-	struct io_pgtable *iop;
+	struct arm_lpae_io_pgtable *data;
+
+	/* No quirks for Mali (hopefully) */
+	if (cfg->quirks)
+		return NULL;
 
 	if (cfg->ias != 48 || cfg->oas > 40)
 		return NULL;
 
 	cfg->pgsize_bitmap &= (SZ_4K | SZ_2M | SZ_1G);
-	iop = arm_64_lpae_alloc_pgtable_s1(cfg, cookie);
-	if (iop) {
-		u64 mair, ttbr;
 
-		/* Copy values as union fields overlap */
-		mair = cfg->arm_lpae_s1_cfg.mair[0];
-		ttbr = cfg->arm_lpae_s1_cfg.ttbr[0];
+	data = arm_lpae_alloc_pgtable(cfg);
+	if (!data)
+		return NULL;
 
-		cfg->arm_mali_lpae_cfg.memattr = mair;
-		cfg->arm_mali_lpae_cfg.transtab = ttbr |
-			ARM_MALI_LPAE_TTBR_READ_INNER |
-			ARM_MALI_LPAE_TTBR_ADRMODE_TABLE;
-	}
+	/*
+	 * MEMATTR: Mali has no actual notion of a non-cacheable type, so the
+	 * best we can do is mimic the out-of-tree driver and hope that the
+	 * "implementation-defined caching policy" is good enough. Similarly,
+	 * we'll use it for the sake of a valid attribute for our 'device'
+	 * index, although callers should never request that in practice.
+	 */
+	cfg->arm_mali_lpae_cfg.memattr =
+		(ARM_MALI_LPAE_MEMATTR_IMP_DEF
+		 << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_NC)) |
+		(ARM_MALI_LPAE_MEMATTR_WRITE_ALLOC
+		 << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_CACHE)) |
+		(ARM_MALI_LPAE_MEMATTR_IMP_DEF
+		 << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_DEV));
 
-	return iop;
+	data->pgd = __arm_lpae_alloc_pages(data->pgd_size, GFP_KERNEL, cfg);
+	if (!data->pgd)
+		goto out_free_data;
+
+	/* Ensure the empty pgd is visible before TRANSTAB can be written */
+	wmb();
+
+	cfg->arm_mali_lpae_cfg.transtab = virt_to_phys(data->pgd) |
+					  ARM_MALI_LPAE_TTBR_READ_INNER |
+					  ARM_MALI_LPAE_TTBR_ADRMODE_TABLE;
+	return &data->iop;
+
+out_free_data:
+	kfree(data);
+	return NULL;
 }
 
 struct io_pgtable_init_fns io_pgtable_arm_64_lpae_s1_init_fns = {
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
