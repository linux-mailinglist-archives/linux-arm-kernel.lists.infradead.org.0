Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8816B22C76
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 08:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aSqs1pkEPwyaVEVLkTrKTrLLk/DJbNyBlgxaxp8wyWQ=; b=b82C/KzTgmDWeu
	IduDa2wromg1XeKxjM6qDhnRWRPS4c2jP38ZncpHtzCxTww0hk7qRPuWhSW7apGci5Zto8ARn37hq
	+hrWKeiqfn8HSnODiWN9i/MSWWYsQUsHUpT/XWIXHnularHCuqPlqQuurK2OtqQ9EGsn405ECp/6z
	ORoyJWidO4EfUkJe7YSNNKBwPA0FaW+pGtgcCiVIgZm9jDCr8+Kbytdi0TjAY/+MR/vyza96cCC9p
	O/Z3r6NeKJP3EbLQKwOAStHpAaiOq/ZSDKGyO5SbfUXVm3gtAFAFAnGrlOjsA2YDRcw0vdXRx6jDw
	OIlxOhg4JycauapUvd7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hScFx-0007Wa-Dq; Mon, 20 May 2019 06:58:45 +0000
Received: from 089144206147.atnat0015.highway.bob.at ([89.144.206.147]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hScFq-0007WP-MK; Mon, 20 May 2019 06:58:39 +0000
From: Christoph Hellwig <hch@lst.de>
To: will.deacon@arm.com
Subject: [PATCH] ACPI/IORT: Fix build without CONFIG_IOMMU_API
Date: Mon, 20 May 2019 08:57:46 +0200
Message-Id: <20190520065746.17068-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: jean-philippe.brucker@arm.com, linux-acpi@vger.kernel.org,
 lorenzo.pieralisi@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IOMMU_FWSPEC_PCI_RC_ATS is only defined if CONFIG_IOMMU_API is
enabled.

Fixes: 5702ee24182f ("ACPI/IORT: Check ATS capability in root complex nodes")
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/acpi/arm64/iort.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
index 9058cb084b91..3e542b5d2a2d 100644
--- a/drivers/acpi/arm64/iort.c
+++ b/drivers/acpi/arm64/iort.c
@@ -1074,9 +1074,10 @@ const struct iommu_ops *iort_iommu_configure(struct device *dev)
 		info.node = node;
 		err = pci_for_each_dma_alias(to_pci_dev(dev),
 					     iort_pci_iommu_init, &info);
-
+#ifdef CONFIG_IOMMU_API
 		if (!err && iort_pci_rc_supports_ats(node))
 			dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
+#endif
 	} else {
 		int i = 0;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
