Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 938338F3B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dic2+ldocgsVq749CUBUnvbEc/++q0Sk34ejG4PhNxs=; b=kNF1esRzUIZfhI
	yLLrqnOwQz2FdHlFGego2Gn3qHMFqvHA58Thz2ZaH4nX5onZBV3Iw0TPHG5LbC6Eqz+Kca2hkJAwm
	/r+BYehdYGtZe1lArG+1+sahv581xavsGh3Bcx1meIhV2i4XPNIJXlzjCppzxk5kKx2Pygg5ltufx
	T7xJ97hQaaYOtokiTRol4SSpvJbcTW1OIR4QOHjCyhg73sobT//SHu2PzluMp2DiKG6P4UW36IWSw
	lPeULwlbS510Z88AYgYRmBUx0pTTjsYLEUlNqq+dtxVyHGOd0wtWwlFCmdWvMcMiodKcm4+9wGiVu
	3RNvMFRZqaBlhMvG73rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKff-00089W-PN; Thu, 15 Aug 2019 18:40:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKdI-0004rN-RL
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:37:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6552B344;
 Thu, 15 Aug 2019 11:37:56 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 11F6C3F694;
 Thu, 15 Aug 2019 11:37:54 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 09/17] iommu/arm-smmu: Abstract GR1 accesses
Date: Thu, 15 Aug 2019 19:37:29 +0100
Message-Id: <00d20b1757c8ab4206deefcc30fdce343383af52.1565892337.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565892337.git.robin.murphy@arm.com>
References: <cover.1565892337.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113757_032540_D8EDB902 
X-CRM114-Status: GOOD (  13.72  )
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
 jcrouse@codeaurora.org, gregory.clement@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce some register access abstractions which we will later use to
encapsulate various quirks. GR1 is the easiest page to start with.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c | 34 +++++++++++++++++++++++++++-------
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 24b4de1a4185..d612dda2889f 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -71,7 +71,6 @@
 
 /* SMMU global address space */
 #define ARM_SMMU_GR0(smmu)		((smmu)->base)
-#define ARM_SMMU_GR1(smmu)		((smmu)->base + (1 << (smmu)->pgshift))
 
 /*
  * SMMU global address space with conditional offset to access secure
@@ -250,6 +249,29 @@ struct arm_smmu_domain {
 	struct iommu_domain		domain;
 };
 
+static void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
+{
+	return smmu->base + (n << smmu->pgshift);
+}
+
+static u32 arm_smmu_readl(struct arm_smmu_device *smmu, int page, int offset)
+{
+	return readl_relaxed(arm_smmu_page(smmu, page) + offset);
+}
+
+static void arm_smmu_writel(struct arm_smmu_device *smmu, int page, int offset,
+			    u32 val)
+{
+	writel_relaxed(val, arm_smmu_page(smmu, page) + offset);
+}
+
+#define ARM_SMMU_GR1		1
+
+#define arm_smmu_gr1_read(s, o)		\
+	arm_smmu_readl((s), ARM_SMMU_GR1, (o))
+#define arm_smmu_gr1_write(s, o, v)	\
+	arm_smmu_writel((s), ARM_SMMU_GR1, (o), (v))
+
 struct arm_smmu_option_prop {
 	u32 opt;
 	const char *prop;
@@ -574,7 +596,6 @@ static irqreturn_t arm_smmu_context_fault(int irq, void *dev)
 	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
 	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
-	void __iomem *gr1_base = ARM_SMMU_GR1(smmu);
 	void __iomem *cb_base;
 
 	cb_base = ARM_SMMU_CB(smmu, cfg->cbndx);
@@ -585,7 +606,7 @@ static irqreturn_t arm_smmu_context_fault(int irq, void *dev)
 
 	fsynr = readl_relaxed(cb_base + ARM_SMMU_CB_FSYNR0);
 	iova = readq_relaxed(cb_base + ARM_SMMU_CB_FAR);
-	cbfrsynra = readl_relaxed(gr1_base + ARM_SMMU_GR1_CBFRSYNRA(cfg->cbndx));
+	cbfrsynra = arm_smmu_gr1_read(smmu, ARM_SMMU_GR1_CBFRSYNRA(cfg->cbndx));
 
 	dev_err_ratelimited(smmu->dev,
 	"Unhandled context fault: fsr=0x%x, iova=0x%08lx, fsynr=0x%x, cbfrsynra=0x%x, cb=%d\n",
@@ -676,7 +697,7 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 	bool stage1;
 	struct arm_smmu_cb *cb = &smmu->cbs[idx];
 	struct arm_smmu_cfg *cfg = cb->cfg;
-	void __iomem *cb_base, *gr1_base;
+	void __iomem *cb_base;
 
 	cb_base = ARM_SMMU_CB(smmu, idx);
 
@@ -686,7 +707,6 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 		return;
 	}
 
-	gr1_base = ARM_SMMU_GR1(smmu);
 	stage1 = cfg->cbar != CBAR_TYPE_S2_TRANS;
 
 	/* CBA2R */
@@ -699,7 +719,7 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 		if (smmu->features & ARM_SMMU_FEAT_VMID16)
 			reg |= FIELD_PREP(CBA2R_VMID16, cfg->vmid);
 
-		writel_relaxed(reg, gr1_base + ARM_SMMU_GR1_CBA2R(idx));
+		arm_smmu_gr1_write(smmu, ARM_SMMU_GR1_CBA2R(idx), reg);
 	}
 
 	/* CBAR */
@@ -718,7 +738,7 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 		/* 8-bit VMIDs live in CBAR */
 		reg |= FIELD_PREP(CBAR_VMID, cfg->vmid);
 	}
-	writel_relaxed(reg, gr1_base + ARM_SMMU_GR1_CBAR(idx));
+	arm_smmu_gr1_write(smmu, ARM_SMMU_GR1_CBAR(idx), reg);
 
 	/*
 	 * TCR
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
