Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B9E8F3B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:40:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nQkXL2QkTDvKGVXu8oAtmyceh584hfo4BjYlaaIEfQI=; b=AAYreCCWkrRwEs
	79+iLRCcE5B5qJAGk9q9WS+ZZPuq1uRR8HEmRl6b8juB9ih5l6CDisOhAfEdHzihEGuBMvtRLlZi3
	6I9PzWFELXp69yiP06qJsTDBh3poEeWdH68/kPZR0goVTHpZSoOpx34Eq79ShdNDmDg3MOGZwUu5H
	c+bH4vY59cQQZ4Y697GHBhv+jYuc+HkcDdBtwiKLwOPNohZrMKGGg3+g7FUERWcoRnNfqAt9YZ3hL
	itTPQel/TLjTxcoh6mqLOqEQuxwlZfwRFuK/fGSQG8oacdTNoOuv96znOsDlXWeCfSAwBB+Y6O+yR
	S1fTydU5WxyG9FH5bA7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKg8-0000BP-0i; Thu, 15 Aug 2019 18:40:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKdL-0004nO-LT
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:38:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 820A7360;
 Thu, 15 Aug 2019 11:37:59 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2EE0A3F694;
 Thu, 15 Aug 2019 11:37:58 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 11/17] iommu/arm-smmu: Abstract GR0 accesses
Date: Thu, 15 Aug 2019 19:37:31 +0100
Message-Id: <ba9c62470f1b1aedc2253ccc0d25ffc63e9fa77a.1565892337.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565892337.git.robin.murphy@arm.com>
References: <cover.1565892337.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113759_990348_0B4991A3 
X-CRM114-Status: GOOD (  19.86  )
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

Clean up the remaining accesses to GR0 registers, so that everything is
now neatly abstracted. This folds up the Non-Secure alias quirk as the
first step towards moving it out of the way entirely. Although GR0 does
technically contain some 64-bit registers (sGFAR and the weird SMMUv2
HYPC and MONC stuff), they're not ones we have any need to access.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c | 106 +++++++++++++++++++++------------------
 1 file changed, 58 insertions(+), 48 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index e72554f334ee..e9fd9117109e 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -69,19 +69,6 @@
 /* Maximum number of context banks per SMMU */
 #define ARM_SMMU_MAX_CBS		128
 
-/* SMMU global address space */
-#define ARM_SMMU_GR0(smmu)		((smmu)->base)
-
-/*
- * SMMU global address space with conditional offset to access secure
- * aliases of non-secure registers (e.g. nsCR0: 0x400, nsGFSR: 0x448,
- * nsGFSYNR0: 0x450)
- */
-#define ARM_SMMU_GR0_NS(smmu)						\
-	((smmu)->base +							\
-		((smmu->options & ARM_SMMU_OPT_SECURE_CFG_ACCESS)	\
-			? 0x400 : 0))
-
 #define MSI_IOVA_BASE			0x8000000
 #define MSI_IOVA_LENGTH			0x100000
 
@@ -246,6 +233,21 @@ struct arm_smmu_domain {
 	struct iommu_domain		domain;
 };
 
+static int arm_smmu_gr0_ns(int offset)
+{
+	switch(offset) {
+	case ARM_SMMU_GR0_sCR0:
+	case ARM_SMMU_GR0_sACR:
+	case ARM_SMMU_GR0_sGFSR:
+	case ARM_SMMU_GR0_sGFSYNR0:
+	case ARM_SMMU_GR0_sGFSYNR1:
+	case ARM_SMMU_GR0_sGFSYNR2:
+		return offset + 0x400;
+	default:
+		return offset;
+	}
+}
+
 static void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
 {
 	return smmu->base + (n << smmu->pgshift);
@@ -253,12 +255,18 @@ static void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
 
 static u32 arm_smmu_readl(struct arm_smmu_device *smmu, int page, int offset)
 {
+	if ((smmu->options & ARM_SMMU_OPT_SECURE_CFG_ACCESS) && page == 0)
+		offset = arm_smmu_gr0_ns(offset);
+
 	return readl_relaxed(arm_smmu_page(smmu, page) + offset);
 }
 
 static void arm_smmu_writel(struct arm_smmu_device *smmu, int page, int offset,
 			    u32 val)
 {
+	if ((smmu->options & ARM_SMMU_OPT_SECURE_CFG_ACCESS) && page == 0)
+		offset = arm_smmu_gr0_ns(offset);
+
 	writel_relaxed(val, arm_smmu_page(smmu, page) + offset);
 }
 
@@ -273,9 +281,15 @@ static void arm_smmu_writeq(struct arm_smmu_device *smmu, int page, int offset,
 	writeq_relaxed(val, arm_smmu_page(smmu, page) + offset);
 }
 
+#define ARM_SMMU_GR0		0
 #define ARM_SMMU_GR1		1
 #define ARM_SMMU_CB(s, n)	((s)->numpage + (n))
 
+#define arm_smmu_gr0_read(s, o)		\
+	arm_smmu_readl((s), ARM_SMMU_GR0, (o))
+#define arm_smmu_gr0_write(s, o, v)	\
+	arm_smmu_writel((s), ARM_SMMU_GR0, (o), (v))
+
 #define arm_smmu_gr1_read(s, o)		\
 	arm_smmu_readl((s), ARM_SMMU_GR1, (o))
 #define arm_smmu_gr1_write(s, o, v)	\
@@ -470,7 +484,7 @@ static void arm_smmu_tlb_sync_global(struct arm_smmu_device *smmu)
 	unsigned long flags;
 
 	spin_lock_irqsave(&smmu->global_sync_lock, flags);
-	__arm_smmu_tlb_sync(smmu, 0, ARM_SMMU_GR0_sTLBGSYNC,
+	__arm_smmu_tlb_sync(smmu, ARM_SMMU_GR0, ARM_SMMU_GR0_sTLBGSYNC,
 			    ARM_SMMU_GR0_sTLBGSTATUS);
 	spin_unlock_irqrestore(&smmu->global_sync_lock, flags);
 }
@@ -511,10 +525,10 @@ static void arm_smmu_tlb_inv_context_s2(void *cookie)
 {
 	struct arm_smmu_domain *smmu_domain = cookie;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
-	void __iomem *base = ARM_SMMU_GR0(smmu);
 
-	/* NOTE: see above */
-	writel(smmu_domain->cfg.vmid, base + ARM_SMMU_GR0_TLBIVMID);
+	/* See above */
+	wmb();
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_TLBIVMID, smmu_domain->cfg.vmid);
 	arm_smmu_tlb_sync_global(smmu);
 }
 
@@ -579,12 +593,12 @@ static void arm_smmu_tlb_inv_vmid_nosync(unsigned long iova, size_t size,
 					 size_t granule, bool leaf, void *cookie)
 {
 	struct arm_smmu_domain *smmu_domain = cookie;
-	void __iomem *base = ARM_SMMU_GR0(smmu_domain->smmu);
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
 
-	if (smmu_domain->smmu->features & ARM_SMMU_FEAT_COHERENT_WALK)
+	if (smmu->features & ARM_SMMU_FEAT_COHERENT_WALK)
 		wmb();
 
-	writel_relaxed(smmu_domain->cfg.vmid, base + ARM_SMMU_GR0_TLBIVMID);
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_TLBIVMID, smmu_domain->cfg.vmid);
 }
 
 static const struct iommu_gather_ops arm_smmu_s1_tlb_ops = {
@@ -634,12 +648,11 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
 {
 	u32 gfsr, gfsynr0, gfsynr1, gfsynr2;
 	struct arm_smmu_device *smmu = dev;
-	void __iomem *gr0_base = ARM_SMMU_GR0_NS(smmu);
 
-	gfsr = readl_relaxed(gr0_base + ARM_SMMU_GR0_sGFSR);
-	gfsynr0 = readl_relaxed(gr0_base + ARM_SMMU_GR0_sGFSYNR0);
-	gfsynr1 = readl_relaxed(gr0_base + ARM_SMMU_GR0_sGFSYNR1);
-	gfsynr2 = readl_relaxed(gr0_base + ARM_SMMU_GR0_sGFSYNR2);
+	gfsr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sGFSR);
+	gfsynr0 = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sGFSYNR0);
+	gfsynr1 = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sGFSYNR1);
+	gfsynr2 = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sGFSYNR2);
 
 	if (!gfsr)
 		return IRQ_NONE;
@@ -650,7 +663,7 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
 		"\tGFSR 0x%08x, GFSYNR0 0x%08x, GFSYNR1 0x%08x, GFSYNR2 0x%08x\n",
 		gfsr, gfsynr0, gfsynr1, gfsynr2);
 
-	writel(gfsr, gr0_base + ARM_SMMU_GR0_sGFSR);
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sGFSR, gfsr);
 	return IRQ_HANDLED;
 }
 
@@ -1056,7 +1069,7 @@ static void arm_smmu_write_smr(struct arm_smmu_device *smmu, int idx)
 
 	if (!(smmu->features & ARM_SMMU_FEAT_EXIDS) && smr->valid)
 		reg |= SMR_VALID;
-	writel_relaxed(reg, ARM_SMMU_GR0(smmu) + ARM_SMMU_GR0_SMR(idx));
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(idx), reg);
 }
 
 static void arm_smmu_write_s2cr(struct arm_smmu_device *smmu, int idx)
@@ -1069,7 +1082,7 @@ static void arm_smmu_write_s2cr(struct arm_smmu_device *smmu, int idx)
 	if (smmu->features & ARM_SMMU_FEAT_EXIDS && smmu->smrs &&
 	    smmu->smrs[idx].valid)
 		reg |= S2CR_EXIDVALID;
-	writel_relaxed(reg, ARM_SMMU_GR0(smmu) + ARM_SMMU_GR0_S2CR(idx));
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_S2CR(idx), reg);
 }
 
 static void arm_smmu_write_sme(struct arm_smmu_device *smmu, int idx)
@@ -1085,7 +1098,6 @@ static void arm_smmu_write_sme(struct arm_smmu_device *smmu, int idx)
  */
 static void arm_smmu_test_smr_masks(struct arm_smmu_device *smmu)
 {
-	void __iomem *gr0_base = ARM_SMMU_GR0(smmu);
 	u32 smr;
 
 	if (!smmu->smrs)
@@ -1097,13 +1109,13 @@ static void arm_smmu_test_smr_masks(struct arm_smmu_device *smmu)
 	 * masters later if they try to claim IDs outside these masks.
 	 */
 	smr = FIELD_PREP(SMR_ID, smmu->streamid_mask);
-	writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(0));
-	smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(0));
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(0), smr);
+	smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(0));
 	smmu->streamid_mask = FIELD_GET(SMR_ID, smr);
 
 	smr = FIELD_PREP(SMR_MASK, smmu->streamid_mask);
-	writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(0));
-	smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(0));
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(0), smr);
+	smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(0));
 	smmu->smr_mask_mask = FIELD_GET(SMR_MASK, smr);
 }
 
@@ -1736,13 +1748,12 @@ static struct iommu_ops arm_smmu_ops = {
 
 static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 {
-	void __iomem *gr0_base = ARM_SMMU_GR0(smmu);
 	int i;
 	u32 reg, major;
 
 	/* clear global FSR */
-	reg = readl_relaxed(ARM_SMMU_GR0_NS(smmu) + ARM_SMMU_GR0_sGFSR);
-	writel(reg, ARM_SMMU_GR0_NS(smmu) + ARM_SMMU_GR0_sGFSR);
+	reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sGFSR);
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sGFSR, reg);
 
 	/*
 	 * Reset stream mapping groups: Initial values mark all SMRn as
@@ -1757,9 +1768,9 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 		 * clear CACHE_LOCK bit of ACR first. And, CACHE_LOCK
 		 * bit is only present in MMU-500r2 onwards.
 		 */
-		reg = readl_relaxed(gr0_base + ARM_SMMU_GR0_ID7);
+		reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_ID7);
 		major = FIELD_GET(ID7_MAJOR, reg);
-		reg = readl_relaxed(gr0_base + ARM_SMMU_GR0_sACR);
+		reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sACR);
 		if (major >= 2)
 			reg &= ~ARM_MMU500_ACR_CACHE_LOCK;
 		/*
@@ -1767,7 +1778,7 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 		 * TLB entries for reduced latency.
 		 */
 		reg |= ARM_MMU500_ACR_SMTNMB_TLBEN | ARM_MMU500_ACR_S2CRB_TLBEN;
-		writel_relaxed(reg, gr0_base + ARM_SMMU_GR0_sACR);
+		arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sACR, reg);
 	}
 
 	/* Make sure all context banks are disabled and clear CB_FSR  */
@@ -1786,10 +1797,10 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 	}
 
 	/* Invalidate the TLB, just in case */
-	writel_relaxed(QCOM_DUMMY_VAL, gr0_base + ARM_SMMU_GR0_TLBIALLH);
-	writel_relaxed(QCOM_DUMMY_VAL, gr0_base + ARM_SMMU_GR0_TLBIALLNSNH);
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_TLBIALLH, QCOM_DUMMY_VAL);
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_TLBIALLNSNH, QCOM_DUMMY_VAL);
 
-	reg = readl_relaxed(ARM_SMMU_GR0_NS(smmu) + ARM_SMMU_GR0_sCR0);
+	reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sCR0);
 
 	/* Enable fault reporting */
 	reg |= (sCR0_GFRE | sCR0_GFIE | sCR0_GCFGFRE | sCR0_GCFGFIE);
@@ -1818,7 +1829,7 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 
 	/* Push the button */
 	arm_smmu_tlb_sync_global(smmu);
-	writel(reg, ARM_SMMU_GR0_NS(smmu) + ARM_SMMU_GR0_sCR0);
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sCR0, reg);
 }
 
 static int arm_smmu_id_size_to_bits(int size)
@@ -1843,7 +1854,6 @@ static int arm_smmu_id_size_to_bits(int size)
 static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 {
 	unsigned int size;
-	void __iomem *gr0_base = ARM_SMMU_GR0(smmu);
 	u32 id;
 	bool cttw_reg, cttw_fw = smmu->features & ARM_SMMU_FEAT_COHERENT_WALK;
 	int i;
@@ -1853,7 +1863,7 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 			smmu->version == ARM_SMMU_V2 ? 2 : 1);
 
 	/* ID0 */
-	id = readl_relaxed(gr0_base + ARM_SMMU_GR0_ID0);
+	id = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_ID0);
 
 	/* Restrict available stages based on module parameter */
 	if (force_stage == 1)
@@ -1947,7 +1957,7 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 	}
 
 	/* ID1 */
-	id = readl_relaxed(gr0_base + ARM_SMMU_GR0_ID1);
+	id = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_ID1);
 	smmu->pgshift = (id & ID1_PAGESIZE) ? 16 : 12;
 
 	/* Check for size mismatch of SMMU address space from mapped region */
@@ -1985,7 +1995,7 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 		return -ENOMEM;
 
 	/* ID2 */
-	id = readl_relaxed(gr0_base + ARM_SMMU_GR0_ID2);
+	id = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_ID2);
 	size = arm_smmu_id_size_to_bits(FIELD_GET(ID2_IAS, id));
 	smmu->ipa_size = size;
 
@@ -2372,7 +2382,7 @@ static void arm_smmu_device_shutdown(struct platform_device *pdev)
 
 	arm_smmu_rpm_get(smmu);
 	/* Turn the thing off */
-	writel(sCR0_CLIENTPD, ARM_SMMU_GR0_NS(smmu) + ARM_SMMU_GR0_sCR0);
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sCR0, sCR0_CLIENTPD);
 	arm_smmu_rpm_put(smmu);
 
 	if (pm_runtime_enabled(smmu->dev))
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
