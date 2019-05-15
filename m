Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803CC1E728
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 05:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z44qFezybJdFOfAsfHNqLRy+EyKJ7tUjeyLr0QFLnpA=; b=jblhOWq+pPql0L
	ojdHZ8cJ6PeUtKWAoblxCayO+rZUh9Kp5D9wTPjRnBe557PMFOXXs1HcQK8zxUDpS0WqL6ETuhKxr
	mT9HSmIoteQDv9zsNz3CfTx5jTdo79d+qJLWbP2AnmMxHH2JtIubFCQYKmNnMbZVxlkfown3rfBhX
	h90TvhbdTQM1ARorOKnG24/rwcNqLNqWcbNvXupclyZq0GrwW6pWlTemkPdl9z5uIQvwJdOQ4+d5Y
	pMpthNIuTJVG0AUqIsj59IpGOnR4+teexL5CQBCrS7saNaeReFJ/pUu2v/tObEL+lR0elasJRyAX4
	TRiK59GBIjsWVDOibtDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQkgD-00041z-IJ; Wed, 15 May 2019 03:34:09 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQkg5-00041f-LK
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 03:34:03 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id CBFBD7F6CF26B9D058A2;
 Wed, 15 May 2019 11:33:55 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.439.0; Wed, 15 May 2019 11:33:46 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: <linux-acpi@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH RESEND] ACPI/IORT: Fix build error when IOMMU_SUPPORT disabled
Date: Wed, 15 May 2019 11:42:53 +0800
Message-ID: <20190515034253.79348-1-wangkefeng.wang@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515033406.79020-1-wangkefeng.wang@huawei.com>
References: <20190515033406.79020-1-wangkefeng.wang@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_203401_924120_0DBDF1F1 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Will Deacon <will.deacon@arm.com>, Hulk Robot <hulkci@huawei.com>,
 guohanjun@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

drivers/acpi/arm64/iort.c: In function iort_iommu_configure:
drivers/acpi/arm64/iort.c:1079:21: error: struct iommu_fwspec has no member named flags
    dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
                     ^~
drivers/acpi/arm64/iort.c:1079:32: error: IOMMU_FWSPEC_PCI_RC_ATS
undeclared (first use in this function)
    dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
                                ^~~~~~~~~~~~~~~~~~~~~~~
drivers/acpi/arm64/iort.c:1079:32: note: each undeclared identifier is reported only once for each function it appears in

If IOMMU_SUPPORT not enabled, struct iommu_fwspec without members and
IOMMU_FWSPEC_PCI_RC_ATS not defined, add new iommu_fwspec_set_ats_flags()
to set IOMMU_FWSPEC_PCI_RC_ATS flags to solve build error.

Cc: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 5702ee24182f ("ACPI/IORT: Check ATS capability in root complex nodes")
Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
---
 drivers/acpi/arm64/iort.c | 2 +-
 include/linux/iommu.h     | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 9058cb084b91..4ccf0dd99852 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -1076,7 +1076,7 @@ const struct iommu_ops *iort_iommu_configure(struct device *dev)
 					     iort_pci_iommu_init, &info);
 
 		if (!err && iort_pci_rc_supports_ats(node))
-			dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
+			iommu_fwspec_set_ats_flags(dev);
 	} else {
 		int i = 0;
 
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index a815cf6f6f47..0a84556c0eb6 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -479,6 +479,11 @@ static inline void dev_iommu_fwspec_set(struct device *dev,
 	dev->iommu_fwspec = fwspec;
 }
 
+static inline void iommu_fwspec_set_ats_flags(struct device *dev)
+{
+	dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
+}
+
 int iommu_probe_device(struct device *dev);
 void iommu_release_device(struct device *dev);
 
@@ -770,6 +775,10 @@ static inline void iommu_fwspec_free(struct device *dev)
 {
 }
 
+static inline void iommu_fwspec_set_ats_flags(struct device *dev)
+{
+}
+
 static inline int iommu_fwspec_add_ids(struct device *dev, u32 *ids,
 				       int num_ids)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
