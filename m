Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA441F11D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 05:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZZC2IHS/uQRCfzdPUE3jsqWzigREZTDZlMWhmmM3RP0=; b=l4IjjkKuoEQuimc7QrbI60kk57
	vGXcWwLXRoBhwesLNfS751QjsE/LaUPcRP8CUj7BnzbVpdgPlDU4LW9EOloZT7LF+jh0qQSyJ+077
	JRKvSdvmiw24wBQo3D1l79gH5H3Fv126LWL8CV/NL3mjykjUeRh4/0brKLbZVgnHZCmTfkvgdhTFQ
	btLLU4awiFBEK8t6cxrIC96tSeZijsVZ+pyelq3v4aZWk/oBtB7ERkCNeMNRhf27yvpykakEADiTh
	BVUu6CtDwtXCjaw22D1DB806pDo91UkrynAfxbFK664U5WNf9IJxx1DS/45p6umf/vqndfZdcB4ko
	FPQVygBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji8e3-0000CO-J8; Mon, 08 Jun 2020 03:40:19 +0000
Received: from out30-131.freemail.mail.aliyun.com ([115.124.30.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji8d1-0007rw-6n; Mon, 08 Jun 2020 03:39:17 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R141e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04407;
 MF=baolin.wang@linux.alibaba.com; NM=1; PH=DS; RN=20; SR=0;
 TI=SMTPD_---0U-sNP4Y_1591587544; 
Received: from localhost(mailfrom:baolin.wang@linux.alibaba.com
 fp:SMTPD_---0U-sNP4Y_1591587544) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 08 Jun 2020 11:39:05 +0800
From: Baolin Wang <baolin.wang@linux.alibaba.com>
To: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, agross@kernel.org,
 bjorn.andersson@linaro.org, matthias.bgg@gmail.com, robdclark@gmail.com,
 robh@kernel.org, tomeu.vizoso@collabora.com, steven.price@arm.com,
 alyssa.rosenzweig@collabora.com, airlied@linux.ie, daniel@ffwll.ch
Subject: [PATCH 2/2] iommu: Add gfp parameter to io_pgtable_ops->map()
Date: Mon,  8 Jun 2020 11:38:41 +0800
Message-Id: <837d7131e83b06ce222bda678fe2e8ac7ba095f2.1591587029.git.baolin.wang@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1591587029.git.baolin.wang@linux.alibaba.com>
References: <cover.1591587029.git.baolin.wang@linux.alibaba.com>
In-Reply-To: <cover.1591587029.git.baolin.wang@linux.alibaba.com>
References: <cover.1591587029.git.baolin.wang@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_203915_401423_D5F06505 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, baolin.wang@linux.alibaba.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now the ARM page tables are always allocated by GFP_ATOMIC parameter,
but the iommu_ops->map() function has been added a gfp_t parameter by
commit 781ca2de89ba ("iommu: Add gfp parameter to iommu_ops::map"),
thus io_pgtable_ops->map() should use the gfp parameter passed from
iommu_ops->map() to allocate page pages, which can avoid wasting the
memory allocators atomic pools for some non-atomic contexts.

Signed-off-by: Baolin Wang <baolin.wang@linux.alibaba.com>
---
 drivers/gpu/drm/panfrost/panfrost_mmu.c |  2 +-
 drivers/iommu/arm-smmu-v3.c             |  2 +-
 drivers/iommu/arm-smmu.c                |  2 +-
 drivers/iommu/io-pgtable-arm-v7s.c      | 10 +++++-----
 drivers/iommu/io-pgtable-arm.c          | 10 +++++-----
 drivers/iommu/ipmmu-vmsa.c              |  2 +-
 drivers/iommu/msm_iommu.c               |  2 +-
 drivers/iommu/mtk_iommu.c               |  2 +-
 drivers/iommu/qcom_iommu.c              |  2 +-
 include/linux/io-pgtable.h              |  2 +-
 10 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_mmu.c b/drivers/gpu/drm/panfrost/panfrost_mmu.c
index ed28aeb..5a39eee 100644
--- a/drivers/gpu/drm/panfrost/panfrost_mmu.c
+++ b/drivers/gpu/drm/panfrost/panfrost_mmu.c
@@ -262,7 +262,7 @@ static int mmu_map_sg(struct panfrost_device *pfdev, struct panfrost_mmu *mmu,
 		while (len) {
 			size_t pgsize = get_pgsize(iova | paddr, len);
 
-			ops->map(ops, iova, paddr, pgsize, prot);
+			ops->map(ops, iova, paddr, pgsize, prot, GFP_KERNEL);
 			iova += pgsize;
 			paddr += pgsize;
 			len -= pgsize;
diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 8250873..433b680 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2845,7 +2845,7 @@ static int arm_smmu_map(struct iommu_domain *domain, unsigned long iova,
 	if (!ops)
 		return -ENODEV;
 
-	return ops->map(ops, iova, paddr, size, prot);
+	return ops->map(ops, iova, paddr, size, prot, gfp);
 }
 
 static size_t arm_smmu_unmap(struct iommu_domain *domain, unsigned long iova,
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index a6a5796..bf640aa 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1237,7 +1237,7 @@ static int arm_smmu_map(struct iommu_domain *domain, unsigned long iova,
 		return -ENODEV;
 
 	arm_smmu_rpm_get(smmu);
-	ret = ops->map(ops, iova, paddr, size, prot);
+	ret = ops->map(ops, iova, paddr, size, prot, gfp);
 	arm_smmu_rpm_put(smmu);
 
 	return ret;
diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
index 4272fe4..ebbe2c5 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -470,7 +470,7 @@ static arm_v7s_iopte arm_v7s_install_table(arm_v7s_iopte *table,
 
 static int __arm_v7s_map(struct arm_v7s_io_pgtable *data, unsigned long iova,
 			 phys_addr_t paddr, size_t size, int prot,
-			 int lvl, arm_v7s_iopte *ptep)
+			 int lvl, arm_v7s_iopte *ptep, gfp_t gfp)
 {
 	struct io_pgtable_cfg *cfg = &data->iop.cfg;
 	arm_v7s_iopte pte, *cptep;
@@ -491,7 +491,7 @@ static int __arm_v7s_map(struct arm_v7s_io_pgtable *data, unsigned long iova,
 	/* Grab a pointer to the next level */
 	pte = READ_ONCE(*ptep);
 	if (!pte) {
-		cptep = __arm_v7s_alloc_table(lvl + 1, GFP_ATOMIC, data);
+		cptep = __arm_v7s_alloc_table(lvl + 1, gfp, data);
 		if (!cptep)
 			return -ENOMEM;
 
@@ -512,11 +512,11 @@ static int __arm_v7s_map(struct arm_v7s_io_pgtable *data, unsigned long iova,
 	}
 
 	/* Rinse, repeat */
-	return __arm_v7s_map(data, iova, paddr, size, prot, lvl + 1, cptep);
+	return __arm_v7s_map(data, iova, paddr, size, prot, lvl + 1, cptep, gfp);
 }
 
 static int arm_v7s_map(struct io_pgtable_ops *ops, unsigned long iova,
-			phys_addr_t paddr, size_t size, int prot)
+			phys_addr_t paddr, size_t size, int prot, gfp_t gfp)
 {
 	struct arm_v7s_io_pgtable *data = io_pgtable_ops_to_data(ops);
 	struct io_pgtable *iop = &data->iop;
@@ -530,7 +530,7 @@ static int arm_v7s_map(struct io_pgtable_ops *ops, unsigned long iova,
 		    paddr >= (1ULL << data->iop.cfg.oas)))
 		return -ERANGE;
 
-	ret = __arm_v7s_map(data, iova, paddr, size, prot, 1, data->pgd);
+	ret = __arm_v7s_map(data, iova, paddr, size, prot, 1, data->pgd, gfp);
 	/*
 	 * Synchronise all PTE updates for the new mapping before there's
 	 * a chance for anything to kick off a table walk for the new iova.
diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 04fbd4b..3ced132 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -355,7 +355,7 @@ static arm_lpae_iopte arm_lpae_install_table(arm_lpae_iopte *table,
 
 static int __arm_lpae_map(struct arm_lpae_io_pgtable *data, unsigned long iova,
 			  phys_addr_t paddr, size_t size, arm_lpae_iopte prot,
-			  int lvl, arm_lpae_iopte *ptep)
+			  int lvl, arm_lpae_iopte *ptep, gfp_t gfp)
 {
 	arm_lpae_iopte *cptep, pte;
 	size_t block_size = ARM_LPAE_BLOCK_SIZE(lvl, data);
@@ -376,7 +376,7 @@ static int __arm_lpae_map(struct arm_lpae_io_pgtable *data, unsigned long iova,
 	/* Grab a pointer to the next level */
 	pte = READ_ONCE(*ptep);
 	if (!pte) {
-		cptep = __arm_lpae_alloc_pages(tblsz, GFP_ATOMIC, cfg);
+		cptep = __arm_lpae_alloc_pages(tblsz, gfp, cfg);
 		if (!cptep)
 			return -ENOMEM;
 
@@ -396,7 +396,7 @@ static int __arm_lpae_map(struct arm_lpae_io_pgtable *data, unsigned long iova,
 	}
 
 	/* Rinse, repeat */
-	return __arm_lpae_map(data, iova, paddr, size, prot, lvl + 1, cptep);
+	return __arm_lpae_map(data, iova, paddr, size, prot, lvl + 1, cptep, gfp);
 }
 
 static arm_lpae_iopte arm_lpae_prot_to_pte(struct arm_lpae_io_pgtable *data,
@@ -461,7 +461,7 @@ static arm_lpae_iopte arm_lpae_prot_to_pte(struct arm_lpae_io_pgtable *data,
 }
 
 static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
-			phys_addr_t paddr, size_t size, int iommu_prot)
+			phys_addr_t paddr, size_t size, int iommu_prot, gfp_t gfp)
 {
 	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
 	struct io_pgtable_cfg *cfg = &data->iop.cfg;
@@ -483,7 +483,7 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
 		return -ERANGE;
 
 	prot = arm_lpae_prot_to_pte(data, iommu_prot);
-	ret = __arm_lpae_map(data, iova, paddr, size, prot, lvl, ptep);
+	ret = __arm_lpae_map(data, iova, paddr, size, prot, lvl, ptep, gfp);
 	/*
 	 * Synchronise all PTE updates for the new mapping before there's
 	 * a chance for anything to kick off a table walk for the new iova.
diff --git a/drivers/iommu/ipmmu-vmsa.c b/drivers/iommu/ipmmu-vmsa.c
index 310cf09..391d7f1 100644
--- a/drivers/iommu/ipmmu-vmsa.c
+++ b/drivers/iommu/ipmmu-vmsa.c
@@ -687,7 +687,7 @@ static int ipmmu_map(struct iommu_domain *io_domain, unsigned long iova,
 	if (!domain)
 		return -ENODEV;
 
-	return domain->iop->map(domain->iop, iova, paddr, size, prot);
+	return domain->iop->map(domain->iop, iova, paddr, size, prot, gfp);
 }
 
 static size_t ipmmu_unmap(struct iommu_domain *io_domain, unsigned long iova,
diff --git a/drivers/iommu/msm_iommu.c b/drivers/iommu/msm_iommu.c
index 94a6df1..f3057f9 100644
--- a/drivers/iommu/msm_iommu.c
+++ b/drivers/iommu/msm_iommu.c
@@ -511,7 +511,7 @@ static int msm_iommu_map(struct iommu_domain *domain, unsigned long iova,
 	int ret;
 
 	spin_lock_irqsave(&priv->pgtlock, flags);
-	ret = priv->iop->map(priv->iop, iova, pa, len, prot);
+	ret = priv->iop->map(priv->iop, iova, pa, len, prot, GFP_ATOMIC);
 	spin_unlock_irqrestore(&priv->pgtlock, flags);
 
 	return ret;
diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 5f4d6df..1593801 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -397,7 +397,7 @@ static int mtk_iommu_map(struct iommu_domain *domain, unsigned long iova,
 		paddr |= BIT_ULL(32);
 
 	/* Synchronize with the tlb_lock */
-	return dom->iop->map(dom->iop, iova, paddr, size, prot);
+	return dom->iop->map(dom->iop, iova, paddr, size, prot, gfp);
 }
 
 static size_t mtk_iommu_unmap(struct iommu_domain *domain,
diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
index 5b3b270..2c4c5d7 100644
--- a/drivers/iommu/qcom_iommu.c
+++ b/drivers/iommu/qcom_iommu.c
@@ -441,7 +441,7 @@ static int qcom_iommu_map(struct iommu_domain *domain, unsigned long iova,
 		return -ENODEV;
 
 	spin_lock_irqsave(&qcom_domain->pgtbl_lock, flags);
-	ret = ops->map(ops, iova, paddr, size, prot);
+	ret = ops->map(ops, iova, paddr, size, prot, GFP_ATOMIC);
 	spin_unlock_irqrestore(&qcom_domain->pgtbl_lock, flags);
 	return ret;
 }
diff --git a/include/linux/io-pgtable.h b/include/linux/io-pgtable.h
index 53d53c6..23285ba 100644
--- a/include/linux/io-pgtable.h
+++ b/include/linux/io-pgtable.h
@@ -155,7 +155,7 @@ struct io_pgtable_cfg {
  */
 struct io_pgtable_ops {
 	int (*map)(struct io_pgtable_ops *ops, unsigned long iova,
-		   phys_addr_t paddr, size_t size, int prot);
+		   phys_addr_t paddr, size_t size, int prot, gfp_t gfp);
 	size_t (*unmap)(struct io_pgtable_ops *ops, unsigned long iova,
 			size_t size, struct iommu_iotlb_gather *gather);
 	phys_addr_t (*iova_to_phys)(struct io_pgtable_ops *ops,
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
