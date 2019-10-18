Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE70DD57F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 01:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYhMIbsl5o+imWAC/HL9EQe1lQ9VebIuGWkT8WGGXBM=; b=BEeNRBKkZhHXz6
	33UwV54GlgH7gqfNuS/5DFxghPyZyXlwGwy50+kGO+R9FVMwiGm5zuSe6YjCSXFxlZ/afNyHUSAkt
	gzZhEO4/JUKvdhnRZdTJ+LA7a8lFO+oXqnKzazCgBv2FfFIY9FYIyZ0A4p2ay8U8iGWnYWfo9kTcY
	iwDfpv7P1EVil6Sw/oobXGPmogE6zeLjOFEB5Si7sar7M/V4S2XSBGP6zN/rNjZP0rceaFUuhnqpt
	C/bUCpJ2PSXPGZvoH4Cjq1BfHMyIpjJirTmEfvQpNV8/PsxHAurWHsVkttpjQCoKPdS6zNMuMi2m8
	Pk4nti95hB04SdleB4Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLbji-0001ZZ-By; Fri, 18 Oct 2019 23:32:46 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLbiP-0000Zo-Nq
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 23:31:29 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5daa4b560000>; Fri, 18 Oct 2019 16:31:34 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Fri, 18 Oct 2019 16:31:23 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Fri, 18 Oct 2019 16:31:23 -0700
Received: from HQMAIL111.nvidia.com (172.20.187.18) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 18 Oct
 2019 23:31:22 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Fri, 18 Oct 2019 23:31:22 +0000
Received: from vdumpa-ubuntu.nvidia.com (Not Verified[172.17.173.140]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5daa4b4a0003>; Fri, 18 Oct 2019 16:31:22 -0700
From: Krishna Reddy <vdumpa@nvidia.com>
To: 
Subject: [PATCH v3 1/7] iommu/arm-smmu: prepare arm_smmu_flush_ops for override
Date: Fri, 18 Oct 2019 16:31:26 -0700
Message-ID: <1571441492-21919-2-git-send-email-vdumpa@nvidia.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571441492-21919-1-git-send-email-vdumpa@nvidia.com>
References: <1571441492-21919-1-git-send-email-vdumpa@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1571441494; bh=hMkE9ZACb4SbwMYn549vbE/y19Mk47U2KnAgbKeRx6c=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=NpCxPfSmbNRVMHyo8bhyoYuE3elFGxOnLaSNYVxZR3UN7ZKbLp7UXsgMBMdOfMycq
 00J3awjjfInoDH9Ca6nbt9y2Qcl8XlnKri2F/ZmcVi9WtYj8qgDgxYKd/NvDs2xQwP
 nDzd3bqWokJ7pVRGsGT9sqBY49NQ9F5LDMNzQeles3YYc1CHJwugXN4zdQt2c9UCLj
 FU6zsHRfCsFwvdHkgrPdgYWE70ul8nYAgLx/lKr/+qW+H4iRc9VnOQ01Z0HEZ9uBW8
 TTJPOBnM0V7+Rn09W8XBCkjhNvyu82XEP1LXD6yZtchgmDLGTGoh8shBkBuv/JVB70
 vhuIrQBNyXFVA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_163125_784899_C05173F3 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: snikam@nvidia.com, thomasz@nvidia.com, jtukkinen@nvidia.com,
 mperttunen@nvidia.com, will@kernel.org, joro@8bytes.org,
 linux-kernel@vger.kernel.org, praithatha@nvidia.com, talho@nvidia.com,
 olof@lixom.net, iommu@lists.linux-foundation.org, nicolinc@nvidia.com,
 linux-tegra@vger.kernel.org, yhsu@nvidia.com, treding@nvidia.com,
 robin.murphy@arm.com, avanbrunt@nvidia.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove const keyword for arm_smmu_flush_ops in arm_smmu_domain
and replace direct references to arm_smmu_tlb_sync* functions with
arm_smmu_flush_ops->tlb_sync().
This is necessary for vendor specific implementations that
need to override arm_smmu_flush_ops in part or full.

Signed-off-by: Krishna Reddy <vdumpa@nvidia.com>
---
 drivers/iommu/arm-smmu.c | 16 ++++++++--------
 drivers/iommu/arm-smmu.h |  4 +++-
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 91af695..fc0b27d 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -52,9 +52,6 @@
  */
 #define QCOM_DUMMY_VAL -1
 
-#define TLB_LOOP_TIMEOUT		1000000	/* 1s! */
-#define TLB_SPIN_COUNT			10
-
 #define MSI_IOVA_BASE			0x8000000
 #define MSI_IOVA_LENGTH			0x100000
 
@@ -290,6 +287,8 @@ static void arm_smmu_tlb_sync_vmid(void *cookie)
 static void arm_smmu_tlb_inv_context_s1(void *cookie)
 {
 	struct arm_smmu_domain *smmu_domain = cookie;
+	const struct arm_smmu_flush_ops *ops = smmu_domain->flush_ops;
+
 	/*
 	 * The TLBI write may be relaxed, so ensure that PTEs cleared by the
 	 * current CPU are visible beforehand.
@@ -297,18 +296,19 @@ static void arm_smmu_tlb_inv_context_s1(void *cookie)
 	wmb();
 	arm_smmu_cb_write(smmu_domain->smmu, smmu_domain->cfg.cbndx,
 			  ARM_SMMU_CB_S1_TLBIASID, smmu_domain->cfg.asid);
-	arm_smmu_tlb_sync_context(cookie);
+	ops->tlb_sync(cookie);
 }
 
 static void arm_smmu_tlb_inv_context_s2(void *cookie)
 {
 	struct arm_smmu_domain *smmu_domain = cookie;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
+	const struct arm_smmu_flush_ops *ops = smmu_domain->flush_ops;
 
 	/* See above */
 	wmb();
 	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_TLBIVMID, smmu_domain->cfg.vmid);
-	arm_smmu_tlb_sync_global(smmu);
+	ops->tlb_sync(cookie);
 }
 
 static void arm_smmu_tlb_inv_range_s1(unsigned long iova, size_t size,
@@ -410,7 +410,7 @@ static void arm_smmu_tlb_add_page(struct iommu_iotlb_gather *gather,
 	ops->tlb_inv_range(iova, granule, granule, true, cookie);
 }
 
-static const struct arm_smmu_flush_ops arm_smmu_s1_tlb_ops = {
+static struct arm_smmu_flush_ops arm_smmu_s1_tlb_ops = {
 	.tlb = {
 		.tlb_flush_all	= arm_smmu_tlb_inv_context_s1,
 		.tlb_flush_walk	= arm_smmu_tlb_inv_walk,
@@ -421,7 +421,7 @@ static const struct arm_smmu_flush_ops arm_smmu_s1_tlb_ops = {
 	.tlb_sync		= arm_smmu_tlb_sync_context,
 };
 
-static const struct arm_smmu_flush_ops arm_smmu_s2_tlb_ops_v2 = {
+static struct arm_smmu_flush_ops arm_smmu_s2_tlb_ops_v2 = {
 	.tlb = {
 		.tlb_flush_all	= arm_smmu_tlb_inv_context_s2,
 		.tlb_flush_walk	= arm_smmu_tlb_inv_walk,
@@ -432,7 +432,7 @@ static const struct arm_smmu_flush_ops arm_smmu_s2_tlb_ops_v2 = {
 	.tlb_sync		= arm_smmu_tlb_sync_context,
 };
 
-static const struct arm_smmu_flush_ops arm_smmu_s2_tlb_ops_v1 = {
+static struct arm_smmu_flush_ops arm_smmu_s2_tlb_ops_v1 = {
 	.tlb = {
 		.tlb_flush_all	= arm_smmu_tlb_inv_context_s2,
 		.tlb_flush_walk	= arm_smmu_tlb_inv_walk,
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index b19b6ca..b2d6c7f 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -207,6 +207,8 @@ enum arm_smmu_cbar_type {
 /* Maximum number of context banks per SMMU */
 #define ARM_SMMU_MAX_CBS		128
 
+#define TLB_LOOP_TIMEOUT		1000000	/* 1s! */
+#define TLB_SPIN_COUNT			10
 
 /* Shared driver definitions */
 enum arm_smmu_arch_version {
@@ -314,7 +316,7 @@ struct arm_smmu_flush_ops {
 struct arm_smmu_domain {
 	struct arm_smmu_device		*smmu;
 	struct io_pgtable_ops		*pgtbl_ops;
-	const struct arm_smmu_flush_ops	*flush_ops;
+	struct arm_smmu_flush_ops	*flush_ops;
 	struct arm_smmu_cfg		cfg;
 	enum arm_smmu_domain_stage	stage;
 	bool				non_strict;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
