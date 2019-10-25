Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4087E5384
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzHqwFGD7ozDQ8PQOlHDXHYG9MRIh3WRIDxe5ivbrao=; b=hLBM7ye7cqF85H
	XZbKrGpyMGmT4sPb7hGQtx1/hXM8oIMysLE6aBHCC5Fl8OUdnygQ2N75QvPEBaAK0DaGBc8ecOvvA
	sdRPJ2g7uML5GqfNBQTLvUKtQpSJT3MR1LnG8CuNAjVrYLh7yyxXzETSOTJGYnISRWGekJP5IXQJ3
	/R4LfTgpvFZRuW7PEUH71ClXWLMOJx4s2TvxzJmwitp6ZkbnNk8Ms3TrS0vtVvQn4kJ6CBK2gRSmC
	Qid/oGhK2vzuojWsmCk/CLD61lAihWV+Nuv4ArVCyuoDlt3auOvUGqam1Xq/SY8bLAmZ0wnAd5AY4
	VJVappRRicpD1MEDduCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO43D-00079N-Tb; Fri, 25 Oct 2019 18:11:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO412-0003vk-TF
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 18:08:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A89B4337;
 Fri, 25 Oct 2019 11:08:48 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0333F3F6C4;
 Fri, 25 Oct 2019 11:08:47 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 06/10] iommu/io-pgtable-arm: Simplify level indexing
Date: Fri, 25 Oct 2019 19:08:35 +0100
Message-Id: <698173b487383735e470a28e5cca4f9db22703de.1572024120.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1572024119.git.robin.murphy@arm.com>
References: <cover.1572024119.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_110849_045610_1FA4F42A 
X-CRM114-Status: GOOD (  16.99  )
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

The nature of the LPAE format means that data->pg_shift is always
redundant with data->bits_per_level, since they represent the size of a
page and the number of PTEs per page respectively, and the size of a PTE
is constant. Thus it works out more efficient to only store the latter,
and derive the former via a trivial addition where necessary.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/io-pgtable-arm.c | 29 +++++++++++++----------------
 1 file changed, 13 insertions(+), 16 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 4b1483eb0ccf..15b4927ce36b 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -36,10 +36,11 @@
  * in a virtual address mapped by the pagetable in d.
  */
 #define ARM_LPAE_LVL_SHIFT(l,d)						\
-	(((ARM_LPAE_MAX_LEVELS - 1 - (l)) * (d)->bits_per_level) +	\
-	(d)->pg_shift)
+	(((ARM_LPAE_MAX_LEVELS - (l)) * (d)->bits_per_level) +		\
+	ilog2(sizeof(arm_lpae_iopte)))
 
-#define ARM_LPAE_GRANULE(d)		(1UL << (d)->pg_shift)
+#define ARM_LPAE_GRANULE(d)						\
+	(sizeof(arm_lpae_iopte) << (d)->bits_per_level)
 #define ARM_LPAE_PGD_SIZE(d)						\
 	(sizeof(arm_lpae_iopte) << (d)->pgd_bits)
 
@@ -55,9 +56,7 @@
 	 ((1 << ((d)->bits_per_level + ARM_LPAE_PGD_IDX(l,d))) - 1))
 
 /* Calculate the block/page mapping size at level l for pagetable in d. */
-#define ARM_LPAE_BLOCK_SIZE(l,d)					\
-	(1ULL << (ilog2(sizeof(arm_lpae_iopte)) +			\
-		((ARM_LPAE_MAX_LEVELS - (l)) * (d)->bits_per_level)))
+#define ARM_LPAE_BLOCK_SIZE(l,d)	(1ULL << ARM_LPAE_LVL_SHIFT(l,d))
 
 /* Page table bits */
 #define ARM_LPAE_PTE_TYPE_SHIFT		0
@@ -175,8 +174,7 @@ struct arm_lpae_io_pgtable {
 
 	int			pgd_bits;
 	int			start_level;
-	unsigned long		pg_shift;
-	unsigned long		bits_per_level;
+	int			bits_per_level;
 
 	void			*pgd;
 };
@@ -206,7 +204,7 @@ static phys_addr_t iopte_to_paddr(arm_lpae_iopte pte,
 {
 	u64 paddr = pte & ARM_LPAE_PTE_ADDR_MASK;
 
-	if (data->pg_shift < 16)
+	if (data->bits_per_level < 13) /* i.e. 64K granule */
 		return paddr;
 
 	/* Rotate the packed high-order bits back to the top */
@@ -742,9 +740,8 @@ static void arm_lpae_restrict_pgsizes(struct io_pgtable_cfg *cfg)
 static struct arm_lpae_io_pgtable *
 arm_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg)
 {
-	unsigned long va_bits;
 	struct arm_lpae_io_pgtable *data;
-	int levels;
+	int levels, va_bits, pg_shift;
 
 	arm_lpae_restrict_pgsizes(cfg);
 
@@ -766,10 +763,10 @@ arm_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg)
 	if (!data)
 		return NULL;
 
-	data->pg_shift = __ffs(cfg->pgsize_bitmap);
-	data->bits_per_level = data->pg_shift - ilog2(sizeof(arm_lpae_iopte));
+	pg_shift = __ffs(cfg->pgsize_bitmap);
+	data->bits_per_level = pg_shift - ilog2(sizeof(arm_lpae_iopte));
 
-	va_bits = cfg->ias - data->pg_shift;
+	va_bits = cfg->ias - pg_shift;
 	levels = DIV_ROUND_UP(va_bits, data->bits_per_level);
 	data->start_level = ARM_LPAE_MAX_LEVELS - levels;
 
@@ -1138,9 +1135,9 @@ static void __init arm_lpae_dump_ops(struct io_pgtable_ops *ops)
 
 	pr_err("cfg: pgsize_bitmap 0x%lx, ias %u-bit\n",
 		cfg->pgsize_bitmap, cfg->ias);
-	pr_err("data: %d levels, 0x%zx pgd_size, %lu pg_shift, %lu bits_per_level, pgd @ %p\n",
+	pr_err("data: %d levels, 0x%zx pgd_size, %u pg_shift, %u bits_per_level, pgd @ %p\n",
 		ARM_LPAE_MAX_LEVELS - data->start_level, ARM_LPAE_PGD_SIZE(data),
-		data->pg_shift, data->bits_per_level, data->pgd);
+		ilog2(ARM_LPAE_GRANULE(data)), data->bits_per_level, data->pgd);
 }
 
 #define __FAIL(ops, i)	({						\
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
