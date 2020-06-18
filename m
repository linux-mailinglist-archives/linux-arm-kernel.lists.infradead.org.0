Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB381FF855
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:58:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n0BJdJTTmMGxkAIs7mLmKsEqEsUVnvtrXsZHesPaOO8=; b=YjXQkAbrcBEPf/
	X/mOP5Vt+8JJ/EOhVC9HAVZIti31CYBr/3IUzj6yZZTJ7y7JPszkIAnWV92iavJRIhYKiUQBJNlPF
	xcil1SJ2Tg0gSLSLxV0mmgTYUMgqhS4bvm2FxQ32f6Eb7Zsp9HoC1woN7Reqpu1HfP/mmvW1KLt2N
	OcwP24C3eXM9asQbWGv7rYk7xcmEyxhvk05WTnMDCbxypW0/HQ96jkpVUQS9D2Up+IvTyRmjqfwDN
	M4523dyxaAaJI/JgiVamU/2YuoTTx6M1z/iPIk8NXVNuSqD9akjoT8Gf70V4OOpHQszBIllne60N2
	pCnHQ0Yx+yd6z0Xn0ONw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwvg-0000Vz-OJ; Thu, 18 Jun 2020 15:58:16 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwqO-0002FV-Rq
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:52:58 +0000
Received: by mail-ej1-x644.google.com with SMTP id y13so6960018eju.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 08:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Gl8/KHztk13IMZalRx1XfsgApopMYKofIndN5FPkOyc=;
 b=M9XzF/zDD9NAd1p8Tb01DcQs5VrpQgVrIqRMkSqX0CuDMCDkNlus8SVz7PXa0p7aG4
 Ux3pLWztH/B/qiGFwSaVD7dNV3BgOvBi+WcVqdduC7tTgvezsmSgG2C5h8MrR9Rw9KXy
 tp7tE/DV/Het50vu5ncJZRtXgvPk4c8b9h2I5QA+pWaZxHvM3tO1ra5c0vRF4AuzPs9N
 +V2vQGJy5/RB7B57uhi0SPJspVMaAgH9v64B7DO0NS/BN461NbV/KNlr9LoVEY30joYc
 ftiIDufy0ptnDHRQNB3nm7Q9MXl+6OINX0Cp37Eht4FS9eHqKpVmu9x/NM7Q9Yx4HngK
 UKaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Gl8/KHztk13IMZalRx1XfsgApopMYKofIndN5FPkOyc=;
 b=oAKTf5iWXrGeXHKsRumjRAxxId8VPvf9EdVDCG/+MOWrV7cd8Yi/e6MKsCbWyZC/dB
 SLivWPKvCX5EHlOe5vW9jTEqAmeutbQv/92lxb7cuHwYxHxaqF3o6eER5VSEDl50G+ft
 bKGa/pCoURIz8otwbYMPtID4ijXUDv5b8oDBS5AM4NaDar2TdWQ/T1mDilYoYAgU2wVa
 4dULkz6LQ+nYsREgqmglYS3oYzbU+eXU2WIdyHVAA17H3nR7C/qG1AgrgJT6X04bYppF
 ZbuAWbTcsB2MYT5R4O0E8wKLbX/pbFVtB2j8B6AdBF+pxKjdIDEur0XssKSAIutoDcGJ
 pU1w==
X-Gm-Message-State: AOAM533iEAVbWo+/dix0Z3Xp/npXexN690rtW1Th5yz+KD3HEdVjwjZX
 mvvyLnCp8C6el2K9WQUc6Z9Cuw==
X-Google-Smtp-Source: ABdhPJyO56ngTMw3kmdlxk17L2Xh8uXctk6ktH/xwwqapMb0kUPyRN+SHVC6d7bMVVWlr+RSxddU0w==
X-Received: by 2002:a17:906:6890:: with SMTP id
 n16mr4383830ejr.553.1592495567422; 
 Thu, 18 Jun 2020 08:52:47 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id 63sm2402267edy.8.2020.06.18.08.52.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 08:52:47 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-mm@kvack.org
Subject: [PATCH v8 08/12] iommu/arm-smmu-v3: Seize private ASID
Date: Thu, 18 Jun 2020 17:51:21 +0200
Message-Id: <20200618155125.1548969-9-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618155125.1548969-1-jean-philippe@linaro.org>
References: <20200618155125.1548969-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_085248_930226_A515001D 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: fenghua.yu@intel.com, jacob.jun.pan@linux.intel.com,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, catalin.marinas@arm.com,
 joro@8bytes.org, robin.murphy@arm.com, hch@infradead.org,
 zhengxiang9@huawei.com, Jonathan.Cameron@huawei.com, zhangfei.gao@linaro.org,
 will@kernel.org, xuzaibo@huawei.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SMMU has a single ASID space, the union of shared and private ASID
sets. This means that the SMMU driver competes with the arch allocator
for ASIDs. Shared ASIDs are those of Linux processes, allocated by the
arch, and contribute in broadcast TLB maintenance. Private ASIDs are
allocated by the SMMU driver and used for "classic" map/unmap DMA. They
require command-queue TLB invalidations.

When we pin down an mm_context and get an ASID that is already in use by
the SMMU, it belongs to a private context. We used to simply abort the
bind, but this is unfair to users that would be unable to bind a few
seemingly random processes. Try to allocate a new private ASID for the
context, and make the old ASID shared.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 101 +++++++++++++++++++++++++++++-------
 1 file changed, 82 insertions(+), 19 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index cabd942e4cbf3..5506add42c9c8 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -733,6 +733,7 @@ struct arm_smmu_option_prop {
 };
 
 static DEFINE_XARRAY_ALLOC1(asid_xa);
+static DEFINE_MUTEX(asid_lock);
 static DEFINE_MUTEX(sva_lock);
 
 static struct arm_smmu_option_prop arm_smmu_options[] = {
@@ -1537,6 +1538,17 @@ static int arm_smmu_cmdq_batch_submit(struct arm_smmu_device *smmu,
 }
 
 /* Context descriptor manipulation functions */
+static void arm_smmu_tlb_inv_asid(struct arm_smmu_device *smmu, u16 asid)
+{
+	struct arm_smmu_cmdq_ent cmd = {
+		.opcode = CMDQ_OP_TLBI_NH_ASID,
+		.tlbi.asid = asid,
+	};
+
+	arm_smmu_cmdq_issue_cmd(smmu, &cmd);
+	arm_smmu_cmdq_issue_sync(smmu);
+}
+
 static void arm_smmu_sync_cd(struct arm_smmu_domain *smmu_domain,
 			     int ssid, bool leaf)
 {
@@ -1795,9 +1807,18 @@ static bool arm_smmu_free_asid(struct arm_smmu_ctx_desc *cd)
 	return free;
 }
 
+/*
+ * Try to reserve this ASID in the SMMU. If it is in use, try to steal it from
+ * the private entry. Careful here, we may be modifying the context tables of
+ * another SMMU!
+ */
 static struct arm_smmu_ctx_desc *arm_smmu_share_asid(u16 asid)
 {
+	int ret;
+	u32 new_asid;
 	struct arm_smmu_ctx_desc *cd;
+	struct arm_smmu_device *smmu;
+	struct arm_smmu_domain *smmu_domain;
 
 	cd = xa_load(&asid_xa, asid);
 	if (!cd)
@@ -1809,8 +1830,31 @@ static struct arm_smmu_ctx_desc *arm_smmu_share_asid(u16 asid)
 		return cd;
 	}
 
-	/* Ouch, ASID is already in use for a private cd. */
-	return ERR_PTR(-EBUSY);
+	smmu_domain = container_of(cd, struct arm_smmu_domain, s1_cfg.cd);
+	smmu = smmu_domain->smmu;
+
+	ret = xa_alloc(&asid_xa, &new_asid, cd,
+		       XA_LIMIT(1, 1 << smmu->asid_bits), GFP_KERNEL);
+	if (ret)
+		return ERR_PTR(-ENOSPC);
+	/*
+	 * Race with unmap: TLB invalidations will start targeting the new ASID,
+	 * which isn't assigned yet. We'll do an invalidate-all on the old ASID
+	 * later, so it doesn't matter.
+	 */
+	cd->asid = new_asid;
+
+	/*
+	 * Update ASID and invalidate CD in all associated masters. There will
+	 * be some overlap between use of both ASIDs, until we invalidate the
+	 * TLB.
+	 */
+	arm_smmu_write_ctx_desc(smmu_domain, 0, cd);
+
+	/* Invalidate TLB entries previously associated with that context */
+	arm_smmu_tlb_inv_asid(smmu, asid);
+
+	return NULL;
 }
 
 __maybe_unused
@@ -1836,7 +1880,20 @@ static struct arm_smmu_ctx_desc *arm_smmu_alloc_shared_cd(struct mm_struct *mm)
 
 	arm_smmu_init_cd(cd);
 
+	/*
+	 * Serialize against arm_smmu_domain_finalise_s1() and
+	 * arm_smmu_domain_free() as we might need to replace the private ASID
+	 * from an existing CD.
+	 */
+	mutex_lock(&asid_lock);
 	old_cd = arm_smmu_share_asid(asid);
+	if (!old_cd) {
+		ret = xa_insert(&asid_xa, asid, cd, GFP_KERNEL);
+		if (ret)
+			old_cd = ERR_PTR(ret);
+	}
+	mutex_unlock(&asid_lock);
+
 	if (IS_ERR(old_cd)) {
 		ret = PTR_ERR(old_cd);
 		goto err_free_cd;
@@ -1850,11 +1907,6 @@ static struct arm_smmu_ctx_desc *arm_smmu_alloc_shared_cd(struct mm_struct *mm)
 		return old_cd;
 	}
 
-	/* Fails if a private ASID has been allocated since we last checked */
-	ret = xa_insert(&asid_xa, asid, cd, GFP_KERNEL);
-	if (ret)
-		goto err_free_cd;
-
 	tcr = FIELD_PREP(CTXDESC_CD_0_TCR_T0SZ, 64ULL - VA_BITS) |
 	      FIELD_PREP(CTXDESC_CD_0_TCR_IRGN0, ARM_LPAE_TCR_RGN_WBWA) |
 	      FIELD_PREP(CTXDESC_CD_0_TCR_ORGN0, ARM_LPAE_TCR_RGN_WBWA) |
@@ -2398,15 +2450,6 @@ static void arm_smmu_tlb_inv_context(void *cookie)
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_cmdq_ent cmd;
 
-	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
-		cmd.opcode	= CMDQ_OP_TLBI_NH_ASID;
-		cmd.tlbi.asid	= smmu_domain->s1_cfg.cd.asid;
-		cmd.tlbi.vmid	= 0;
-	} else {
-		cmd.opcode	= CMDQ_OP_TLBI_S12_VMALL;
-		cmd.tlbi.vmid	= smmu_domain->s2_cfg.vmid;
-	}
-
 	/*
 	 * NOTE: when io-pgtable is in non-strict mode, we may get here with
 	 * PTEs previously cleared by unmaps on the current CPU not yet visible
@@ -2414,8 +2457,14 @@ static void arm_smmu_tlb_inv_context(void *cookie)
 	 * insertion to guarantee those are observed before the TLBI. Do be
 	 * careful, 007.
 	 */
-	arm_smmu_cmdq_issue_cmd(smmu, &cmd);
-	arm_smmu_cmdq_issue_sync(smmu);
+	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
+		arm_smmu_tlb_inv_asid(smmu, smmu_domain->s1_cfg.cd.asid);
+	} else {
+		cmd.opcode	= CMDQ_OP_TLBI_S12_VMALL;
+		cmd.tlbi.vmid	= smmu_domain->s2_cfg.vmid;
+		arm_smmu_cmdq_issue_cmd(smmu, &cmd);
+		arm_smmu_cmdq_issue_sync(smmu);
+	}
 	arm_smmu_atc_inv_domain(smmu_domain, 0, 0, 0);
 }
 
@@ -2599,9 +2648,15 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
 	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
 		struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 
+		/*
+		 * Prevent arm_smmu_share_asid() from rewriting CD#0 while we're
+		 * freeing it.
+		 */
+		mutex_lock(&asid_lock);
 		if (cfg->cdcfg.cdtab)
 			arm_smmu_free_cd_tables(smmu_domain);
 		arm_smmu_free_asid(&cfg->cd);
+		mutex_unlock(&asid_lock);
 	} else {
 		struct arm_smmu_s2_cfg *cfg = &smmu_domain->s2_cfg;
 		if (cfg->vmid)
@@ -2623,10 +2678,15 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 
 	arm_smmu_init_cd(&cfg->cd);
 
+	/*
+	 * Prevent arm_smmu_share_asid() from seizing the private ASID we're
+	 * allocating here until it is written to the CD.
+	 */
+	mutex_lock(&asid_lock);
 	ret = xa_alloc(&asid_xa, &asid, &cfg->cd,
 		       XA_LIMIT(1, (1 << smmu->asid_bits) - 1), GFP_KERNEL);
 	if (ret)
-		return ret;
+		goto out_unlock;
 
 	cfg->s1cdmax = master->ssid_bits;
 
@@ -2654,12 +2714,15 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	if (ret)
 		goto out_free_cd_tables;
 
+	mutex_unlock(&asid_lock);
 	return 0;
 
 out_free_cd_tables:
 	arm_smmu_free_cd_tables(smmu_domain);
 out_free_asid:
 	arm_smmu_free_asid(&cfg->cd);
+out_unlock:
+	mutex_unlock(&asid_lock);
 	return ret;
 }
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
