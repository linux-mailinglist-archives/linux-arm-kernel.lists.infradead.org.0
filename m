Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEF9E5378
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:10:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KT4Qbu5eSH9pyehTnAGIY8qXiRe0IbkN4BpVGErn3gM=; b=OuJfWgjXlemFOu
	8J8uvh1ShOJ/acLAPV4yXmXUAifYqWHpTGalMLBPkb3o5RY+I7dOrwH03antH61vbhW9YMlV8Yha5
	c1ZobOTNxpUNVUIYVH2UmL7ltfsGAbCdnKPlgRLFaJCkMz1pHTz3ZwYwsuCdnWesjsWd+z2nHMkEK
	o3ZzT7rsFt3HuADrIe1x9O7y/ff7/lSVO12ZBr1GzzvOnXoMyQTrAG0vp2wDxMAto116vZMEVOzr8
	Hv30OidvuY+fpAiOT4Fk7P/vOC31QvJ6SWfkM9B1D/spixujqDd8n+ErRRxNmxS9v3/wRwcqN9kT9
	0/SrOEAhgVQx6/jppJSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO42U-00051F-7l; Fri, 25 Oct 2019 18:10:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO412-0003vO-94
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 18:08:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C320428;
 Fri, 25 Oct 2019 11:08:47 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1DB1D3F6C4;
 Fri, 25 Oct 2019 11:08:47 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 05/10] iommu/io-pgtable-arm: Simplify PGD size handling
Date: Fri, 25 Oct 2019 19:08:34 +0100
Message-Id: <2e752b21e1947633827ffa780bdb20803fe9db91.1572024120.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1572024119.git.robin.murphy@arm.com>
References: <cover.1572024119.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_110848_404931_3B6E2BB2 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: iommu@lists.linux-foundation.org, jcrouse@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We use data->pgd_size directly for the one-off allocation and freeing of
the top-level table, but otherwise it serves for ARM_LPAE_PGD_IDX() to
repeatedly re-calculate the effective number of top-level address bits
it represents. Flip this around so we store the form we most commonly
need, and derive the lesser-used one instead. This cuts a whole bunch of
code out of the map/unmap/iova_to_phys fast-paths.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/io-pgtable-arm.c | 33 +++++++++++++++++----------------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index fb5d30e04001..4b1483eb0ccf 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -40,16 +40,15 @@
 	(d)->pg_shift)
 
 #define ARM_LPAE_GRANULE(d)		(1UL << (d)->pg_shift)
-
-#define ARM_LPAE_PAGES_PER_PGD(d)					\
-	DIV_ROUND_UP((d)->pgd_size, ARM_LPAE_GRANULE(d))
+#define ARM_LPAE_PGD_SIZE(d)						\
+	(sizeof(arm_lpae_iopte) << (d)->pgd_bits)
 
 /*
  * Calculate the index at level l used to map virtual address a using the
  * pagetable in d.
  */
 #define ARM_LPAE_PGD_IDX(l,d)						\
-	((l) == (d)->start_level ? ilog2(ARM_LPAE_PAGES_PER_PGD(d)) : 0)
+	((l) == (d)->start_level ? (d)->pgd_bits - (d)->bits_per_level : 0)
 
 #define ARM_LPAE_LVL_IDX(a,l,d)						\
 	(((u64)(a) >> ARM_LPAE_LVL_SHIFT(l,d)) &			\
@@ -174,8 +173,8 @@
 struct arm_lpae_io_pgtable {
 	struct io_pgtable	iop;
 
+	int			pgd_bits;
 	int			start_level;
-	size_t			pgd_size;
 	unsigned long		pg_shift;
 	unsigned long		bits_per_level;
 
@@ -506,7 +505,7 @@ static void __arm_lpae_free_pgtable(struct arm_lpae_io_pgtable *data, int lvl,
 	unsigned long table_size;
 
 	if (lvl == data->start_level)
-		table_size = data->pgd_size;
+		table_size = ARM_LPAE_PGD_SIZE(data);
 	else
 		table_size = ARM_LPAE_GRANULE(data);
 
@@ -743,7 +742,7 @@ static void arm_lpae_restrict_pgsizes(struct io_pgtable_cfg *cfg)
 static struct arm_lpae_io_pgtable *
 arm_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg)
 {
-	unsigned long va_bits, pgd_bits;
+	unsigned long va_bits;
 	struct arm_lpae_io_pgtable *data;
 	int levels;
 
@@ -775,8 +774,7 @@ arm_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg)
 	data->start_level = ARM_LPAE_MAX_LEVELS - levels;
 
 	/* Calculate the actual size of our pgd (without concatenation) */
-	pgd_bits = va_bits - (data->bits_per_level * (levels - 1));
-	data->pgd_size = 1UL << (pgd_bits + ilog2(sizeof(arm_lpae_iopte)));
+	data->pgd_bits = va_bits - (data->bits_per_level * (levels - 1));
 
 	data->iop.ops = (struct io_pgtable_ops) {
 		.map		= arm_lpae_map,
@@ -870,7 +868,8 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
 	cfg->arm_lpae_s1_cfg.mair[1] = 0;
 
 	/* Looking good; allocate a pgd */
-	data->pgd = __arm_lpae_alloc_pages(data->pgd_size, GFP_KERNEL, cfg);
+	data->pgd = __arm_lpae_alloc_pages(ARM_LPAE_PGD_SIZE(data),
+					   GFP_KERNEL, cfg);
 	if (!data->pgd)
 		goto out_free_data;
 
@@ -908,9 +907,9 @@ arm_64_lpae_alloc_pgtable_s2(struct io_pgtable_cfg *cfg, void *cookie)
 	if (data->start_level == 0) {
 		unsigned long pgd_pages;
 
-		pgd_pages = data->pgd_size >> ilog2(sizeof(arm_lpae_iopte));
+		pgd_pages = ARM_LPAE_PGD_SIZE(data) / sizeof(arm_lpae_iopte);
 		if (pgd_pages <= ARM_LPAE_S2_MAX_CONCAT_PAGES) {
-			data->pgd_size = pgd_pages << data->pg_shift;
+			data->pgd_bits += data->bits_per_level;
 			data->start_level++;
 		}
 	}
@@ -967,7 +966,8 @@ arm_64_lpae_alloc_pgtable_s2(struct io_pgtable_cfg *cfg, void *cookie)
 	cfg->arm_lpae_s2_cfg.vtcr = reg;
 
 	/* Allocate pgd pages */
-	data->pgd = __arm_lpae_alloc_pages(data->pgd_size, GFP_KERNEL, cfg);
+	data->pgd = __arm_lpae_alloc_pages(ARM_LPAE_PGD_SIZE(data),
+					   GFP_KERNEL, cfg);
 	if (!data->pgd)
 		goto out_free_data;
 
@@ -1038,7 +1038,7 @@ arm_mali_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
 	/* Mali seems to need a full 4-level table regardless of IAS */
 	if (data->start_level > 0) {
 		data->start_level = 0;
-		data->pgd_size = sizeof(arm_lpae_iopte);
+		data->pgd_bits = 0;
 	}
 	/*
 	 * MEMATTR: Mali has no actual notion of a non-cacheable type, so the
@@ -1055,7 +1055,8 @@ arm_mali_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
 		(ARM_MALI_LPAE_MEMATTR_IMP_DEF
 		 << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_DEV));
 
-	data->pgd = __arm_lpae_alloc_pages(data->pgd_size, GFP_KERNEL, cfg);
+	data->pgd = __arm_lpae_alloc_pages(ARM_LPAE_PGD_SIZE(data), GFP_KERNEL,
+					   cfg);
 	if (!data->pgd)
 		goto out_free_data;
 
@@ -1138,7 +1139,7 @@ static void __init arm_lpae_dump_ops(struct io_pgtable_ops *ops)
 	pr_err("cfg: pgsize_bitmap 0x%lx, ias %u-bit\n",
 		cfg->pgsize_bitmap, cfg->ias);
 	pr_err("data: %d levels, 0x%zx pgd_size, %lu pg_shift, %lu bits_per_level, pgd @ %p\n",
-		ARM_LPAE_MAX_LEVELS - data->start_level, data->pgd_size,
+		ARM_LPAE_MAX_LEVELS - data->start_level, ARM_LPAE_PGD_SIZE(data),
 		data->pg_shift, data->bits_per_level, data->pgd);
 }
 
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
