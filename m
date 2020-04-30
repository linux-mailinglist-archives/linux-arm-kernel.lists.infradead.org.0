Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5D11BFEF8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RiwgbaKGyFNNvCNf/5CV/IV3+1W7S4iksC8JR006sZU=; b=RaeN03o2G8ScGI
	/6wbQbmrgPsO52mNQqBxiOQmT/FhWLpoW+ydO80pOj0Cq2CqXDNtBxhgF1qasfSitemv6lwLbtJpm
	2+yK0XhfjUYauKqCIqc8qU7QNA60uAG1O24rqoJWK4So41D14kj8oBt3D92OB0lEpYz3jUPS9TQtx
	99vpdwkOYHSSS46G1VSO3FRM1BN7NZMKqk5TXre96uchb7KnV361X2twdjE7pZ8BcmQU+Y09rMbvm
	Dz35Hoy0BhUg1fpfxGhra3w5HmAYlunCgqpit/BlDU0VRF/u1LUIJuyci/g1w9L4KCu6vw/nRnKl0
	KlbPGRAaD5ucCbJznkDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUASQ-0001Qy-Hr; Thu, 30 Apr 2020 14:46:34 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMj-0002dW-VC
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:43 +0000
Received: by mail-wm1-x341.google.com with SMTP id r26so2211485wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5zUk9NV0nU5TmSz+uWZW+0J3z6ZO8c45bE/F41UldBY=;
 b=hdTx9q9/ZBbgUC8/ufZMC68Zeis9W/RYxXDui8aFftSuMllKim0WGr4wx8hjminehP
 w1g/QaD2kaDN7e4b/Oot4dMemmy6yU9/xYXZzDgPDqvydC0M+3O369m72jEiXRiwoh4Q
 i9sPe28+qOx1cVjOwtZfZAPHopc0wdyPkjIQIMQ2c7FH+MZaoaRXEYOgYTEQXDFsaKUR
 fnu9Ofq0Ad+jqiOB9RX3dVIfO3pE3uTEbw4YMKfVwEHw08Ev0DJweclrvLf+op6gOheV
 b6oa+L4yDKBH7DkfS+f+u0eVik2GiUJxKykIvfc4MOaWRpfZjXdvgAuODWilHbJw3q8r
 Gh5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5zUk9NV0nU5TmSz+uWZW+0J3z6ZO8c45bE/F41UldBY=;
 b=Euh62vvBgh7mchH3swcISfsX92a6Z0GfbVvXmo0lk2/xkgwPI7MxCYTmbeQppIXGO5
 y+oWkGzfdvOj38HQu11BuS/32duFUtBIGTMnt93zYBGsb3kfjd6MZduUpBv+12fHvtFa
 oXxD7r7aQ1zQcnIq9bP6EpJEXFyFZ9BDmCKq4i4ZkXJZ7t58H2lj8RUCAIifSFpvyytG
 s1J1L5nviSO7TSs6ncvo8+eyMRqQxeRCVjDx/abhSUqt0CD2GzvdyaDHeP/RMPTCxEDH
 bOd94BkfluY/Gj77nw/jCY4AEmghWC7M9qPeMrM7n+q6fwFKTMJXLVCbSU2L8sw9LH9Y
 GWWg==
X-Gm-Message-State: AGi0PuZ2Ra0nDir77Q0s39tZGa2JIIIh5j1eTYJD/Zg/zs0YHTnoOu55
 2BO71jNZvLWLPM44QM2vTiKo9w==
X-Google-Smtp-Source: APiQypLYnxQfwV9vUitaM0N+BAtQ0WTyZbQIbMQN53sHeaH1WhNxiOl1IRhWF/dZdB3Dd06HM1dwfw==
X-Received: by 2002:a1c:32c7:: with SMTP id y190mr3503540wmy.13.1588257640161; 
 Thu, 30 Apr 2020 07:40:40 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:39 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 18/25] iommu/arm-smmu-v3: Hook up ATC invalidation to mm ops
Date: Thu, 30 Apr 2020 16:34:17 +0200
Message-Id: <20200430143424.2787566-19-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074042_013310_C5197C0B 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

The invalidate_range() notifier is called for any change to the address
space. Perform the required ATC invalidations.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 56 ++++++++++++++++++++++++++++++-------
 1 file changed, 46 insertions(+), 10 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 00e5b69bb81a5..c65937d953b5f 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -742,7 +742,7 @@ struct arm_smmu_mmu_notifier {
 	struct arm_smmu_ctx_desc	*cd;
 	bool				cleared;
 	refcount_t			refs;
-	struct arm_smmu_domain		*domain;
+	struct arm_smmu_domain __rcu	*domain;
 };
 
 #define mn_to_smmu(mn) container_of(mn, struct arm_smmu_mmu_notifier, mn)
@@ -2396,6 +2396,20 @@ arm_smmu_atc_inv_to_cmd(int ssid, unsigned long iova, size_t size,
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
@@ -2439,12 +2453,12 @@ arm_smmu_atc_inv_to_cmd(int ssid, unsigned long iova, size_t size,
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
@@ -2958,7 +2972,7 @@ static void arm_smmu_disable_ats(struct arm_smmu_master *master)
 	 * ATC invalidation via the SMMU.
 	 */
 	wmb();
-	arm_smmu_atc_inv_master(master);
+	arm_smmu_atc_inv_master(master, 0);
 	atomic_dec(&smmu_domain->nr_ats_masters);
 }
 
@@ -3187,7 +3201,22 @@ static void arm_smmu_mm_invalidate_range(struct mmu_notifier *mn,
 					 struct mm_struct *mm,
 					 unsigned long start, unsigned long end)
 {
-	/* TODO: invalidate ATS */
+	struct arm_smmu_mmu_notifier *smmu_mn = mn_to_smmu(mn);
+	struct arm_smmu_domain *smmu_domain;
+
+	rcu_read_lock();
+	smmu_domain = rcu_dereference(smmu_mn->domain);
+	if (smmu_domain) {
+		/*
+		 * Ensure that mm->pasid is valid. Pairs with the
+		 * smp_store_release() from rcu_assign_pointer() in
+		 * __arm_smmu_sva_bind()
+		 */
+		smp_rmb();
+		arm_smmu_atc_inv_domain(smmu_domain, mm->pasid, start,
+					end - start + 1);
+	}
+	rcu_read_unlock();
 }
 
 static void arm_smmu_mm_release(struct mmu_notifier *mn, struct mm_struct *mm)
@@ -3201,7 +3230,8 @@ static void arm_smmu_mm_release(struct mmu_notifier *mn, struct mm_struct *mm)
 		return;
 	}
 
-	smmu_domain = smmu_mn->domain;
+	smmu_domain = rcu_dereference_protected(smmu_mn->domain,
+			lockdep_is_held(&arm_smmu_sva_lock));
 
 	/*
 	 * DMA may still be running. Keep the cd valid but disable
@@ -3210,7 +3240,7 @@ static void arm_smmu_mm_release(struct mmu_notifier *mn, struct mm_struct *mm)
 	arm_smmu_write_ctx_desc(smmu_domain, mm->pasid, &invalid_cd);
 
 	arm_smmu_tlb_inv_asid(smmu_domain->smmu, smmu_mn->cd->asid);
-	/* TODO: invalidate ATS */
+	arm_smmu_atc_inv_domain(smmu_domain, mm->pasid, 0, 0);
 
 	smmu_mn->cleared = true;
 	mutex_unlock(&arm_smmu_sva_lock);
@@ -3251,7 +3281,8 @@ __arm_smmu_sva_bind(struct device *dev, struct mm_struct *mm)
 		return ERR_CAST(mn);
 
 	smmu_mn = mn_to_smmu(mn);
-	if (smmu_mn->domain)
+	if (rcu_dereference_protected(smmu_mn->domain,
+				      lockdep_is_held(&arm_smmu_sva_lock)))
 		refcount_inc(&smmu_mn->refs);
 
 	bond = kzalloc(sizeof(*bond), GFP_KERNEL);
@@ -3277,7 +3308,11 @@ __arm_smmu_sva_bind(struct device *dev, struct mm_struct *mm)
 
 	bond->sva.dev = dev;
 	list_add(&bond->list, &master->bonds);
-	smmu_mn->domain = smmu_domain;
+	/*
+	 * Initialize domain last, since the invalidate() notifier assumes a
+	 * valid mm->pasid after fetching a valid domain.
+	 */
+	rcu_assign_pointer(smmu_mn->domain, smmu_domain);
 	return &bond->sva;
 
 err_free_pasid:
@@ -3318,7 +3353,8 @@ static void __arm_smmu_sva_unbind(struct iommu_sva *handle)
 		if (!smmu_mn->cleared) {
 			arm_smmu_tlb_inv_asid(smmu_domain->smmu,
 					      smmu_mn->cd->asid);
-			/* TODO: invalidate ATS */
+			arm_smmu_atc_inv_domain(smmu_domain, bond->mm->pasid,
+						0, 0);
 		}
 	}
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
