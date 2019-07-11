Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB39659E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqdKUpVmvVYj2MmRQ3EWmkWBJSzvPlFcoiYAw3PFGiU=; b=ava5IwKoTRr8DI
	Z8x1WU6kpvH/2gfxloYdEt5+m3tLJAbPVQ+T7NzWboelD6+QkTNwDlf5EVGR0/5JNvJSjZwdWLSUj
	TCRAc7j4ka3za1gDE8JJQwy997suozpZ4o9pYMQoUHES9cKjYPj8EmmDADyF585E4vlDnO/8qaDqu
	w5RwZ9VHXb+9BucGBPd5W8GFebf6trDZGS6aQTBGe51vcXZo8PnFCCZmmb5rL7JGiHz33rFdoQalW
	QTecKnbRZsniPkztWNjfVssVrPKAl3/vSHbT9eqXTVHDP9se1ue3KslwrjmlZGSRyhA/BaYBAZYn5
	/0diy3qZ2JH6waRWl9AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlac9-0004D9-0k; Thu, 11 Jul 2019 15:04:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlabv-0004Cs-03
 for linux-arm-kernel@bombadil.infradead.org; Thu, 11 Jul 2019 15:03:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A/5sS65jRy30jSBkucydimqlGAy2bxhkdwlQTeAG+qY=; b=pnJ10Mm9bJpg13BhTNA/jWNJTJ
 Goo3DsWGH0Inp3bByIxCIsQG3aEryB7PAyAORC7ugFGSI2vluzJBfkOk25U31vDQDIXxhikXRAwMm
 2knlMkmSQD7n5bZkPUyuFVMywS1XvYMmtXVRx8jM18zlhE6ex5SXv5uexG0loOPlTwvTtOJGSiRBM
 OfGPOWglU7npkztnH4MuBPm+Sc/zGpXiA3RYd1a+qlyAo93xl9UMUpV1ayKHtGmwChYNN6u9d1Whd
 GvsFtmH3tk1dIzZc/uzk2n4hIiZRvu/q8pXeZv0nSr3y+TqcoBkynMsSOa3MAKBcGMix50Lqq0gWl
 MDJo6TKQ==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlaby-0000g6-Rr
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:03:57 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 516F740008;
 Thu, 11 Jul 2019 15:03:12 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [PATCH v2 2/4] iommu/arm-smmu: Workaround for Marvell Armada-AP806
 SoC erratum #582743
Date: Thu, 11 Jul 2019 17:02:40 +0200
Message-Id: <20190711150242.25290-3-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190711150242.25290-1-gregory.clement@bootlin.com>
References: <20190711150242.25290-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_160354_970691_7D081300 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>, Antoine Tenart <antoine.tenart@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Will Deacon <will.deacon@arm.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?q?Miqu=C3=A8l=20Raynal?= <miquel.raynal@bootlin.com>,
 Hanna Hawa <hannah@marvell.com>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hanna Hawa <hannah@marvell.com>

Due to erratum #582743, the Marvell Armada-AP806 can't access 64bit to
ARM SMMUv2 registers.

This patch split the writeq/readq to two accesses of writel/readl.

We also mask the MMU_IDR2.PTFSv8 fields to not use AArch64 format but
only AARCH32_L. Indeed with AArch64 format 32 bits acces is not
supported.

Note that separate writes/reads to 2 is not problem regards to
atomicity, because the driver use the readq/writeq while initialize
the SMMU, report for SMMU fault, and use spinlock in one
case (iova_to_phys).

Signed-off-by: Hanna Hawa <hannah@marvell.com>
Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 Documentation/arm64/silicon-errata.txt |  2 ++
 drivers/iommu/arm-smmu.c               | 42 +++++++++++++++++++++++---
 2 files changed, 40 insertions(+), 4 deletions(-)

diff --git a/Documentation/arm64/silicon-errata.txt b/Documentation/arm64/silicon-errata.txt
index d1e2bb801e1b..3f78ae7a7690 100644
--- a/Documentation/arm64/silicon-errata.txt
+++ b/Documentation/arm64/silicon-errata.txt
@@ -72,6 +72,8 @@ stable kernels.
 | Cavium         | ThunderX2 SMMUv3| #74             | N/A                         |
 | Cavium         | ThunderX2 SMMUv3| #126            | N/A                         |
 |                |                 |                 |                             |
+| Marvell        | ARM-MMU-500     | #582743         | N/A                         |
+|                |                 |                 |                             |
 | Freescale/NXP  | LS2080A/LS1043A | A-008585        | FSL_ERRATUM_A008585         |
 |                |                 |                 |                             |
 | Hisilicon      | Hip0{5,6,7}     | #161010101      | HISILICON_ERRATUM_161010101 |
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index ac0784b5b675..32536ccae22d 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -126,6 +126,7 @@ enum arm_smmu_arch_version {
 enum arm_smmu_implementation {
 	GENERIC_SMMU,
 	ARM_MMU500,
+	MRVL_MMU500,
 	CAVIUM_SMMUV2,
 	QCOM_SMMUV2,
 };
@@ -301,13 +302,35 @@ static inline void smmu_writeq_relaxed(struct arm_smmu_device *smmu,
 				       u64 val,
 				       void __iomem *addr)
 {
-	writeq_relaxed(val, addr);
+	/*
+	 * Marvell Armada-AP806 erratum #582743.
+	 * Split all the writeq to double writel
+	 */
+	if (smmu->model != MRVL_MMU500) {
+		writeq_relaxed(val, addr);
+		return;
+	}
+
+	writel_relaxed(upper_32_bits(val), addr + 4);
+	writel_relaxed(lower_32_bits(val), addr);
 }
 
 static inline u64 smmu_readq_relaxed(struct arm_smmu_device *smmu,
 				     void __iomem *addr)
 {
-	return readq_relaxed(addr);
+	u64 val;
+
+	/*
+	 * Marvell Armada-AP806 erratum #582743.
+	 * Split all the readq to double readl
+	 */
+	if (smmu->model != MRVL_MMU500)
+		return readq_relaxed(addr);
+
+	val = (u64)readl_relaxed(addr + 4) << 32;
+	val |= readl_relaxed(addr);
+
+	return val;
 }
 
 static void parse_driver_options(struct arm_smmu_device *smmu)
@@ -1741,7 +1764,7 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 	for (i = 0; i < smmu->num_mapping_groups; ++i)
 		arm_smmu_write_sme(smmu, i);
 
-	if (smmu->model == ARM_MMU500) {
+	if (smmu->model == ARM_MMU500 || smmu->model == MRVL_MMU500) {
 		/*
 		 * Before clearing ARM_MMU500_ACTLR_CPRE, need to
 		 * clear CACHE_LOCK bit of ACR first. And, CACHE_LOCK
@@ -1770,7 +1793,7 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 		 * Disable MMU-500's not-particularly-beneficial next-page
 		 * prefetcher for the sake of errata #841119 and #826419.
 		 */
-		if (smmu->model == ARM_MMU500) {
+		if (smmu->model == ARM_MMU500 || smmu->model == MRVL_MMU500) {
 			reg = readl_relaxed(cb_base + ARM_SMMU_CB_ACTLR);
 			reg &= ~ARM_MMU500_ACTLR_CPRE;
 			writel_relaxed(reg, cb_base + ARM_SMMU_CB_ACTLR);
@@ -1987,6 +2010,15 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 	if (id & ID2_VMID16)
 		smmu->features |= ARM_SMMU_FEAT_VMID16;
 
+	/*
+	 * Armada-AP806 erratum #582743.
+	 * Hide the SMMU_IDR2.PTFSv8 fields to sidestep the AArch64
+	 * formats altogether and allow using 32 bits access on the
+	 * interconnect.
+	 */
+	if (smmu->model == MRVL_MMU500)
+		id &= ~(ID2_PTFS_4K | ID2_PTFS_16K | ID2_PTFS_64K);
+
 	/*
 	 * What the page table walker can address actually depends on which
 	 * descriptor format is in use, but since a) we don't know that yet,
@@ -2053,6 +2085,7 @@ ARM_SMMU_MATCH_DATA(smmu_generic_v1, ARM_SMMU_V1, GENERIC_SMMU);
 ARM_SMMU_MATCH_DATA(smmu_generic_v2, ARM_SMMU_V2, GENERIC_SMMU);
 ARM_SMMU_MATCH_DATA(arm_mmu401, ARM_SMMU_V1_64K, GENERIC_SMMU);
 ARM_SMMU_MATCH_DATA(arm_mmu500, ARM_SMMU_V2, ARM_MMU500);
+ARM_SMMU_MATCH_DATA(mrvl_mmu500, ARM_SMMU_V2, MRVL_MMU500);
 ARM_SMMU_MATCH_DATA(cavium_smmuv2, ARM_SMMU_V2, CAVIUM_SMMUV2);
 ARM_SMMU_MATCH_DATA(qcom_smmuv2, ARM_SMMU_V2, QCOM_SMMUV2);
 
@@ -2062,6 +2095,7 @@ static const struct of_device_id arm_smmu_of_match[] = {
 	{ .compatible = "arm,mmu-400", .data = &smmu_generic_v1 },
 	{ .compatible = "arm,mmu-401", .data = &arm_mmu401 },
 	{ .compatible = "arm,mmu-500", .data = &arm_mmu500 },
+	{ .compatible = "marvell,mmu-500", .data = &mrvl_mmu500 },
 	{ .compatible = "cavium,smmu-v2", .data = &cavium_smmuv2 },
 	{ .compatible = "qcom,smmu-v2", .data = &qcom_smmuv2 },
 	{ },
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
