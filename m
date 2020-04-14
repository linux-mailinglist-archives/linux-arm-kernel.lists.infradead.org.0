Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A4C1A8706
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1I7OPmqt2IIihQxzR4btJaDuqB24yQK//8il02mH44=; b=dipnPi7EFfv3IL
	nBKEsiNYPzTzT/c4I195UQLjHIJgygp6slff6SJdUntajbBba7BJeUi9sZ96Y646Tfjg4+x0V0qwr
	piIH2XcAHRe+pwFNYTcAqnFcK747636kdbbkqI35ha1cpcIDI94UpVvdU5BTtha8yvNda+cY53z6B
	Aa0pj0gO413E5Q7K70LlNRrIrymwzY22WiGM5WDaN4wAX36R/BgOuxFfPichxzLEoqhiZ8msBdsai
	Q30lfBcqRXFiZrUBFp30RZ+3hc7MwdGnqr2F9A/A6jul8IuWove+ghzlt9pdnHxzVthea3FvUEOzs
	0UMVkPV0aU4SUV/phhTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP3O-0008QK-5x; Tue, 14 Apr 2020 17:08:54 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOzG-0002Hm-69
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:04:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id r26so14958938wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XYjzYLucwyMWs5ATd69ukU535fMinAQdw/Sa1FQ9874=;
 b=h9+T4NKlDIuEuOboHRkQ9VM5O6C305HktEqTd1ZjCrXyVdjGXpKMut+cm0j25dz8L8
 qED+RLh1oJwzxEXRlXzbxme6N1keKufeYV9dapDPQtGb3afujRsD37DcAqdUwlABi+kY
 6+AD1XXWqkoRRFGeAhAXRueOoV8MzRbnmuvkLQUNpXIZcveXEGWfkMnnceb6fPbrFvux
 k+IrqpGZ8iqZSSXdseYwd+fkjbxj05n2Va1tkNh5llSnOQ3uPgo2WjZy0jga6vHpGoLM
 ImtsA+n+pkrR86mvRcRxAaM8Z1T/E7yFwFVTV3O3UFgsvbJf2Prxmyrzb1TDgj8KqAPd
 Q+ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XYjzYLucwyMWs5ATd69ukU535fMinAQdw/Sa1FQ9874=;
 b=aijX6yVAOw7z6P71uwgFfvPEaBOWIjJzCl1UTKe65gjNNaAVQ75S+4gvOXaBEHEiYM
 rqabXsTiSydOWFP5QYVX44GQ3aFXW1ZZnssffK5ZjAvN/gJu8Dz3W8mBStrCSaaayetw
 8P2Azr8KBJJ9jH8a3cQyKKhjKKJAF49oahB9AJHtYMJp/XhgXhlPfqGQRY3YNgvnAJOy
 +9cxhH0SDyh5c0HpmfG567XXevvvta9tvOGFAioaU8lykcqpb71CONnRPMYWTRCmzZ7P
 zPmiBENPj8y3j20TLt2RWkO0tnXHTEoC9zqcd5oAvlpvqfKvoOGF2w/zgOxicV9NtjCv
 ZJCQ==
X-Gm-Message-State: AGi0Pua1zo5hnQxPgZR7xTZkZbeYNWiHIKokljmGlM4xGj6ImQYOWn7g
 LGLfSDcUVP4x1C6DIcGnmaF7pg==
X-Google-Smtp-Source: APiQypI7JCLr3IUyR+gNk8YroVsmo+Ju0KwL83AHQIeXPjqzPAV1RnhANqCP4fKquYyiz4/jl6+90g==
X-Received: by 2002:a7b:cc88:: with SMTP id p8mr777259wma.108.1586883876735;
 Tue, 14 Apr 2020 10:04:36 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:35 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 13/25] iommu/arm-smmu-v3: Seize private ASID
Date: Tue, 14 Apr 2020 19:02:41 +0200
Message-Id: <20200414170252.714402-14-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414170252.714402-1-jean-philippe@linaro.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100438_247255_A32D73F1 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

The SMMU has a single ASID space, the union of shared and private ASID
sets. This means that the SMMU driver competes with the arch allocator
for ASIDs. Shared ASIDs are those of Linux processes, allocated by the
arch, and contribute in broadcast TLB maintenance. Private ASIDs are
allocated by the SMMU driver and used for "classic" map/unmap DMA. They
require explicit TLB invalidations.

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
index 09f4f712fb103..8fbc5da133ae4 100644
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
@@ -1812,11 +1844,31 @@ static struct arm_smmu_ctx_desc *arm_smmu_share_asid(u16 asid)
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
@@ -2407,15 +2459,6 @@ static void arm_smmu_tlb_inv_context(void *cookie)
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
@@ -2423,8 +2466,14 @@ static void arm_smmu_tlb_inv_context(void *cookie)
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
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
