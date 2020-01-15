Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4AE13C218
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:57:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKKqWsGpr/YZHwYoQzGLdHdvp3v3Ag1V7J/SeViEKtQ=; b=BElFnBTuDv46tG
	FTsxKsX6Wm3djmeq48eVTxLmvJbb4XgGYG0lTszZkT/f3e/1VDDvkZacnZxFHyFlNaXsjZDxucQlx
	EbmfNM6OJ/RmBUxZ69CfdGGAaHoJyu0fLd6ZtYOB7JD7XthHI8qlNnKAl/NJLB4CFvNDL6n4yvh8i
	/9HA45boaSkGJaBp3/b25RyI4YBM3E5qNnB9GYTtCGjkgOg53PNBl0/2h0U2JNTPvIzvzeQ4fQjuL
	g24iKdIn+Aw8LV8zYs4+CAJ/xigwB1/RvYdEkzQGVuqYkuwZ3O5oC+zyutVzxDvrPsalk1AApFBkD
	eVHhU2DMH1FOUADzJYGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iriEO-0001CY-CW; Wed, 15 Jan 2020 12:57:08 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iriB3-0005gL-9T
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:53:45 +0000
Received: by mail-wm1-x344.google.com with SMTP id d139so4707683wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 04:53:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aAEmHGx6wUcbVA8TAXO2nZZ/b1/Tw4Vck92vCLfbzvg=;
 b=JLGOfJVfCZ44waAp9ES2XMnJ00bXfA3EYiUqq8kLa3OCpmxQw3AhflUZtVHLNfWyqU
 CDp8y73t1hrgePdaY1+LeQ1dZdrkCJASSVzij6xuzoT/eulPGnUBV3KrI45xXZI9f/iY
 mPB4Ydz9bhzcOtKbnFZXbTEPCXeos6oRaFO8WnS7aOHwV8QCeC+VkfOfRMUhJjxn+X2d
 PpaziJD94oQVA9V+1bt22VHuHVo3tS/ieruh+y1Gt7Bj+ddjfT8FY12nxiPl6cEzpMI8
 cfEwi1VTcm2TrONZumVJ4OKVcrRqQffWfxb+W2jDZQf/uT51qtdiobD5IU/sdeKm5F/L
 Yx/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aAEmHGx6wUcbVA8TAXO2nZZ/b1/Tw4Vck92vCLfbzvg=;
 b=cfjXmsbnHqWAcyoMECKvsDad3UNRsdAt4ytWGjD1w2fxSfGTEboUwOY+7VAsbMvwen
 kPqR8jaLVUC7LMnLP3vMLq0ufEFiM+tLeyqNM+PiHSW6mlbUP56dGMxghqv8Uk+Fkbd8
 E468V3oJ8YH0vHX2U/oAK6t+a+zumt1EbRYdEazdc3wCGrsIenLopzc1qG2mIVzKnB0R
 rv/5tinPps0YdIQL7LndYeCH+2abbBGp2sl0ojfYlZm7vDrWgrQI4HKc/Jn3WY+hBCvH
 IcT+8VBpOgGBbq3IZxZ7Te0oz90HYZX/MgPGhcrs7sTYjyI0mnTC/cziFWNOpIRz4kfP
 z0QQ==
X-Gm-Message-State: APjAAAW0OovJAPLQ58JJrDRZ0Ebm43oDIU5v0Iu4xg0FqRWXVPDWV3lX
 sbOXXJW6qAphB2yFdXOhePXkfw==
X-Google-Smtp-Source: APXvYqytCcaOrer/7iQIE7Xhu4hBwGK2oRRuiNgcyKJchWET2/i8dI0GqIjnVnNvNNsYxpqPPQ/3Aw==
X-Received: by 2002:a1c:2355:: with SMTP id j82mr34136253wmj.135.1579092819025; 
 Wed, 15 Jan 2020 04:53:39 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id d12sm25196171wrp.62.2020.01.15.04.53.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 04:53:38 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, will@kernel.org
Subject: [PATCH v5 10/13] iommu/arm-smmu-v3: Add second level of context
 descriptor table
Date: Wed, 15 Jan 2020 13:52:36 +0100
Message-Id: <20200115125239.136759-11-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115125239.136759-1-jean-philippe@linaro.org>
References: <20200115125239.136759-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_045341_357860_7222F8DF 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, joro@8bytes.org,
 guohanjun@huawei.com, rjw@rjwysocki.net, eric.auger@redhat.com,
 robh+dt@kernel.org, jonathan.cameron@huawei.com, sudeep.holla@arm.com,
 bhelgaas@google.com, zhangfei.gao@linaro.org, robin.murphy@arm.com,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SMMU can support up to 20 bits of SSID. Add a second level of page
tables to accommodate this. Devices that support more than 1024 SSIDs now
have a table of 1024 L1 entries (8kB), pointing to tables of 1024 context
descriptors (64kB), allocated on demand.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 142 ++++++++++++++++++++++++++++++++++--
 1 file changed, 134 insertions(+), 8 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index c35863073ab3..04144b39c4ce 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -224,6 +224,7 @@
 
 #define STRTAB_STE_0_S1FMT		GENMASK_ULL(5, 4)
 #define STRTAB_STE_0_S1FMT_LINEAR	0
+#define STRTAB_STE_0_S1FMT_64K_L2	2
 #define STRTAB_STE_0_S1CTXPTR_MASK	GENMASK_ULL(51, 6)
 #define STRTAB_STE_0_S1CDMAX		GENMASK_ULL(63, 59)
 
@@ -263,7 +264,20 @@
 
 #define STRTAB_STE_3_S2TTB_MASK		GENMASK_ULL(51, 4)
 
-/* Context descriptor (stage-1 only) */
+/*
+ * Context descriptors.
+ *
+ * Linear: when less than 1024 SSIDs are supported
+ * 2lvl: at most 1024 L1 entries,
+ *       1024 lazy entries per table.
+ */
+#define CTXDESC_SPLIT			10
+#define CTXDESC_L2_ENTRIES		(1 << CTXDESC_SPLIT)
+
+#define CTXDESC_L1_DESC_DWORDS		1
+#define CTXDESC_L1_DESC_V		(1UL << 0)
+#define CTXDESC_L1_DESC_L2PTR_MASK	GENMASK_ULL(51, 12)
+
 #define CTXDESC_CD_DWORDS		8
 #define CTXDESC_CD_0_TCR_T0SZ		GENMASK_ULL(5, 0)
 #define ARM64_TCR_T0SZ			GENMASK_ULL(5, 0)
@@ -569,9 +583,15 @@ struct arm_smmu_ctx_desc {
 	u64				mair;
 };
 
+struct arm_smmu_l1_ctx_desc {
+	__le64				*l2ptr;
+	dma_addr_t			l2ptr_dma;
+};
+
 struct arm_smmu_ctx_desc_cfg {
 	__le64				*cdtab;
 	dma_addr_t			cdtab_dma;
+	struct arm_smmu_l1_ctx_desc	*l1_desc;
 	unsigned int			num_l1_ents;
 };
 
@@ -1500,6 +1520,57 @@ static void arm_smmu_sync_cd(struct arm_smmu_domain *smmu_domain,
 	arm_smmu_cmdq_issue_sync(smmu);
 }
 
+static int arm_smmu_alloc_cd_leaf_table(struct arm_smmu_device *smmu,
+					struct arm_smmu_l1_ctx_desc *l1_desc)
+{
+	size_t size = CTXDESC_L2_ENTRIES * (CTXDESC_CD_DWORDS << 3);
+
+	l1_desc->l2ptr = dmam_alloc_coherent(smmu->dev, size,
+					     &l1_desc->l2ptr_dma, GFP_KERNEL);
+	if (!l1_desc->l2ptr) {
+		dev_warn(smmu->dev,
+			 "failed to allocate context descriptor table\n");
+		return -ENOMEM;
+	}
+	return 0;
+}
+
+static void arm_smmu_write_cd_l1_desc(__le64 *dst,
+				      struct arm_smmu_l1_ctx_desc *l1_desc)
+{
+	u64 val = (l1_desc->l2ptr_dma & CTXDESC_L1_DESC_L2PTR_MASK) |
+		  CTXDESC_L1_DESC_V;
+
+	WRITE_ONCE(*dst, cpu_to_le64(val));
+}
+
+static __le64 *arm_smmu_get_cd_ptr(struct arm_smmu_domain *smmu_domain,
+				   u32 ssid)
+{
+	__le64 *l1ptr;
+	unsigned int idx;
+	struct arm_smmu_l1_ctx_desc *l1_desc;
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
+	struct arm_smmu_ctx_desc_cfg *cdcfg = &smmu_domain->s1_cfg.cdcfg;
+
+	if (smmu_domain->s1_cfg.s1fmt == STRTAB_STE_0_S1FMT_LINEAR)
+		return cdcfg->cdtab + ssid * CTXDESC_CD_DWORDS;
+
+	idx = ssid >> CTXDESC_SPLIT;
+	l1_desc = &cdcfg->l1_desc[idx];
+	if (!l1_desc->l2ptr) {
+		if (arm_smmu_alloc_cd_leaf_table(smmu, l1_desc))
+			return NULL;
+
+		l1ptr = cdcfg->cdtab + idx * CTXDESC_L1_DESC_DWORDS;
+		arm_smmu_write_cd_l1_desc(l1ptr, l1_desc);
+		/* An invalid L1CD can be cached */
+		arm_smmu_sync_cd(smmu_domain, ssid, false);
+	}
+	idx = ssid & (CTXDESC_L2_ENTRIES - 1);
+	return l1_desc->l2ptr + idx * CTXDESC_CD_DWORDS;
+}
+
 static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
 {
 	u64 val = 0;
@@ -1531,9 +1602,15 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 	 */
 	u64 val;
 	bool cd_live;
+	__le64 *cdptr;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
-	__le64 *cdptr = smmu_domain->s1_cfg.cdcfg.cdtab + ssid *
-			CTXDESC_CD_DWORDS;
+
+	if (WARN_ON(ssid >= (1 << smmu_domain->s1_cfg.s1cdmax)))
+		return -E2BIG;
+
+	cdptr = arm_smmu_get_cd_ptr(smmu_domain, ssid);
+	if (!cdptr)
+		return -ENOMEM;
 
 	val = le64_to_cpu(cdptr[0]);
 	cd_live = !!(val & CTXDESC_CD_0_V);
@@ -1589,29 +1666,78 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 
 static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
 {
+	int ret;
 	size_t l1size;
+	size_t max_contexts;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 	struct arm_smmu_ctx_desc_cfg *cdcfg = &cfg->cdcfg;
 
-	cfg->s1fmt = STRTAB_STE_0_S1FMT_LINEAR;
+	max_contexts = 1 << cfg->s1cdmax;
+
+	if (!(smmu->features & ARM_SMMU_FEAT_2_LVL_CDTAB) ||
+	    max_contexts <= CTXDESC_L2_ENTRIES) {
+		cfg->s1fmt = STRTAB_STE_0_S1FMT_LINEAR;
+		cdcfg->num_l1_ents = max_contexts;
+
+		l1size = max_contexts * (CTXDESC_CD_DWORDS << 3);
+	} else {
+		cfg->s1fmt = STRTAB_STE_0_S1FMT_64K_L2;
+		cdcfg->num_l1_ents = DIV_ROUND_UP(max_contexts,
+						  CTXDESC_L2_ENTRIES);
+
+		cdcfg->l1_desc = devm_kcalloc(smmu->dev, cdcfg->num_l1_ents,
+					      sizeof(*cdcfg->l1_desc),
+					      GFP_KERNEL);
+		if (!cdcfg->l1_desc)
+			return -ENOMEM;
+
+		l1size = cdcfg->num_l1_ents * (CTXDESC_L1_DESC_DWORDS << 3);
+	}
 
-	cdcfg->num_l1_ents = 1UL << cfg->s1cdmax;
-	l1size = cdcfg->num_l1_ents * (CTXDESC_CD_DWORDS << 3);
 	cdcfg->cdtab = dmam_alloc_coherent(smmu->dev, l1size, &cdcfg->cdtab_dma,
 					   GFP_KERNEL);
 	if (!cdcfg->cdtab) {
 		dev_warn(smmu->dev, "failed to allocate context descriptor\n");
-		return -ENOMEM;
+		ret = -ENOMEM;
+		goto err_free_l1;
 	}
+
 	return 0;
+
+err_free_l1:
+	if (cdcfg->l1_desc) {
+		devm_kfree(smmu->dev, cdcfg->l1_desc);
+		cdcfg->l1_desc = NULL;
+	}
+	return ret;
 }
 
 static void arm_smmu_free_cd_tables(struct arm_smmu_domain *smmu_domain)
 {
+	int i;
+	size_t size, l1size;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_ctx_desc_cfg *cdcfg = &smmu_domain->s1_cfg.cdcfg;
-	size_t l1size = cdcfg->num_l1_ents * (CTXDESC_CD_DWORDS << 3);
+
+	if (cdcfg->l1_desc) {
+		size = CTXDESC_L2_ENTRIES * (CTXDESC_CD_DWORDS << 3);
+
+		for (i = 0; i < cdcfg->num_l1_ents; i++) {
+			if (!cdcfg->l1_desc[i].l2ptr)
+				continue;
+
+			dmam_free_coherent(smmu->dev, size,
+					   cdcfg->l1_desc[i].l2ptr,
+					   cdcfg->l1_desc[i].l2ptr_dma);
+		}
+		devm_kfree(smmu->dev, cdcfg->l1_desc);
+		cdcfg->l1_desc = NULL;
+
+		l1size = cdcfg->num_l1_ents * (CTXDESC_L1_DESC_DWORDS << 3);
+	} else {
+		l1size = cdcfg->num_l1_ents * (CTXDESC_CD_DWORDS << 3);
+	}
 
 	dmam_free_coherent(smmu->dev, l1size, cdcfg->cdtab, cdcfg->cdtab_dma);
 	cdcfg->cdtab_dma = 0;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
