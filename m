Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA91A5F71
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 04:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5kVvMMnyNU+H7yiYznwusc1I4v8ambot4bnqGR6cpdw=; b=UaSyCnfJyMb0OP
	4xtRgW+cA5Op3zaY6GGIbt1Fa2pmV8qrvxhLx6K+b9oFyGUNRN1sUbD3f0gZhOcrq/ZXGfDcEOAUs
	vEFZVsNDsi2Qrftpu8NFRGQ5Tw1L5ZBa8oOjrftFqTPPZndXrxVn7c+z2ZtlnNSExiCye5pRp95oD
	NIxt+SCiG7zgJpeEFpzVC6SCOCJRhNmO1riIq2v/WPoIkOOZcTSljBiFN9bYa5F0eizCatdX1Yndi
	YtGH2fPGLp6NkIPTpGi7miPrOjdqW0ZC4FVtcg3L6AIO3R8aKxRmg8MnhmEHmP0gJoyKpcDh2x9Ok
	VW+QdzPtDZUzs0A+pMlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4ynT-0002WW-CX; Tue, 03 Sep 2019 02:43:55 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ynG-0002VO-0A
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 02:43:43 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C994D77CF3F576A2A425;
 Tue,  3 Sep 2019 10:43:29 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Tue, 3 Sep 2019
 10:43:22 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <will@kernel.org>, <robin.murphy@arm.com>, <joro@8bytes.org>
Subject: [PATCH -next] iommu/arm-smmu-v3: Fix build error without
 CONFIG_PCI_ATS
Date: Tue, 3 Sep 2019 10:42:12 +0800
Message-ID: <20190903024212.20300-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_194342_231428_8D4FC1E4 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: iommu@lists.linux-foundation.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If CONFIG_PCI_ATS is not set, building fails:

drivers/iommu/arm-smmu-v3.c: In function arm_smmu_ats_supported:
drivers/iommu/arm-smmu-v3.c:2325:35: error: struct pci_dev has no member named ats_cap; did you mean msi_cap?
  return !pdev->untrusted && pdev->ats_cap;
                                   ^~~~~~~

ats_cap should only used when CONFIG_PCI_ATS is defined,
so use #ifdef block to guard this.

Fixes: bfff88ec1afe ("iommu/arm-smmu-v3: Rework enabling/disabling of ATS for PCI masters")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/iommu/arm-smmu-v3.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 66bf641..44ac9ac 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2313,7 +2313,7 @@ static void arm_smmu_install_ste_for_dev(struct arm_smmu_master *master)
 
 static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
 {
-	struct pci_dev *pdev;
+	struct pci_dev *pdev __maybe_unused;
 	struct arm_smmu_device *smmu = master->smmu;
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(master->dev);
 
@@ -2321,8 +2321,10 @@ static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
 	    !(fwspec->flags & IOMMU_FWSPEC_PCI_RC_ATS) || pci_ats_disabled())
 		return false;
 
+#ifdef CONFIG_PCI_ATS
 	pdev = to_pci_dev(master->dev);
 	return !pdev->untrusted && pdev->ats_cap;
+#endif
 }
 
 static void arm_smmu_enable_ats(struct arm_smmu_master *master)
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
