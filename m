Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 570D31A870B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qk53ItNL9znbFeKCbLykSrbWl0ZVvpAV5OjT2HgwUXU=; b=kshoGQScRo/kXl
	JcV2grtvnox9NbJctDSstZqYuiDlWzSB7PyuVrYGhw3T5wJLs2ni/c4YH3eU715MPsT1cXVBUkYk4
	8HEmRFyr7QuZXfiOypBzyo+Blx3nMGX1Cj2Hrgv4d4ZSXbXMiE5QqyBVVaHsa5rIPuredzMHmDmXT
	wZ/YnOzYvHhS87aD+gvTN+6nO1xW4zjb955wWG8w0dImcTjg6URscAt+6KtyDplWDrsGAY1rvA9Fe
	imAL1fMiM16wPwkIiq7OVlMaPLI6Rbh3aW9E+1bTfNWcbaJvrgXn2xKViNPb89m+JJCz9aZDXpAqU
	OOLpVrqTz/1FcpyHIdvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP4N-0000wg-UY; Tue, 14 Apr 2020 17:09:55 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOzM-0002PZ-Ia
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:04:49 +0000
Received: by mail-wr1-x443.google.com with SMTP id a25so15269407wrd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o3CxBoBUQYvmGdKZIOcmkRHgIzTXyZyZ4t2wW/1SA7g=;
 b=tSYqciqlXtpjJ7vaQSTxjL5MZonaq8ohjbCSix8+DjN0AmayPZAIpS7LY/zTiW9lAV
 POiAPMbwtCGrqliYceZC5WVj5SXlQqBR90xihQd2WhNlVOzwxkZumgzVIHC8uJ1+X9Ld
 NY+/1Ctz+wLSZedF+dev8JUV1ocwF1jxxUy+lZv/DbEkXH3kKqGVr6BD+Eki/pfZ/emV
 B9dC1Qd8PVYzfTTA5YYtlwx2mJZSYHYzkmcH1Br3A9STc52frl2YwBhfk2usMwVWSQHq
 CdylWdrs5XXvI8yseewVv4rOEzHYZhFARjPFhBzziAmN5msb5YOwMdQkgDktUijog+71
 /KaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o3CxBoBUQYvmGdKZIOcmkRHgIzTXyZyZ4t2wW/1SA7g=;
 b=ERyzAmiIg3nlehb6S8jgDLHvg0caqox5RGMR14+gTKFL3zrRLdfFnKND7+CjvdiNt7
 sI5ED5T2C1Zfqg6FB2WK/g7g2MeMz+nhnC0lnNS6cGsG+faSmpVqj97awI+i/BOZ1Vn2
 8G9ZmS+I9MsNdzyphD1IaKenHyejnr4c/ko4nZ8zikF8pCqk5ekSh5Dfgzp8YmKvoSHx
 OvwFdRwwO4Js/EipjYwvHUnXxeAslCzbQN9fV7uLtkrMPK2YQS3ewHnNvHC9J/oLYKac
 cA7n6XxkOy80Fav4465kEkcgc4o84vB+nVhotHUMTVqPNAuYeFGDOwLBEzquY0msYDP4
 OjLA==
X-Gm-Message-State: AGi0PuZC49h+QLMruBvH7LoiVbodyHKlS74BVT5LsLoRL3NTJzZR11tT
 5YCv2VsQLLhhmRoKrM1ScUrYfVb4o2pSQw==
X-Google-Smtp-Source: APiQypIIDp3Aj7gJSpVJ/LpltmID+bFQ6t9Z5J6KgWOyiu1YsJcaTx88+obo6kMWqL+PJTWdhscFwQ==
X-Received: by 2002:a5d:610e:: with SMTP id v14mr15760928wrt.159.1586883882233; 
 Tue, 14 Apr 2020 10:04:42 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:41 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 17/25] iommu/arm-smmu-v3: Implement mm operations
Date: Tue, 14 Apr 2020 19:02:45 +0200
Message-Id: <20200414170252.714402-18-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414170252.714402-1-jean-philippe@linaro.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100444_619685_1904197A 
X-CRM114-Status: GOOD (  22.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, catalin.marinas@arm.com, joro@8bytes.org,
 robin.murphy@arm.com, jgg@ziepe.ca, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hook SVA operations to support sharing page tables with the SMMUv3:

* dev_enable/disable/has_feature for device drivers to modify the SVA
  state.
* sva_bind/unbind and sva_get_pasid to bind device and address spaces.
* The mm_attach/detach/clear/invalidate/free callbacks from iommu-sva

The clear() operation has to detach the page tables while DMA may still
be running (because the process died). To avoid any event 0x0a print
(C_BAD_CD) we disable translation and error reporting, without clearing
CD.V. PCIe Translation Requests and Page Requests are silently denied.
The detach() operation always happens whether or not clear() was
invoked, and properly disables the CD.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v4->v5: Add clear() operation
---
 drivers/iommu/Kconfig       |   1 +
 drivers/iommu/arm-smmu-v3.c | 214 +++++++++++++++++++++++++++++++++++-
 2 files changed, 211 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index 411a7ee2ab12d..8118f090a51b3 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -435,6 +435,7 @@ config ARM_SMMU_V3
 	tristate "ARM Ltd. System MMU Version 3 (SMMUv3) Support"
 	depends on ARM64
 	select IOMMU_API
+	select IOMMU_SVA
 	select IOMMU_IO_PGTABLE_LPAE
 	select GENERIC_MSI_IRQ_DOMAIN
 	help
diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index d209d85402a83..6640c2ac2a7c5 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -36,6 +36,7 @@
 #include <linux/amba/bus.h>
 
 #include "io-pgtable-arm.h"
+#include "iommu-sva.h"
 
 /* MMIO registers */
 #define ARM_SMMU_IDR0			0x0
@@ -739,6 +740,13 @@ struct arm_smmu_option_prop {
 static DEFINE_XARRAY_ALLOC1(asid_xa);
 static DEFINE_SPINLOCK(contexts_lock);
 
+/*
+ * When a process dies, DMA is still running but we need to clear the pgd. If we
+ * simply cleared the valid bit from the context descriptor, we'd get event 0x0a
+ * which are not recoverable.
+ */
+static struct arm_smmu_ctx_desc invalid_cd = { 0 };
+
 static struct arm_smmu_option_prop arm_smmu_options[] = {
 	{ ARM_SMMU_OPT_SKIP_PREFETCH, "hisilicon,broken-prefetch-cmd" },
 	{ ARM_SMMU_OPT_PAGE0_REGS_ONLY, "cavium,cn9900-broken-page1-regspace"},
@@ -1649,7 +1657,9 @@ static int __arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 	 * (2) Install a secondary CD, for SID+SSID traffic.
 	 * (3) Update ASID of a CD. Atomically write the first 64 bits of the
 	 *     CD, then invalidate the old entry and mappings.
-	 * (4) Remove a secondary CD.
+	 * (4) Quiesce the context without clearing the valid bit. Disable
+	 *     translation, and ignore any translation fault.
+	 * (5) Remove a secondary CD.
 	 */
 	u64 val;
 	bool cd_live;
@@ -1666,8 +1676,11 @@ static int __arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 	val = le64_to_cpu(cdptr[0]);
 	cd_live = !!(val & CTXDESC_CD_0_V);
 
-	if (!cd) { /* (4) */
+	if (!cd) { /* (5) */
 		val = 0;
+	} else if (cd == &invalid_cd) { /* (4) */
+		val &= ~(CTXDESC_CD_0_S | CTXDESC_CD_0_R);
+		val |= CTXDESC_CD_0_TCR_EPD0;
 	} else if (cd_live) { /* (3) */
 		val &= ~CTXDESC_CD_0_ASID;
 		val |= FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid);
@@ -1884,7 +1897,6 @@ static struct arm_smmu_ctx_desc *arm_smmu_share_asid(u16 asid)
 	return NULL;
 }
 
-__maybe_unused
 static struct arm_smmu_ctx_desc *arm_smmu_alloc_shared_cd(struct mm_struct *mm)
 {
 	u16 asid;
@@ -1978,7 +1990,6 @@ static struct arm_smmu_ctx_desc *arm_smmu_alloc_shared_cd(struct mm_struct *mm)
 	return ERR_PTR(ret);
 }
 
-__maybe_unused
 static void arm_smmu_free_shared_cd(struct arm_smmu_ctx_desc *cd)
 {
 	if (arm_smmu_free_asid(cd)) {
@@ -3008,6 +3019,16 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 	master = dev_iommu_priv_get(dev);
 	smmu = master->smmu;
 
+	/*
+	 * Checking that SVA is disabled ensures that this device isn't bound to
+	 * any mm, and can be safely detached from its old domain. Bonds cannot
+	 * be removed concurrently since we're holding the group mutex.
+	 */
+	if (iommu_sva_enabled(dev)) {
+		dev_err(dev, "cannot attach - SVA enabled\n");
+		return -EBUSY;
+	}
+
 	arm_smmu_detach_dev(master);
 
 	mutex_lock(&smmu_domain->init_mutex);
@@ -3107,6 +3128,99 @@ arm_smmu_iova_to_phys(struct iommu_domain *domain, dma_addr_t iova)
 	return ops->iova_to_phys(ops, iova);
 }
 
+static void arm_smmu_mm_invalidate(struct device *dev, int pasid, void *entry,
+				   unsigned long iova, size_t size)
+{
+	/* TODO: Invalidate ATC */
+}
+
+static int arm_smmu_mm_attach(struct device *dev, int pasid, void *entry,
+			      bool attach_domain)
+{
+	struct arm_smmu_ctx_desc *cd = entry;
+	struct iommu_domain *domain = iommu_get_domain_for_dev(dev);
+	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
+
+	/*
+	 * If another device in the domain has already been attached, the
+	 * context descriptor is already valid.
+	 */
+	if (!attach_domain)
+		return 0;
+
+	return arm_smmu_write_ctx_desc(smmu_domain, pasid, cd);
+}
+
+static void arm_smmu_mm_clear(struct device *dev, int pasid, void *entry)
+{
+	struct arm_smmu_ctx_desc *cd = entry;
+	struct iommu_domain *domain = iommu_get_domain_for_dev(dev);
+	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
+
+	/*
+	 * DMA may still be running. Keep the cd valid but disable
+	 * translation, so that new events will still result in stall.
+	 */
+	arm_smmu_write_ctx_desc(smmu_domain, pasid, &invalid_cd);
+
+	/*
+	 * The ASID allocator won't broadcast the final TLB invalidations
+	 * for this ASID, so we need to do it manually.
+	 */
+	arm_smmu_tlb_inv_asid(smmu_domain->smmu, cd->asid);
+
+	/* TODO: invalidate ATC */
+}
+
+static void arm_smmu_mm_detach(struct device *dev, int pasid, void *entry,
+			       bool detach_domain, bool cleared)
+{
+	struct arm_smmu_ctx_desc *cd = entry;
+	struct iommu_domain *domain = iommu_get_domain_for_dev(dev);
+	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
+
+	if (detach_domain) {
+		arm_smmu_write_ctx_desc(smmu_domain, pasid, NULL);
+
+		if (!cleared)
+			/* See comment in arm_smmu_mm_clear() */
+			arm_smmu_tlb_inv_asid(smmu_domain->smmu, cd->asid);
+	}
+
+	/* TODO: invalidate ATC */
+}
+
+static void *arm_smmu_mm_alloc(struct mm_struct *mm)
+{
+	return arm_smmu_alloc_shared_cd(mm);
+}
+
+static void arm_smmu_mm_free(void *entry)
+{
+	arm_smmu_free_shared_cd(entry);
+}
+
+static struct io_mm_ops arm_smmu_mm_ops = {
+	.alloc		= arm_smmu_mm_alloc,
+	.invalidate	= arm_smmu_mm_invalidate,
+	.attach		= arm_smmu_mm_attach,
+	.clear		= arm_smmu_mm_clear,
+	.detach		= arm_smmu_mm_detach,
+	.free		= arm_smmu_mm_free,
+};
+
+static struct iommu_sva *
+arm_smmu_sva_bind(struct device *dev, struct mm_struct *mm, void *drvdata)
+{
+	struct iommu_domain *domain = iommu_get_domain_for_dev(dev);
+	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
+
+	if (smmu_domain->stage != ARM_SMMU_DOMAIN_S1)
+		return ERR_PTR(-EINVAL);
+
+	return iommu_sva_bind_generic(dev, mm, &arm_smmu_mm_ops, drvdata);
+}
+
 static struct platform_driver arm_smmu_driver;
 
 static
@@ -3225,6 +3339,7 @@ static void arm_smmu_remove_device(struct device *dev)
 
 	master = dev_iommu_priv_get(dev);
 	smmu = master->smmu;
+	WARN_ON(iommu_sva_disable(dev));
 	arm_smmu_detach_dev(master);
 	iommu_group_remove_device(dev);
 	iommu_device_unlink(&smmu->iommu, dev);
@@ -3344,6 +3459,90 @@ static void arm_smmu_get_resv_regions(struct device *dev,
 	iommu_dma_get_resv_regions(dev, head);
 }
 
+static bool arm_smmu_iopf_supported(struct arm_smmu_master *master)
+{
+	return false;
+}
+
+static bool arm_smmu_dev_has_feature(struct device *dev,
+				     enum iommu_dev_features feat)
+{
+	struct arm_smmu_master *master = dev_iommu_priv_get(dev);
+
+	if (!master)
+		return false;
+
+	switch (feat) {
+	case IOMMU_DEV_FEAT_SVA:
+		if (!(master->smmu->features & ARM_SMMU_FEAT_SVA))
+			return false;
+
+		/* SSID and IOPF support are mandatory for the moment */
+		return master->ssid_bits && arm_smmu_iopf_supported(master);
+	default:
+		return false;
+	}
+}
+
+static bool arm_smmu_dev_feature_enabled(struct device *dev,
+					 enum iommu_dev_features feat)
+{
+	struct arm_smmu_master *master = dev_iommu_priv_get(dev);
+
+	if (!master)
+		return false;
+
+	switch (feat) {
+	case IOMMU_DEV_FEAT_SVA:
+		return iommu_sva_enabled(dev);
+	default:
+		return false;
+	}
+}
+
+static int arm_smmu_dev_enable_sva(struct device *dev)
+{
+	struct arm_smmu_master *master = dev_iommu_priv_get(dev);
+	struct iommu_sva_param param = {
+		.min_pasid = 1,
+		.max_pasid = 0xfffffU,
+	};
+
+	param.max_pasid = min(param.max_pasid, (1U << master->ssid_bits) - 1);
+	return iommu_sva_enable(dev, &param);
+}
+
+static int arm_smmu_dev_enable_feature(struct device *dev,
+				       enum iommu_dev_features feat)
+{
+	if (!arm_smmu_dev_has_feature(dev, feat))
+		return -ENODEV;
+
+	if (arm_smmu_dev_feature_enabled(dev, feat))
+		return -EBUSY;
+
+	switch (feat) {
+	case IOMMU_DEV_FEAT_SVA:
+		return arm_smmu_dev_enable_sva(dev);
+	default:
+		return -EINVAL;
+	}
+}
+
+static int arm_smmu_dev_disable_feature(struct device *dev,
+					enum iommu_dev_features feat)
+{
+	if (!arm_smmu_dev_feature_enabled(dev, feat))
+		return -EINVAL;
+
+	switch (feat) {
+	case IOMMU_DEV_FEAT_SVA:
+		return iommu_sva_disable(dev);
+	default:
+		return -EINVAL;
+	}
+}
+
 static struct iommu_ops arm_smmu_ops = {
 	.capable		= arm_smmu_capable,
 	.domain_alloc		= arm_smmu_domain_alloc,
@@ -3362,6 +3561,13 @@ static struct iommu_ops arm_smmu_ops = {
 	.of_xlate		= arm_smmu_of_xlate,
 	.get_resv_regions	= arm_smmu_get_resv_regions,
 	.put_resv_regions	= generic_iommu_put_resv_regions,
+	.dev_has_feat		= arm_smmu_dev_has_feature,
+	.dev_feat_enabled	= arm_smmu_dev_feature_enabled,
+	.dev_enable_feat	= arm_smmu_dev_enable_feature,
+	.dev_disable_feat	= arm_smmu_dev_disable_feature,
+	.sva_bind		= arm_smmu_sva_bind,
+	.sva_unbind		= iommu_sva_unbind_generic,
+	.sva_get_pasid		= iommu_sva_get_pasid_generic,
 	.pgsize_bitmap		= -1UL, /* Restricted during device attach */
 };
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
