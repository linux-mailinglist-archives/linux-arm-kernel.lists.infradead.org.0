Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF98880D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 19:08:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GaCCQi+ddxIOuq+RU2fSNII2Zjb2bC2SMaxlDCH0Iao=; b=J6BoSR3qFLqdrt
	q4yvPrFau1m2mzCrGUAEJ//7NKvqR6cUnM6oEd2C3lLCUaxUyfhZZDzqjoZ6lUY9ORtcZzdEUjUHk
	Eq06KvNWmguNm/H2h9+U1GxyPlDBcoy4RqGcRj15LgU4hCmvBOgIf9oyD7FqLRfnNJlT1sYGQxxAq
	twLWt/7czczrzuISk/i0tmulK4jzhxrI88wfQLi81h0xZ4+UL8q9m+gwkYNX8S6ElMVw7Uq3XHnQO
	ZiWMQoQpwmh2xWyH/feSOBbOIePC8SSmWYbR6NM4fDDZv2xINRMW2Hhwi45qXJm1086whIpnmVnz7
	patedGLR3pWjl6qeHeQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8Nc-0001Dc-62; Fri, 09 Aug 2019 17:08:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8ND-000126-Uj
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 17:08:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DE0615AB;
 Fri,  9 Aug 2019 10:08:14 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 459463F575;
 Fri,  9 Aug 2019 10:08:13 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 01/15] iommu/arm-smmu: Convert GR0 registers to bitfields
Date: Fri,  9 Aug 2019 18:07:38 +0100
Message-Id: <910cad718be01904db20ce73d8d54e7481290136.1565369764.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565369764.git.robin.murphy@arm.com>
References: <cover.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_100816_072679_01FE5931 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: robdclark@gmail.com, joro@8bytes.org, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, vivek.gautam@codeaurora.org,
 gregory.clement@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

FIELD_PREP remains a terrible name, but the overall simplification will
make further work on this stuff that much more manageable. This also
serves as an audit of the header, wherein we can impose a consistent
grouping and ordering of the offset and field definitions

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu-regs.h | 126 ++++++++++++++++------------------
 drivers/iommu/arm-smmu.c      |  51 +++++++-------
 2 files changed, 84 insertions(+), 93 deletions(-)

diff --git a/drivers/iommu/arm-smmu-regs.h b/drivers/iommu/arm-smmu-regs.h
index 1c278f7ae888..d189f025537a 100644
--- a/drivers/iommu/arm-smmu-regs.h
+++ b/drivers/iommu/arm-smmu-regs.h
@@ -10,111 +10,101 @@
 #ifndef _ARM_SMMU_REGS_H
 #define _ARM_SMMU_REGS_H
 
+#include <linux/bits.h>
+
 /* Configuration registers */
 #define ARM_SMMU_GR0_sCR0		0x0
-#define sCR0_CLIENTPD			(1 << 0)
-#define sCR0_GFRE			(1 << 1)
-#define sCR0_GFIE			(1 << 2)
-#define sCR0_EXIDENABLE			(1 << 3)
-#define sCR0_GCFGFRE			(1 << 4)
-#define sCR0_GCFGFIE			(1 << 5)
-#define sCR0_USFCFG			(1 << 10)
-#define sCR0_VMIDPNE			(1 << 11)
-#define sCR0_PTM			(1 << 12)
-#define sCR0_FB				(1 << 13)
-#define sCR0_VMID16EN			(1 << 31)
-#define sCR0_BSU_SHIFT			14
-#define sCR0_BSU_MASK			0x3
+#define sCR0_VMID16EN			BIT(31)
+#define sCR0_BSU			GENMASK(15, 14)
+#define sCR0_FB				BIT(13)
+#define sCR0_PTM			BIT(12)
+#define sCR0_VMIDPNE			BIT(11)
+#define sCR0_USFCFG			BIT(10)
+#define sCR0_GCFGFIE			BIT(5)
+#define sCR0_GCFGFRE			BIT(4)
+#define sCR0_EXIDENABLE			BIT(3)
+#define sCR0_GFIE			BIT(2)
+#define sCR0_GFRE			BIT(1)
+#define sCR0_CLIENTPD			BIT(0)
 
 /* Auxiliary Configuration register */
 #define ARM_SMMU_GR0_sACR		0x10
 
 /* Identification registers */
 #define ARM_SMMU_GR0_ID0		0x20
+#define ID0_S1TS			BIT(30)
+#define ID0_S2TS			BIT(29)
+#define ID0_NTS				BIT(28)
+#define ID0_SMS				BIT(27)
+#define ID0_ATOSNS			BIT(26)
+#define ID0_PTFS_NO_AARCH32		BIT(25)
+#define ID0_PTFS_NO_AARCH32S		BIT(24)
+#define ID0_CTTW			BIT(14)
+#define ID0_NUMIRPT			GENMASK(23, 16)
+#define ID0_NUMSIDB			GENMASK(12, 9)
+#define ID0_EXIDS			BIT(8)
+#define ID0_NUMSMRG			GENMASK(7, 0)
+
 #define ARM_SMMU_GR0_ID1		0x24
+#define ID1_PAGESIZE			BIT(31)
+#define ID1_NUMPAGENDXB			GENMASK(30, 28)
+#define ID1_NUMS2CB			GENMASK(23, 16)
+#define ID1_NUMCB			GENMASK(7, 0)
+
 #define ARM_SMMU_GR0_ID2		0x28
+#define ID2_VMID16			BIT(15)
+#define ID2_PTFS_64K			BIT(14)
+#define ID2_PTFS_16K			BIT(13)
+#define ID2_PTFS_4K			BIT(12)
+#define ID2_UBS				GENMASK(11, 8)
+#define ID2_OAS				GENMASK(7, 4)
+#define ID2_IAS				GENMASK(3, 0)
+
 #define ARM_SMMU_GR0_ID3		0x2c
 #define ARM_SMMU_GR0_ID4		0x30
 #define ARM_SMMU_GR0_ID5		0x34
 #define ARM_SMMU_GR0_ID6		0x38
+
 #define ARM_SMMU_GR0_ID7		0x3c
+#define ID7_MAJOR			GENMASK(7, 4)
+#define ID7_MINOR			GENMASK(3, 0)
+
 #define ARM_SMMU_GR0_sGFSR		0x48
 #define ARM_SMMU_GR0_sGFSYNR0		0x50
 #define ARM_SMMU_GR0_sGFSYNR1		0x54
 #define ARM_SMMU_GR0_sGFSYNR2		0x58
 
-#define ID0_S1TS			(1 << 30)
-#define ID0_S2TS			(1 << 29)
-#define ID0_NTS				(1 << 28)
-#define ID0_SMS				(1 << 27)
-#define ID0_ATOSNS			(1 << 26)
-#define ID0_PTFS_NO_AARCH32		(1 << 25)
-#define ID0_PTFS_NO_AARCH32S		(1 << 24)
-#define ID0_CTTW			(1 << 14)
-#define ID0_NUMIRPT_SHIFT		16
-#define ID0_NUMIRPT_MASK		0xff
-#define ID0_NUMSIDB_SHIFT		9
-#define ID0_NUMSIDB_MASK		0xf
-#define ID0_EXIDS			(1 << 8)
-#define ID0_NUMSMRG_SHIFT		0
-#define ID0_NUMSMRG_MASK		0xff
-
-#define ID1_PAGESIZE			(1 << 31)
-#define ID1_NUMPAGENDXB_SHIFT		28
-#define ID1_NUMPAGENDXB_MASK		7
-#define ID1_NUMS2CB_SHIFT		16
-#define ID1_NUMS2CB_MASK		0xff
-#define ID1_NUMCB_SHIFT			0
-#define ID1_NUMCB_MASK			0xff
-
-#define ID2_OAS_SHIFT			4
-#define ID2_OAS_MASK			0xf
-#define ID2_IAS_SHIFT			0
-#define ID2_IAS_MASK			0xf
-#define ID2_UBS_SHIFT			8
-#define ID2_UBS_MASK			0xf
-#define ID2_PTFS_4K			(1 << 12)
-#define ID2_PTFS_16K			(1 << 13)
-#define ID2_PTFS_64K			(1 << 14)
-#define ID2_VMID16			(1 << 15)
-
-#define ID7_MAJOR_SHIFT			4
-#define ID7_MAJOR_MASK			0xf
-
 /* Global TLB invalidation */
 #define ARM_SMMU_GR0_TLBIVMID		0x64
 #define ARM_SMMU_GR0_TLBIALLNSNH	0x68
 #define ARM_SMMU_GR0_TLBIALLH		0x6c
 #define ARM_SMMU_GR0_sTLBGSYNC		0x70
+
 #define ARM_SMMU_GR0_sTLBGSTATUS	0x74
-#define sTLBGSTATUS_GSACTIVE		(1 << 0)
+#define sTLBGSTATUS_GSACTIVE		BIT(0)
 
 /* Stream mapping registers */
 #define ARM_SMMU_GR0_SMR(n)		(0x800 + ((n) << 2))
-#define SMR_VALID			(1 << 31)
-#define SMR_MASK_SHIFT			16
-#define SMR_ID_SHIFT			0
+#define SMR_VALID			BIT(31)
+#define SMR_MASK			GENMASK(31, 16)
+#define SMR_ID				GENMASK(15, 0)
 
 #define ARM_SMMU_GR0_S2CR(n)		(0xc00 + ((n) << 2))
-#define S2CR_CBNDX_SHIFT		0
-#define S2CR_CBNDX_MASK			0xff
-#define S2CR_EXIDVALID			(1 << 10)
-#define S2CR_TYPE_SHIFT			16
-#define S2CR_TYPE_MASK			0x3
-enum arm_smmu_s2cr_type {
-	S2CR_TYPE_TRANS,
-	S2CR_TYPE_BYPASS,
-	S2CR_TYPE_FAULT,
-};
-
-#define S2CR_PRIVCFG_SHIFT		24
-#define S2CR_PRIVCFG_MASK		0x3
+#define S2CR_PRIVCFG			GENMASK(25, 24)
 enum arm_smmu_s2cr_privcfg {
 	S2CR_PRIVCFG_DEFAULT,
 	S2CR_PRIVCFG_DIPAN,
 	S2CR_PRIVCFG_UNPRIV,
 	S2CR_PRIVCFG_PRIV,
 };
+#define S2CR_TYPE			GENMASK(17, 16)
+enum arm_smmu_s2cr_type {
+	S2CR_TYPE_TRANS,
+	S2CR_TYPE_BYPASS,
+	S2CR_TYPE_FAULT,
+};
+#define S2CR_EXIDVALID			BIT(10)
+#define S2CR_CBNDX			GENMASK(7, 0)
 
 /* Context bank attribute registers */
 #define ARM_SMMU_GR1_CBAR(n)		(0x0 + ((n) << 2))
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 64977c131ee6..89eddc54e41c 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -20,6 +20,7 @@
 #include <linux/acpi.h>
 #include <linux/acpi_iort.h>
 #include <linux/atomic.h>
+#include <linux/bitfield.h>
 #include <linux/delay.h>
 #include <linux/dma-iommu.h>
 #include <linux/dma-mapping.h>
@@ -1019,7 +1020,7 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
 static void arm_smmu_write_smr(struct arm_smmu_device *smmu, int idx)
 {
 	struct arm_smmu_smr *smr = smmu->smrs + idx;
-	u32 reg = smr->id << SMR_ID_SHIFT | smr->mask << SMR_MASK_SHIFT;
+	u32 reg = FIELD_PREP(SMR_ID, smr->id) | FIELD_PREP(SMR_MASK, smr->mask);
 
 	if (!(smmu->features & ARM_SMMU_FEAT_EXIDS) && smr->valid)
 		reg |= SMR_VALID;
@@ -1029,9 +1030,9 @@ static void arm_smmu_write_smr(struct arm_smmu_device *smmu, int idx)
 static void arm_smmu_write_s2cr(struct arm_smmu_device *smmu, int idx)
 {
 	struct arm_smmu_s2cr *s2cr = smmu->s2crs + idx;
-	u32 reg = (s2cr->type & S2CR_TYPE_MASK) << S2CR_TYPE_SHIFT |
-		  (s2cr->cbndx & S2CR_CBNDX_MASK) << S2CR_CBNDX_SHIFT |
-		  (s2cr->privcfg & S2CR_PRIVCFG_MASK) << S2CR_PRIVCFG_SHIFT;
+	u32 reg = FIELD_PREP(S2CR_TYPE, s2cr->type) |
+		  FIELD_PREP(S2CR_CBNDX, s2cr->cbndx) |
+		  FIELD_PREP(S2CR_PRIVCFG, s2cr->privcfg);
 
 	if (smmu->features & ARM_SMMU_FEAT_EXIDS && smmu->smrs &&
 	    smmu->smrs[idx].valid)
@@ -1063,15 +1064,15 @@ static void arm_smmu_test_smr_masks(struct arm_smmu_device *smmu)
 	 * bits are set, so check each one separately. We can reject
 	 * masters later if they try to claim IDs outside these masks.
 	 */
-	smr = smmu->streamid_mask << SMR_ID_SHIFT;
+	smr = FIELD_PREP(SMR_ID, smmu->streamid_mask);
 	writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(0));
 	smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(0));
-	smmu->streamid_mask = smr >> SMR_ID_SHIFT;
+	smmu->streamid_mask = FIELD_GET(SMR_ID, smr);
 
-	smr = smmu->streamid_mask << SMR_MASK_SHIFT;
+	smr = FIELD_PREP(SMR_MASK, smmu->streamid_mask);
 	writel_relaxed(smr, gr0_base + ARM_SMMU_GR0_SMR(0));
 	smr = readl_relaxed(gr0_base + ARM_SMMU_GR0_SMR(0));
-	smmu->smr_mask_mask = smr >> SMR_MASK_SHIFT;
+	smmu->smr_mask_mask = FIELD_GET(SMR_MASK, smr);
 }
 
 static int arm_smmu_find_sme(struct arm_smmu_device *smmu, u16 id, u16 mask)
@@ -1140,8 +1141,8 @@ static int arm_smmu_master_alloc_smes(struct device *dev)
 	mutex_lock(&smmu->stream_map_mutex);
 	/* Figure out a viable stream map entry allocation */
 	for_each_cfg_sme(fwspec, i, idx) {
-		u16 sid = fwspec->ids[i];
-		u16 mask = fwspec->ids[i] >> SMR_MASK_SHIFT;
+		u16 sid = FIELD_GET(SMR_ID, fwspec->ids[i]);
+		u16 mask = FIELD_GET(SMR_MASK, fwspec->ids[i]);
 
 		if (idx != INVALID_SMENDX) {
 			ret = -EEXIST;
@@ -1466,8 +1467,8 @@ static int arm_smmu_add_device(struct device *dev)
 
 	ret = -EINVAL;
 	for (i = 0; i < fwspec->num_ids; i++) {
-		u16 sid = fwspec->ids[i];
-		u16 mask = fwspec->ids[i] >> SMR_MASK_SHIFT;
+		u16 sid = FIELD_GET(SMR_ID, fwspec->ids[i]);
+		u16 mask = FIELD_GET(SMR_MASK, fwspec->ids[i]);
 
 		if (sid & ~smmu->streamid_mask) {
 			dev_err(dev, "stream ID 0x%x out of range for SMMU (0x%x)\n",
@@ -1648,12 +1649,12 @@ static int arm_smmu_of_xlate(struct device *dev, struct of_phandle_args *args)
 	u32 mask, fwid = 0;
 
 	if (args->args_count > 0)
-		fwid |= (u16)args->args[0];
+		fwid |= FIELD_PREP(SMR_ID, args->args[0]);
 
 	if (args->args_count > 1)
-		fwid |= (u16)args->args[1] << SMR_MASK_SHIFT;
+		fwid |= FIELD_PREP(SMR_MASK, args->args[1]);
 	else if (!of_property_read_u32(args->np, "stream-match-mask", &mask))
-		fwid |= (u16)mask << SMR_MASK_SHIFT;
+		fwid |= FIELD_PREP(SMR_MASK, mask);
 
 	return iommu_fwspec_add_ids(dev, &fwid, 1);
 }
@@ -1728,7 +1729,7 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 		 * bit is only present in MMU-500r2 onwards.
 		 */
 		reg = readl_relaxed(gr0_base + ARM_SMMU_GR0_ID7);
-		major = (reg >> ID7_MAJOR_SHIFT) & ID7_MAJOR_MASK;
+		major = FIELD_GET(ID7_MAJOR, reg);
 		reg = readl_relaxed(gr0_base + ARM_SMMU_GR0_sACR);
 		if (major >= 2)
 			reg &= ~ARM_MMU500_ACR_CACHE_LOCK;
@@ -1780,7 +1781,7 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 	reg &= ~sCR0_FB;
 
 	/* Don't upgrade barriers */
-	reg &= ~(sCR0_BSU_MASK << sCR0_BSU_SHIFT);
+	reg &= ~(sCR0_BSU);
 
 	if (smmu->features & ARM_SMMU_FEAT_VMID16)
 		reg |= sCR0_VMID16EN;
@@ -1879,12 +1880,12 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 		smmu->features |= ARM_SMMU_FEAT_EXIDS;
 		size = 1 << 16;
 	} else {
-		size = 1 << ((id >> ID0_NUMSIDB_SHIFT) & ID0_NUMSIDB_MASK);
+		size = 1 << FIELD_GET(ID0_NUMSIDB, id);
 	}
 	smmu->streamid_mask = size - 1;
 	if (id & ID0_SMS) {
 		smmu->features |= ARM_SMMU_FEAT_STREAM_MATCH;
-		size = (id >> ID0_NUMSMRG_SHIFT) & ID0_NUMSMRG_MASK;
+		size = FIELD_GET(ID0_NUMSMRG, id);
 		if (size == 0) {
 			dev_err(smmu->dev,
 				"stream-matching supported, but no SMRs present!\n");
@@ -1923,15 +1924,15 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 	smmu->pgshift = (id & ID1_PAGESIZE) ? 16 : 12;
 
 	/* Check for size mismatch of SMMU address space from mapped region */
-	size = 1 << (((id >> ID1_NUMPAGENDXB_SHIFT) & ID1_NUMPAGENDXB_MASK) + 1);
+	size = 1 << (FIELD_GET(ID1_NUMPAGENDXB, id) + 1);
 	size <<= smmu->pgshift;
 	if (smmu->cb_base != gr0_base + size)
 		dev_warn(smmu->dev,
 			"SMMU address space size (0x%lx) differs from mapped region size (0x%tx)!\n",
 			size * 2, (smmu->cb_base - gr0_base) * 2);
 
-	smmu->num_s2_context_banks = (id >> ID1_NUMS2CB_SHIFT) & ID1_NUMS2CB_MASK;
-	smmu->num_context_banks = (id >> ID1_NUMCB_SHIFT) & ID1_NUMCB_MASK;
+	smmu->num_s2_context_banks = FIELD_GET(ID1_NUMS2CB, id);
+	smmu->num_context_banks = FIELD_GET(ID1_NUMCB, id);
 	if (smmu->num_s2_context_banks > smmu->num_context_banks) {
 		dev_err(smmu->dev, "impossible number of S2 context banks!\n");
 		return -ENODEV;
@@ -1957,11 +1958,11 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 
 	/* ID2 */
 	id = readl_relaxed(gr0_base + ARM_SMMU_GR0_ID2);
-	size = arm_smmu_id_size_to_bits((id >> ID2_IAS_SHIFT) & ID2_IAS_MASK);
+	size = arm_smmu_id_size_to_bits(FIELD_GET(ID2_IAS, id));
 	smmu->ipa_size = size;
 
 	/* The output mask is also applied for bypass */
-	size = arm_smmu_id_size_to_bits((id >> ID2_OAS_SHIFT) & ID2_OAS_MASK);
+	size = arm_smmu_id_size_to_bits(FIELD_GET(ID2_OAS, id));
 	smmu->pa_size = size;
 
 	if (id & ID2_VMID16)
@@ -1981,7 +1982,7 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 		if (smmu->version == ARM_SMMU_V1_64K)
 			smmu->features |= ARM_SMMU_FEAT_FMT_AARCH64_64K;
 	} else {
-		size = (id >> ID2_UBS_SHIFT) & ID2_UBS_MASK;
+		size = FIELD_GET(ID2_UBS, id);
 		smmu->va_size = arm_smmu_id_size_to_bits(size);
 		if (id & ID2_PTFS_4K)
 			smmu->features |= ARM_SMMU_FEAT_FMT_AARCH64_4K;
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
