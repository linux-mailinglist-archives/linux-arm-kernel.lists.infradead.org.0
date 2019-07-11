Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F53659E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 17:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1KkS8BvRC0mPRvQW1aal7VZvpReNbMRNrpeJDmGEEM=; b=CWLlaX/DRFuhfu
	d232HUx3j4Tc+Jck2liQrK2+xSxzpruhnBgEgbL9xeOYHKyGBr55cm1uNgda1Q7HqN2eNkChAlGmb
	KoFxUZr8LtQ9G4fgikovDy0XKT0jyfghqoJBIDDCSsGQ1oouiHCmFaVBHKOycYr/dB496JzcwMbsU
	lts1f5oWoxPPPRPyIIJrYUXo2/FUZIIY062Lm+yeOVkt92GYm/rJIZehiRhLyYYqKGDPlQuY3YoJt
	yF+yalw9D7JtHEHnluMa5CFrLphU/pr0OuV6vl8B0WK0pFHHjrXRsUnQ0tsVUCMxzvv9zH5ODh2Qa
	yBTxZU43dttErn52uCTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlabg-0003y1-Mk; Thu, 11 Jul 2019 15:03:36 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlabU-0003wh-3f
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 15:03:26 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 22DB71C0017;
 Thu, 11 Jul 2019 15:03:10 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [PATCH v2 1/4] iommu/arm-smmu: Introduce wrapper for writeq/readq
Date: Thu, 11 Jul 2019 17:02:39 +0200
Message-Id: <20190711150242.25290-2-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190711150242.25290-1-gregory.clement@bootlin.com>
References: <20190711150242.25290-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_080324_464444_12C19994 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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

This patch introduces the smmu_writeq_relaxed/smmu_readq_relaxed
helpers, as preparation to add specific Marvell work-around for
accessing 64 bits width registers of ARM SMMU.

Signed-off-by: Hanna Hawa <hannah@marvell.com>
Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 drivers/iommu/arm-smmu.c | 36 +++++++++++++++++++++++++++---------
 1 file changed, 27 insertions(+), 9 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 045d93884164..ac0784b5b675 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -91,9 +91,11 @@
  * therefore this actually makes more sense than it might first appear.
  */
 #ifdef CONFIG_64BIT
-#define smmu_write_atomic_lq		writeq_relaxed
+#define smmu_write_atomic_lq(smmu, val, reg)	\
+					smmu_writeq_relaxed(smmu, val, reg)
 #else
-#define smmu_write_atomic_lq		writel_relaxed
+#define smmu_write_atomic_lq(smmu, val, reg)	\
+					writel_relaxed(val, reg)
 #endif
 
 /* Translation context bank */
@@ -295,6 +297,19 @@ static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
 	return container_of(dom, struct arm_smmu_domain, domain);
 }
 
+static inline void smmu_writeq_relaxed(struct arm_smmu_device *smmu,
+				       u64 val,
+				       void __iomem *addr)
+{
+	writeq_relaxed(val, addr);
+}
+
+static inline u64 smmu_readq_relaxed(struct arm_smmu_device *smmu,
+				     void __iomem *addr)
+{
+	return readq_relaxed(addr);
+}
+
 static void parse_driver_options(struct arm_smmu_device *smmu)
 {
 	int i = 0;
@@ -495,6 +510,7 @@ static void arm_smmu_tlb_inv_range_nosync(unsigned long iova, size_t size,
 					  size_t granule, bool leaf, void *cookie)
 {
 	struct arm_smmu_domain *smmu_domain = cookie;
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
 	bool stage1 = cfg->cbar != CBAR_TYPE_S2_TRANS;
 	void __iomem *reg = ARM_SMMU_CB(smmu_domain->smmu, cfg->cbndx);
@@ -516,7 +532,7 @@ static void arm_smmu_tlb_inv_range_nosync(unsigned long iova, size_t size,
 			iova >>= 12;
 			iova |= (u64)cfg->asid << 48;
 			do {
-				writeq_relaxed(iova, reg);
+				smmu_writeq_relaxed(smmu, iova, reg);
 				iova += granule >> 12;
 			} while (size -= granule);
 		}
@@ -525,7 +541,7 @@ static void arm_smmu_tlb_inv_range_nosync(unsigned long iova, size_t size,
 			      ARM_SMMU_CB_S2_TLBIIPAS2;
 		iova >>= 12;
 		do {
-			smmu_write_atomic_lq(iova, reg);
+			smmu_write_atomic_lq(smmu, iova, reg);
 			iova += granule >> 12;
 		} while (size -= granule);
 	}
@@ -584,7 +600,7 @@ static irqreturn_t arm_smmu_context_fault(int irq, void *dev)
 		return IRQ_NONE;
 
 	fsynr = readl_relaxed(cb_base + ARM_SMMU_CB_FSYNR0);
-	iova = readq_relaxed(cb_base + ARM_SMMU_CB_FAR);
+	iova = smmu_readq_relaxed(smmu, cb_base + ARM_SMMU_CB_FAR);
 
 	dev_err_ratelimited(smmu->dev,
 	"Unhandled context fault: fsr=0x%x, iova=0x%08lx, fsynr=0x%x, cb=%d\n",
@@ -734,9 +750,11 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 		writel_relaxed(cb->ttbr[0], cb_base + ARM_SMMU_CB_TTBR0);
 		writel_relaxed(cb->ttbr[1], cb_base + ARM_SMMU_CB_TTBR1);
 	} else {
-		writeq_relaxed(cb->ttbr[0], cb_base + ARM_SMMU_CB_TTBR0);
+		smmu_writeq_relaxed(smmu, cb->ttbr[0],
+				    cb_base + ARM_SMMU_CB_TTBR0);
 		if (stage1)
-			writeq_relaxed(cb->ttbr[1], cb_base + ARM_SMMU_CB_TTBR1);
+			smmu_writeq_relaxed(smmu, cb->ttbr[1],
+					    cb_base + ARM_SMMU_CB_TTBR1);
 	}
 
 	/* MAIRs (stage-1 only) */
@@ -1367,7 +1385,7 @@ static phys_addr_t arm_smmu_iova_to_phys_hard(struct iommu_domain *domain,
 	/* ATS1 registers can only be written atomically */
 	va = iova & ~0xfffUL;
 	if (smmu->version == ARM_SMMU_V2)
-		smmu_write_atomic_lq(va, cb_base + ARM_SMMU_CB_ATS1PR);
+		smmu_write_atomic_lq(smmu, va, cb_base + ARM_SMMU_CB_ATS1PR);
 	else /* Register is only 32-bit in v1 */
 		writel_relaxed(va, cb_base + ARM_SMMU_CB_ATS1PR);
 
@@ -1380,7 +1398,7 @@ static phys_addr_t arm_smmu_iova_to_phys_hard(struct iommu_domain *domain,
 		return ops->iova_to_phys(ops, iova);
 	}
 
-	phys = readq_relaxed(cb_base + ARM_SMMU_CB_PAR);
+	phys = smmu_readq_relaxed(smmu, cb_base + ARM_SMMU_CB_PAR);
 	spin_unlock_irqrestore(&smmu_domain->cb_lock, flags);
 	if (phys & CB_PAR_F) {
 		dev_err(dev, "translation fault!\n");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
