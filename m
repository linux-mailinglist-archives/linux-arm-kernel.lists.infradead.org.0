Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21075880ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 19:10:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2uIaNKbvI7Uwjqz1T8GkN2ygATGQ9QlDfNlcKDUggg=; b=PwBFLv1PNmDkyg
	kQFFbKVFrm8qBfsT/9wypesSnNsNS0mI5d8R+ZgJX4K+AQ8KkdVr6aFgjUrofdqG32HbSi5v7ohYW
	g3ea8rbZqZlbrMZPMeiqVR5gQigrJgMfXpf7pNCjESGyyFj2tj+Qp+jTcepJNGT5KDgsQjgti3Hf6
	d1wmziJF4WhsrqjdG+CL27bJf587qqkKpwTi719nhPOwZu4xEdMkT9vlvPpWfA6f/68oMS02TfLTE
	2X0UWUn8wbytU7tDvOg0lVLSA2VZ2cf7stif3kV1lY9M69mP1/qi1aO9dg8jOvYvBvqBxkHR569oi
	ZqdR6jW6vn80mR1BDvsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8Ot-0002rh-JW; Fri, 09 Aug 2019 17:09:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8NL-00012k-TB
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 17:08:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3226B15AB;
 Fri,  9 Aug 2019 10:08:23 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EE2553F575;
 Fri,  9 Aug 2019 10:08:21 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 07/15] iommu/arm-smmu: Abstract GR1 accesses
Date: Fri,  9 Aug 2019 18:07:44 +0100
Message-Id: <d7a11cc69061effe3de8de640a5a1ddcd30284fe.1565369764.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565369764.git.robin.murphy@arm.com>
References: <cover.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_100824_088307_33F0A60A 
X-CRM114-Status: GOOD (  12.66  )
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

Introduce some register access abstractions which we will later use to
encapsulate various quirks. GR1 is the easiest page to start with.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c | 30 +++++++++++++++++++++++-------
 1 file changed, 23 insertions(+), 7 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 544c992cf586..72505647b77d 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -71,7 +71,6 @@
 
 /* SMMU global address space */
 #define ARM_SMMU_GR0(smmu)		((smmu)->base)
-#define ARM_SMMU_GR1(smmu)		((smmu)->base + (1 << (smmu)->pgshift))
 
 /*
  * SMMU global address space with conditional offset to access secure
@@ -250,6 +249,25 @@ struct arm_smmu_domain {
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
+#define arm_smmu_read_gr1(s, r)		arm_smmu_readl((s), 1, (r))
+#define arm_smmu_write_gr1(s, r, v)	arm_smmu_writel((s), 1, (r), (v))
+
 struct arm_smmu_option_prop {
 	u32 opt;
 	const char *prop;
@@ -574,7 +592,6 @@ static irqreturn_t arm_smmu_context_fault(int irq, void *dev)
 	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
 	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
-	void __iomem *gr1_base = ARM_SMMU_GR1(smmu);
 	void __iomem *cb_base;
 
 	cb_base = ARM_SMMU_CB(smmu, cfg->cbndx);
@@ -585,7 +602,7 @@ static irqreturn_t arm_smmu_context_fault(int irq, void *dev)
 
 	fsynr = readl_relaxed(cb_base + ARM_SMMU_CB_FSYNR0);
 	iova = readq_relaxed(cb_base + ARM_SMMU_CB_FAR);
-	cbfrsynra = readl_relaxed(gr1_base + ARM_SMMU_GR1_CBFRSYNRA(cfg->cbndx));
+	cbfrsynra = arm_smmu_read_gr1(smmu, ARM_SMMU_GR1_CBFRSYNRA(cfg->cbndx));
 
 	dev_err_ratelimited(smmu->dev,
 	"Unhandled context fault: fsr=0x%x, iova=0x%08lx, fsynr=0x%x, cbfrsynra=0x%x, cb=%d\n",
@@ -676,7 +693,7 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 	bool stage1;
 	struct arm_smmu_cb *cb = &smmu->cbs[idx];
 	struct arm_smmu_cfg *cfg = cb->cfg;
-	void __iomem *cb_base, *gr1_base;
+	void __iomem *cb_base;
 
 	cb_base = ARM_SMMU_CB(smmu, idx);
 
@@ -686,7 +703,6 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 		return;
 	}
 
-	gr1_base = ARM_SMMU_GR1(smmu);
 	stage1 = cfg->cbar != CBAR_TYPE_S2_TRANS;
 
 	/* CBA2R */
@@ -699,7 +715,7 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 		if (smmu->features & ARM_SMMU_FEAT_VMID16)
 			reg |= FIELD_PREP(CBA2R_VMID16, cfg->vmid);
 
-		writel_relaxed(reg, gr1_base + ARM_SMMU_GR1_CBA2R(idx));
+		arm_smmu_write_gr1(smmu, ARM_SMMU_GR1_CBA2R(idx), reg);
 	}
 
 	/* CBAR */
@@ -718,7 +734,7 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 		/* 8-bit VMIDs live in CBAR */
 		reg |= FIELD_PREP(CBAR_VMID, cfg->vmid);
 	}
-	writel_relaxed(reg, gr1_base + ARM_SMMU_GR1_CBAR(idx));
+	arm_smmu_write_gr1(smmu, ARM_SMMU_GR1_CBAR(idx), reg);
 
 	/*
 	 * TCR
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
