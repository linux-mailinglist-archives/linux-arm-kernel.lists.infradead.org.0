Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2D81619BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 19:29:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qr1e7TsRXfKwuwc8AhqESkqKmgmby/nTKJ5uaUf8ozw=; b=kQgwadhOu6yxE4fHj2zSeTp87
	oCMF1cpnYzdHnZuoZCy6Zlme5VDgIZALPJAINeRI+lvs/0YOrYL0WEnRckRjyeeaRQawmdyEErocf
	di76Fj9ZdSWaUGXe9Z5vWCoCipWFnpFpse1h7be1bs/9ZJAcByxtqe/cGGNZJvf5AC2X0RPvGTwH3
	SJwCt5T5iCyRTz9KJryPrH61FadrBYMh4VyY2tGWnf92TZ8mjSNzYh1TxFE2MJeBGJgFbKKjdBqg3
	F9H5Gpu25RqMZhXGYdahiiAZsnnj+JbpU0L2SWc70NqzmHyN+bWBo48hB0TaDgPit3RRG8ba03lEU
	iJr16gDRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3l9I-0004wd-0F; Mon, 17 Feb 2020 18:29:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3l96-0004wC-OU
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 18:29:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id m10so489714wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 10:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qgbH6DAhDEcjUIoTkC0vIf476YB12oIaCGkw17tdaOk=;
 b=qtlZm5C8jXyjJjOg6IbqpV8KD54qXiTLQcDnwQ/W57TA3fWjbvwv6Iv2AZyBV9TfY8
 Izy1q1hmXeRt+8FKVC96d77+U9eiVlmcnrNqgVmllsNiNxIjKBrbSr9VYCixuKVo8YNM
 cDHIkig1xpdp1IM31757Mw3CnfWBbTLWkzvY9G9c52sI4t1qPtZfwihR5sEdkXStvIY+
 i44zIYWQPoi/tmaeqKFh7hcfUvBhQoRyZd3BFLklOH6V6IlRq+cUBFB7ety+3qe6FHgb
 Jq/8DHo/EusV2DaOJQZoMtRZksN4raEB2O3/yFikBeucz4uaUGb/x2h/U7yqG/PB4Bz2
 FpxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qgbH6DAhDEcjUIoTkC0vIf476YB12oIaCGkw17tdaOk=;
 b=JSayNriwvArib2lXpl9ogxycfU19uJ+PeVDGe/lJa+bu9aPSkoxtArN7WLHUQu+QCh
 GYEl7+/jAkwzTF2nfujEYwnkuUJXva9uWlRZAWreqCHgKsm5Yj5olB86bqZ8cm8uImu6
 Em2VkVvoDsqHXkXFrlTYlDUN5zax8+uStUk6d2EFQusuOTaEVRojoYBDlKPRAbq7s8oC
 3BgPuvMq/Af5+abwQn71aAbUB8cCb9n0/xGdr7UKMS8VTSdoR+dLLej7qMst7cbsJ0XN
 /dKknf88nQsP6JQXFoPGdqeH9dGrTm9CLWe41daPbcIFIlJ+6ozoBt/vKHdJNXH0IvWX
 hnUA==
X-Gm-Message-State: APjAAAVp24JB1sgVJ1cOvFPpJhTjAYrg0eTB+h0o8Vyn9vTPZBc5GDIt
 v5TO/9MZAsrK6QPenyVcby6irw==
X-Google-Smtp-Source: APXvYqyaMD0oVCsJvrATvvKvPscfu239rotGRZo42mMqwnmR3xag2jXnV5T+04JDoRGRVmHimJbRcA==
X-Received: by 2002:a1c:e108:: with SMTP id y8mr257638wmg.147.1581964167153;
 Mon, 17 Feb 2020 10:29:27 -0800 (PST)
Received: from myrica ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y8sm330395wma.10.2020.02.17.10.29.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 10:29:26 -0800 (PST)
Date: Mon, 17 Feb 2020 19:29:18 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2] iommu/arm-smmu-v3: Batch ATC invalidation commands
Message-ID: <20200217182918.GE1650092@myrica>
References: <20200213205600.19690-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline
In-Reply-To: <20200213205600.19690-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_102928_833923_155DAE97 
X-CRM114-Status: GOOD (  20.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux-foundation.org,
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 13, 2020 at 02:56:00PM -0600, Rob Herring wrote:
> Similar to commit 2af2e72b18b4 ("iommu/arm-smmu-v3: Defer TLB
> invalidation until ->iotlb_sync()"), build up a list of ATC invalidation
> commands and submit them all at once to the command queue instead of
> one-by-one.
> 
> As there is only one caller of arm_smmu_atc_inv_master() left, we can
> simplify it and avoid passing in struct arm_smmu_cmdq_ent.
> 
> Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
> Cc: Will Deacon <will@kernel.org>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Joerg Roedel <joro@8bytes.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Jean-Philippe Brucker <jean-philippe@linaro.org>


Since I'm adding a third user of cmdq batching [1], I had a go at
factoring them. I can send the attached patch with my next version, if it
looks OK.

Thanks,
Jean

[1] https://lore.kernel.org/linux-iommu/20200213101435.229932-4-jean-philippe@linaro.org/


--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-iommu-arm-smmu-v3-Factor-command-queue-batching.patch"

From b304f322e6293be4ec8b5a01e2ef67e8fa34143c Mon Sep 17 00:00:00 2001
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
Date: Mon, 17 Feb 2020 17:42:54 +0100
Subject: [PATCH] iommu/arm-smmu-v3: Factor command queue batching

Factor the code for command queue batching, which is now repeated three
times for TLB, ATC and CFG invalidations.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 66 +++++++++++++++++++------------------
 1 file changed, 34 insertions(+), 32 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 45da5c251b65..04c3077589be 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -548,6 +548,11 @@ struct arm_smmu_cmdq {
 	atomic_t			lock;
 };
 
+struct arm_smmu_cmdq_batch {
+	u64				cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
+	int				num;
+};
+
 struct arm_smmu_evtq {
 	struct arm_smmu_queue		q;
 	u32				max_stalls;
@@ -1482,15 +1487,33 @@ static int arm_smmu_cmdq_issue_sync(struct arm_smmu_device *smmu)
 	return arm_smmu_cmdq_issue_cmdlist(smmu, NULL, 0, true);
 }
 
+static void arm_smmu_cmdq_batch_add(struct arm_smmu_device *smmu,
+				    struct arm_smmu_cmdq_batch *cmds,
+				    struct arm_smmu_cmdq_ent *cmd)
+{
+	if (cmds->num == CMDQ_BATCH_ENTRIES) {
+		arm_smmu_cmdq_issue_cmdlist(smmu, cmds->cmds, cmds->num, false);
+		cmds->num = 0;
+	}
+	arm_smmu_cmdq_build_cmd(&cmds->cmds[cmds->num * CMDQ_ENT_DWORDS], cmd);
+	cmds->num++;
+}
+
+static int arm_smmu_cmdq_batch_submit(struct arm_smmu_device *smmu,
+				      struct arm_smmu_cmdq_batch *cmds)
+{
+	return arm_smmu_cmdq_issue_cmdlist(smmu, cmds->cmds, cmds->num, true);
+}
+
+
 /* Context descriptor manipulation functions */
 static void arm_smmu_sync_cd(struct arm_smmu_domain *smmu_domain,
 			     int ssid, bool leaf)
 {
 	size_t i;
-	int cmdn = 0;
 	unsigned long flags;
 	struct arm_smmu_master *master;
-	u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
+	struct arm_smmu_cmdq_batch cmds = {};
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_cmdq_ent cmd = {
 		.opcode	= CMDQ_OP_CFGI_CD,
@@ -1503,19 +1526,13 @@ static void arm_smmu_sync_cd(struct arm_smmu_domain *smmu_domain,
 	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
 	list_for_each_entry(master, &smmu_domain->devices, domain_head) {
 		for (i = 0; i < master->num_sids; i++) {
-			if (cmdn == CMDQ_BATCH_ENTRIES) {
-				arm_smmu_cmdq_issue_cmdlist(smmu, cmds, cmdn, false);
-				cmdn = 0;
-			}
-
 			cmd.cfgi.sid = master->sids[i];
-			arm_smmu_cmdq_build_cmd(&cmds[cmdn * CMDQ_ENT_DWORDS], &cmd);
-			cmdn++;
+			arm_smmu_cmdq_batch_add(smmu, &cmds, &cmd);
 		}
 	}
 	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
 
-	arm_smmu_cmdq_issue_cmdlist(smmu, cmds, cmdn, true);
+	arm_smmu_cmdq_batch_submit(smmu, &cmds);
 }
 
 static int arm_smmu_alloc_cd_leaf_table(struct arm_smmu_device *smmu,
@@ -2160,11 +2177,11 @@ static int arm_smmu_atc_inv_master(struct arm_smmu_master *master)
 static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
 				   int ssid, unsigned long iova, size_t size)
 {
-	int i, cmdn = 0;
+	int i;
 	unsigned long flags;
 	struct arm_smmu_cmdq_ent cmd;
 	struct arm_smmu_master *master;
-	u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
+	struct arm_smmu_cmdq_batch cmds = {};
 
 	if (!(smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS))
 		return 0;
@@ -2194,20 +2211,13 @@ static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
 			continue;
 
 		for (i = 0; i < master->num_sids; i++) {
-			if (cmdn == CMDQ_BATCH_ENTRIES) {
-				arm_smmu_cmdq_issue_cmdlist(smmu_domain->smmu,
-					cmds, cmdn, false);
-				cmdn = 0;
-			}
-
 			cmd.atc.sid = master->sids[i];
-			arm_smmu_cmdq_build_cmd(&cmds[cmdn * CMDQ_ENT_DWORDS], &cmd);
-			cmdn++;
+			arm_smmu_cmdq_batch_add(smmu_domain->smmu, &cmds, &cmd);
 		}
 	}
 	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
 
-	return arm_smmu_cmdq_issue_cmdlist(smmu_domain->smmu, cmds, cmdn, true);
+	return arm_smmu_cmdq_batch_submit(smmu_domain->smmu, &cmds);
 }
 
 /* IO_PGTABLE API */
@@ -2242,10 +2252,9 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
 				   size_t granule, bool leaf,
 				   struct arm_smmu_domain *smmu_domain)
 {
-	u64 cmds[CMDQ_BATCH_ENTRIES * CMDQ_ENT_DWORDS];
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	unsigned long start = iova, end = iova + size;
-	int i = 0;
+	struct arm_smmu_cmdq_batch cmds = {};
 	struct arm_smmu_cmdq_ent cmd = {
 		.tlbi = {
 			.leaf	= leaf,
@@ -2264,18 +2273,11 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
 	}
 
 	while (iova < end) {
-		if (i == CMDQ_BATCH_ENTRIES) {
-			arm_smmu_cmdq_issue_cmdlist(smmu, cmds, i, false);
-			i = 0;
-		}
-
 		cmd.tlbi.addr = iova;
-		arm_smmu_cmdq_build_cmd(&cmds[i * CMDQ_ENT_DWORDS], &cmd);
+		arm_smmu_cmdq_batch_add(smmu, &cmds, &cmd);
 		iova += granule;
-		i++;
 	}
-
-	arm_smmu_cmdq_issue_cmdlist(smmu, cmds, i, true);
+	arm_smmu_cmdq_batch_submit(smmu, &cmds);
 
 	/*
 	 * Unfortunately, this can't be leaf-only since we may have
-- 
2.25.0


--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--ew6BAiZeqk4r7MaW--

