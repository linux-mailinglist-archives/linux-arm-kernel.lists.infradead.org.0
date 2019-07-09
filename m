Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F31C3637B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 16:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Y3nI/h1TV56k/Z4TkPK01DKxYi2DjMKXLC5pRe8uz0=; b=u66Xd6ghByiIWQ
	pfOutHNOb9+DP99qYHfgVUMqR2/sSL6ZfTB2V3KdI4KurpyDtSVBmf5Uf5WdhadFP0mO/wJj0r7eA
	9xP8pE4XeV+WiCQBZ1npnNYHZUDhz5MOGVToY+5agOW82pdQFqe18djKOSnpynUKVZ6Zdy9ttPF7W
	DZx/RH9ooKM0zJrcKNguVIkawVKPRVjFjIxahZDj2nYMY+xXo/pzjtn4LRQnEdJEC3Aik26dgB+57
	wrEJ7OismKBb6cpOdMFxEtlDq56DVRy6Vz5uVDGypM9zU5oJcemR8y8d+IGK8gFY85cEhRgY91FIE
	vJ+hoiEpXJtWk7X6v+yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkqym-0001CE-QF; Tue, 09 Jul 2019 14:20:24 +0000
Received: from [209.244.105.251] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hkqya-0001BQ-Bi; Tue, 09 Jul 2019 14:20:12 +0000
From: Christoph Hellwig <hch@lst.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: [PATCH 1/2] dma-mapping check pfn validity in dma_common_{mmap,
 get_sgtable}
Date: Tue,  9 Jul 2019 07:20:10 -0700
Message-Id: <20190709142011.24984-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709142011.24984-1-hch@lst.de>
References: <20190709142011.24984-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Check that the pfn returned from arch_dma_coherent_to_pfn refers to
a valid page and reject the mmap / get_sgtable requests otherwise.

Based on the arm implementation of the mmap and get_sgtable methods.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 kernel/dma/mapping.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
index 1f628e7ac709..b945239621d8 100644
--- a/kernel/dma/mapping.c
+++ b/kernel/dma/mapping.c
@@ -116,11 +116,16 @@ int dma_common_get_sgtable(struct device *dev, struct sg_table *sgt,
 	int ret;
 
 	if (!dev_is_dma_coherent(dev)) {
+		unsigned long pfn;
+
 		if (!IS_ENABLED(CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN))
 			return -ENXIO;
 
-		page = pfn_to_page(arch_dma_coherent_to_pfn(dev, cpu_addr,
-				dma_addr));
+		/* If the PFN is not valid, we do not have a struct page */
+		pfn = arch_dma_coherent_to_pfn(dev, cpu_addr, dma_addr);
+		if (!pfn_valid(pfn))
+			return -ENXIO;
+		page = pfn_to_page(pfn);
 	} else {
 		page = virt_to_page(cpu_addr);
 	}
@@ -170,7 +175,11 @@ int dma_common_mmap(struct device *dev, struct vm_area_struct *vma,
 	if (!dev_is_dma_coherent(dev)) {
 		if (!IS_ENABLED(CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN))
 			return -ENXIO;
+
+		/* If the PFN is not valid, we do not have a struct page */
 		pfn = arch_dma_coherent_to_pfn(dev, cpu_addr, dma_addr);
+		if (!pfn_valid(pfn))
+			return -ENXIO;
 	} else {
 		pfn = page_to_pfn(virt_to_page(cpu_addr));
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
