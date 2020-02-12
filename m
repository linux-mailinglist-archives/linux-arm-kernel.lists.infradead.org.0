Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F483159E12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 01:38:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ks3+txiE6UeXm+poMYG/Ke5srDTuaVxU7iKBc5GOpuk=; b=ilv
	sOHpQS3TcU72IisDJ1uINcon6iqtiWSdPomb987tsb0Dpf00XtTmJWIfnJ1ib5VpphFfeDfcBlBRs
	aa26+O1G0OrOEa83geED500b3YaOGNVO1aLrc159UK4SzzV51gcPA18QXrL52lGvEeQqjo8318wF/
	gcojYLmOri/n0YtXFgCNU92DNZCR5VzEnmYij295LMdAfQAJub4QmBw2vlce+OBEwNGgovSKplx3U
	amomi8vTcTXujxT8X+qJXv5sYyK+ACiuwTWHuRHzpXAsWMiIOzVrWoeI34SjCCEkXK/NQdPcy33wj
	2nxq77bQagZVE8yi5Yiv0h+KUe5d1lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1g2L-0006Nr-9Y; Wed, 12 Feb 2020 00:37:53 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1g2E-0006N7-Ld
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 00:37:48 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9E5881C6A9B;
 Wed, 12 Feb 2020 01:37:41 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 628A41A00C8;
 Wed, 12 Feb 2020 01:37:41 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 8E69B40CB6; Tue, 11 Feb 2020 17:37:40 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] iommu/arm-smmu: fix the module name to be consistent with
 older kernel
Date: Tue, 11 Feb 2020 18:37:20 -0600
Message-Id: <1581467841-25397-1-git-send-email-leoyang.li@nxp.com>
X-Mailer: git-send-email 1.9.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_163746_853218_F531B36C 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Li Yang <leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit cd221bd24ff5 ("iommu/arm-smmu: Allow building as a module")
introduced a side effect that changed the module name from arm-smmu to
arm-smmu-mod.  This breaks the users of kernel parameters for the driver
(e.g. arm-smmu.disable_bypass).  This patch changes the module name back
to be consistent.

Signed-off-by: Li Yang <leoyang.li@nxp.com>
---
 drivers/iommu/Makefile                          | 4 ++--
 drivers/iommu/{arm-smmu.c => arm-smmu-common.c} | 0
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename drivers/iommu/{arm-smmu.c => arm-smmu-common.c} (100%)

diff --git a/drivers/iommu/Makefile b/drivers/iommu/Makefile
index 2104fb8afc06..f39e82e68640 100644
--- a/drivers/iommu/Makefile
+++ b/drivers/iommu/Makefile
@@ -14,8 +14,8 @@ obj-$(CONFIG_MSM_IOMMU) += msm_iommu.o
 obj-$(CONFIG_AMD_IOMMU) += amd_iommu.o amd_iommu_init.o amd_iommu_quirks.o
 obj-$(CONFIG_AMD_IOMMU_DEBUGFS) += amd_iommu_debugfs.o
 obj-$(CONFIG_AMD_IOMMU_V2) += amd_iommu_v2.o
-obj-$(CONFIG_ARM_SMMU) += arm-smmu-mod.o
-arm-smmu-mod-objs += arm-smmu.o arm-smmu-impl.o arm-smmu-qcom.o
+obj-$(CONFIG_ARM_SMMU) += arm-smmu.o
+arm-smmu-objs := arm-smmu-common.o arm-smmu-impl.o arm-smmu-qcom.o
 obj-$(CONFIG_ARM_SMMU_V3) += arm-smmu-v3.o
 obj-$(CONFIG_DMAR_TABLE) += dmar.o
 obj-$(CONFIG_INTEL_IOMMU) += intel-iommu.o intel-pasid.o
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu-common.c
similarity index 100%
rename from drivers/iommu/arm-smmu.c
rename to drivers/iommu/arm-smmu-common.c
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
