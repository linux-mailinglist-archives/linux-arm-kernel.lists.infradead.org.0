Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9D91D9ED4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mD/K0+cx2GeiPsMNE9bZsYm4bK/2aY4y3iOvqg34MAc=; b=WTxjvm7PSDnH1k
	uqy2yPlCbKJy6MogPuJnPkYxPNXLahG5NASR4M4/OETnX2FvPeSDgzgTp3KD/4Rrg+JhWRYvhaifG
	LzaimdsNMLRHLHM3LIFSFJkS1af+CNn1XI0tpPNbeeveclEgzc9jP9krD0ISS+rUSvi7AdB7Fn7Kn
	P6i7rMHYOPQrFRmylNVf9mGypLud/5IZu2a7CutFmocJJ5vahhiG+PnHr0U0lVEVJ2iuTYXJ2jVm1
	BPL4OGrVTkD1zRMffV2s303QArxd0R57TG4S8VEq+/Ei8tvsiXMXo1bYU5TEt//mV/Kh8PXFzzm0Q
	YzhI2WEgBedHPh50XH7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6eh-0005XX-4D; Tue, 19 May 2020 18:07:55 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6Z2-0006Xx-8x
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:02:07 +0000
Received: by mail-wm1-x343.google.com with SMTP id z4so174456wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 11:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NGZBqF0MKtBmW3+eHctFURo6Y3LrBwBhNb0YCIPd+HA=;
 b=GIa5rX/V8vIRUfbiSlnvp1rb1ufNakvQ3BYq7CuxJ+6y04cFET10DnyGSuz8dr3ewS
 JGseTTPXmL7lwcTCfvuDUhqkNilVMaDjuQ//i6hqiluDgcT0daJQF0ZXvlOgKbk9wkOW
 1jRPjJj48+VVv/cC08UVBJb93oXj9wXN1497znOMJqUBmpgLrzIA+Ph396uYjUQPVZbX
 AIaX+B5fwrmyfAF/BmsLI+gJYujooLP1Tp7H/jLQePAYx8ysxfvr0p+lJL0LQfiJWnwA
 B4yKFupzyAMy9bWEGLeMFauoiCf9VF4iQMiMpH4CwZAX+jVasWUxjcfoRlCPBeIBUx3y
 3+8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NGZBqF0MKtBmW3+eHctFURo6Y3LrBwBhNb0YCIPd+HA=;
 b=kEGZSD8YYeXByU/UCQbkb9JDuMXT1D/NPSoaFTCe9DEYVGD0BNeNKCN2WdLjwyN1jW
 yZQ4JHJhPtWq6zdDDpN6LnnWyFoULjVlshsoLImFAu8IitvUUyzzW296NORP+GkXFrzb
 AMRLGhUVZ93lx2RqTMtcikcZT9G/gBDoDOg9ZW0YcBa0p2mGOSpOnkpgTlU835DmEuJv
 +9qW8OEutSniph5wjattAHnuHsNH9XDittQmYgzMVohR2p3TkWWkSxBjVR5qmcRQiALU
 RqGBQHZOsOElgZfkIrfu1br5s56QL5eJUQ5WXkGDtayY2GakeZToHpQ8tU/f8JNcJo14
 mkkg==
X-Gm-Message-State: AOAM531GUfgUyCIJf0HhKuGhLJPl9TkE9gpliZWndGNVZfIuQ6rbePj3
 P8Xf43HCeh2hqFLpIJRmrcUGxA==
X-Google-Smtp-Source: ABdhPJzkEAJ1N27WjhAzpGiM0SWJrYRN6tSSh0kfb4HAwQvH5gMWf60VDilJ/HWg5+gL5FnDijwbkw==
X-Received: by 2002:a1c:49:: with SMTP id 70mr569224wma.184.1589911321556;
 Tue, 19 May 2020 11:02:01 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id 1sm510496wmz.13.2020.05.19.11.02.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 11:02:01 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v7 17/24] iommu/arm-smmu-v3: Hook up ATC invalidation to mm ops
Date: Tue, 19 May 2020 19:54:55 +0200
Message-Id: <20200519175502.2504091-18-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519175502.2504091-1-jean-philippe@linaro.org>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_110204_389324_BBF691DE 
X-CRM114-Status: GOOD (  12.46  )
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

The invalidate_range() notifier is called for any change to the address
space. Perform the required ATC invalidations.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v6->v7: invalidate() doesn't need RCU protection anymore.
---
 drivers/iommu/arm-smmu-v3.c | 29 +++++++++++++++++++++++------
 1 file changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 00a9342eed99..1386d4d2bc60 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2392,6 +2392,20 @@ arm_smmu_atc_inv_to_cmd(int ssid, unsigned long iova, size_t size,
 	size_t inval_grain_shift = 12;
 	unsigned long page_start, page_end;
 
+	/*
+	 * ATS and PASID:
+	 *
+	 * If substream_valid is clear, the PCIe TLP is sent without a PASID
+	 * prefix. In that case all ATC entries within the address range are
+	 * invalidated, including those that were requested with a PASID! There
+	 * is no way to invalidate only entries without PASID.
+	 *
+	 * When using STRTAB_STE_1_S1DSS_SSID0 (reserving CD 0 for non-PASID
+	 * traffic), translation requests without PASID create ATC entries
+	 * without PASID, which must be invalidated with substream_valid clear.
+	 * This has the unpleasant side-effect of invalidating all PASID-tagged
+	 * ATC entries within the address range.
+	 */
 	*cmd = (struct arm_smmu_cmdq_ent) {
 		.opcode			= CMDQ_OP_ATC_INV,
 		.substream_valid	= !!ssid,
@@ -2435,12 +2449,12 @@ arm_smmu_atc_inv_to_cmd(int ssid, unsigned long iova, size_t size,
 	cmd->atc.size	= log2_span;
 }
 
-static int arm_smmu_atc_inv_master(struct arm_smmu_master *master)
+static int arm_smmu_atc_inv_master(struct arm_smmu_master *master, int ssid)
 {
 	int i;
 	struct arm_smmu_cmdq_ent cmd;
 
-	arm_smmu_atc_inv_to_cmd(0, 0, 0, &cmd);
+	arm_smmu_atc_inv_to_cmd(ssid, 0, 0, &cmd);
 
 	for (i = 0; i < master->num_sids; i++) {
 		cmd.atc.sid = master->sids[i];
@@ -2968,7 +2982,7 @@ static void arm_smmu_disable_ats(struct arm_smmu_master *master)
 	 * ATC invalidation via the SMMU.
 	 */
 	wmb();
-	arm_smmu_atc_inv_master(master);
+	arm_smmu_atc_inv_master(master, 0);
 	atomic_dec(&smmu_domain->nr_ats_masters);
 }
 
@@ -3169,7 +3183,10 @@ static void arm_smmu_mm_invalidate_range(struct mmu_notifier *mn,
 					 struct mm_struct *mm,
 					 unsigned long start, unsigned long end)
 {
-	/* TODO: invalidate ATS */
+	struct arm_smmu_mmu_notifier *smmu_mn = mn_to_smmu(mn);
+
+	arm_smmu_atc_inv_domain(smmu_mn->domain, mm->pasid, start,
+				end - start + 1);
 }
 
 static void arm_smmu_mm_release(struct mmu_notifier *mn, struct mm_struct *mm)
@@ -3190,7 +3207,7 @@ static void arm_smmu_mm_release(struct mmu_notifier *mn, struct mm_struct *mm)
 	arm_smmu_write_ctx_desc(smmu_domain, mm->pasid, &invalid_cd);
 
 	arm_smmu_tlb_inv_asid(smmu_domain->smmu, smmu_mn->cd->asid);
-	/* TODO: invalidate ATS */
+	arm_smmu_atc_inv_domain(smmu_domain, mm->pasid, 0, 0);
 
 	smmu_mn->cleared = true;
 	mutex_unlock(&sva_lock);
@@ -3281,7 +3298,7 @@ void arm_smmu_mmu_notifier_put(struct arm_smmu_mmu_notifier *smmu_mn)
 	 */
 	if (!smmu_mn->cleared) {
 		arm_smmu_tlb_inv_asid(smmu_domain->smmu, cd->asid);
-		/* TODO: invalidate ATS */
+		arm_smmu_atc_inv_domain(smmu_domain, mm->pasid, 0, 0);
 	}
 
 	/* Frees smmu_mn */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
