Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E52A4E5379
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Uvt+8G+BiwB8bK98lPPcnM0yqK1Vj387ZzPhX3V94Q=; b=rlNeZ3q4rX1pyo
	pkHamq5CNpfd6JEbTtpRn/+vGGlS9rm/WFOQ12crwzrCvKnxpQNAZvQId8ktdx0QmNqbBaot7P4fI
	97DIFW+NpWgfVkFfKMpLpgzYLk0qJ/zJT9Ac8M2PnkXO+gNmfSsXKnw7Vfe68mt/fDoDXKQwVAIGj
	DB4K61prT278rmT/IXAm84wLaqckXoHv+qrHbRRz/kYY54hJiBhb17uYRjBJnSQ39SyZ/kBLN4kXC
	FdaSEN1GLl2qt+2H2kKYXHtclZoKD8gGKOT5CFsWwBSpBKW0UJxzhvmj032UkENyTqcI5fyCgl57/
	w0lzSSTsc5/tM8AtEnHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO42j-0006Vk-1E; Fri, 25 Oct 2019 18:10:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO411-0003uf-7f
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 18:08:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD90C494;
 Fri, 25 Oct 2019 11:08:46 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 381A23F6C4;
 Fri, 25 Oct 2019 11:08:46 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 04/10] iommu/io-pgtable-arm: Simplify start level lookup
Date: Fri, 25 Oct 2019 19:08:33 +0100
Message-Id: <3ce1f4395940e5feb5d217e050f3993b3d910491.1572024120.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1572024119.git.robin.murphy@arm.com>
References: <cover.1572024119.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_110847_358523_D59CC67F 
X-CRM114-Status: GOOD (  20.04  )
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

Beyond a couple of allocation-time calculations, data->levels is only
ever used to derive the start level. Storing the start level directly
leads to a small reduction in object code, which should help eke out a
little more efficiency, and slightly more readable source to boot.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/io-pgtable-arm.c | 45 +++++++++++++++-------------------
 1 file changed, 20 insertions(+), 25 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index a9dff0ecf0c3..fb5d30e04001 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -31,19 +31,13 @@
 #define io_pgtable_ops_to_data(x)					\
 	io_pgtable_to_data(io_pgtable_ops_to_pgtable(x))
 
-/*
- * For consistency with the architecture, we always consider
- * ARM_LPAE_MAX_LEVELS levels, with the walk starting at level n >=0
- */
-#define ARM_LPAE_START_LVL(d)		(ARM_LPAE_MAX_LEVELS - (d)->levels)
-
 /*
  * Calculate the right shift amount to get to the portion describing level l
  * in a virtual address mapped by the pagetable in d.
  */
 #define ARM_LPAE_LVL_SHIFT(l,d)						\
-	((((d)->levels - ((l) - ARM_LPAE_START_LVL(d) + 1))		\
-	  * (d)->bits_per_level) + (d)->pg_shift)
+	(((ARM_LPAE_MAX_LEVELS - 1 - (l)) * (d)->bits_per_level) +	\
+	(d)->pg_shift)
 
 #define ARM_LPAE_GRANULE(d)		(1UL << (d)->pg_shift)
 
@@ -55,7 +49,7 @@
  * pagetable in d.
  */
 #define ARM_LPAE_PGD_IDX(l,d)						\
-	((l) == ARM_LPAE_START_LVL(d) ? ilog2(ARM_LPAE_PAGES_PER_PGD(d)) : 0)
+	((l) == (d)->start_level ? ilog2(ARM_LPAE_PAGES_PER_PGD(d)) : 0)
 
 #define ARM_LPAE_LVL_IDX(a,l,d)						\
 	(((u64)(a) >> ARM_LPAE_LVL_SHIFT(l,d)) &			\
@@ -180,7 +174,7 @@
 struct arm_lpae_io_pgtable {
 	struct io_pgtable	iop;
 
-	int			levels;
+	int			start_level;
 	size_t			pgd_size;
 	unsigned long		pg_shift;
 	unsigned long		bits_per_level;
@@ -481,7 +475,7 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
 	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
 	struct io_pgtable_cfg *cfg = &data->iop.cfg;
 	arm_lpae_iopte *ptep = data->pgd;
-	int ret, lvl = ARM_LPAE_START_LVL(data);
+	int ret, lvl = data->start_level;
 	arm_lpae_iopte prot;
 
 	/* If no access, then nothing to do */
@@ -511,7 +505,7 @@ static void __arm_lpae_free_pgtable(struct arm_lpae_io_pgtable *data, int lvl,
 	arm_lpae_iopte *start, *end;
 	unsigned long table_size;
 
-	if (lvl == ARM_LPAE_START_LVL(data))
+	if (lvl == data->start_level)
 		table_size = data->pgd_size;
 	else
 		table_size = ARM_LPAE_GRANULE(data);
@@ -540,7 +534,7 @@ static void arm_lpae_free_pgtable(struct io_pgtable *iop)
 {
 	struct arm_lpae_io_pgtable *data = io_pgtable_to_data(iop);
 
-	__arm_lpae_free_pgtable(data, ARM_LPAE_START_LVL(data), data->pgd);
+	__arm_lpae_free_pgtable(data, data->start_level, data->pgd);
 	kfree(data);
 }
 
@@ -657,7 +651,6 @@ static size_t arm_lpae_unmap(struct io_pgtable_ops *ops, unsigned long iova,
 	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
 	struct io_pgtable_cfg *cfg = &data->iop.cfg;
 	arm_lpae_iopte *ptep = data->pgd;
-	int lvl = ARM_LPAE_START_LVL(data);
 
 	if (WARN_ON(!size || (size & cfg->pgsize_bitmap) != size))
 		return 0;
@@ -665,7 +658,7 @@ static size_t arm_lpae_unmap(struct io_pgtable_ops *ops, unsigned long iova,
 	if (WARN_ON(iova >> data->iop.cfg.ias))
 		return 0;
 
-	return __arm_lpae_unmap(data, gather, iova, size, lvl, ptep);
+	return __arm_lpae_unmap(data, gather, iova, size, data->start_level, ptep);
 }
 
 static phys_addr_t arm_lpae_iova_to_phys(struct io_pgtable_ops *ops,
@@ -673,7 +666,7 @@ static phys_addr_t arm_lpae_iova_to_phys(struct io_pgtable_ops *ops,
 {
 	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
 	arm_lpae_iopte pte, *ptep = data->pgd;
-	int lvl = ARM_LPAE_START_LVL(data);
+	int lvl = data->start_level;
 
 	do {
 		/* Valid IOPTE pointer? */
@@ -752,6 +745,7 @@ arm_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg)
 {
 	unsigned long va_bits, pgd_bits;
 	struct arm_lpae_io_pgtable *data;
+	int levels;
 
 	arm_lpae_restrict_pgsizes(cfg);
 
@@ -777,10 +771,11 @@ arm_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg)
 	data->bits_per_level = data->pg_shift - ilog2(sizeof(arm_lpae_iopte));
 
 	va_bits = cfg->ias - data->pg_shift;
-	data->levels = DIV_ROUND_UP(va_bits, data->bits_per_level);
+	levels = DIV_ROUND_UP(va_bits, data->bits_per_level);
+	data->start_level = ARM_LPAE_MAX_LEVELS - levels;
 
 	/* Calculate the actual size of our pgd (without concatenation) */
-	pgd_bits = va_bits - (data->bits_per_level * (data->levels - 1));
+	pgd_bits = va_bits - (data->bits_per_level * (levels - 1));
 	data->pgd_size = 1UL << (pgd_bits + ilog2(sizeof(arm_lpae_iopte)));
 
 	data->iop.ops = (struct io_pgtable_ops) {
@@ -910,13 +905,13 @@ arm_64_lpae_alloc_pgtable_s2(struct io_pgtable_cfg *cfg, void *cookie)
 	 * Concatenate PGDs at level 1 if possible in order to reduce
 	 * the depth of the stage-2 walk.
 	 */
-	if (data->levels == ARM_LPAE_MAX_LEVELS) {
+	if (data->start_level == 0) {
 		unsigned long pgd_pages;
 
 		pgd_pages = data->pgd_size >> ilog2(sizeof(arm_lpae_iopte));
 		if (pgd_pages <= ARM_LPAE_S2_MAX_CONCAT_PAGES) {
 			data->pgd_size = pgd_pages << data->pg_shift;
-			data->levels--;
+			data->start_level++;
 		}
 	}
 
@@ -926,7 +921,7 @@ arm_64_lpae_alloc_pgtable_s2(struct io_pgtable_cfg *cfg, void *cookie)
 	     (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
 	     (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);
 
-	sl = ARM_LPAE_START_LVL(data);
+	sl = data->start_level;
 
 	switch (ARM_LPAE_GRANULE(data)) {
 	case SZ_4K:
@@ -1041,8 +1036,8 @@ arm_mali_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
 		return NULL;
 
 	/* Mali seems to need a full 4-level table regardless of IAS */
-	if (data->levels < ARM_LPAE_MAX_LEVELS) {
-		data->levels = ARM_LPAE_MAX_LEVELS;
+	if (data->start_level > 0) {
+		data->start_level = 0;
 		data->pgd_size = sizeof(arm_lpae_iopte);
 	}
 	/*
@@ -1143,8 +1138,8 @@ static void __init arm_lpae_dump_ops(struct io_pgtable_ops *ops)
 	pr_err("cfg: pgsize_bitmap 0x%lx, ias %u-bit\n",
 		cfg->pgsize_bitmap, cfg->ias);
 	pr_err("data: %d levels, 0x%zx pgd_size, %lu pg_shift, %lu bits_per_level, pgd @ %p\n",
-		data->levels, data->pgd_size, data->pg_shift,
-		data->bits_per_level, data->pgd);
+		ARM_LPAE_MAX_LEVELS - data->start_level, data->pgd_size,
+		data->pg_shift, data->bits_per_level, data->pgd);
 }
 
 #define __FAIL(ops, i)	({						\
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
