Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 941A1880E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 19:09:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRjv3qNvZKKPDUikLAYnrR/gkh7Rk660g9x+9Y+VADs=; b=VB3uDs09LxmY3V
	ZPVIW4y2EDbpKojY13QQdsx3/9+6Y9mJGD+Ttb0zcIIyap+DZ62XccJuZTJUXog97lhC4RBhILFEH
	tyu8GAkbJjezj8UthLt9e+vSsOqp9LgL1DR6VV4en5TpJIw4QnZCmJwFUxQCGNluDeNlpmm5F1UxI
	eIYk6UUO53tlJQAiq1+kVuJdO7Cc8TrigwnGPUjDiGJFhIG/4Rdv3Mse465u/VqcspZd/tNzsM2JY
	PpAVSNDx42060kfew4oP3WDW9oIbD7ngz4L3BXqsWE546iCiQQ3SUnnoSR56zQ8shbxf6aRYfI/w3
	QdrGTmvFOfiMO2atACgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8Nt-0001dN-Et; Fri, 09 Aug 2019 17:08:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8NF-00012l-PO
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 17:08:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA02D1684;
 Fri,  9 Aug 2019 10:08:15 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B1FB63F575;
 Fri,  9 Aug 2019 10:08:14 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 02/15] iommu/arm-smmu: Convert GR1 registers to bitfields
Date: Fri,  9 Aug 2019 18:07:39 +0100
Message-Id: <44c4cf251a9eb4fdadff949cd8ff524b9d062c86.1565369764.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565369764.git.robin.murphy@arm.com>
References: <cover.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_100817_946322_04D905B1 
X-CRM114-Status: GOOD (  15.92  )
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

As for GR0, use the bitfield helpers to make GR1 usage a little cleaner,
and use it as an opportunity to audit and tidy the definitions. This
tweaks the handling of CBAR types to match what we did for S2CR a while
back, and fixes a couple of names which didn't quite match the latest
architecture spec (IHI0062D.c).

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu-regs.h | 33 ++++++++++++++-------------------
 drivers/iommu/arm-smmu.c      | 18 +++++++++---------
 2 files changed, 23 insertions(+), 28 deletions(-)

diff --git a/drivers/iommu/arm-smmu-regs.h b/drivers/iommu/arm-smmu-regs.h
index d189f025537a..671c2d98c9da 100644
--- a/drivers/iommu/arm-smmu-regs.h
+++ b/drivers/iommu/arm-smmu-regs.h
@@ -108,30 +108,25 @@ enum arm_smmu_s2cr_type {
 
 /* Context bank attribute registers */
 #define ARM_SMMU_GR1_CBAR(n)		(0x0 + ((n) << 2))
-#define CBAR_VMID_SHIFT			0
-#define CBAR_VMID_MASK			0xff
-#define CBAR_S1_BPSHCFG_SHIFT		8
-#define CBAR_S1_BPSHCFG_MASK		3
-#define CBAR_S1_BPSHCFG_NSH		3
-#define CBAR_S1_MEMATTR_SHIFT		12
-#define CBAR_S1_MEMATTR_MASK		0xf
+#define CBAR_IRPTNDX			GENMASK(31, 24)
+#define CBAR_TYPE			GENMASK(17, 16)
+enum arm_smmu_cbar_type {
+	CBAR_TYPE_S2_TRANS,
+	CBAR_TYPE_S1_TRANS_S2_BYPASS,
+	CBAR_TYPE_S1_TRANS_S2_FAULT,
+	CBAR_TYPE_S1_TRANS_S2_TRANS,
+};
+#define CBAR_S1_MEMATTR			GENMASK(15, 12)
 #define CBAR_S1_MEMATTR_WB		0xf
-#define CBAR_TYPE_SHIFT			16
-#define CBAR_TYPE_MASK			0x3
-#define CBAR_TYPE_S2_TRANS		(0 << CBAR_TYPE_SHIFT)
-#define CBAR_TYPE_S1_TRANS_S2_BYPASS	(1 << CBAR_TYPE_SHIFT)
-#define CBAR_TYPE_S1_TRANS_S2_FAULT	(2 << CBAR_TYPE_SHIFT)
-#define CBAR_TYPE_S1_TRANS_S2_TRANS	(3 << CBAR_TYPE_SHIFT)
-#define CBAR_IRPTNDX_SHIFT		24
-#define CBAR_IRPTNDX_MASK		0xff
+#define CBAR_S1_BPSHCFG			GENMASK(9, 8)
+#define CBAR_S1_BPSHCFG_NSH		3
+#define CBAR_VMID			GENMASK(7, 0)
 
 #define ARM_SMMU_GR1_CBFRSYNRA(n)	(0x400 + ((n) << 2))
 
 #define ARM_SMMU_GR1_CBA2R(n)		(0x800 + ((n) << 2))
-#define CBA2R_RW64_32BIT		(0 << 0)
-#define CBA2R_RW64_64BIT		(1 << 0)
-#define CBA2R_VMID_SHIFT		16
-#define CBA2R_VMID_MASK			0xffff
+#define CBA2R_VMID16			GENMASK(31, 16)
+#define CBA2R_VA64			BIT(0)
 
 #define ARM_SMMU_CB_SCTLR		0x0
 #define ARM_SMMU_CB_ACTLR		0x4
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 89eddc54e41c..515fb1ce39ed 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -237,7 +237,7 @@ struct arm_smmu_cfg {
 		u16			asid;
 		u16			vmid;
 	};
-	u32				cbar;
+	enum arm_smmu_cbar_type		cbar;
 	enum arm_smmu_context_fmt	fmt;
 };
 #define INVALID_IRPTNDX			0xff
@@ -692,31 +692,31 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 	/* CBA2R */
 	if (smmu->version > ARM_SMMU_V1) {
 		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64)
-			reg = CBA2R_RW64_64BIT;
+			reg = CBA2R_VA64;
 		else
-			reg = CBA2R_RW64_32BIT;
+			reg = 0;
 		/* 16-bit VMIDs live in CBA2R */
 		if (smmu->features & ARM_SMMU_FEAT_VMID16)
-			reg |= cfg->vmid << CBA2R_VMID_SHIFT;
+			reg |= FIELD_PREP(CBA2R_VMID16, cfg->vmid);
 
 		writel_relaxed(reg, gr1_base + ARM_SMMU_GR1_CBA2R(idx));
 	}
 
 	/* CBAR */
-	reg = cfg->cbar;
+	reg = FIELD_PREP(CBAR_TYPE, cfg->cbar);
 	if (smmu->version < ARM_SMMU_V2)
-		reg |= cfg->irptndx << CBAR_IRPTNDX_SHIFT;
+		reg |= FIELD_PREP(CBAR_IRPTNDX, cfg->irptndx);
 
 	/*
 	 * Use the weakest shareability/memory types, so they are
 	 * overridden by the ttbcr/pte.
 	 */
 	if (stage1) {
-		reg |= (CBAR_S1_BPSHCFG_NSH << CBAR_S1_BPSHCFG_SHIFT) |
-			(CBAR_S1_MEMATTR_WB << CBAR_S1_MEMATTR_SHIFT);
+		reg |= FIELD_PREP(CBAR_S1_BPSHCFG, CBAR_S1_BPSHCFG_NSH) |
+			FIELD_PREP(CBAR_S1_MEMATTR, CBAR_S1_MEMATTR_WB);
 	} else if (!(smmu->features & ARM_SMMU_FEAT_VMID16)) {
 		/* 8-bit VMIDs live in CBAR */
-		reg |= cfg->vmid << CBAR_VMID_SHIFT;
+		reg |= FIELD_PREP(CBAR_VMID, cfg->vmid);
 	}
 	writel_relaxed(reg, gr1_base + ARM_SMMU_GR1_CBAR(idx));
 
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
