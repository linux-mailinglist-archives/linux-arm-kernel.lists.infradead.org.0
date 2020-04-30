Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7811BFEF7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7GD62u85gBAMIbiu1lAtmJzGXLqxJ+f27RsPY+OESw4=; b=f8Ix0nyQ4qWgfd
	wQwPTYKrmXVwTc5M/UuCOAmAvWkrWb801Gfk7lWLw2+6fqyl0vRgkuFmgkgknwXYKqqEsPwaomB66
	mdxJvactdwz1ToZmbHwEojLUh+voNmWCLISfCQGR5O8Yk5npHReIZKH/GwD79EGSwep80r0kI818C
	pDaQ+DiyYeZV+aJxFn2D3/uozO5b6CDxjTTT11LDtTfBjS84h1q2mgHlGTgjvn5u/dvlxefU9g/hz
	EgPyog0YQ8SUVSh9pw1FSkJi54NWvW1TvhGOK0oze6ovZ+7SlFh4ZrGYyDW4LH5xKHi3F/yvickpT
	zXYV17CHMxCetFdsscIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUASB-00019W-TF; Thu, 30 Apr 2020 14:46:19 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMh-0002ah-4v
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:41 +0000
Received: by mail-wr1-x441.google.com with SMTP id b11so7235588wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2+Y465Sni3J3luu7XimUOxgL9xc/SbRMYs8QGnoYtwY=;
 b=TtWZcvpylTP3NKbk1Qf+IfameDvqZwRMdS3q3fg9H/lGyRYGkfrFQHeCjVudgdRINK
 Dq9MBXVYhLCootNKcVgNxJ0FpLgrlim5f8lBDkhqOHb4VlcZ0hgTMzBs9d8jFICV8fxd
 KUaJwiZ/OQ/gYRUVE9gc/aIwRBe6IYvQieRFWK0Azug7U8btG7FcOaY/Rl26e4sAz3/Z
 RZCe40RFC/rBtjCjoR1VIZgcnqrMnLBOx8zWFTiYXhg9MCah5cXaoQvRl2P+hicnxqoW
 WZX2CnayKDPy2Ftc0OhUQymVBrwqr0Ejdo1y1yZof/qNkV3kOYRJQ/n9IxhuHsljv10x
 hQdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2+Y465Sni3J3luu7XimUOxgL9xc/SbRMYs8QGnoYtwY=;
 b=iRhBgTTRy/I8HDHslyS0Lllwh0+5pCWormpVlY5JGkFNLq3VUBTSlZKEvxV2kfFg66
 phSnygchsvhOfLubRa7589FN7RMdUYiOPOCGPOJAp9LIMHwYlVNFdf+utyXau1gp/yb7
 DrH8YjAJdheb2Ed/M4WY3/W9NPsrl3Ff84P8bq9ib4YhByFGbEC2Lk5mE+1h4VQDkM60
 DoFpwYoj6HHI9JmFrXOnPcqMmva/iamdorCyM4hCV4H4tqGDpkqylHa8zeKE2zX2Jp3g
 AUz0dhqnhyhsjQ+m8K4jnZUkQg+ZMzS1M70iF6CIeUmg+rAp8LyezqkqkHu1hZfYoCJI
 9mEw==
X-Gm-Message-State: AGi0PuaCQt8nJlqyMBGWRvHtnAbNRIk8fCYjgXvxBhLyeIlZ8OlBxrZf
 jfdzceelAptS8pkQGPZAr9VkhA==
X-Google-Smtp-Source: APiQypLNwodkDrJdjB7I+V7HVBZt0+iw9yRn6csSeR+Ms37qAdkN8Vx1hciLeFRaXiPs0nPP5OwXew==
X-Received: by 2002:adf:8169:: with SMTP id 96mr3141118wrm.283.1588257637544; 
 Thu, 30 Apr 2020 07:40:37 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:36 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 16/25] iommu/arm-smmu-v3: Add SVA device feature
Date: Thu, 30 Apr 2020 16:34:15 +0200
Message-Id: <20200430143424.2787566-17-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074039_289064_29C39EA5 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Implement the IOMMU device feature callbacks to support the SVA feature.
At the moment dev_has_feat() returns false since I/O Page Faults isn't
yet implemented.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 125 ++++++++++++++++++++++++++++++++++++
 1 file changed, 125 insertions(+)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 9b90cc57a609b..c7942d0540599 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -700,6 +700,8 @@ struct arm_smmu_master {
 	u32				*sids;
 	unsigned int			num_sids;
 	bool				ats_enabled;
+	bool				sva_enabled;
+	struct list_head		bonds;
 	unsigned int			ssid_bits;
 };
 
@@ -738,6 +740,7 @@ struct arm_smmu_option_prop {
 
 static DEFINE_XARRAY_ALLOC1(asid_xa);
 static DEFINE_SPINLOCK(contexts_lock);
+static DEFINE_MUTEX(arm_smmu_sva_lock);
 
 static struct arm_smmu_option_prop arm_smmu_options[] = {
 	{ ARM_SMMU_OPT_SKIP_PREFETCH, "hisilicon,broken-prefetch-cmd" },
@@ -3003,6 +3006,19 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 	master = dev_iommu_priv_get(dev);
 	smmu = master->smmu;
 
+	/*
+	 * Checking that SVA is disabled ensures that this device isn't bound to
+	 * any mm, and can be safely detached from its old domain. Bonds cannot
+	 * be removed concurrently since we're holding the group mutex.
+	 */
+	mutex_lock(&arm_smmu_sva_lock);
+	if (master->sva_enabled) {
+		mutex_unlock(&arm_smmu_sva_lock);
+		dev_err(dev, "cannot attach - SVA enabled\n");
+		return -EBUSY;
+	}
+	mutex_unlock(&arm_smmu_sva_lock);
+
 	arm_smmu_detach_dev(master);
 
 	mutex_lock(&smmu_domain->init_mutex);
@@ -3151,6 +3167,7 @@ static int arm_smmu_add_device(struct device *dev)
 	master->smmu = smmu;
 	master->sids = fwspec->ids;
 	master->num_sids = fwspec->num_ids;
+	INIT_LIST_HEAD(&master->bonds);
 	dev_iommu_priv_set(dev, master);
 
 	/* Check the SIDs are in range of the SMMU and our stream table */
@@ -3220,6 +3237,7 @@ static void arm_smmu_remove_device(struct device *dev)
 
 	master = dev_iommu_priv_get(dev);
 	smmu = master->smmu;
+	WARN_ON(master->sva_enabled);
 	arm_smmu_detach_dev(master);
 	iommu_group_remove_device(dev);
 	iommu_device_unlink(&smmu->iommu, dev);
@@ -3339,6 +3357,109 @@ static void arm_smmu_get_resv_regions(struct device *dev,
 	iommu_dma_get_resv_regions(dev, head);
 }
 
+static bool arm_smmu_iopf_supported(struct arm_smmu_master *master)
+{
+	return false;
+}
+
+static bool arm_smmu_dev_has_feature(struct device *dev,
+				     enum iommu_dev_features feat)
+{
+	struct arm_smmu_master *master = dev_iommu_priv_get(dev);
+
+	if (!master)
+		return false;
+
+	switch (feat) {
+	case IOMMU_DEV_FEAT_SVA:
+		if (!(master->smmu->features & ARM_SMMU_FEAT_SVA))
+			return false;
+
+		/* SSID and IOPF support are mandatory for the moment */
+		return master->ssid_bits && arm_smmu_iopf_supported(master);
+	default:
+		return false;
+	}
+}
+
+static bool arm_smmu_dev_feature_enabled(struct device *dev,
+					 enum iommu_dev_features feat)
+{
+	bool enabled = false;
+	struct arm_smmu_master *master = dev_iommu_priv_get(dev);
+
+	if (!master)
+		return false;
+
+	switch (feat) {
+	case IOMMU_DEV_FEAT_SVA:
+		mutex_lock(&arm_smmu_sva_lock);
+		enabled = master->sva_enabled;
+		mutex_unlock(&arm_smmu_sva_lock);
+		return enabled;
+	default:
+		return false;
+	}
+}
+
+static int arm_smmu_dev_enable_sva(struct device *dev)
+{
+	struct arm_smmu_master *master = dev_iommu_priv_get(dev);
+
+	mutex_lock(&arm_smmu_sva_lock);
+	master->sva_enabled = true;
+	mutex_unlock(&arm_smmu_sva_lock);
+
+	return 0;
+}
+
+static int arm_smmu_dev_disable_sva(struct device *dev)
+{
+	struct arm_smmu_master *master = dev_iommu_priv_get(dev);
+
+	mutex_lock(&arm_smmu_sva_lock);
+	if (!list_empty(&master->bonds)) {
+		dev_err(dev, "cannot disable SVA, device is bound\n");
+		mutex_unlock(&arm_smmu_sva_lock);
+		return -EBUSY;
+	}
+	master->sva_enabled = false;
+	mutex_unlock(&arm_smmu_sva_lock);
+
+	return 0;
+}
+
+static int arm_smmu_dev_enable_feature(struct device *dev,
+				       enum iommu_dev_features feat)
+{
+	if (!arm_smmu_dev_has_feature(dev, feat))
+		return -ENODEV;
+
+	if (arm_smmu_dev_feature_enabled(dev, feat))
+		return -EBUSY;
+
+	switch (feat) {
+	case IOMMU_DEV_FEAT_SVA:
+		return arm_smmu_dev_enable_sva(dev);
+	default:
+		return -EINVAL;
+	}
+}
+
+static int arm_smmu_dev_disable_feature(struct device *dev,
+					enum iommu_dev_features feat)
+{
+	if (!arm_smmu_dev_feature_enabled(dev, feat))
+		return -EINVAL;
+
+	switch (feat) {
+	case IOMMU_DEV_FEAT_SVA:
+		return arm_smmu_dev_disable_sva(dev);
+	default:
+		return -EINVAL;
+	}
+}
+
 static struct iommu_ops arm_smmu_ops = {
 	.capable		= arm_smmu_capable,
 	.domain_alloc		= arm_smmu_domain_alloc,
@@ -3357,6 +3478,10 @@ static struct iommu_ops arm_smmu_ops = {
 	.of_xlate		= arm_smmu_of_xlate,
 	.get_resv_regions	= arm_smmu_get_resv_regions,
 	.put_resv_regions	= generic_iommu_put_resv_regions,
+	.dev_has_feat		= arm_smmu_dev_has_feature,
+	.dev_feat_enabled	= arm_smmu_dev_feature_enabled,
+	.dev_enable_feat	= arm_smmu_dev_enable_feature,
+	.dev_disable_feat	= arm_smmu_dev_disable_feature,
 	.pgsize_bitmap		= -1UL, /* Restricted during device attach */
 };
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
