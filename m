Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C64A61DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:53:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYP+1i9o+o8nRufAMaI6GTcPpQ3dTdqYGexm1YQWI0U=; b=Zn4uzmxz6HUB+1
	TVsji3uySJg+PV29wH+/ZpLd+GrDrTKfTP11K1Utl1VXs5NNKf5YeCgR5WPoJRSSZUeukWL2YxPPQ
	/JQWEHPVVttONEDjknJtGxH68ak4AojswLSS3N8IubibcOkz5qKObF31ThvuIxSAhYbPww+HDS2ZJ
	Qui+IQgFCpYpAjQqXi8geqrMV/byl5MQZuEqq8nnXNfSLYWcZacbJn5DMmjkBRvD8G6DGHJUfnvl0
	PvFjRZeaxOGlLyMs7zqxOMxsWayLHX1ZeOB/vsSXa7aEa9WP8kBhT1e1SdqXEK/tD0U1I6Jfe2JHA
	konSytaNYvhjmo3wj3pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52hG-0008Vv-3k; Tue, 03 Sep 2019 06:53:46 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52fF-0007QM-K0
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:51:43 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 6F0BF84B5CCF034E3493;
 Tue,  3 Sep 2019 14:51:36 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Tue, 3 Sep 2019
 14:51:29 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <will@kernel.org>, <robin.murphy@arm.com>, <joro@8bytes.org>
Subject: [PATCH v2 -next] iommu/arm-smmu-v3: Fix build error without
 CONFIG_PCI_ATS
Date: Tue, 3 Sep 2019 14:50:56 +0800
Message-ID: <20190903065056.17988-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20190903024212.20300-1-yuehaibing@huawei.com>
References: <20190903024212.20300-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_235141_909061_0E42957C 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
v2: Add arm_smmu_ats_supported() of no CONFIG_PCI_ATS
---
 drivers/iommu/arm-smmu-v3.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 66bf641..8da93e7 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2311,6 +2311,7 @@ static void arm_smmu_install_ste_for_dev(struct arm_smmu_master *master)
 	}
 }
 
+#ifdef CONFIG_PCI_ATS
 static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
 {
 	struct pci_dev *pdev;
@@ -2324,6 +2325,12 @@ static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
 	pdev = to_pci_dev(master->dev);
 	return !pdev->untrusted && pdev->ats_cap;
 }
+#else
+static bool arm_smmu_ats_supported(struct arm_smmu_master *master)
+{
+	return false;
+}
+#endif
 
 static void arm_smmu_enable_ats(struct arm_smmu_master *master)
 {
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
