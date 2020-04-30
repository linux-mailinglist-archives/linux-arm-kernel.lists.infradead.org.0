Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DED0F1BFEED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ywHc5aMinvOBndmqijY1IgmRhPEKd/auTjzRRC6ASPU=; b=Y+KfAkMxjdAXr/
	iqcqPANe9pQr+T6Ucaliw1sbhTlbyC/IlL5E+daMaYBA6eP9AmP3cdoh5mVgt5eBlifXBn0v6TfIs
	pXf3fb6dYeEvmzOhdrEbt6EJYCOqThZh5li+wYLNAoDmUFOhtKiMSJJFEC0QxD8ePpRWr7VwsVSNy
	kiMejL72n6xGHy0UzTWYjIg5bXhIBChq1QmNSEYDcX/sV0bzBTPhsl6ZBCPjlZIXRzsXv+8JGCrQb
	BIC/gzdi/AOWESrteJ72/GbRltYZSS76CxJW3mpYq8EynE86HZyVWrYHNNyfWS8ItvyMWv05IGP3H
	E4s4GsksbBSPresJ+20g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAQQ-0005Xw-Qw; Thu, 30 Apr 2020 14:44:30 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMc-0002Vd-6b
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id u16so2204513wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ulHx7TItF7RKrAr9OLFM2TAYktCujNY4Q1KC5Wi9Kvs=;
 b=gfyrsM/IQafYUcT4eaNXYK7NPZJdY8Ut6cYPYLGFYEb14CfaD7rJrcKZml2LyTtlyE
 hfYCDO5L3G/wvbupqT7sr+9lyB3JfAqD9ZjKNcjKChh+PCpHENWbnWaO+NtR5s/Izrjl
 M68QjcHeilcomoKCfnNJoV0m6g7w3USGNc4f829BTmBvUmeY+PpPpMTMpwEXPs96538J
 m9ZbMRPUY1l4ODiSP8FreWnH+BKSWSEbcPW95oMWg4pPK7hTPCOLG8bleFrL2hjYZl25
 bavOpR/Qjw8+jhP0FyaLoSXjQeNbuR3gCWwK1hu/JAc2JPImI3NdDjVmO0Qpo/eGVbsS
 ZRqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ulHx7TItF7RKrAr9OLFM2TAYktCujNY4Q1KC5Wi9Kvs=;
 b=khE8Owg+O7Q9QuEbfmZ6r74hxB+Et4kq4lkrH4WPvugC1JNt2SZJ1+F8XtXJMAhgar
 84iN6UQN0WzhERpMx8b7Ew8WY1Byg/YsvEYffNUMGYWQQ8k72uaVePsbzd5nEbyTQqzp
 N40zSFOxe8BjWkhmAga3m29f/FxeOgzd4jZ9rAvzzTY6d4OeCzxO3QRotZRoLsrfPWLu
 5w+gOw/eTpColUT6S1rOXExLpQDmjG5bwZ1dNFL/vqgeV/E1PfyPnXCwQqd9xMgZxMTP
 McyIggkXe5UXpraAs5f0GqM3j22k70RCj21CmbIoTScyPjB/uMuSc4gQoASjp1QScwmf
 tSwg==
X-Gm-Message-State: AGi0PubSGzURhyGk+PjnLzk4xPMnv/rTQKc5jtl54IAVqc6a16VbdNxl
 W/lgxCWPeE4vj4YD1EaOJRiT6WF6zB8=
X-Google-Smtp-Source: APiQypJ46AjhsgwjU6+8jK682sr3bY29vZdr/rRH0411nTgNbJxhobRamLvm4JHXPcjf5QkjmKyktw==
X-Received: by 2002:a7b:c0c5:: with SMTP id s5mr3308375wmh.134.1588257632747; 
 Thu, 30 Apr 2020 07:40:32 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:32 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 12/25] iommu/arm-smmu-v3: Seize private ASID
Date: Thu, 30 Apr 2020 16:34:11 +0200
Message-Id: <20200430143424.2787566-13-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074035_634118_A4DFE897 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: fenghua.yu@intel.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 jgg@ziepe.ca, catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 hch@infradead.org, zhangfei.gao@linaro.org,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, Jonathan.Cameron@huawei.com,
 felix.kuehling@amd.com, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
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

Introduce a new lock to prevent races when rewriting context
descriptors. Unfortunately it has to be a spinlock since we take it
while holding the asid lock, which will be held in non-sleepable context
(freeing ASIDs from an RCU callback).

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 83 +++++++++++++++++++++++++++++--------
 1 file changed, 66 insertions(+), 17 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index fb3116045df0f..aad49d565c592 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -730,6 +730,7 @@ struct arm_smmu_option_prop {
 };
 
 static DEFINE_XARRAY_ALLOC1(asid_xa);
+static DEFINE_SPINLOCK(contexts_lock);
 
 static struct arm_smmu_option_prop arm_smmu_options[] = {
 	{ ARM_SMMU_OPT_SKIP_PREFETCH, "hisilicon,broken-prefetch-cmd" },
@@ -1534,6 +1535,17 @@ static int arm_smmu_cmdq_batch_submit(struct arm_smmu_device *smmu,
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
@@ -1568,7 +1580,7 @@ static int arm_smmu_alloc_cd_leaf_table(struct arm_smmu_device *smmu,
 	size_t size = CTXDESC_L2_ENTRIES * (CTXDESC_CD_DWORDS << 3);
 
 	l1_desc->l2ptr = dmam_alloc_coherent(smmu->dev, size,
-					     &l1_desc->l2ptr_dma, GFP_KERNEL);
+					     &l1_desc->l2ptr_dma, GFP_ATOMIC);
 	if (!l1_desc->l2ptr) {
 		dev_warn(smmu->dev,
 			 "failed to allocate context descriptor table\n");
@@ -1614,8 +1626,8 @@ static __le64 *arm_smmu_get_cd_ptr(struct arm_smmu_domain *smmu_domain,
 	return l1_desc->l2ptr + idx * CTXDESC_CD_DWORDS;
 }
 
-static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
-				   int ssid, struct arm_smmu_ctx_desc *cd)
+static int __arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
+				     int ssid, struct arm_smmu_ctx_desc *cd)
 {
 	/*
 	 * This function handles the following cases:
@@ -1691,6 +1703,17 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 	return 0;
 }
 
+static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
+				   int ssid, struct arm_smmu_ctx_desc *cd)
+{
+	int ret;
+
+	spin_lock(&contexts_lock);
+	ret = __arm_smmu_write_ctx_desc(smmu_domain, ssid, cd);
+	spin_unlock(&contexts_lock);
+	return ret;
+}
+
 static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
 {
 	int ret;
@@ -1794,9 +1817,18 @@ static bool arm_smmu_free_asid(struct arm_smmu_ctx_desc *cd)
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
@@ -1808,11 +1840,31 @@ static struct arm_smmu_ctx_desc *arm_smmu_share_asid(u16 asid)
 		return cd;
 	}
 
+	smmu_domain = container_of(cd, struct arm_smmu_domain, s1_cfg.cd);
+	smmu = smmu_domain->smmu;
+
+	/*
+	 * Race with unmap: TLB invalidations will start targeting the new ASID,
+	 * which isn't assigned yet. We'll do an invalidate-all on the old ASID
+	 * later, so it doesn't matter.
+	 */
+	ret = __xa_alloc(&asid_xa, &new_asid, cd,
+			 XA_LIMIT(1, 1 << smmu->asid_bits), GFP_ATOMIC);
+	if (ret)
+		return ERR_PTR(-ENOSPC);
+	cd->asid = new_asid;
+
 	/*
-	 * Ouch, ASID is already in use for a private cd.
-	 * TODO: seize it.
+	 * Update ASID and invalidate CD in all associated masters. There will
+	 * be some overlap between use of both ASIDs, until we invalidate the
+	 * TLB.
 	 */
-	return ERR_PTR(-EEXIST);
+	arm_smmu_write_ctx_desc(smmu_domain, 0, cd);
+
+	/* Invalidate TLB entries previously associated with that context */
+	arm_smmu_tlb_inv_asid(smmu, asid);
+
+	return NULL;
 }
 
 __maybe_unused
@@ -2402,15 +2454,6 @@ static void arm_smmu_tlb_inv_context(void *cookie)
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
@@ -2418,8 +2461,14 @@ static void arm_smmu_tlb_inv_context(void *cookie)
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
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
