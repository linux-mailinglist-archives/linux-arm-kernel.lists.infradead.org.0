Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAC2162CBE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:28:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Pb+fpJR5sQKjHCsniMgHnnleB1q4ZBWHINnikCr9ZwE=; b=XQPbRmahh84IjY
	fsajoD7YLO4K5QQ5F3yVzO16gTPxHbLu0u9Yv9t+sjARKAxDveQtJ+qdAifWxHXvhkSE7dbLeCkbi
	U3PRKfytU4w+e6rOy8uNkCK8xh8k9NlNqADx+GrQ0t9i1+ndX1vQrBRbopWVJfWR1q+UcO1j7bnWh
	MQtyhp0OL9VDOBckeJ/vB05+lHE5YW6xMFOdRbcZKo2JDbeZrcF3Znx/POzQ4XZPe4j4dM6hjSWrk
	83be07sR6VDygJ4jx51SBZtncc8uu6HNFdSkwzFE5MoKErJlLZ9RTMbLDrsweTmzEbh4nl6h9qhFL
	+UjMLiAjBNUoaqY+phkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46fK-0002rl-Qe; Tue, 18 Feb 2020 17:28:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46fC-0002rE-EV
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:28:03 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B8DD620801;
 Tue, 18 Feb 2020 17:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582046882;
 bh=e/0/QBFAJAIo5CwD35f4PXrGqg/igQwC2ROF02xxNwI=;
 h=From:To:Cc:Subject:Date:From;
 b=zI6wXDoQIKN5e6XvH8RdVqnBChySi3ghBpaLo9kUZMkfzlNiYCVy/e82Rug5Dcc00
 EvObfdCSBIBGrY/4eKnlHIzn4bf4kFcczX8Rzvgea6pfIOwmCkwdkzf/rWOCt9JS+5
 yqJGITjn4MJBEE/5zNKZbNR4ieavLpKDWKbgH4UQ=
From: Will Deacon <will@kernel.org>
To: joro@8bytes.org
Subject: [PATCH] iommu/arm-smmu: Restore naming of driver parameter prefix
Date: Tue, 18 Feb 2020 17:27:56 +0000
Message-Id: <20200218172756.2131-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_092802_508391_45D97CBE 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel-team@android.com, Robin Murphy <robin.murphy@arm.com>,
 Russell King <linux@armlinux.org.uk>, iommu@lists.linux-foundation.org,
 Li Yang <leoyang.li@nxp.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Extending the Arm SMMU driver to allow for modular builds changed
KBUILD_MODNAME to be "arm_smmu_mod" so that a single module could be
built from the multiple existing object files without the need to rename
any source files.

This inadvertently changed the name of the driver parameters, which may
lead to runtime issues if bootloaders are relying on the old names for
correctness (e.g. "arm-smmu.disable_bypass=0").

Although MODULE_PARAM_PREFIX can be overridden to restore the old naming
for builtin parameters, only the new name is matched by modprobe and so
loading the driver as a module would cause parameters specified on the
kernel command line to be ignored. Instead, rename "arm_smmu_mod" to
"arm_smmu". Whilst it's a bit of a bodge, this allows us to create a
single module without renaming any files and makes use of the fact that
underscores and hyphens can be used interchangeably in parameter names.

Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Russell King <linux@armlinux.org.uk>
Reported-by: Li Yang <leoyang.li@nxp.com>
Fixes: cd221bd24ff5 ("iommu/arm-smmu: Allow building as a module")
Signed-off-by: Will Deacon <will@kernel.org>
---
 drivers/iommu/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/Makefile b/drivers/iommu/Makefile
index 2104fb8afc06..9f33fdb3bb05 100644
--- a/drivers/iommu/Makefile
+++ b/drivers/iommu/Makefile
@@ -14,8 +14,8 @@ obj-$(CONFIG_MSM_IOMMU) += msm_iommu.o
 obj-$(CONFIG_AMD_IOMMU) += amd_iommu.o amd_iommu_init.o amd_iommu_quirks.o
 obj-$(CONFIG_AMD_IOMMU_DEBUGFS) += amd_iommu_debugfs.o
 obj-$(CONFIG_AMD_IOMMU_V2) += amd_iommu_v2.o
-obj-$(CONFIG_ARM_SMMU) += arm-smmu-mod.o
-arm-smmu-mod-objs += arm-smmu.o arm-smmu-impl.o arm-smmu-qcom.o
+obj-$(CONFIG_ARM_SMMU) += arm_smmu.o
+arm_smmu-objs += arm-smmu.o arm-smmu-impl.o arm-smmu-qcom.o
 obj-$(CONFIG_ARM_SMMU_V3) += arm-smmu-v3.o
 obj-$(CONFIG_DMAR_TABLE) += dmar.o
 obj-$(CONFIG_INTEL_IOMMU) += intel-iommu.o intel-pasid.o
-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
