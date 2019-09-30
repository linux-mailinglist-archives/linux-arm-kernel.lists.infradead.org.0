Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF72C236F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWL3N4QmXgZz+XFgqIJss+ra6eFEpQhAi+df7ZsjtM8=; b=sF6aDVljkX2VC8
	NyTVPzhuoKlh69YhZ2Iekxwwb3Aep/ocxtgZpmvu2tNn2amlPiLlcoMd79yEzw1YBazM+KiSMloeD
	Ck7NvtZpCO5LrV0E2TtLdCl81P0lXOiI3rivLVt256YsyA3bwhAxtOh3vc7Pk5Fabx9j6RB2Gq2LR
	v6bCtM8k2ODce23Mlu1maGHTpPgrkm6XUZXJDUq+P7Wb2gBzDCUtB1t9KffJ64wz2vrk3qLFJNmtF
	NLuSNVK3OSjjKouEkylzvKNq3kgUuRCsOn8qP9AluiZE4ZQDc0uvO3crkHE0FzUFZI/of/fwosm89
	ITcTzWBxqjRoIl4uYFOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEwne-0007QZ-2K; Mon, 30 Sep 2019 14:37:18 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEwnQ-0007OK-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:37:06 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 5BFA948E40CC6B5FE5AE;
 Mon, 30 Sep 2019 22:36:58 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.439.0; Mon, 30 Sep 2019 22:36:50 +0800
From: John Garry <john.garry@huawei.com>
To: <lorenzo.pieralisi@arm.com>, <guohanjun@huawei.com>,
 <sudeep.holla@arm.com>, <robin.murphy@arm.com>, <mark.rutland@arm.com>,
 <will@kernel.org>
Subject: [RFC PATCH 6/6] ACPI/IORT: Drop code to set the PMCG software-defined
 model
Date: Mon, 30 Sep 2019 22:33:51 +0800
Message-ID: <1569854031-237636-7-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
References: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_073704_604928_216FE01D 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: nleeder@codeaurora.org, John Garry <john.garry@huawei.com>,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 shameerali.kolothum.thodi@huawei.com, linuxarm@huawei.com,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we can identify a PMCG implementation from the parent SMMUv3
IIDR, drop all the code to match based on the ACPI OEM ID.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 drivers/acpi/arm64/iort.c | 35 +----------------------------------
 include/linux/acpi_iort.h |  8 --------
 2 files changed, 1 insertion(+), 42 deletions(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 0b687520c3e7..d04888cb8cff 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -1377,27 +1377,6 @@ static void __init arm_smmu_v3_pmcg_init_resources(struct resource *res,
 				       ACPI_EDGE_SENSITIVE, &res[2]);
 }
 
-static struct acpi_platform_list pmcg_plat_info[] __initdata = {
-	/* HiSilicon Hip08 Platform */
-	{"HISI  ", "HIP08   ", 0, ACPI_SIG_IORT, greater_than_or_equal,
-	 "Erratum #162001800", IORT_SMMU_V3_PMCG_HISI_HIP08},
-	{ }
-};
-
-static int __init arm_smmu_v3_pmcg_add_platdata(struct platform_device *pdev)
-{
-	u32 model;
-	int idx;
-
-	idx = acpi_match_platform_list(pmcg_plat_info);
-	if (idx >= 0)
-		model = pmcg_plat_info[idx].data;
-	else
-		model = IORT_SMMU_V3_PMCG_GENERIC;
-
-	return platform_device_add_data(pdev, &model, sizeof(model));
-}
-
 struct iort_dev_config {
 	const char *name;
 	int (*dev_init)(struct acpi_iort_node *node);
@@ -1408,7 +1387,6 @@ struct iort_dev_config {
 				     struct acpi_iort_node *node);
 	int (*dev_set_proximity)(struct device *dev,
 				    struct acpi_iort_node *node);
-	int (*dev_add_platdata)(struct platform_device *pdev);
 };
 
 static const struct iort_dev_config iort_arm_smmu_v3_cfg __initconst = {
@@ -1430,7 +1408,6 @@ static const struct iort_dev_config iort_arm_smmu_v3_pmcg_cfg __initconst = {
 	.name = "arm-smmu-v3-pmcg",
 	.dev_count_resources = arm_smmu_v3_pmcg_count_resources,
 	.dev_init_resources = arm_smmu_v3_pmcg_init_resources,
-	.dev_add_platdata = arm_smmu_v3_pmcg_add_platdata,
 };
 
 static __init const struct iort_dev_config *iort_get_dev_cfg(
@@ -1494,17 +1471,7 @@ static int __init iort_add_platform_device(struct acpi_iort_node *node,
 	if (ret)
 		goto dev_put;
 
-	/*
-	 * Platform devices based on PMCG nodes uses platform_data to
-	 * pass the hardware model info to the driver. For others, add
-	 * a copy of IORT node pointer to platform_data to be used to
-	 * retrieve IORT data information.
-	 */
-	if (ops->dev_add_platdata)
-		ret = ops->dev_add_platdata(pdev);
-	else
-		ret = platform_device_add_data(pdev, &node, sizeof(node));
-
+	ret = platform_device_add_data(pdev, &node, sizeof(node));
 	if (ret)
 		goto dev_put;
 
diff --git a/include/linux/acpi_iort.h b/include/linux/acpi_iort.h
index 8e7e2ec37f1b..7a8961e6a8bb 100644
--- a/include/linux/acpi_iort.h
+++ b/include/linux/acpi_iort.h
@@ -14,14 +14,6 @@
 #define IORT_IRQ_MASK(irq)		(irq & 0xffffffffULL)
 #define IORT_IRQ_TRIGGER_MASK(irq)	((irq >> 32) & 0xffffffffULL)
 
-/*
- * PMCG model identifiers for use in smmu pmu driver. Please note
- * that this is purely for the use of software and has nothing to
- * do with hardware or with IORT specification.
- */
-#define IORT_SMMU_V3_PMCG_GENERIC        0x00000000 /* Generic SMMUv3 PMCG */
-#define IORT_SMMU_V3_PMCG_HISI_HIP08     0x00000001 /* HiSilicon HIP08 PMCG */
-
 int iort_register_domain_token(int trans_id, phys_addr_t base,
 			       struct fwnode_handle *fw_node);
 void iort_deregister_domain_token(int trans_id);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
