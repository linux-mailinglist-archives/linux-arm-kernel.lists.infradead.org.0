Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D22B50B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 16:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2isVKRydBE0LxLAHj52TXNb3m3Y/t4JbPktFz/7bnoU=; b=pg7k2IUQDK0c0m
	zrlymdgiQczibd/HeeAb5ZhVm9O5Ysm4KRvQpopMKsElLd788WcILdYrfZSf4Aj0D331aVpU0sf2F
	rhgs7pXFL800f47l4+Q9lJjVTsZknpVw/fZJyPBvw16UaQw0X5OTNqbhBX0golzGRlb46RoUVmNZj
	+kqQIjkzGBbdQM9ZownIeMmYzQIks1HT5JNbG1esINAyLrv//+ZX2rs7ZuvS83XuPZn9dCOB9zKtU
	seISMzQ33ChEhbPRIxPff+jy254xMTDcEBMg4KBIjQept9P/D+oT1Vv/A5uGi3ALqzJGCrlrkcakZ
	YEjWmsn6B6fT9C62r5Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAEjq-00019E-BP; Tue, 17 Sep 2019 14:45:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEjd-00018o-AE
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 14:45:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5A79028;
 Tue, 17 Sep 2019 07:45:40 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8CE563F575;
 Tue, 17 Sep 2019 07:45:39 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	joro@8bytes.org
Subject: [PATCH v2] iommu/arm-smmu: Report USF more clearly
Date: Tue, 17 Sep 2019 15:45:34 +0100
Message-Id: <4febe7a87a95ed607b4dc68ba96b15210df84e9e.1568731534.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_074541_401841_09AD483E 
X-CRM114-Status: GOOD (  13.90  )
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
Cc: iommu@lists.linux-foundation.org, Douglas Anderson <dianders@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Although CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT is a welcome tool
for smoking out inadequate firmware, the failure mode is non-obvious
and can be confusing for end users. Add some special-case reporting of
Unidentified Stream Faults to help clarify this particular symptom.
Since we're adding yet another print to the mix, also break out an
explicit ratelimit state to make sure everything stays together (and
reduce the static storage footprint a little).

CC: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c | 21 ++++++++++++++++-----
 drivers/iommu/arm-smmu.h |  2 ++
 2 files changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index b7cf24402a94..b27020fd6c90 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -36,6 +36,7 @@
 #include <linux/pci.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/ratelimit.h>
 #include <linux/slab.h>
 
 #include <linux/amba/bus.h>
@@ -485,6 +486,8 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
 {
 	u32 gfsr, gfsynr0, gfsynr1, gfsynr2;
 	struct arm_smmu_device *smmu = dev;
+	static DEFINE_RATELIMIT_STATE(rs, DEFAULT_RATELIMIT_INTERVAL,
+				      DEFAULT_RATELIMIT_BURST);
 
 	gfsr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sGFSR);
 	gfsynr0 = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sGFSYNR0);
@@ -494,11 +497,19 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
 	if (!gfsr)
 		return IRQ_NONE;
 
-	dev_err_ratelimited(smmu->dev,
-		"Unexpected global fault, this could be serious\n");
-	dev_err_ratelimited(smmu->dev,
-		"\tGFSR 0x%08x, GFSYNR0 0x%08x, GFSYNR1 0x%08x, GFSYNR2 0x%08x\n",
-		gfsr, gfsynr0, gfsynr1, gfsynr2);
+	if (__ratelimit(&rs)) {
+		if (IS_ENABLED(CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT) &&
+		    (gfsr & sGFSR_USF))
+			dev_err(smmu->dev,
+				"Blocked unknown Stream ID 0x%hx; boot with \"arm-smmu.disable_bypass=0\" to allow, but this may have security implications\n",
+				(u16)gfsynr1);
+		else
+			dev_err(smmu->dev,
+				"Unexpected global fault, this could be serious\n");
+		dev_err(smmu->dev,
+			"\tGFSR 0x%08x, GFSYNR0 0x%08x, GFSYNR1 0x%08x, GFSYNR2 0x%08x\n",
+			gfsr, gfsynr0, gfsynr1, gfsynr2);
+	}
 
 	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sGFSR, gfsr);
 	return IRQ_HANDLED;
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index c9c13b5785f2..eede28ecda6d 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -79,6 +79,8 @@
 #define ID7_MINOR			GENMASK(3, 0)
 
 #define ARM_SMMU_GR0_sGFSR		0x48
+#define sGFSR_USF			BIT(1)
+
 #define ARM_SMMU_GR0_sGFSYNR0		0x50
 #define ARM_SMMU_GR0_sGFSYNR1		0x54
 #define ARM_SMMU_GR0_sGFSYNR2		0x58
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
