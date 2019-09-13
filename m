Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C162DB1C82
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 13:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O+es3a+lN2yPbanPkEtR+9e4NKyVuM/dM6bW2eNwEy4=; b=je3l7A3PgFRA5u
	sso0E1BeEl/Se4Ld4U983vvHEl1EgNMyf7QgjomqmEAK4G8TNW7cVKM3gR0w576N04Kja44mfqvMs
	7jWVVvrYw1XU0F/maNPajD9TzFg3OEnxG7l2TJrixHBeZwKs+wRPvg4EbG8gGC1VRPgJrfGMHejxC
	uvdyrMwJbsVLifCbOWE+iq+Pl3UQrXYjFp4zjuGLoAb3zbmqToFrSsNw9JNZeXtKFTfUpn7LpYAjJ
	AQ4PWn9V8YN/UilRZF5/RE4pU+bVVuASpcH82HwxZZop/CohABoiINl3WRVyDEyb3kABpERvZGwjw
	3wEQ5qIKrm8iY940DRnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8k4T-0006nh-S8; Fri, 13 Sep 2019 11:49:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8k4F-0006nI-NM
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 11:48:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 76D0128;
 Fri, 13 Sep 2019 04:48:43 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A93D23F71F;
 Fri, 13 Sep 2019 04:48:42 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	joro@8bytes.org
Subject: [PATCH] iommu/arm-smmu: Report USF more clearly
Date: Fri, 13 Sep 2019 12:48:37 +0100
Message-Id: <2762ffd4c196dc91d62e10eb8b753f256ea9b629.1568375317.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_044847_798181_AE0194D3 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

CC: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c | 5 +++++
 drivers/iommu/arm-smmu.h | 2 ++
 2 files changed, 7 insertions(+)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index b7cf24402a94..76ac8c180695 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -499,6 +499,11 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
 	dev_err_ratelimited(smmu->dev,
 		"\tGFSR 0x%08x, GFSYNR0 0x%08x, GFSYNR1 0x%08x, GFSYNR2 0x%08x\n",
 		gfsr, gfsynr0, gfsynr1, gfsynr2);
+	if (IS_ENABLED(CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT) &&
+	    (gfsr & sGFSR_USF))
+		dev_err_ratelimited(smmu->dev,
+			"Stream ID %hu may not be described by firmware, try booting with \"arm-smmu.disable_bypass=0\"\n",
+			(u16)gfsynr1);
 
 	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sGFSR, gfsr);
 	return IRQ_HANDLED;
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index c9c13b5785f2..46f7e161e83e 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -79,6 +79,8 @@
 #define ID7_MINOR			GENMASK(3, 0)
 
 #define ARM_SMMU_GR0_sGFSR		0x48
+#define sGFSR_USF			BIT(2)
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
