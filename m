Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DDF1FDD74
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:26:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P9up3rpbA2AloJANZ+56K3rdo1qHi4wC01izXB69MRs=; b=iosqPk5ZWF1XiG
	GdG4c+1tp6UzHsIIJ+shO5/AO+r/rCw0lrVKtZFGRWlK0JAAaaYEegxx9t8EJXTX6anhJ+QWetEhs
	h+YNJ5XhPggyC1BlNnBGdODhvL27H8Pdbzv3xmADB6zlKGRzYVb2WDaSo6gdo+KCJHnniPpYNCkrh
	6j3ysz2Bb8SzhPAr63mLIv14AsFfnFfVEOtx7bym8DdZSybLClsM7En735erNP+FdcruG7IZCeUod
	nB8TG74v+CiXuMspi0TR6YucHFaQhlOXfX92CKoP0wPf8sD5/L7KXxfKk81eXTOVqvUPgIFlLbNn8
	h9xp3ZzVT1n+FE0zLH8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljK2-0003GR-EV; Thu, 18 Jun 2020 01:26:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj71-0002YH-IG
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:13:06 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E4E5214DB;
 Thu, 18 Jun 2020 01:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442782;
 bh=ogNUmHb4ecHAb3xp0gFwbZJRDxgJbUk5Zy0HwUo3QbM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iomfH5F2e1MPXSIL4LniY2fzXvlFgV9CjbLYokI+7d0Zle+cUGZMnlbRSgZLYctW5
 gUnNj+Nl1CHvljDckwDNQdZ/1jvYj9C2bTb8UcPmShXG87SGa6TMicPyCUIFXxROYD
 7G9juesyDK2VyOvhvdphGbM6yOod/jUQQa6CTdT8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 227/388] iommu/arm-smmu-v3: Don't reserve
 implementation defined register space
Date: Wed, 17 Jun 2020 21:05:24 -0400
Message-Id: <20200618010805.600873-227-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181303_731179_CDDFE13D 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sasha Levin <sashal@kernel.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Will Deacon <will@kernel.org>, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jean-Philippe Brucker <jean-philippe@linaro.org>

[ Upstream commit 52f3fab0067d6fa9e99c1b7f63265dd48ca76046 ]

Some SMMUv3 implementation embed the Perf Monitor Group Registers (PMCG)
inside the first 64kB region of the SMMU. Since PMCG are managed by a
separate driver, this layout causes resource reservation conflicts
during boot.

To avoid this conflict, don't reserve the MMIO regions that are
implementation defined. Although devm_ioremap_resource() still works on
full pages under the hood, this way we benefit from resource conflict
checks.

Fixes: 7d839b4b9e00 ("perf/smmuv3: Add arm64 smmuv3 pmu driver")
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Link: https://lore.kernel.org/r/20200513110255.597203-1-jean-philippe@linaro.org
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/iommu/arm-smmu-v3.c | 35 +++++++++++++++++++++++++++++++----
 1 file changed, 31 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 82508730feb7..af21d24a09e8 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -171,6 +171,8 @@
 #define ARM_SMMU_PRIQ_IRQ_CFG1		0xd8
 #define ARM_SMMU_PRIQ_IRQ_CFG2		0xdc
 
+#define ARM_SMMU_REG_SZ			0xe00
+
 /* Common MSI config fields */
 #define MSI_CFG0_ADDR_MASK		GENMASK_ULL(51, 2)
 #define MSI_CFG2_SH			GENMASK(5, 4)
@@ -628,6 +630,7 @@ struct arm_smmu_strtab_cfg {
 struct arm_smmu_device {
 	struct device			*dev;
 	void __iomem			*base;
+	void __iomem			*page1;
 
 #define ARM_SMMU_FEAT_2_LVL_STRTAB	(1 << 0)
 #define ARM_SMMU_FEAT_2_LVL_CDTAB	(1 << 1)
@@ -733,9 +736,8 @@ static struct arm_smmu_option_prop arm_smmu_options[] = {
 static inline void __iomem *arm_smmu_page1_fixup(unsigned long offset,
 						 struct arm_smmu_device *smmu)
 {
-	if ((offset > SZ_64K) &&
-	    (smmu->options & ARM_SMMU_OPT_PAGE0_REGS_ONLY))
-		offset -= SZ_64K;
+	if (offset > SZ_64K)
+		return smmu->page1 + offset - SZ_64K;
 
 	return smmu->base + offset;
 }
@@ -4021,6 +4023,18 @@ err_reset_pci_ops: __maybe_unused;
 	return err;
 }
 
+static void __iomem *arm_smmu_ioremap(struct device *dev, resource_size_t start,
+				      resource_size_t size)
+{
+	struct resource res = {
+		.flags = IORESOURCE_MEM,
+		.start = start,
+		.end = start + size - 1,
+	};
+
+	return devm_ioremap_resource(dev, &res);
+}
+
 static int arm_smmu_device_probe(struct platform_device *pdev)
 {
 	int irq, ret;
@@ -4056,10 +4070,23 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 	}
 	ioaddr = res->start;
 
-	smmu->base = devm_ioremap_resource(dev, res);
+	/*
+	 * Don't map the IMPLEMENTATION DEFINED regions, since they may contain
+	 * the PMCG registers which are reserved by the PMU driver.
+	 */
+	smmu->base = arm_smmu_ioremap(dev, ioaddr, ARM_SMMU_REG_SZ);
 	if (IS_ERR(smmu->base))
 		return PTR_ERR(smmu->base);
 
+	if (arm_smmu_resource_size(smmu) > SZ_64K) {
+		smmu->page1 = arm_smmu_ioremap(dev, ioaddr + SZ_64K,
+					       ARM_SMMU_REG_SZ);
+		if (IS_ERR(smmu->page1))
+			return PTR_ERR(smmu->page1);
+	} else {
+		smmu->page1 = smmu->base;
+	}
+
 	/* Interrupt lines */
 
 	irq = platform_get_irq_byname_optional(pdev, "combined");
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
