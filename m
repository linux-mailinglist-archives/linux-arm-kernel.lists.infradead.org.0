Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B63516AF1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:29:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jAf5blNXxzYiWYIltc0t+dqgeuajflxKDivTJYpP/sw=; b=Yzpk+mXyI3hzDe
	CH6p99FtGDTJOOMg0iXUKrGlk6bdr4NKVPQgGDQ9xyU6oHPZqihRizr9DcxkB9Aebq+U1EuqVhf2q
	/pWxnBJyd19HXVURMx9Gq4tR1gubawZc3eO3tkotwqOCOaXg8v1qqnELdvOmDMYCky3DmgPDEkX0a
	rSeevBTsVRoz2eN2rx83+6KfXP1uyTqTblHovppgtCpRtvWdxC0OOSiZMoGPg7DPSUIcULN9mTox6
	TDrqe+5NbJnQcLcQTB5WR5PU5JqthPu14cp9PjntxZeWjfPwqOCZiIZBphd35eY8+DDAljSD6/SzH
	weHMh3/ML9eOkSlu2zww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IUG-0002e8-6R; Mon, 24 Feb 2020 18:29:48 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IPS-0005lQ-QU
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:24:53 +0000
Received: by mail-wr1-x441.google.com with SMTP id t3so11560355wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZmUwfBE2Jvvg1hKUoqTW1Tzu3Hjef3qChRCYp/V+4z4=;
 b=fxvvkF/Z32DjH84285DNlIPhJoi0kRLNJoxVIH7KOt2EDK83vWJJdX2p0ctjcP0+gm
 qisx9YvSxt+OhX+CZ8obez7cElrie6GQHcCW1oQ4UQb93k576+N2gpVIEqJVr9bohALT
 6riHGDBI9q5MffRpe8+xohDweiZ/qUWIrGYHsajhyVDmsdv3l8uSOo5T9POpRTIIiapz
 FvwthMPXu+xQ8cHZx0EbY0+ZszexexopCdlk5+7lw+f4/+AQcZADd2kews00jYTIZqws
 RHpE2hpFC9DfAMDCdZxJmKNinpQ8YtMpz5/fZkrtYGwf+p++YWkknqDYg95TBwEvcHpE
 JJWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZmUwfBE2Jvvg1hKUoqTW1Tzu3Hjef3qChRCYp/V+4z4=;
 b=Rkb4w5FooH9UgTBDz6Hj5WDvIzEz9bHX3Ur+IE7e1zjK8pbfr0hOtsLB5utMRNGset
 gnOcfdsJM/2h3VPJvhcuKyXd6UArjcxYkqF5QWQq0b7rkBMW+i0wR21QBGLxd9sKTqdH
 2rM/aEXO0dmLmz52MZP53zQF/V3BKcYKqHmDoDrM/Wht6ApCF1cDa325LgGPuNkvqMRQ
 0FYUrXHTjC2uiEeD2Y/290mH11OOaJknf1blRCQnlP+wYZiy1QW9zZMrZHK0/7LdOq49
 T9IWxRPbNbzQlpC9/YB74Tm7OBeoeN4tX/xaswIOdp6fLOX1Wqkzicg9pCYsBdlijw4u
 sQzA==
X-Gm-Message-State: APjAAAXFMy2b3xAv0TDLcnS1UjxI5Zqxf7aB6pEwXNTA22wWPi4TZhvS
 indDsyA3xJzDKFgWfNDp3dM2HQ==
X-Google-Smtp-Source: APXvYqybBiQ3Y5uECJkf6wnUNdgrSmLMTNXn6Wwg6bg+H52TrB4b+jy0fSf/fGsZzyfFNyePzPdLuA==
X-Received: by 2002:adf:df90:: with SMTP id z16mr66588301wrl.273.1582568689235; 
 Mon, 24 Feb 2020 10:24:49 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:48 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 18/26] iommu/arm-smmu-v3: Hook up ATC invalidation to mm ops
Date: Mon, 24 Feb 2020 19:23:53 +0100
Message-Id: <20200224182401.353359-19-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102451_059600_FB6508E8 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, catalin.marinas@arm.com,
 joro@8bytes.org, robin.murphy@arm.com, robh+dt@kernel.org, yi.l.liu@intel.com,
 Jonathan.Cameron@huawei.com, zhangfei.gao@linaro.org, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>

The core calls us when an mm is modified. Perform the required ATC
invalidations.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 44 ++++++++++++++++++++++++++++++++-----
 1 file changed, 38 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 3973f7222864..95b4caceae1a 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2354,6 +2354,20 @@ arm_smmu_atc_inv_to_cmd(int ssid, unsigned long iova, size_t size,
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
@@ -2397,12 +2411,12 @@ arm_smmu_atc_inv_to_cmd(int ssid, unsigned long iova, size_t size,
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
@@ -2874,7 +2888,7 @@ static void arm_smmu_disable_ats(struct arm_smmu_master *master)
 	 * ATC invalidation via the SMMU.
 	 */
 	wmb();
-	arm_smmu_atc_inv_master(master);
+	arm_smmu_atc_inv_master(master, 0);
 	atomic_dec(&smmu_domain->nr_ats_masters);
 }
 
@@ -3065,7 +3079,22 @@ arm_smmu_iova_to_phys(struct iommu_domain *domain, dma_addr_t iova)
 static void arm_smmu_mm_invalidate(struct device *dev, int pasid, void *entry,
 				   unsigned long iova, size_t size)
 {
-	/* TODO: Invalidate ATC */
+	int i;
+	struct arm_smmu_cmdq_ent cmd;
+	struct arm_smmu_cmdq_batch cmds = {};
+	struct arm_smmu_master *master = dev_to_master(dev);
+
+	if (!master->ats_enabled)
+		return;
+
+	arm_smmu_atc_inv_to_cmd(pasid, iova, size, &cmd);
+
+	for (i = 0; i < master->num_sids; i++) {
+		cmd.atc.sid = master->sids[i];
+		arm_smmu_cmdq_batch_add(master->smmu, &cmds, &cmd);
+	}
+
+	arm_smmu_cmdq_batch_submit(master->smmu, &cmds);
 }
 
 static int arm_smmu_mm_attach(struct device *dev, int pasid, void *entry,
@@ -3089,6 +3118,7 @@ static void arm_smmu_mm_detach(struct device *dev, int pasid, void *entry,
 			       bool detach_domain)
 {
 	struct arm_smmu_ctx_desc *cd = entry;
+	struct arm_smmu_master *master = dev_to_master(dev);
 	struct iommu_domain *domain = iommu_get_domain_for_dev(dev);
 	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
 
@@ -3102,9 +3132,11 @@ static void arm_smmu_mm_detach(struct device *dev, int pasid, void *entry,
 		 * invalidation.
 		 */
 		arm_smmu_tlb_inv_asid(smmu_domain->smmu, cd->asid);
-	}
+		arm_smmu_atc_inv_domain(smmu_domain, pasid, 0, 0);
 
-	/* TODO: invalidate ATC */
+	} else if (master->ats_enabled) {
+		arm_smmu_atc_inv_master(master, pasid);
+	}
 }
 
 static void *arm_smmu_mm_alloc(struct mm_struct *mm)
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
