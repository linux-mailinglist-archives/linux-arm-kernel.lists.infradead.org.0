Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D252137148
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:31:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pH7zjTb2JpbhV+AQ1j1cS4HnPZTeb92KJADgHiitOgU=; b=baR2vid93bFtOf
	O09MqO+PzL/C9n/Eo6slVqoDEGxwGlAOH38j/Zwt88ODjzmzMuEw1SzRsyvL+ZoY5JCW+2A0Kw71m
	monxSUQuV2yxypzyfC3OglTAdkYqt5HoYYpD/p65vWhh7lSGlD9zH4bce36lPJGtuPvgJ055LSFfE
	PVwtSsrhqwvu+Fsr8JU4sMevpbpdKxEx42/qTf0LgT9C3Yf2zoNLTz7GcbWlAmWaB/4biwNyst70A
	8olQ60OulqfLvvK+wuPS6AqE2rPeDm0/JM2swH1dnkQ4meBxB7Etyg9GK2rk4w/ngzc9cLTdh6PN4
	DlEdYkuWcZYllxKRqFdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwFV-0003vj-KR; Fri, 10 Jan 2020 15:30:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwDj-0001Lb-PC
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:29:13 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1EAD2072E;
 Fri, 10 Jan 2020 15:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578670147;
 bh=wj+D64ukH25TCYf0k8EisNI9yfMzyl9BO5Mwjvk1fLI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BttOyuOU7gVCoRIYVjKaTHSEIPGvf/LheDAEJFwdn4eFb8rnD4Wt+enAv/d61QR4A
 kV7jFk1oYw9cytPg5dY+5KygvelBGDV94QyK5PgY+MaqFcQmrkay7Wq+sz8nFu0XBT
 PWNz4y6jvWeX80S6QA1mREREOZZ/R/F5bRPN8cV0=
From: Will Deacon <will@kernel.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 6/8] iommu/arm-smmu: Rename public #defines under ARM_SMMU_
 namespace
Date: Fri, 10 Jan 2020 15:28:50 +0000
Message-Id: <20200110152852.24259-7-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110152852.24259-1-will@kernel.org>
References: <20200110152852.24259-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_072907_899956_B5F26486 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Will Deacon <will@kernel.org>, Jordan Crouse <jcrouse@codeaurora.org>,
 kernel-team@android.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have arm-smmu.h defining various SMMU constants, ensure that
they are namespaced with the ARM_SMMU_ prefix in order to avoid conflicts
with the CPU, such as the one we're currently bodging around with the
TCR.

Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 drivers/iommu/arm-smmu-impl.c |   2 +-
 drivers/iommu/arm-smmu.c      | 157 ++++++++++++------------
 drivers/iommu/arm-smmu.h      | 217 +++++++++++++++++-----------------
 drivers/iommu/qcom_iommu.c    |  16 +--
 4 files changed, 204 insertions(+), 188 deletions(-)

diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
index b2fe72a8f019..74d97a886e93 100644
--- a/drivers/iommu/arm-smmu-impl.c
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -119,7 +119,7 @@ int arm_mmu500_reset(struct arm_smmu_device *smmu)
 	 * Secure has also cleared SACR.CACHE_LOCK for this to take effect...
 	 */
 	reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_ID7);
-	major = FIELD_GET(ID7_MAJOR, reg);
+	major = FIELD_GET(ARM_SMMU_ID7_MAJOR, reg);
 	reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sACR);
 	if (major >= 2)
 		reg &= ~ARM_MMU500_ACR_CACHE_LOCK;
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index e65eb60812ec..214be09f6ded 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -271,7 +271,7 @@ static void __arm_smmu_tlb_sync(struct arm_smmu_device *smmu, int page,
 	for (delay = 1; delay < TLB_LOOP_TIMEOUT; delay *= 2) {
 		for (spin_cnt = TLB_SPIN_COUNT; spin_cnt > 0; spin_cnt--) {
 			reg = arm_smmu_readl(smmu, page, status);
-			if (!(reg & sTLBGSTATUS_GSACTIVE))
+			if (!(reg & ARM_SMMU_sTLBGSTATUS_GSACTIVE))
 				return;
 			cpu_relax();
 		}
@@ -478,7 +478,7 @@ static irqreturn_t arm_smmu_context_fault(int irq, void *dev)
 	int idx = smmu_domain->cfg.cbndx;
 
 	fsr = arm_smmu_cb_read(smmu, idx, ARM_SMMU_CB_FSR);
-	if (!(fsr & FSR_FAULT))
+	if (!(fsr & ARM_SMMU_FSR_FAULT))
 		return IRQ_NONE;
 
 	fsynr = arm_smmu_cb_read(smmu, idx, ARM_SMMU_CB_FSYNR0);
@@ -510,7 +510,7 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
 
 	if (__ratelimit(&rs)) {
 		if (IS_ENABLED(CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT) &&
-		    (gfsr & sGFSR_USF))
+		    (gfsr & ARM_SMMU_sGFSR_USF))
 			dev_err(smmu->dev,
 				"Blocked unknown Stream ID 0x%hx; boot with \"arm-smmu.disable_bypass=0\" to allow, but this may have security implications\n",
 				(u16)gfsynr1);
@@ -543,9 +543,9 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
 			cb->tcr[0] = arm_smmu_lpae_tcr(pgtbl_cfg);
 			cb->tcr[1] = arm_smmu_lpae_tcr2(pgtbl_cfg);
 			if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64)
-				cb->tcr[1] |= TCR2_AS;
+				cb->tcr[1] |= ARM_SMMU_TCR2_AS;
 			else
-				cb->tcr[0] |= TCR_EAE;
+				cb->tcr[0] |= ARM_SMMU_TCR_EAE;
 		}
 	} else {
 		cb->tcr[0] = pgtbl_cfg->arm_lpae_s2_cfg.vtcr;
@@ -558,8 +558,10 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
 			cb->ttbr[1] = 0;
 		} else {
 			cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
-			cb->ttbr[0] |= FIELD_PREP(TTBRn_ASID, cfg->asid);
-			cb->ttbr[1] = FIELD_PREP(TTBRn_ASID, cfg->asid);
+			cb->ttbr[0] |= FIELD_PREP(ARM_SMMU_TTBRn_ASID,
+						  cfg->asid);
+			cb->ttbr[1] = FIELD_PREP(ARM_SMMU_TTBRn_ASID,
+						 cfg->asid);
 		}
 	} else {
 		cb->ttbr[0] = pgtbl_cfg->arm_lpae_s2_cfg.vttbr;
@@ -595,31 +597,33 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 	/* CBA2R */
 	if (smmu->version > ARM_SMMU_V1) {
 		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64)
-			reg = CBA2R_VA64;
+			reg = ARM_SMMU_CBA2R_VA64;
 		else
 			reg = 0;
 		/* 16-bit VMIDs live in CBA2R */
 		if (smmu->features & ARM_SMMU_FEAT_VMID16)
-			reg |= FIELD_PREP(CBA2R_VMID16, cfg->vmid);
+			reg |= FIELD_PREP(ARM_SMMU_CBA2R_VMID16, cfg->vmid);
 
 		arm_smmu_gr1_write(smmu, ARM_SMMU_GR1_CBA2R(idx), reg);
 	}
 
 	/* CBAR */
-	reg = FIELD_PREP(CBAR_TYPE, cfg->cbar);
+	reg = FIELD_PREP(ARM_SMMU_CBAR_TYPE, cfg->cbar);
 	if (smmu->version < ARM_SMMU_V2)
-		reg |= FIELD_PREP(CBAR_IRPTNDX, cfg->irptndx);
+		reg |= FIELD_PREP(ARM_SMMU_CBAR_IRPTNDX, cfg->irptndx);
 
 	/*
 	 * Use the weakest shareability/memory types, so they are
 	 * overridden by the ttbcr/pte.
 	 */
 	if (stage1) {
-		reg |= FIELD_PREP(CBAR_S1_BPSHCFG, CBAR_S1_BPSHCFG_NSH) |
-			FIELD_PREP(CBAR_S1_MEMATTR, CBAR_S1_MEMATTR_WB);
+		reg |= FIELD_PREP(ARM_SMMU_CBAR_S1_BPSHCFG,
+				  ARM_SMMU_CBAR_S1_BPSHCFG_NSH) |
+		       FIELD_PREP(ARM_SMMU_CBAR_S1_MEMATTR,
+				  ARM_SMMU_CBAR_S1_MEMATTR_WB);
 	} else if (!(smmu->features & ARM_SMMU_FEAT_VMID16)) {
 		/* 8-bit VMIDs live in CBAR */
-		reg |= FIELD_PREP(CBAR_VMID, cfg->vmid);
+		reg |= FIELD_PREP(ARM_SMMU_CBAR_VMID, cfg->vmid);
 	}
 	arm_smmu_gr1_write(smmu, ARM_SMMU_GR1_CBAR(idx), reg);
 
@@ -651,11 +655,12 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 	}
 
 	/* SCTLR */
-	reg = SCTLR_CFIE | SCTLR_CFRE | SCTLR_AFE | SCTLR_TRE | SCTLR_M;
+	reg = ARM_SMMU_SCTLR_CFIE | ARM_SMMU_SCTLR_CFRE | ARM_SMMU_SCTLR_AFE |
+	      ARM_SMMU_SCTLR_TRE | ARM_SMMU_SCTLR_M;
 	if (stage1)
-		reg |= SCTLR_S1_ASIDPNE;
+		reg |= ARM_SMMU_SCTLR_S1_ASIDPNE;
 	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
-		reg |= SCTLR_E;
+		reg |= ARM_SMMU_SCTLR_E;
 
 	arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_SCTLR, reg);
 }
@@ -837,7 +842,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 	if (ret < 0) {
 		dev_err(smmu->dev, "failed to request context IRQ %d (%u)\n",
 			cfg->irptndx, irq);
-		cfg->irptndx = INVALID_IRPTNDX;
+		cfg->irptndx = ARM_SMMU_INVALID_IRPTNDX;
 	}
 
 	mutex_unlock(&smmu_domain->init_mutex);
@@ -875,7 +880,7 @@ static void arm_smmu_destroy_domain_context(struct iommu_domain *domain)
 	smmu->cbs[cfg->cbndx].cfg = NULL;
 	arm_smmu_write_context_bank(smmu, cfg->cbndx);
 
-	if (cfg->irptndx != INVALID_IRPTNDX) {
+	if (cfg->irptndx != ARM_SMMU_INVALID_IRPTNDX) {
 		irq = smmu->irqs[smmu->num_global_irqs + cfg->irptndx];
 		devm_free_irq(smmu->dev, irq, domain);
 	}
@@ -931,23 +936,24 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
 static void arm_smmu_write_smr(struct arm_smmu_device *smmu, int idx)
 {
 	struct arm_smmu_smr *smr = smmu->smrs + idx;
-	u32 reg = FIELD_PREP(SMR_ID, smr->id) | FIELD_PREP(SMR_MASK, smr->mask);
+	u32 reg = FIELD_PREP(ARM_SMMU_SMR_ID, smr->id) |
+		  FIELD_PREP(ARM_SMMU_SMR_MASK, smr->mask);
 
 	if (!(smmu->features & ARM_SMMU_FEAT_EXIDS) && smr->valid)
-		reg |= SMR_VALID;
+		reg |= ARM_SMMU_SMR_VALID;
 	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(idx), reg);
 }
 
 static void arm_smmu_write_s2cr(struct arm_smmu_device *smmu, int idx)
 {
 	struct arm_smmu_s2cr *s2cr = smmu->s2crs + idx;
-	u32 reg = FIELD_PREP(S2CR_TYPE, s2cr->type) |
-		  FIELD_PREP(S2CR_CBNDX, s2cr->cbndx) |
-		  FIELD_PREP(S2CR_PRIVCFG, s2cr->privcfg);
+	u32 reg = FIELD_PREP(ARM_SMMU_S2CR_TYPE, s2cr->type) |
+		  FIELD_PREP(ARM_SMMU_S2CR_CBNDX, s2cr->cbndx) |
+		  FIELD_PREP(ARM_SMMU_S2CR_PRIVCFG, s2cr->privcfg);
 
 	if (smmu->features & ARM_SMMU_FEAT_EXIDS && smmu->smrs &&
 	    smmu->smrs[idx].valid)
-		reg |= S2CR_EXIDVALID;
+		reg |= ARM_SMMU_S2CR_EXIDVALID;
 	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_S2CR(idx), reg);
 }
 
@@ -974,15 +980,15 @@ static void arm_smmu_test_smr_masks(struct arm_smmu_device *smmu)
 	 * bits are set, so check each one separately. We can reject
 	 * masters later if they try to claim IDs outside these masks.
 	 */
-	smr = FIELD_PREP(SMR_ID, smmu->streamid_mask);
+	smr = FIELD_PREP(ARM_SMMU_SMR_ID, smmu->streamid_mask);
 	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(0), smr);
 	smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(0));
-	smmu->streamid_mask = FIELD_GET(SMR_ID, smr);
+	smmu->streamid_mask = FIELD_GET(ARM_SMMU_SMR_ID, smr);
 
-	smr = FIELD_PREP(SMR_MASK, smmu->streamid_mask);
+	smr = FIELD_PREP(ARM_SMMU_SMR_MASK, smmu->streamid_mask);
 	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(0), smr);
 	smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(0));
-	smmu->smr_mask_mask = FIELD_GET(SMR_MASK, smr);
+	smmu->smr_mask_mask = FIELD_GET(ARM_SMMU_SMR_MASK, smr);
 }
 
 static int arm_smmu_find_sme(struct arm_smmu_device *smmu, u16 id, u16 mask)
@@ -1051,8 +1057,8 @@ static int arm_smmu_master_alloc_smes(struct device *dev)
 	mutex_lock(&smmu->stream_map_mutex);
 	/* Figure out a viable stream map entry allocation */
 	for_each_cfg_sme(fwspec, i, idx) {
-		u16 sid = FIELD_GET(SMR_ID, fwspec->ids[i]);
-		u16 mask = FIELD_GET(SMR_MASK, fwspec->ids[i]);
+		u16 sid = FIELD_GET(ARM_SMMU_SMR_ID, fwspec->ids[i]);
+		u16 mask = FIELD_GET(ARM_SMMU_SMR_MASK, fwspec->ids[i]);
 
 		if (idx != INVALID_SMENDX) {
 			ret = -EEXIST;
@@ -1296,7 +1302,8 @@ static phys_addr_t arm_smmu_iova_to_phys_hard(struct iommu_domain *domain,
 		arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_ATS1PR, va);
 
 	reg = arm_smmu_page(smmu, ARM_SMMU_CB(smmu, idx)) + ARM_SMMU_CB_ATSR;
-	if (readl_poll_timeout_atomic(reg, tmp, !(tmp & ATSR_ACTIVE), 5, 50)) {
+	if (readl_poll_timeout_atomic(reg, tmp, !(tmp & ARM_SMMU_ATSR_ACTIVE),
+				      5, 50)) {
 		spin_unlock_irqrestore(&smmu_domain->cb_lock, flags);
 		dev_err(dev,
 			"iova to phys timed out on %pad. Falling back to software table walk.\n",
@@ -1306,7 +1313,7 @@ static phys_addr_t arm_smmu_iova_to_phys_hard(struct iommu_domain *domain,
 
 	phys = arm_smmu_cb_readq(smmu, idx, ARM_SMMU_CB_PAR);
 	spin_unlock_irqrestore(&smmu_domain->cb_lock, flags);
-	if (phys & CB_PAR_F) {
+	if (phys & ARM_SMMU_CB_PAR_F) {
 		dev_err(dev, "translation fault!\n");
 		dev_err(dev, "PAR = 0x%llx\n", phys);
 		return 0;
@@ -1387,8 +1394,8 @@ static int arm_smmu_add_device(struct device *dev)
 
 	ret = -EINVAL;
 	for (i = 0; i < fwspec->num_ids; i++) {
-		u16 sid = FIELD_GET(SMR_ID, fwspec->ids[i]);
-		u16 mask = FIELD_GET(SMR_MASK, fwspec->ids[i]);
+		u16 sid = FIELD_GET(ARM_SMMU_SMR_ID, fwspec->ids[i]);
+		u16 mask = FIELD_GET(ARM_SMMU_SMR_MASK, fwspec->ids[i]);
 
 		if (sid & ~smmu->streamid_mask) {
 			dev_err(dev, "stream ID 0x%x out of range for SMMU (0x%x)\n",
@@ -1569,12 +1576,12 @@ static int arm_smmu_of_xlate(struct device *dev, struct of_phandle_args *args)
 	u32 mask, fwid = 0;
 
 	if (args->args_count > 0)
-		fwid |= FIELD_PREP(SMR_ID, args->args[0]);
+		fwid |= FIELD_PREP(ARM_SMMU_SMR_ID, args->args[0]);
 
 	if (args->args_count > 1)
-		fwid |= FIELD_PREP(SMR_MASK, args->args[1]);
+		fwid |= FIELD_PREP(ARM_SMMU_SMR_MASK, args->args[1]);
 	else if (!of_property_read_u32(args->np, "stream-match-mask", &mask))
-		fwid |= FIELD_PREP(SMR_MASK, mask);
+		fwid |= FIELD_PREP(ARM_SMMU_SMR_MASK, mask);
 
 	return iommu_fwspec_add_ids(dev, &fwid, 1);
 }
@@ -1644,7 +1651,7 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 	/* Make sure all context banks are disabled and clear CB_FSR  */
 	for (i = 0; i < smmu->num_context_banks; ++i) {
 		arm_smmu_write_context_bank(smmu, i);
-		arm_smmu_cb_write(smmu, i, ARM_SMMU_CB_FSR, FSR_FAULT);
+		arm_smmu_cb_write(smmu, i, ARM_SMMU_CB_FSR, ARM_SMMU_FSR_FAULT);
 	}
 
 	/* Invalidate the TLB, just in case */
@@ -1654,29 +1661,30 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 	reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sCR0);
 
 	/* Enable fault reporting */
-	reg |= (sCR0_GFRE | sCR0_GFIE | sCR0_GCFGFRE | sCR0_GCFGFIE);
+	reg |= (ARM_SMMU_sCR0_GFRE | ARM_SMMU_sCR0_GFIE |
+		ARM_SMMU_sCR0_GCFGFRE | ARM_SMMU_sCR0_GCFGFIE);
 
 	/* Disable TLB broadcasting. */
-	reg |= (sCR0_VMIDPNE | sCR0_PTM);
+	reg |= (ARM_SMMU_sCR0_VMIDPNE | ARM_SMMU_sCR0_PTM);
 
 	/* Enable client access, handling unmatched streams as appropriate */
-	reg &= ~sCR0_CLIENTPD;
+	reg &= ~ARM_SMMU_sCR0_CLIENTPD;
 	if (disable_bypass)
-		reg |= sCR0_USFCFG;
+		reg |= ARM_SMMU_sCR0_USFCFG;
 	else
-		reg &= ~sCR0_USFCFG;
+		reg &= ~ARM_SMMU_sCR0_USFCFG;
 
 	/* Disable forced broadcasting */
-	reg &= ~sCR0_FB;
+	reg &= ~ARM_SMMU_sCR0_FB;
 
 	/* Don't upgrade barriers */
-	reg &= ~(sCR0_BSU);
+	reg &= ~(ARM_SMMU_sCR0_BSU);
 
 	if (smmu->features & ARM_SMMU_FEAT_VMID16)
-		reg |= sCR0_VMID16EN;
+		reg |= ARM_SMMU_sCR0_VMID16EN;
 
 	if (smmu->features & ARM_SMMU_FEAT_EXIDS)
-		reg |= sCR0_EXIDENABLE;
+		reg |= ARM_SMMU_sCR0_EXIDENABLE;
 
 	if (smmu->impl && smmu->impl->reset)
 		smmu->impl->reset(smmu);
@@ -1721,21 +1729,21 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 
 	/* Restrict available stages based on module parameter */
 	if (force_stage == 1)
-		id &= ~(ID0_S2TS | ID0_NTS);
+		id &= ~(ARM_SMMU_ID0_S2TS | ARM_SMMU_ID0_NTS);
 	else if (force_stage == 2)
-		id &= ~(ID0_S1TS | ID0_NTS);
+		id &= ~(ARM_SMMU_ID0_S1TS | ARM_SMMU_ID0_NTS);
 
-	if (id & ID0_S1TS) {
+	if (id & ARM_SMMU_ID0_S1TS) {
 		smmu->features |= ARM_SMMU_FEAT_TRANS_S1;
 		dev_notice(smmu->dev, "\tstage 1 translation\n");
 	}
 
-	if (id & ID0_S2TS) {
+	if (id & ARM_SMMU_ID0_S2TS) {
 		smmu->features |= ARM_SMMU_FEAT_TRANS_S2;
 		dev_notice(smmu->dev, "\tstage 2 translation\n");
 	}
 
-	if (id & ID0_NTS) {
+	if (id & ARM_SMMU_ID0_NTS) {
 		smmu->features |= ARM_SMMU_FEAT_TRANS_NESTED;
 		dev_notice(smmu->dev, "\tnested translation\n");
 	}
@@ -1746,8 +1754,8 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 		return -ENODEV;
 	}
 
-	if ((id & ID0_S1TS) &&
-		((smmu->version < ARM_SMMU_V2) || !(id & ID0_ATOSNS))) {
+	if ((id & ARM_SMMU_ID0_S1TS) &&
+	    ((smmu->version < ARM_SMMU_V2) || !(id & ARM_SMMU_ID0_ATOSNS))) {
 		smmu->features |= ARM_SMMU_FEAT_TRANS_OPS;
 		dev_notice(smmu->dev, "\taddress translation ops\n");
 	}
@@ -1758,7 +1766,7 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 	 * Fortunately, this also opens up a workaround for systems where the
 	 * ID register value has ended up configured incorrectly.
 	 */
-	cttw_reg = !!(id & ID0_CTTW);
+	cttw_reg = !!(id & ARM_SMMU_ID0_CTTW);
 	if (cttw_fw || cttw_reg)
 		dev_notice(smmu->dev, "\t%scoherent table walk\n",
 			   cttw_fw ? "" : "non-");
@@ -1767,16 +1775,16 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 			   "\t(IDR0.CTTW overridden by FW configuration)\n");
 
 	/* Max. number of entries we have for stream matching/indexing */
-	if (smmu->version == ARM_SMMU_V2 && id & ID0_EXIDS) {
+	if (smmu->version == ARM_SMMU_V2 && id & ARM_SMMU_ID0_EXIDS) {
 		smmu->features |= ARM_SMMU_FEAT_EXIDS;
 		size = 1 << 16;
 	} else {
-		size = 1 << FIELD_GET(ID0_NUMSIDB, id);
+		size = 1 << FIELD_GET(ARM_SMMU_ID0_NUMSIDB, id);
 	}
 	smmu->streamid_mask = size - 1;
-	if (id & ID0_SMS) {
+	if (id & ARM_SMMU_ID0_SMS) {
 		smmu->features |= ARM_SMMU_FEAT_STREAM_MATCH;
-		size = FIELD_GET(ID0_NUMSMRG, id);
+		size = FIELD_GET(ARM_SMMU_ID0_NUMSMRG, id);
 		if (size == 0) {
 			dev_err(smmu->dev,
 				"stream-matching supported, but no SMRs present!\n");
@@ -1804,18 +1812,19 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 	mutex_init(&smmu->stream_map_mutex);
 	spin_lock_init(&smmu->global_sync_lock);
 
-	if (smmu->version < ARM_SMMU_V2 || !(id & ID0_PTFS_NO_AARCH32)) {
+	if (smmu->version < ARM_SMMU_V2 ||
+	    !(id & ARM_SMMU_ID0_PTFS_NO_AARCH32)) {
 		smmu->features |= ARM_SMMU_FEAT_FMT_AARCH32_L;
-		if (!(id & ID0_PTFS_NO_AARCH32S))
+		if (!(id & ARM_SMMU_ID0_PTFS_NO_AARCH32S))
 			smmu->features |= ARM_SMMU_FEAT_FMT_AARCH32_S;
 	}
 
 	/* ID1 */
 	id = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_ID1);
-	smmu->pgshift = (id & ID1_PAGESIZE) ? 16 : 12;
+	smmu->pgshift = (id & ARM_SMMU_ID1_PAGESIZE) ? 16 : 12;
 
 	/* Check for size mismatch of SMMU address space from mapped region */
-	size = 1 << (FIELD_GET(ID1_NUMPAGENDXB, id) + 1);
+	size = 1 << (FIELD_GET(ARM_SMMU_ID1_NUMPAGENDXB, id) + 1);
 	if (smmu->numpage != 2 * size << smmu->pgshift)
 		dev_warn(smmu->dev,
 			"SMMU address space size (0x%x) differs from mapped region size (0x%x)!\n",
@@ -1823,8 +1832,8 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 	/* Now properly encode NUMPAGE to subsequently derive SMMU_CB_BASE */
 	smmu->numpage = size;
 
-	smmu->num_s2_context_banks = FIELD_GET(ID1_NUMS2CB, id);
-	smmu->num_context_banks = FIELD_GET(ID1_NUMCB, id);
+	smmu->num_s2_context_banks = FIELD_GET(ARM_SMMU_ID1_NUMS2CB, id);
+	smmu->num_context_banks = FIELD_GET(ARM_SMMU_ID1_NUMCB, id);
 	if (smmu->num_s2_context_banks > smmu->num_context_banks) {
 		dev_err(smmu->dev, "impossible number of S2 context banks!\n");
 		return -ENODEV;
@@ -1838,14 +1847,14 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 
 	/* ID2 */
 	id = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_ID2);
-	size = arm_smmu_id_size_to_bits(FIELD_GET(ID2_IAS, id));
+	size = arm_smmu_id_size_to_bits(FIELD_GET(ARM_SMMU_ID2_IAS, id));
 	smmu->ipa_size = size;
 
 	/* The output mask is also applied for bypass */
-	size = arm_smmu_id_size_to_bits(FIELD_GET(ID2_OAS, id));
+	size = arm_smmu_id_size_to_bits(FIELD_GET(ARM_SMMU_ID2_OAS, id));
 	smmu->pa_size = size;
 
-	if (id & ID2_VMID16)
+	if (id & ARM_SMMU_ID2_VMID16)
 		smmu->features |= ARM_SMMU_FEAT_VMID16;
 
 	/*
@@ -1862,13 +1871,13 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 		if (smmu->version == ARM_SMMU_V1_64K)
 			smmu->features |= ARM_SMMU_FEAT_FMT_AARCH64_64K;
 	} else {
-		size = FIELD_GET(ID2_UBS, id);
+		size = FIELD_GET(ARM_SMMU_ID2_UBS, id);
 		smmu->va_size = arm_smmu_id_size_to_bits(size);
-		if (id & ID2_PTFS_4K)
+		if (id & ARM_SMMU_ID2_PTFS_4K)
 			smmu->features |= ARM_SMMU_FEAT_FMT_AARCH64_4K;
-		if (id & ID2_PTFS_16K)
+		if (id & ARM_SMMU_ID2_PTFS_16K)
 			smmu->features |= ARM_SMMU_FEAT_FMT_AARCH64_16K;
-		if (id & ID2_PTFS_64K)
+		if (id & ARM_SMMU_ID2_PTFS_64K)
 			smmu->features |= ARM_SMMU_FEAT_FMT_AARCH64_64K;
 	}
 
@@ -2245,7 +2254,7 @@ static int arm_smmu_device_remove(struct platform_device *pdev)
 
 	arm_smmu_rpm_get(smmu);
 	/* Turn the thing off */
-	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sCR0, sCR0_CLIENTPD);
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sCR0, ARM_SMMU_sCR0_CLIENTPD);
 	arm_smmu_rpm_put(smmu);
 
 	if (pm_runtime_enabled(smmu->dev))
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index aade2b0ae175..6501f38a5966 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -24,51 +24,51 @@
 
 /* Configuration registers */
 #define ARM_SMMU_GR0_sCR0		0x0
-#define sCR0_VMID16EN			BIT(31)
-#define sCR0_BSU			GENMASK(15, 14)
-#define sCR0_FB				BIT(13)
-#define sCR0_PTM			BIT(12)
-#define sCR0_VMIDPNE			BIT(11)
-#define sCR0_USFCFG			BIT(10)
-#define sCR0_GCFGFIE			BIT(5)
-#define sCR0_GCFGFRE			BIT(4)
-#define sCR0_EXIDENABLE			BIT(3)
-#define sCR0_GFIE			BIT(2)
-#define sCR0_GFRE			BIT(1)
-#define sCR0_CLIENTPD			BIT(0)
+#define ARM_SMMU_sCR0_VMID16EN		BIT(31)
+#define ARM_SMMU_sCR0_BSU		GENMASK(15, 14)
+#define ARM_SMMU_sCR0_FB		BIT(13)
+#define ARM_SMMU_sCR0_PTM		BIT(12)
+#define ARM_SMMU_sCR0_VMIDPNE		BIT(11)
+#define ARM_SMMU_sCR0_USFCFG		BIT(10)
+#define ARM_SMMU_sCR0_GCFGFIE		BIT(5)
+#define ARM_SMMU_sCR0_GCFGFRE		BIT(4)
+#define ARM_SMMU_sCR0_EXIDENABLE	BIT(3)
+#define ARM_SMMU_sCR0_GFIE		BIT(2)
+#define ARM_SMMU_sCR0_GFRE		BIT(1)
+#define ARM_SMMU_sCR0_CLIENTPD		BIT(0)
 
 /* Auxiliary Configuration register */
 #define ARM_SMMU_GR0_sACR		0x10
 
 /* Identification registers */
 #define ARM_SMMU_GR0_ID0		0x20
-#define ID0_S1TS			BIT(30)
-#define ID0_S2TS			BIT(29)
-#define ID0_NTS				BIT(28)
-#define ID0_SMS				BIT(27)
-#define ID0_ATOSNS			BIT(26)
-#define ID0_PTFS_NO_AARCH32		BIT(25)
-#define ID0_PTFS_NO_AARCH32S		BIT(24)
-#define ID0_NUMIRPT			GENMASK(23, 16)
-#define ID0_CTTW			BIT(14)
-#define ID0_NUMSIDB			GENMASK(12, 9)
-#define ID0_EXIDS			BIT(8)
-#define ID0_NUMSMRG			GENMASK(7, 0)
+#define ARM_SMMU_ID0_S1TS		BIT(30)
+#define ARM_SMMU_ID0_S2TS		BIT(29)
+#define ARM_SMMU_ID0_NTS		BIT(28)
+#define ARM_SMMU_ID0_SMS		BIT(27)
+#define ARM_SMMU_ID0_ATOSNS		BIT(26)
+#define ARM_SMMU_ID0_PTFS_NO_AARCH32	BIT(25)
+#define ARM_SMMU_ID0_PTFS_NO_AARCH32S	BIT(24)
+#define ARM_SMMU_ID0_NUMIRPT		GENMASK(23, 16)
+#define ARM_SMMU_ID0_CTTW		BIT(14)
+#define ARM_SMMU_ID0_NUMSIDB		GENMASK(12, 9)
+#define ARM_SMMU_ID0_EXIDS		BIT(8)
+#define ARM_SMMU_ID0_NUMSMRG		GENMASK(7, 0)
 
 #define ARM_SMMU_GR0_ID1		0x24
-#define ID1_PAGESIZE			BIT(31)
-#define ID1_NUMPAGENDXB			GENMASK(30, 28)
-#define ID1_NUMS2CB			GENMASK(23, 16)
-#define ID1_NUMCB			GENMASK(7, 0)
+#define ARM_SMMU_ID1_PAGESIZE		BIT(31)
+#define ARM_SMMU_ID1_NUMPAGENDXB	GENMASK(30, 28)
+#define ARM_SMMU_ID1_NUMS2CB		GENMASK(23, 16)
+#define ARM_SMMU_ID1_NUMCB		GENMASK(7, 0)
 
 #define ARM_SMMU_GR0_ID2		0x28
-#define ID2_VMID16			BIT(15)
-#define ID2_PTFS_64K			BIT(14)
-#define ID2_PTFS_16K			BIT(13)
-#define ID2_PTFS_4K			BIT(12)
-#define ID2_UBS				GENMASK(11, 8)
-#define ID2_OAS				GENMASK(7, 4)
-#define ID2_IAS				GENMASK(3, 0)
+#define ARM_SMMU_ID2_VMID16		BIT(15)
+#define ARM_SMMU_ID2_PTFS_64K		BIT(14)
+#define ARM_SMMU_ID2_PTFS_16K		BIT(13)
+#define ARM_SMMU_ID2_PTFS_4K		BIT(12)
+#define ARM_SMMU_ID2_UBS		GENMASK(11, 8)
+#define ARM_SMMU_ID2_OAS		GENMASK(7, 4)
+#define ARM_SMMU_ID2_IAS		GENMASK(3, 0)
 
 #define ARM_SMMU_GR0_ID3		0x2c
 #define ARM_SMMU_GR0_ID4		0x30
@@ -76,11 +76,11 @@
 #define ARM_SMMU_GR0_ID6		0x38
 
 #define ARM_SMMU_GR0_ID7		0x3c
-#define ID7_MAJOR			GENMASK(7, 4)
-#define ID7_MINOR			GENMASK(3, 0)
+#define ARM_SMMU_ID7_MAJOR		GENMASK(7, 4)
+#define ARM_SMMU_ID7_MINOR		GENMASK(3, 0)
 
 #define ARM_SMMU_GR0_sGFSR		0x48
-#define sGFSR_USF			BIT(1)
+#define ARM_SMMU_sGFSR_USF		BIT(1)
 
 #define ARM_SMMU_GR0_sGFSYNR0		0x50
 #define ARM_SMMU_GR0_sGFSYNR1		0x54
@@ -93,118 +93,123 @@
 #define ARM_SMMU_GR0_sTLBGSYNC		0x70
 
 #define ARM_SMMU_GR0_sTLBGSTATUS	0x74
-#define sTLBGSTATUS_GSACTIVE		BIT(0)
+#define ARM_SMMU_sTLBGSTATUS_GSACTIVE	BIT(0)
 
 /* Stream mapping registers */
 #define ARM_SMMU_GR0_SMR(n)		(0x800 + ((n) << 2))
-#define SMR_VALID			BIT(31)
-#define SMR_MASK			GENMASK(31, 16)
-#define SMR_ID				GENMASK(15, 0)
+#define ARM_SMMU_SMR_VALID		BIT(31)
+#define ARM_SMMU_SMR_MASK		GENMASK(31, 16)
+#define ARM_SMMU_SMR_ID			GENMASK(15, 0)
 
 #define ARM_SMMU_GR0_S2CR(n)		(0xc00 + ((n) << 2))
-#define S2CR_PRIVCFG			GENMASK(25, 24)
+#define ARM_SMMU_S2CR_PRIVCFG		GENMASK(25, 24)
 enum arm_smmu_s2cr_privcfg {
 	S2CR_PRIVCFG_DEFAULT,
 	S2CR_PRIVCFG_DIPAN,
 	S2CR_PRIVCFG_UNPRIV,
 	S2CR_PRIVCFG_PRIV,
 };
-#define S2CR_TYPE			GENMASK(17, 16)
+#define ARM_SMMU_S2CR_TYPE		GENMASK(17, 16)
 enum arm_smmu_s2cr_type {
 	S2CR_TYPE_TRANS,
 	S2CR_TYPE_BYPASS,
 	S2CR_TYPE_FAULT,
 };
-#define S2CR_EXIDVALID			BIT(10)
-#define S2CR_CBNDX			GENMASK(7, 0)
+#define ARM_SMMU_S2CR_EXIDVALID		BIT(10)
+#define ARM_SMMU_S2CR_CBNDX		GENMASK(7, 0)
 
 /* Context bank attribute registers */
 #define ARM_SMMU_GR1_CBAR(n)		(0x0 + ((n) << 2))
-#define CBAR_IRPTNDX			GENMASK(31, 24)
-#define CBAR_TYPE			GENMASK(17, 16)
+#define ARM_SMMU_CBAR_IRPTNDX		GENMASK(31, 24)
+#define ARM_SMMU_CBAR_TYPE		GENMASK(17, 16)
 enum arm_smmu_cbar_type {
 	CBAR_TYPE_S2_TRANS,
 	CBAR_TYPE_S1_TRANS_S2_BYPASS,
 	CBAR_TYPE_S1_TRANS_S2_FAULT,
 	CBAR_TYPE_S1_TRANS_S2_TRANS,
 };
-#define CBAR_S1_MEMATTR			GENMASK(15, 12)
-#define CBAR_S1_MEMATTR_WB		0xf
-#define CBAR_S1_BPSHCFG			GENMASK(9, 8)
-#define CBAR_S1_BPSHCFG_NSH		3
-#define CBAR_VMID			GENMASK(7, 0)
+#define ARM_SMMU_CBAR_S1_MEMATTR	GENMASK(15, 12)
+#define ARM_SMMU_CBAR_S1_MEMATTR_WB	0xf
+#define ARM_SMMU_CBAR_S1_BPSHCFG	GENMASK(9, 8)
+#define ARM_SMMU_CBAR_S1_BPSHCFG_NSH	3
+#define ARM_SMMU_CBAR_VMID		GENMASK(7, 0)
 
 #define ARM_SMMU_GR1_CBFRSYNRA(n)	(0x400 + ((n) << 2))
 
 #define ARM_SMMU_GR1_CBA2R(n)		(0x800 + ((n) << 2))
-#define CBA2R_VMID16			GENMASK(31, 16)
-#define CBA2R_VA64			BIT(0)
+#define ARM_SMMU_CBA2R_VMID16		GENMASK(31, 16)
+#define ARM_SMMU_CBA2R_VA64		BIT(0)
 
 #define ARM_SMMU_CB_SCTLR		0x0
-#define SCTLR_S1_ASIDPNE		BIT(12)
-#define SCTLR_CFCFG			BIT(7)
-#define SCTLR_CFIE			BIT(6)
-#define SCTLR_CFRE			BIT(5)
-#define SCTLR_E				BIT(4)
-#define SCTLR_AFE			BIT(2)
-#define SCTLR_TRE			BIT(1)
-#define SCTLR_M				BIT(0)
+#define ARM_SMMU_SCTLR_S1_ASIDPNE	BIT(12)
+#define ARM_SMMU_SCTLR_CFCFG		BIT(7)
+#define ARM_SMMU_SCTLR_CFIE		BIT(6)
+#define ARM_SMMU_SCTLR_CFRE		BIT(5)
+#define ARM_SMMU_SCTLR_E		BIT(4)
+#define ARM_SMMU_SCTLR_AFE		BIT(2)
+#define ARM_SMMU_SCTLR_TRE		BIT(1)
+#define ARM_SMMU_SCTLR_M		BIT(0)
 
 #define ARM_SMMU_CB_ACTLR		0x4
 
 #define ARM_SMMU_CB_RESUME		0x8
-#define RESUME_TERMINATE		BIT(0)
+#define ARM_SMMU_RESUME_TERMINATE	BIT(0)
 
 #define ARM_SMMU_CB_TCR2		0x10
-#define TCR2_SEP			GENMASK(17, 15)
-#define TCR2_SEP_UPSTREAM		0x7
-#define TCR2_AS				BIT(4)
-#define TCR2_PASIZE			GENMASK(3, 0)
+#define ARM_SMMU_TCR2_SEP		GENMASK(17, 15)
+#define ARM_SMMU_TCR2_SEP_UPSTREAM	0x7
+#define ARM_SMMU_TCR2_AS		BIT(4)
+#define ARM_SMMU_TCR2_PASIZE		GENMASK(3, 0)
 
 #define ARM_SMMU_CB_TTBR0		0x20
 #define ARM_SMMU_CB_TTBR1		0x28
-#define TTBRn_ASID			GENMASK_ULL(63, 48)
-
-/* arm64 headers leak this somehow :( */
-#undef TCR_T0SZ
+#define ARM_SMMU_TTBRn_ASID		GENMASK_ULL(63, 48)
 
 #define ARM_SMMU_CB_TCR			0x30
-#define TCR_EAE				BIT(31)
-#define TCR_EPD1			BIT(23)
-#define TCR_TG0				GENMASK(15, 14)
-#define TCR_SH0				GENMASK(13, 12)
-#define TCR_ORGN0			GENMASK(11, 10)
-#define TCR_IRGN0			GENMASK(9, 8)
-#define TCR_T0SZ			GENMASK(5, 0)
+#define ARM_SMMU_TCR_EAE		BIT(31)
+#define ARM_SMMU_TCR_EPD1		BIT(23)
+#define ARM_SMMU_TCR_TG0		GENMASK(15, 14)
+#define ARM_SMMU_TCR_SH0		GENMASK(13, 12)
+#define ARM_SMMU_TCR_ORGN0		GENMASK(11, 10)
+#define ARM_SMMU_TCR_IRGN0		GENMASK(9, 8)
+#define ARM_SMMU_TCR_T0SZ		GENMASK(5, 0)
 
 #define ARM_SMMU_CB_CONTEXTIDR		0x34
 #define ARM_SMMU_CB_S1_MAIR0		0x38
 #define ARM_SMMU_CB_S1_MAIR1		0x3c
 
 #define ARM_SMMU_CB_PAR			0x50
-#define CB_PAR_F			BIT(0)
+#define ARM_SMMU_CB_PAR_F		BIT(0)
 
 #define ARM_SMMU_CB_FSR			0x58
-#define FSR_MULTI			BIT(31)
-#define FSR_SS				BIT(30)
-#define FSR_UUT				BIT(8)
-#define FSR_ASF				BIT(7)
-#define FSR_TLBLKF			BIT(6)
-#define FSR_TLBMCF			BIT(5)
-#define FSR_EF				BIT(4)
-#define FSR_PF				BIT(3)
-#define FSR_AFF				BIT(2)
-#define FSR_TF				BIT(1)
-
-#define FSR_IGN				(FSR_AFF | FSR_ASF | \
-					 FSR_TLBMCF | FSR_TLBLKF)
-#define FSR_FAULT			(FSR_MULTI | FSR_SS | FSR_UUT | \
-					 FSR_EF | FSR_PF | FSR_TF | FSR_IGN)
+#define ARM_SMMU_FSR_MULTI		BIT(31)
+#define ARM_SMMU_FSR_SS			BIT(30)
+#define ARM_SMMU_FSR_UUT		BIT(8)
+#define ARM_SMMU_FSR_ASF		BIT(7)
+#define ARM_SMMU_FSR_TLBLKF		BIT(6)
+#define ARM_SMMU_FSR_TLBMCF		BIT(5)
+#define ARM_SMMU_FSR_EF			BIT(4)
+#define ARM_SMMU_FSR_PF			BIT(3)
+#define ARM_SMMU_FSR_AFF		BIT(2)
+#define ARM_SMMU_FSR_TF			BIT(1)
+
+#define ARM_SMMU_FSR_IGN		(ARM_SMMU_FSR_AFF |		\
+					 ARM_SMMU_FSR_ASF |		\
+					 ARM_SMMU_FSR_TLBMCF |		\
+					 ARM_SMMU_FSR_TLBLKF)
+
+#define ARM_SMMU_FSR_FAULT		(ARM_SMMU_FSR_MULTI |		\
+					 ARM_SMMU_FSR_SS |		\
+					 ARM_SMMU_FSR_UUT |		\
+					 ARM_SMMU_FSR_EF |		\
+					 ARM_SMMU_FSR_PF |		\
+					 ARM_SMMU_FSR_TF |		\
+					 ARM_SMMU_FSR_IGN)
 
 #define ARM_SMMU_CB_FAR			0x60
 
 #define ARM_SMMU_CB_FSYNR0		0x68
-#define FSYNR0_WNR			BIT(4)
+#define ARM_SMMU_FSYNR0_WNR		BIT(4)
 
 #define ARM_SMMU_CB_S1_TLBIVA		0x600
 #define ARM_SMMU_CB_S1_TLBIASID		0x610
@@ -216,7 +221,7 @@ enum arm_smmu_cbar_type {
 #define ARM_SMMU_CB_ATS1PR		0x800
 
 #define ARM_SMMU_CB_ATSR		0x8f0
-#define ATSR_ACTIVE			BIT(0)
+#define ARM_SMMU_ATSR_ACTIVE		BIT(0)
 
 
 /* Maximum number of context banks per SMMU */
@@ -310,7 +315,7 @@ struct arm_smmu_cfg {
 	enum arm_smmu_cbar_type		cbar;
 	enum arm_smmu_context_fmt	fmt;
 };
-#define INVALID_IRPTNDX			0xff
+#define ARM_SMMU_INVALID_IRPTNDX	0xff
 
 enum arm_smmu_domain_stage {
 	ARM_SMMU_DOMAIN_S1 = 0,
@@ -333,18 +338,18 @@ struct arm_smmu_domain {
 
 static inline u32 arm_smmu_lpae_tcr(struct io_pgtable_cfg *cfg)
 {
-	return TCR_EPD1 |
-	       FIELD_PREP(TCR_TG0, cfg->arm_lpae_s1_cfg.tcr.tg) |
-	       FIELD_PREP(TCR_SH0, cfg->arm_lpae_s1_cfg.tcr.sh) |
-	       FIELD_PREP(TCR_ORGN0, cfg->arm_lpae_s1_cfg.tcr.orgn) |
-	       FIELD_PREP(TCR_IRGN0, cfg->arm_lpae_s1_cfg.tcr.irgn) |
-	       FIELD_PREP(TCR_T0SZ, cfg->arm_lpae_s1_cfg.tcr.tsz);
+	return ARM_SMMU_TCR_EPD1 |
+	       FIELD_PREP(ARM_SMMU_TCR_TG0, cfg->arm_lpae_s1_cfg.tcr.tg) |
+	       FIELD_PREP(ARM_SMMU_TCR_SH0, cfg->arm_lpae_s1_cfg.tcr.sh) |
+	       FIELD_PREP(ARM_SMMU_TCR_ORGN0, cfg->arm_lpae_s1_cfg.tcr.orgn) |
+	       FIELD_PREP(ARM_SMMU_TCR_IRGN0, cfg->arm_lpae_s1_cfg.tcr.irgn) |
+	       FIELD_PREP(ARM_SMMU_TCR_T0SZ, cfg->arm_lpae_s1_cfg.tcr.tsz);
 }
 
 static inline u32 arm_smmu_lpae_tcr2(struct io_pgtable_cfg *cfg)
 {
-	return FIELD_PREP(TCR2_PASIZE, cfg->arm_lpae_s1_cfg.tcr.ips) |
-	       FIELD_PREP(TCR2_SEP, TCR2_SEP_UPSTREAM);
+	return FIELD_PREP(ARM_SMMU_TCR2_PASIZE, cfg->arm_lpae_s1_cfg.tcr.ips) |
+	       FIELD_PREP(ARM_SMMU_TCR2_SEP, ARM_SMMU_TCR2_SEP_UPSTREAM);
 }
 
 /* Implementation details, yay! */
diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
index 2eeaf2eec946..39759db4f003 100644
--- a/drivers/iommu/qcom_iommu.c
+++ b/drivers/iommu/qcom_iommu.c
@@ -201,7 +201,7 @@ static irqreturn_t qcom_iommu_fault(int irq, void *dev)
 
 	fsr = iommu_readl(ctx, ARM_SMMU_CB_FSR);
 
-	if (!(fsr & FSR_FAULT))
+	if (!(fsr & ARM_SMMU_FSR_FAULT))
 		return IRQ_NONE;
 
 	fsynr = iommu_readl(ctx, ARM_SMMU_CB_FSYNR0);
@@ -215,7 +215,7 @@ static irqreturn_t qcom_iommu_fault(int irq, void *dev)
 	}
 
 	iommu_writel(ctx, ARM_SMMU_CB_FSR, fsr);
-	iommu_writel(ctx, ARM_SMMU_CB_RESUME, RESUME_TERMINATE);
+	iommu_writel(ctx, ARM_SMMU_CB_RESUME, ARM_SMMU_RESUME_TERMINATE);
 
 	return IRQ_HANDLED;
 }
@@ -270,14 +270,14 @@ static int qcom_iommu_init_domain(struct iommu_domain *domain,
 		/* TTBRs */
 		iommu_writeq(ctx, ARM_SMMU_CB_TTBR0,
 				pgtbl_cfg.arm_lpae_s1_cfg.ttbr |
-				FIELD_PREP(TTBRn_ASID, ctx->asid));
+				FIELD_PREP(ARM_SMMU_TTBRn_ASID, ctx->asid));
 		iommu_writeq(ctx, ARM_SMMU_CB_TTBR1, 0);
 
 		/* TCR */
 		iommu_writel(ctx, ARM_SMMU_CB_TCR2,
 				arm_smmu_lpae_tcr2(&pgtbl_cfg));
 		iommu_writel(ctx, ARM_SMMU_CB_TCR,
-				arm_smmu_lpae_tcr(&pgtbl_cfg) | TCR_EAE);
+			     arm_smmu_lpae_tcr(&pgtbl_cfg) | ARM_SMMU_TCR_EAE);
 
 		/* MAIRs (stage-1 only) */
 		iommu_writel(ctx, ARM_SMMU_CB_S1_MAIR0,
@@ -286,11 +286,13 @@ static int qcom_iommu_init_domain(struct iommu_domain *domain,
 				pgtbl_cfg.arm_lpae_s1_cfg.mair >> 32);
 
 		/* SCTLR */
-		reg = SCTLR_CFIE | SCTLR_CFRE | SCTLR_AFE | SCTLR_TRE |
-			SCTLR_M | SCTLR_S1_ASIDPNE | SCTLR_CFCFG;
+		reg = ARM_SMMU_SCTLR_CFIE | ARM_SMMU_SCTLR_CFRE |
+		      ARM_SMMU_SCTLR_AFE | ARM_SMMU_SCTLR_TRE |
+		      ARM_SMMU_SCTLR_M | ARM_SMMU_SCTLR_S1_ASIDPNE |
+		      ARM_SMMU_SCTLR_CFCFG;
 
 		if (IS_ENABLED(CONFIG_BIG_ENDIAN))
-			reg |= SCTLR_E;
+			reg |= ARM_SMMU_SCTLR_E;
 
 		iommu_writel(ctx, ARM_SMMU_CB_SCTLR, reg);
 
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
