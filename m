Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A75A0855B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 00:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lnnGga3QftOyCP356a5DT+G0/zRXSRaQrx+tjKSl05I=; b=sKM4e/0Mi1ZloEZzunHNev8bfs
	8T2NHZM3tepPedS+VZg9Rv/u1s+FdM+qYCIVnMNNp+UFP9xl5xNWPBYtewZ93pwDiEdZaTVuYVtDm
	IsJmvLipDCtbWtrrU2iWCuI7mZLt36Fqi3bZrT3DJ9eYSaV0wDW4H5ol/KiSFmc8zIHi/Ko0l7iMt
	125tpQVZBQKtD87KRwCKTweXBrGJWHDzIGjPz1bqoKRcda5LOtKUZmf1jTmjgdvwsrvHxb+sZpqKH
	airxUg93xAL51IHKMkcENcW5vurzBquoPhjezPBlMTid2CN4Gwjitpz8a8yBW+PGU1SIw3dVllwUh
	cJLEKQPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvUJz-0003vl-Bz; Wed, 07 Aug 2019 22:22:15 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvUJa-0003j8-Jl
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 22:21:52 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 026966074F; Wed,  7 Aug 2019 22:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565216510;
 bh=kHP/hcA9cXNEJx5zzjXeEo+3ANFzauFLULTr9USX/vI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=V4e97pkDAagmNMwX5DClyo84xFHEcgXiW8i7Lhaaa67iCaQLdu7JhtzaYyZe/l0GJ
 H4oBxZUlm25WrQHtFRUR9U86hc5jRlQdZdoBFjGCmZobDSHnBEvkntEh0Vk8tuoDXu
 jc7RWxuGfsV2yceXuxRYYuHoq6EctYcsFXRxDMzE=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jcrouse@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3BF676038E;
 Wed,  7 Aug 2019 22:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565216506;
 bh=kHP/hcA9cXNEJx5zzjXeEo+3ANFzauFLULTr9USX/vI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EFUMNycss6motGHwjg5MpA+T7JYVRPDd4v/PvI99umxsc1Rewn65MWVSZtmUciYPg
 wr9XCRpw0cFsh5lS4lTsv7LQiLPUmLAgPQRX8WZvZ2Vza1rjxid87jyulLzexASRM8
 0TDGY35AEv2TMPP54Txwpvh0uIHixBG0B8tmIA4g=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3BF676038E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: freedreno@lists.freedesktop.org
Subject: [PATCH v3 1/2] iommu/io-pgtable-arm: Add support for
 ARM_ADRENO_GPU_LPAE io-pgtable format
Date: Wed,  7 Aug 2019 16:21:39 -0600
Message-Id: <1565216500-28506-2-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565216500-28506-1-git-send-email-jcrouse@codeaurora.org>
References: <1565216500-28506-1-git-send-email-jcrouse@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_152150_692540_DF933557 
X-CRM114-Status: GOOD (  22.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, Will Deacon <will@kernel.org>,
 jean-philippe.brucker@arm.com, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Zhen Lei <thunder.leizhen@huawei.com>,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new sub-format ARM_ADRENO_GPU_LPAE to set up TTBR0 and TTBR1 for
use by the Adreno GPU. This will allow The GPU driver to map global
buffers in the TTBR1 and leave the TTBR0 configured but unset and
free to be changed dynamically by the GPU.

Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
---

 drivers/iommu/io-pgtable-arm.c | 214 ++++++++++++++++++++++++++++++++++++++---
 drivers/iommu/io-pgtable.c     |   1 +
 include/linux/io-pgtable.h     |   2 +
 3 files changed, 202 insertions(+), 15 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 161a7d5..8eb0dbb 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -112,13 +112,19 @@
 #define ARM_32_LPAE_TCR_EAE		(1 << 31)
 #define ARM_64_LPAE_S2_TCR_RES1		(1 << 31)
 
+#define ARM_LPAE_TCR_EPD0		(1 << 7)
 #define ARM_LPAE_TCR_EPD1		(1 << 23)
 
 #define ARM_LPAE_TCR_TG0_4K		(0 << 14)
 #define ARM_LPAE_TCR_TG0_64K		(1 << 14)
 #define ARM_LPAE_TCR_TG0_16K		(2 << 14)
 
+#define ARM_LPAE_TCR_TG1_4K		(0 << 30)
+#define ARM_LPAE_TCR_TG1_64K		(1 << 30)
+#define ARM_LPAE_TCR_TG1_16K		(2 << 30)
+
 #define ARM_LPAE_TCR_SH0_SHIFT		12
+#define ARM_LPAE_TCR_SH1_SHIFT		28
 #define ARM_LPAE_TCR_SH0_MASK		0x3
 #define ARM_LPAE_TCR_SH_NS		0
 #define ARM_LPAE_TCR_SH_OS		2
@@ -126,6 +132,8 @@
 
 #define ARM_LPAE_TCR_ORGN0_SHIFT	10
 #define ARM_LPAE_TCR_IRGN0_SHIFT	8
+#define ARM_LPAE_TCR_ORGN1_SHIFT	26
+#define ARM_LPAE_TCR_IRGN1_SHIFT	24
 #define ARM_LPAE_TCR_RGN_MASK		0x3
 #define ARM_LPAE_TCR_RGN_NC		0
 #define ARM_LPAE_TCR_RGN_WBWA		1
@@ -136,6 +144,7 @@
 #define ARM_LPAE_TCR_SL0_MASK		0x3
 
 #define ARM_LPAE_TCR_T0SZ_SHIFT		0
+#define ARM_LPAE_TCR_T1SZ_SHIFT		16
 #define ARM_LPAE_TCR_SZ_MASK		0xf
 
 #define ARM_LPAE_TCR_PS_SHIFT		16
@@ -152,6 +161,14 @@
 #define ARM_LPAE_TCR_PS_48_BIT		0x5ULL
 #define ARM_LPAE_TCR_PS_52_BIT		0x6ULL
 
+#define ARM_LPAE_TCR_SEP_SHIFT		47
+#define ARM_LPAE_TCR_SEP_31		(0x0ULL << ARM_LPAE_TCR_SEP_SHIFT)
+#define ARM_LPAE_TCR_SEP_35		(0x1ULL << ARM_LPAE_TCR_SEP_SHIFT)
+#define ARM_LPAE_TCR_SEP_39		(0x2ULL << ARM_LPAE_TCR_SEP_SHIFT)
+#define ARM_LPAE_TCR_SEP_41		(0x3ULL << ARM_LPAE_TCR_SEP_SHIFT)
+#define ARM_LPAE_TCR_SEP_43		(0x4ULL << ARM_LPAE_TCR_SEP_SHIFT)
+#define ARM_LPAE_TCR_SEP_UPSTREAM	(0x7ULL << ARM_LPAE_TCR_SEP_SHIFT)
+
 #define ARM_LPAE_MAIR_ATTR_SHIFT(n)	((n) << 3)
 #define ARM_LPAE_MAIR_ATTR_MASK		0xff
 #define ARM_LPAE_MAIR_ATTR_DEVICE	0x04
@@ -426,7 +443,8 @@ static arm_lpae_iopte arm_lpae_prot_to_pte(struct arm_lpae_io_pgtable *data,
 	arm_lpae_iopte pte;
 
 	if (data->iop.fmt == ARM_64_LPAE_S1 ||
-	    data->iop.fmt == ARM_32_LPAE_S1) {
+	    data->iop.fmt == ARM_32_LPAE_S1 ||
+	    data->iop.fmt == ARM_ADRENO_GPU_LPAE) {
 		pte = ARM_LPAE_PTE_nG;
 		if (!(prot & IOMMU_WRITE) && (prot & IOMMU_READ))
 			pte |= ARM_LPAE_PTE_AP_RDONLY;
@@ -497,6 +515,21 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
 	return ret;
 }
 
+static int arm_adreno_gpu_lpae_map(struct io_pgtable_ops *ops,
+		unsigned long iova, phys_addr_t paddr, size_t size,
+		int iommu_prot)
+{
+	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
+	unsigned long mask = 1UL << data->iop.cfg.ias;
+
+	/* This configuration expects all iova addresses to be in TTBR1 */
+	if (WARN_ON(iova & mask))
+		return -ERANGE;
+
+	/* Mask off the sign extended bits and map as usual */
+	return arm_lpae_map(ops, iova & (mask - 1), paddr, size, iommu_prot);
+}
+
 static void __arm_lpae_free_pgtable(struct arm_lpae_io_pgtable *data, int lvl,
 				    arm_lpae_iopte *ptep)
 {
@@ -643,6 +676,22 @@ static size_t __arm_lpae_unmap(struct arm_lpae_io_pgtable *data,
 	return __arm_lpae_unmap(data, iova, size, lvl + 1, ptep);
 }
 
+static size_t arm_adreno_gpu_lpae_unmap(struct io_pgtable_ops *ops,
+				   unsigned long iova, size_t size)
+{
+	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
+	arm_lpae_iopte *ptep = data->pgd;
+	int lvl = ARM_LPAE_START_LVL(data);
+	unsigned long mask = 1UL << data->iop.cfg.ias;
+
+	/* Make sure the sign extend bit is set in the iova */
+	if (WARN_ON(!(iova & mask)))
+		return 0;
+
+	/* Mask off the sign extended bits before unmapping */
+	return __arm_lpae_unmap(data, iova & (mask - 1), size, lvl, ptep);
+}
+
 static size_t arm_lpae_unmap(struct io_pgtable_ops *ops, unsigned long iova,
 			     size_t size)
 {
@@ -692,6 +741,17 @@ static phys_addr_t arm_lpae_iova_to_phys(struct io_pgtable_ops *ops,
 	return iopte_to_paddr(pte, data) | iova;
 }
 
+
+static phys_addr_t arm_adreno_gpu_lpae_iova_to_phys(struct io_pgtable_ops *ops,
+					       unsigned long iova)
+{
+	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
+	unsigned long mask = 1UL << data->iop.cfg.ias;
+
+	/* Mask off the sign extended bits before translating */
+	return arm_lpae_iova_to_phys(ops, iova & (mask - 1));
+}
+
 static void arm_lpae_restrict_pgsizes(struct io_pgtable_cfg *cfg)
 {
 	unsigned long granule, page_sizes;
@@ -771,17 +831,16 @@ arm_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg)
 	pgd_bits = va_bits - (data->bits_per_level * (data->levels - 1));
 	data->pgd_size = 1UL << (pgd_bits + ilog2(sizeof(arm_lpae_iopte)));
 
-	data->iop.ops = (struct io_pgtable_ops) {
-		.map		= arm_lpae_map,
-		.unmap		= arm_lpae_unmap,
-		.iova_to_phys	= arm_lpae_iova_to_phys,
-	};
 
 	return data;
 }
 
-static struct io_pgtable *
-arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
+/*
+ * Common allocation function for S1 pagetables.  Set up the TTBR0 region and
+ * allocate a default pagetable
+ */
+static struct arm_lpae_io_pgtable *
+_arm_64_lpae_alloc_pgtable_s1_common(struct io_pgtable_cfg *cfg)
 {
 	u64 reg;
 	struct arm_lpae_io_pgtable *data;
@@ -845,8 +904,6 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
 
 	reg |= (64ULL - cfg->ias) << ARM_LPAE_TCR_T0SZ_SHIFT;
 
-	/* Disable speculative walks through TTBR1 */
-	reg |= ARM_LPAE_TCR_EPD1;
 	cfg->arm_lpae_s1_cfg.tcr = reg;
 
 	/* MAIRs */
@@ -870,16 +927,131 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
 	/* Ensure the empty pgd is visible before any actual TTBR write */
 	wmb();
 
-	/* TTBRs */
-	cfg->arm_lpae_s1_cfg.ttbr[0] = virt_to_phys(data->pgd);
-	cfg->arm_lpae_s1_cfg.ttbr[1] = 0;
-	return &data->iop;
-
+	return data;
 out_free_data:
 	kfree(data);
 	return NULL;
 }
 
+
+static struct io_pgtable *
+arm_adreno_gpu_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
+{
+	struct arm_lpae_io_pgtable *data;
+	u64 reg;
+
+	/*
+	 * Make sure the ias aligns with the available options for the sign
+	 * extension bit
+	 */
+	switch (cfg->ias) {
+	case 32:
+	case 36:
+	case 40:
+	case 42:
+	case 44:
+		/*
+		 * The SEP will be the highest available bit so adjust the data
+		 * size by one to accommodate it
+		 */
+		cfg->ias--;
+		break;
+	case 48:
+		/*
+		 * IAS of 48 is a special case, it has a dedicated sign
+		 * extension bit so we can use the full IAS size
+		 */
+		break;
+	default:
+		/* The ias doesn't work for the available SEP options */
+		return NULL;
+	}
+
+	data = _arm_64_lpae_alloc_pgtable_s1_common(cfg);
+	if (!data)
+		return NULL;
+
+	reg = (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH1_SHIFT) |
+	      (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN1_SHIFT) |
+	      (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN1_SHIFT);
+
+	switch (ARM_LPAE_GRANULE(data)) {
+	case SZ_4K:
+		reg |= ARM_LPAE_TCR_TG1_4K;
+		break;
+	case SZ_16K:
+		reg |= ARM_LPAE_TCR_TG1_16K;
+		break;
+	case SZ_64K:
+		reg |= ARM_LPAE_TCR_TG1_64K;
+		break;
+	}
+
+	reg |= (64ULL - cfg->ias) << ARM_LPAE_TCR_T1SZ_SHIFT;
+
+	/* Set the sign extension bit */
+	switch (cfg->ias) {
+	case 31:
+		reg |= ARM_LPAE_TCR_SEP_31;
+		break;
+	case 35:
+		reg |= ARM_LPAE_TCR_SEP_35;
+		break;
+	case 39:
+		reg |= ARM_LPAE_TCR_SEP_39;
+		break;
+	case 41:
+		reg |= ARM_LPAE_TCR_SEP_41;
+		break;
+	case 43:
+		reg |= ARM_LPAE_TCR_SEP_43;
+		break;
+	case 48:
+		reg |= ARM_LPAE_TCR_SEP_UPSTREAM;
+		break;
+	}
+
+	cfg->arm_lpae_s1_cfg.tcr |= reg;
+
+	/* Set the allocated pgd to ttbr1 and leave ttbr0 empty */
+	cfg->arm_lpae_s1_cfg.ttbr[0] = 0;
+	cfg->arm_lpae_s1_cfg.ttbr[1] = virt_to_phys(data->pgd);
+
+	/* Set use case specific pgtable helpers */
+	data->iop.ops = (struct io_pgtable_ops) {
+		.map		= arm_adreno_gpu_lpae_map,
+		.unmap		= arm_adreno_gpu_lpae_unmap,
+		.iova_to_phys	= arm_adreno_gpu_lpae_iova_to_phys,
+	};
+
+	return &data->iop;
+}
+
+static struct io_pgtable *
+arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
+{
+	struct arm_lpae_io_pgtable *data;
+
+	data = _arm_64_lpae_alloc_pgtable_s1_common(cfg);
+	if (!data)
+		return NULL;
+
+	/* Disable speculative walks through TTBR1 */
+	cfg->arm_lpae_s1_cfg.tcr |= ARM_LPAE_TCR_EPD1;
+
+	/* Set the pgd to TTBR0 */
+	cfg->arm_lpae_s1_cfg.ttbr[0] = virt_to_phys(data->pgd);
+	cfg->arm_lpae_s1_cfg.ttbr[1] = 0;
+
+	data->iop.ops = (struct io_pgtable_ops) {
+		.map		= arm_lpae_map,
+		.unmap		= arm_lpae_unmap,
+		.iova_to_phys	= arm_lpae_iova_to_phys,
+	};
+
+	return &data->iop;
+}
+
 static struct io_pgtable *
 arm_64_lpae_alloc_pgtable_s2(struct io_pgtable_cfg *cfg, void *cookie)
 {
@@ -894,6 +1066,12 @@ arm_64_lpae_alloc_pgtable_s2(struct io_pgtable_cfg *cfg, void *cookie)
 	if (!data)
 		return NULL;
 
+	data->iop.ops = (struct io_pgtable_ops) {
+		.map		= arm_lpae_map,
+		.unmap		= arm_lpae_unmap,
+		.iova_to_phys	= arm_lpae_iova_to_phys,
+	};
+
 	/*
 	 * Concatenate PGDs at level 1 if possible in order to reduce
 	 * the depth of the stage-2 walk.
@@ -1041,6 +1219,11 @@ struct io_pgtable_init_fns io_pgtable_arm_64_lpae_s1_init_fns = {
 	.free	= arm_lpae_free_pgtable,
 };
 
+struct io_pgtable_init_fns io_pgtable_arm_adreno_gpu_lpae_init_fns = {
+	.alloc	= arm_adreno_gpu_lpae_alloc_pgtable,
+	.free	= arm_lpae_free_pgtable,
+};
+
 struct io_pgtable_init_fns io_pgtable_arm_64_lpae_s2_init_fns = {
 	.alloc	= arm_64_lpae_alloc_pgtable_s2,
 	.free	= arm_lpae_free_pgtable,
@@ -1112,6 +1295,7 @@ static int __init arm_lpae_run_tests(struct io_pgtable_cfg *cfg)
 	static const enum io_pgtable_fmt fmts[] = {
 		ARM_64_LPAE_S1,
 		ARM_64_LPAE_S2,
+		ARM_64_LPAE_TTBR1_S1,
 	};
 
 	int i, j;
diff --git a/drivers/iommu/io-pgtable.c b/drivers/iommu/io-pgtable.c
index ced53e5..e47ed2d 100644
--- a/drivers/iommu/io-pgtable.c
+++ b/drivers/iommu/io-pgtable.c
@@ -20,6 +20,7 @@ io_pgtable_init_table[IO_PGTABLE_NUM_FMTS] = {
 	[ARM_64_LPAE_S1] = &io_pgtable_arm_64_lpae_s1_init_fns,
 	[ARM_64_LPAE_S2] = &io_pgtable_arm_64_lpae_s2_init_fns,
 	[ARM_MALI_LPAE] = &io_pgtable_arm_mali_lpae_init_fns,
+	[ARM_ADRENO_GPU_LPAE] = &io_pgtable_arm_adreno_gpu_lpae_init_fns,
 #endif
 #ifdef CONFIG_IOMMU_IO_PGTABLE_ARMV7S
 	[ARM_V7S] = &io_pgtable_arm_v7s_init_fns,
diff --git a/include/linux/io-pgtable.h b/include/linux/io-pgtable.h
index b5a450a..4871e85 100644
--- a/include/linux/io-pgtable.h
+++ b/include/linux/io-pgtable.h
@@ -13,6 +13,7 @@ enum io_pgtable_fmt {
 	ARM_64_LPAE_S2,
 	ARM_V7S,
 	ARM_MALI_LPAE,
+	ARM_ADRENO_GPU_LPAE,
 	IO_PGTABLE_NUM_FMTS,
 };
 
@@ -213,5 +214,6 @@ extern struct io_pgtable_init_fns io_pgtable_arm_64_lpae_s1_init_fns;
 extern struct io_pgtable_init_fns io_pgtable_arm_64_lpae_s2_init_fns;
 extern struct io_pgtable_init_fns io_pgtable_arm_v7s_init_fns;
 extern struct io_pgtable_init_fns io_pgtable_arm_mali_lpae_init_fns;
+extern struct io_pgtable_init_fns io_pgtable_arm_adreno_gpu_lpae_init_fns;
 
 #endif /* __IO_PGTABLE_H */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
