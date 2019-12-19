Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093D5126718
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 17:32:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tE6kIVQCHTmO40udaJjS7q0bCMVP+ANdCUpxXUu+Lms=; b=IEE6NFbUSepw6K
	PQ5HsFsj4efAr2orGUrApoYBKrIXYJoPUeHRuxRE5eH8+L+gQsKWywvIzRXp+F1WldNSEvvUGMDOm
	3mmRsHrl/LxbBEZYzLhsxF13+vY4buOzVXc+nzyaCemKtd6fmGj9LpObGg55EIQzH2e6AgmSPwLXX
	V/6qsC65pb+kjfW39n/RWIu4fQLDR907hFOLjy9Z9WlgRfR88NdAGh6OCZwfFXxHEGsx4mOGVCJux
	lPWIXqZo68yH0XzZZVIEHK6F7v7BtSGn/LQsMIcazs99ChMvfcCu5oTwDVVvzXyVbbd7rnzjq75on
	e0ZCcit1T4PyyI9OyZNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihyiS-0000GM-LW; Thu, 19 Dec 2019 16:31:56 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihyhu-0008PL-3C
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 16:31:24 +0000
Received: by mail-wm1-x343.google.com with SMTP id q9so6083310wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 08:31:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=okmk+BI1MrI+rld+DNPC4brvepklr4RhuiyqBz4opVk=;
 b=YagIWdxnqZEYbzLOTomTEPehf1xvgF5XuPHQGU/XLL30WhRHxWutX4q3ifHo5xAtQ1
 ekOjUoXMXwawwN07pmCLeSmQHh3BBpftBOgfuk1jQfJNEVkDDepZAoBUyU6qgK39HVSS
 ROhucjwLOUUC//YK/84Rf2RDIJr35Louu9n21fsQjq2P3zkmXVwMTVN3VY5FqwvZfuqI
 NrXLHJw45Y2g9Dfxf3y/ofeU9p0tQtP/jQGEOm7Ko1CieRyMN7+I12hmj3EpYpjzb1Fd
 jSTKhUYEeSM3U6DjZwyjwFX6vO/TgkYgJ+nSyQV9u9Z6BOGaVEcOUqsAcd63OVBczCZs
 l/MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=okmk+BI1MrI+rld+DNPC4brvepklr4RhuiyqBz4opVk=;
 b=KdnEPtNrVtghdneszC4CAyk2OYUhqpNtEAP2iBbqDM5Ueur0zNg1jgHR8OeQD1dkYd
 AloTEsDiORp4MmK7Zn52XwPv/4/mBqQ4T70Vym+a98++5/qps5zjZ0JLKJZJWveMNL/d
 EXKR+DmpvJgBXx+MdQMEJzn2tdLHA8eHPo6mKfBMD9lDhzcUKm3oaMldOdRf4Hx6cnd7
 cKOgrYvBR4Y/DGJ6hjwJxbYiApKeIPj0CuGeJDN4DRsYlR3s+w8HAMQhztNP29u1ozDF
 xdqvL2yZb/A4zsGwssWBCYRK441HG4eQjYFOgrrf6FKKIbatAflp0BscEQkjHJqJHsJj
 p9MQ==
X-Gm-Message-State: APjAAAUVJ0o/Ok2L6F3OTK4Tmhyfq1DAY+BnZ0rDsvcHDThgyvZ20khb
 CVO9hKBzIImNolm4bfnKJ088ZQ==
X-Google-Smtp-Source: APXvYqyDpiGAd7nQQ2q/5btqSJSDJTY/kKmqQOHE8h/KWaNgKKEqspPoPutrYt+t26mJAZ1XjmXIYA==
X-Received: by 2002:a7b:c190:: with SMTP id y16mr11282797wmi.107.1576773078800; 
 Thu, 19 Dec 2019 08:31:18 -0800 (PST)
Received: from localhost.localdomain (adsl-84-227-176-239.adslplus.ch.
 [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id u22sm7092068wru.30.2019.12.19.08.31.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 08:31:17 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v4 00/13] iommu: Add PASID support to Arm SMMUv3
Date: Thu, 19 Dec 2019 17:30:20 +0100
Message-Id: <20191219163033.2608177-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_083122_273065_5813E897 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, bhelgaas@google.com, zhangfei.gao@linaro.org,
 will@kernel.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for Substream ID and PASIDs to the SMMUv3 driver. Since v3
[1], I added review and tested tags where appropriate and applied the
suggested changes, shown in the diff below. Thanks all!

I'm testing using the zip accelerator on the Hisilicon KunPeng920 and
Zhangfei's uacce module [2]. The full SVA support, which I'll send out
early next year, is available on my branch sva/zip-devel at
https://jpbrucker.net/git/linux/

[1] https://lore.kernel.org/linux-iommu/20191209180514.272727-1-jean-philippe@linaro.org/
[2] https://lore.kernel.org/linux-iommu/1576465697-27946-1-git-send-email-zhangfei.gao@linaro.org/

Jean-Philippe Brucker (13):
  iommu/arm-smmu-v3: Drop __GFP_ZERO flag from DMA allocation
  dt-bindings: document PASID property for IOMMU masters
  iommu/arm-smmu-v3: Parse PASID devicetree property of platform devices
  ACPI/IORT: Parse SSID property of named component node
  iommu/arm-smmu-v3: Prepare arm_smmu_s1_cfg for SSID support
  iommu/arm-smmu-v3: Add context descriptor tables allocators
  iommu/arm-smmu-v3: Add support for Substream IDs
  iommu/arm-smmu-v3: Propagate ssid_bits
  iommu/arm-smmu-v3: Prepare for handling arm_smmu_write_ctx_desc()
    failure
  iommu/arm-smmu-v3: Add second level of context descriptor table
  iommu/arm-smmu-v3: Improve add_device() error handling
  PCI/ATS: Add PASID stubs
  iommu/arm-smmu-v3: Add support for PCI PASID

 .../devicetree/bindings/iommu/iommu.txt       |   6 +
 drivers/acpi/arm64/iort.c                     |  18 +
 drivers/iommu/arm-smmu-v3.c                   | 467 +++++++++++++++---
 drivers/iommu/of_iommu.c                      |   6 +-
 include/linux/iommu.h                         |   2 +
 include/linux/pci-ats.h                       |   3 +
 6 files changed, 442 insertions(+), 60 deletions(-)

-- 
Diff since v3:
#diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index cde7af39681c..8e95ecad4c9a 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -589,8 +589,10 @@ struct arm_smmu_cd_table {
 };

 struct arm_smmu_s1_cfg {
+	/* Leaf tables or linear table */
 	struct arm_smmu_cd_table	*tables;
 	size_t				num_tables;
+	/* First level tables, when two levels are used */
 	__le64				*l1ptr;
 	dma_addr_t			l1ptr_dma;
 	struct arm_smmu_ctx_desc	cd;
@@ -1561,27 +1563,22 @@ static __le64 *arm_smmu_get_cd_ptr(struct arm_smmu_domain *smmu_domain,
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;

-	if (cfg->s1fmt == STRTAB_STE_0_S1FMT_LINEAR) {
-		table = &cfg->tables[0];
-		idx = ssid;
-	} else {
-		idx = ssid >> CTXDESC_SPLIT;
-		if (idx >= cfg->num_tables)
-			return NULL;
+	if (cfg->s1fmt == STRTAB_STE_0_S1FMT_LINEAR)
+		return cfg->tables[0].ptr + ssid * CTXDESC_CD_DWORDS;

-		table = &cfg->tables[idx];
-		if (!table->ptr) {
-			if (arm_smmu_alloc_cd_leaf_table(smmu, table,
-							 CTXDESC_L2_ENTRIES))
-				return NULL;
+	idx = ssid >> CTXDESC_SPLIT;
+	table = &cfg->tables[idx];
+	if (!table->ptr) {
+		if (arm_smmu_alloc_cd_leaf_table(smmu, table,
+						 CTXDESC_L2_ENTRIES))
+			return NULL;

-			l1ptr = cfg->l1ptr + idx * CTXDESC_L1_DESC_DWORDS;
-			arm_smmu_write_cd_l1_desc(l1ptr, table);
-			/* An invalid L1CD can be cached */
-			arm_smmu_sync_cd(smmu_domain, ssid, false);
-		}
-		idx = ssid & (CTXDESC_L2_ENTRIES - 1);
+		l1ptr = cfg->l1ptr + idx * CTXDESC_L1_DESC_DWORDS;
+		arm_smmu_write_cd_l1_desc(l1ptr, table);
+		/* An invalid L1CD can be cached */
+		arm_smmu_sync_cd(smmu_domain, ssid, false);
 	}
+	idx = ssid & (CTXDESC_L2_ENTRIES - 1);
 	return table->ptr + idx * CTXDESC_CD_DWORDS;
 }

@@ -1617,8 +1614,12 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 	u64 val;
 	bool cd_live;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
-	__le64 *cdptr = arm_smmu_get_cd_ptr(smmu_domain, ssid);
+	__le64 *cdptr;

+	if (WARN_ON(ssid >= (1 << smmu_domain->s1_cfg.s1cdmax)))
+		return -E2BIG;
+
+	cdptr = arm_smmu_get_cd_ptr(smmu_domain, ssid);
 	if (!cdptr)
 		return -ENOMEM;

@@ -1640,9 +1641,9 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 		cdptr[3] = cpu_to_le64(cd->mair);

 		/*
-		 * STE is live, and the SMMU might fetch this CD at any
-		 * time. Ensure that it observes the rest of the CD before we
-		 * enable it.
+		 * STE is live, and the SMMU might read dwords of this CD in any
+		 * order. Ensure that it observes valid values before reading
+		 * V=1.
 		 */
 		arm_smmu_sync_cd(smmu_domain, ssid, true);

@@ -1706,7 +1707,7 @@ static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
 	 * Only allocate a leaf table for linear case. With two levels, leaf
 	 * tables are allocated lazily.
 	 */
-	if (!cfg->l1ptr) {
+	if (cfg->s1fmt == STRTAB_STE_0_S1FMT_LINEAR) {
 		ret = arm_smmu_alloc_cd_leaf_table(smmu, &cfg->tables[0],
 						   max_contexts);
 		if (ret)
@@ -2657,17 +2658,21 @@ static int arm_smmu_enable_pasid(struct arm_smmu_master *master)

 	features = pci_pasid_features(pdev);
 	if (features < 0)
-		return -ENODEV;
+		return features;

 	num_pasids = pci_max_pasids(pdev);
 	if (num_pasids <= 0)
-		return -ENODEV;
+		return num_pasids;

 	ret = pci_enable_pasid(pdev, features);
-	if (!ret)
-		master->ssid_bits = min_t(u8, ilog2(num_pasids),
-					  master->smmu->ssid_bits);
-	return ret;
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to enable PASID\n");
+		return ret;
+	}
+
+	master->ssid_bits = min_t(u8, ilog2(num_pasids),
+				  master->smmu->ssid_bits);
+	return 0;
 }

 static void arm_smmu_disable_pasid(struct arm_smmu_master *master)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
