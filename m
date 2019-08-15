Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D0C8F398
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0AR6Oar1IBz23Wy8urO4FGI1KNRovp58IbE3gklfMF4=; b=i0NGLYbr+YPUxL
	HiXhGFFDq8Rm/mo2E+9nadZ/RF8bG5eJEzjSZ17TGxtcrNbYSpBZqLxo+dedygC601/zsK58LMOwr
	WoqBlHcAc0ntaCMW1+YWQkeGtRwIYcm2GDrhL+mkvpoSFN3H+Ms3KnlB9RKPpIBf3+B/WlwGK72EY
	x3NDfgEFvkQLWaFTcYUfp84ck72Ih7Sq9jZWXWCR6cMdodbwPl2WUdCTruBs66P2I/AeWS/uxFu9r
	eLcolhxAewa56A3iYoVZwHrEZg/6uaLHrWDTVRXpngMOb2sENvQIYMuI5Fli4Qe+exI69yxFNBpb9
	FPLoiVcbtUFDNgLe8GZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKdK-0004nf-KQ; Thu, 15 Aug 2019 18:37:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKd4-0004mG-VW
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:37:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D064344;
 Thu, 15 Aug 2019 11:37:42 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EC3403F694;
 Thu, 15 Aug 2019 11:37:40 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 00/17] Arm SMMU refactoring
Date: Thu, 15 Aug 2019 19:37:20 +0100
Message-Id: <cover.1565892337.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113743_105981_478DDF98 
X-CRM114-Status: GOOD (  21.97  )
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
Cc: robdclark@gmail.com, joro@8bytes.org, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, vivek.gautam@codeaurora.org,
 jcrouse@codeaurora.org, gregory.clement@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

v1 for context: https://patchwork.kernel.org/cover/11087347/

Here's a quick v2 attempting to address all the minor comments; I've
tweaked a whole bunch of names, added some verbosity in macros and
comments for clarity, and rejigged arm_smmu_impl_init() for a bit more
structure. The (new) patches #1 and #2 are up front as conceptual fixes,
although they're not actually critical - it turns out to be more of an
embarrassment than a real problem in practice.

For ease of reference, the overall diff against v1 is attached below.

Robin.


Robin Murphy (17):
  iommu/arm-smmu: Mask TLBI address correctly
  iommu/qcom: Mask TLBI addresses correctly
  iommu/arm-smmu: Convert GR0 registers to bitfields
  iommu/arm-smmu: Convert GR1 registers to bitfields
  iommu/arm-smmu: Convert context bank registers to bitfields
  iommu/arm-smmu: Rework cb_base handling
  iommu/arm-smmu: Split arm_smmu_tlb_inv_range_nosync()
  iommu/arm-smmu: Get rid of weird "atomic" write
  iommu/arm-smmu: Abstract GR1 accesses
  iommu/arm-smmu: Abstract context bank accesses
  iommu/arm-smmu: Abstract GR0 accesses
  iommu/arm-smmu: Rename arm-smmu-regs.h
  iommu/arm-smmu: Add implementation infrastructure
  iommu/arm-smmu: Move Secure access quirk to implementation
  iommu/arm-smmu: Add configuration implementation hook
  iommu/arm-smmu: Add reset implementation hook
  iommu/arm-smmu: Add context init implementation hook

 MAINTAINERS                   |   3 +-
 drivers/iommu/Makefile        |   2 +-
 drivers/iommu/arm-smmu-impl.c | 174 +++++++++++
 drivers/iommu/arm-smmu-regs.h | 210 -------------
 drivers/iommu/arm-smmu.c      | 573 +++++++++++-----------------------
 drivers/iommu/arm-smmu.h      | 394 +++++++++++++++++++++++
 drivers/iommu/qcom_iommu.c    |  17 +-
 7 files changed, 764 insertions(+), 609 deletions(-)
 create mode 100644 drivers/iommu/arm-smmu-impl.c
 delete mode 100644 drivers/iommu/arm-smmu-regs.h
 create mode 100644 drivers/iommu/arm-smmu.h

----->8-----
diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
index 3c731e087854..e22e9004f449 100644
--- a/drivers/iommu/arm-smmu-impl.c
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -28,7 +28,7 @@ static int arm_smmu_gr0_ns(int offset)
 static u32 arm_smmu_read_ns(struct arm_smmu_device *smmu, int page,
 			    int offset)
 {
-	if (page == 0)
+	if (page == ARM_SMMU_GR0)
 		offset = arm_smmu_gr0_ns(offset);
 	return readl_relaxed(arm_smmu_page(smmu, page) + offset);
 }
@@ -36,7 +36,7 @@ static u32 arm_smmu_read_ns(struct arm_smmu_device *smmu, int page,
 static void arm_smmu_write_ns(struct arm_smmu_device *smmu, int page,
 			      int offset, u32 val)
 {
-	if (page == 0)
+	if (page == ARM_SMMU_GR0)
 		offset = arm_smmu_gr0_ns(offset);
 	writel_relaxed(val, arm_smmu_page(smmu, page) + offset);
 }
@@ -52,18 +52,17 @@ struct cavium_smmu {
 	struct arm_smmu_device smmu;
 	u32 id_base;
 };
-#define to_csmmu(s)	container_of(s, struct cavium_smmu, smmu)
 
 static int cavium_cfg_probe(struct arm_smmu_device *smmu)
 {
 	static atomic_t context_count = ATOMIC_INIT(0);
+	struct cavium_smmu *cs = container_of(smmu, struct cavium_smmu, smmu);
 	/*
 	 * Cavium CN88xx erratum #27704.
 	 * Ensure ASID and VMID allocation is unique across all SMMUs in
 	 * the system.
 	 */
-	to_csmmu(smmu)->id_base = atomic_fetch_add(smmu->num_context_banks,
-						   &context_count);
+	cs->id_base = atomic_fetch_add(smmu->num_context_banks, &context_count);
 	dev_notice(smmu->dev, "\tenabling workaround for Cavium erratum 27704\n");
 
 	return 0;
@@ -71,12 +70,13 @@ static int cavium_cfg_probe(struct arm_smmu_device *smmu)
 
 int cavium_init_context(struct arm_smmu_domain *smmu_domain)
 {
-	u32 id_base = to_csmmu(smmu_domain->smmu)->id_base;
+	struct cavium_smmu *cs = container_of(smmu_domain->smmu,
+					      struct cavium_smmu, smmu);
 
 	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S2)
-		smmu_domain->cfg.vmid += id_base;
+		smmu_domain->cfg.vmid += cs->id_base;
 	else
-		smmu_domain->cfg.asid += id_base;
+		smmu_domain->cfg.asid += cs->id_base;
 
 	return 0;
 }
@@ -88,18 +88,18 @@ const struct arm_smmu_impl cavium_impl = {
 
 struct arm_smmu_device *cavium_smmu_impl_init(struct arm_smmu_device *smmu)
 {
-	struct cavium_smmu *csmmu;
+	struct cavium_smmu *cs;
 
-	csmmu = devm_kzalloc(smmu->dev, sizeof(*csmmu), GFP_KERNEL);
-	if (!csmmu)
+	cs = devm_kzalloc(smmu->dev, sizeof(*cs), GFP_KERNEL);
+	if (!cs)
 		return ERR_PTR(-ENOMEM);
 
-	csmmu->smmu = *smmu;
-	csmmu->smmu.impl = &cavium_impl;
+	cs->smmu = *smmu;
+	cs->smmu.impl = &cavium_impl;
 
 	devm_kfree(smmu->dev, smmu);
 
-	return &csmmu->smmu;
+	return &cs->smmu;
 }
 
 
@@ -150,16 +150,25 @@ const struct arm_smmu_impl arm_mmu500_impl = {
 
 struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 {
-	/* The current quirks happen to be mutually-exclusive */
+	/*
+	 * We will inevitably have to combine model-specific implementation
+	 * quirks with platform-specific integration quirks, but everything
+	 * we currently support happens to work out as straightforward
+	 * mutually-exclusive assignments.
+	 */
+	switch (smmu->model) {
+	case ARM_MMU500:
+		smmu->impl = &arm_mmu500_impl;
+		break;
+	case CAVIUM_SMMUV2:
+		return cavium_smmu_impl_init(smmu);
+	default:
+		break;
+	}
+
 	if (of_property_read_bool(smmu->dev->of_node,
 				  "calxeda,smmu-secure-config-access"))
 		smmu->impl = &calxeda_impl;
 
-	if (smmu->model == CAVIUM_SMMUV2)
-		return cavium_smmu_impl_init(smmu);
-
-	if (smmu->model == ARM_MMU500)
-		smmu->impl = &arm_mmu500_impl;
-
 	return smmu;
 }
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 251089d6428d..b8628e2ab579 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -264,7 +264,7 @@ static void arm_smmu_tlb_sync_global(struct arm_smmu_device *smmu)
 	unsigned long flags;
 
 	spin_lock_irqsave(&smmu->global_sync_lock, flags);
-	__arm_smmu_tlb_sync(smmu, 0, ARM_SMMU_GR0_sTLBGSYNC,
+	__arm_smmu_tlb_sync(smmu, ARM_SMMU_GR0, ARM_SMMU_GR0_sTLBGSYNC,
 			    ARM_SMMU_GR0_sTLBGSTATUS);
 	spin_unlock_irqrestore(&smmu->global_sync_lock, flags);
 }
@@ -276,7 +276,7 @@ static void arm_smmu_tlb_sync_context(void *cookie)
 	unsigned long flags;
 
 	spin_lock_irqsave(&smmu_domain->cb_lock, flags);
-	__arm_smmu_tlb_sync(smmu, smmu->numpage + smmu_domain->cfg.cbndx,
+	__arm_smmu_tlb_sync(smmu, ARM_SMMU_CB(smmu, smmu_domain->cfg.cbndx),
 			    ARM_SMMU_CB_TLBSYNC, ARM_SMMU_CB_TLBSTATUS);
 	spin_unlock_irqrestore(&smmu_domain->cb_lock, flags);
 }
@@ -326,7 +326,7 @@ static void arm_smmu_tlb_inv_range_s1(unsigned long iova, size_t size,
 	reg = leaf ? ARM_SMMU_CB_S1_TLBIVAL : ARM_SMMU_CB_S1_TLBIVA;
 
 	if (cfg->fmt != ARM_SMMU_CTX_FMT_AARCH64) {
-		iova &= ~12UL;
+		iova = (iova >> 12) << 12;
 		iova |= cfg->asid;
 		do {
 			arm_smmu_cb_write(smmu, idx, reg, iova);
@@ -1197,7 +1197,7 @@ static phys_addr_t arm_smmu_iova_to_phys_hard(struct iommu_domain *domain,
 	else
 		arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_ATS1PR, va);
 
-	reg = arm_smmu_page(smmu, smmu->numpage + idx) + ARM_SMMU_CB_ATSR;
+	reg = arm_smmu_page(smmu, ARM_SMMU_CB(smmu, idx)) + ARM_SMMU_CB_ATSR;
 	if (readl_poll_timeout_atomic(reg, tmp, !(tmp & ATSR_ACTIVE), 5, 50)) {
 		spin_unlock_irqrestore(&smmu_domain->cb_lock, flags);
 		dev_err(dev,
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index cf367c3b1bee..611ed742e56f 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -366,20 +366,28 @@ static inline void arm_smmu_writeq(struct arm_smmu_device *smmu, int page,
 		writeq_relaxed(val, arm_smmu_page(smmu, page) + offset);
 }
 
-#define arm_smmu_gr0_read(s, r)		arm_smmu_readl((s), 0, (r))
-#define arm_smmu_gr0_write(s, r, v)	arm_smmu_writel((s), 0, (r), (v))
+#define ARM_SMMU_GR0		0
+#define ARM_SMMU_GR1		1
+#define ARM_SMMU_CB(s, n)	((s)->numpage + (n))
 
-#define arm_smmu_gr1_read(s, r)		arm_smmu_readl((s), 1, (r))
-#define arm_smmu_gr1_write(s, r, v)	arm_smmu_writel((s), 1, (r), (v))
+#define arm_smmu_gr0_read(s, o)		\
+	arm_smmu_readl((s), ARM_SMMU_GR0, (o))
+#define arm_smmu_gr0_write(s, o, v)	\
+	arm_smmu_writel((s), ARM_SMMU_GR0, (o), (v))
 
-#define arm_smmu_cb_read(s, n, r)				\
-	arm_smmu_readl((s), (s)->numpage + (n), (r))
-#define arm_smmu_cb_write(s, n, r, v)				\
-	arm_smmu_writel((s), (s)->numpage + (n), (r), (v))
-#define arm_smmu_cb_readq(s, n, r)				\
-	arm_smmu_readq((s), (s)->numpage + (n), (r))
-#define arm_smmu_cb_writeq(s, n, r, v)				\
-	arm_smmu_writeq((s), (s)->numpage + (n), (r), (v))
+#define arm_smmu_gr1_read(s, o)		\
+	arm_smmu_readl((s), ARM_SMMU_GR1, (o))
+#define arm_smmu_gr1_write(s, o, v)	\
+	arm_smmu_writel((s), ARM_SMMU_GR1, (o), (v))
+
+#define arm_smmu_cb_read(s, n, o)	\
+	arm_smmu_readl((s), ARM_SMMU_CB((s), (n)), (o))
+#define arm_smmu_cb_write(s, n, o, v)	\
+	arm_smmu_writel((s), ARM_SMMU_CB((s), (n)), (o), (v))
+#define arm_smmu_cb_readq(s, n, o)	\
+	arm_smmu_readq((s), ARM_SMMU_CB((s), (n)), (o))
+#define arm_smmu_cb_writeq(s, n, o, v)	\
+	arm_smmu_writeq((s), ARM_SMMU_CB((s), (n)), (o), (v))
 
 struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu);
 
diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
index dadc707573a2..a2062d13584f 100644
--- a/drivers/iommu/qcom_iommu.c
+++ b/drivers/iommu/qcom_iommu.c
@@ -156,7 +156,7 @@ static void qcom_iommu_tlb_inv_range_nosync(unsigned long iova, size_t size,
 		struct qcom_iommu_ctx *ctx = to_ctx(fwspec, fwspec->ids[i]);
 		size_t s = size;
 
-		iova &= ~12UL;
+		iova = (iova >> 12) << 12;
 		iova |= ctx->asid;
 		do {
 			iommu_writel(ctx, reg, iova);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
