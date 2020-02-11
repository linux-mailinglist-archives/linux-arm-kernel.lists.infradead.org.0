Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53519159D45
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 00:37:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zwDp3xOePAAM13BqxrlrhvxNrPKPSOA77Fye24Whj6Y=; b=sID
	GjyABLzw+IW82Gz7Z4wvuw7nBO9DhclBMvdOT8dfhxnsyfF4z+pJqJiZ3kQXPN5sko8qLuVuKu9eB
	nHmq2lAuSL7ovP/72f5YIKJgVdQbL4iUAWdtqnyf1ZgHKiV/ZF4SM/0wChYTrsN/IwV8a0qkk0NRB
	ISNcphj034OTREB7QQItB/62YbQqFdeciouAGa9JRk9QDYjYvgotb0vYyU/CojDHBK75n07tHZvef
	uCo/WyLKiOGrkU3ew5pdgjGt7HomFais0LoM51f7puDJePqENGTmMuEH3d6EFtYFDGu/4qPD1nU9H
	SEvoiqJDkngCDDphHr22O2pM6FlOE7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1f6C-0002HD-Ab; Tue, 11 Feb 2020 23:37:48 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1f66-0002GM-0w
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 23:37:43 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AD1D7224B1B;
 Wed, 12 Feb 2020 00:37:36 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0B42F224B09;
 Wed, 12 Feb 2020 00:37:36 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 37E4340CB6; Tue, 11 Feb 2020 16:37:35 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] iommu/arm-smmu: fix the module name for disable_bypass
 parameter
Date: Tue, 11 Feb 2020 17:36:55 -0600
Message-Id: <1581464215-24777-1-git-send-email-leoyang.li@nxp.com>
X-Mailer: git-send-email 1.9.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_153742_203521_0B2A8962 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Li Yang <leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit cd221bd24ff5 ("iommu/arm-smmu: Allow building as a module"),
there is a side effect that the module name is changed from arm-smmu to
arm-smmu-mod.  So the kernel parameter for disable_bypass need to be
changed too.  Fix the Kconfig help and error message to the correct
parameter name.

Signed-off-by: Li Yang <leoyang.li@nxp.com>
---
 drivers/iommu/Kconfig    | 2 +-
 drivers/iommu/arm-smmu.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index d2fade984999..fb54be903c60 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -415,7 +415,7 @@ config ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT
 	  hardcode the bypass disable in the code.
 
 	  NOTE: the kernel command line parameter
-	  'arm-smmu.disable_bypass' will continue to override this
+	  'arm-smmu-mod.disable_bypass' will continue to override this
 	  config.
 
 config ARM_SMMU_V3
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 16c4b87af42b..2ffe8ff04393 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -512,7 +512,7 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
 		if (IS_ENABLED(CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT) &&
 		    (gfsr & ARM_SMMU_sGFSR_USF))
 			dev_err(smmu->dev,
-				"Blocked unknown Stream ID 0x%hx; boot with \"arm-smmu.disable_bypass=0\" to allow, but this may have security implications\n",
+				"Blocked unknown Stream ID 0x%hx; boot with \"arm-smmu-mod.disable_bypass=0\" to allow, but this may have security implications\n",
 				(u16)gfsynr1);
 		else
 			dev_err(smmu->dev,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
