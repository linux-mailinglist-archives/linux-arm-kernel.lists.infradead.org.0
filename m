Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB07813BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 09:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lna3FB7oec60civLwiYhp+zmAu+9kMsbmLfF5E0Uh5Y=; b=KXJqjVhqS0pkFr
	4IoRhSRTKM43Va2nDh3vFVlxPX8RnF30msNoV3WNVLSykaNnpQ5SU0emD6KAE6mNN2rkVmajmIGln
	iVHQ6kZo6dgns67vdX4lEtKcg5cL1ekUzVnuoopNR+C1taDWdo/7NfW4O3e/kjeCo8Y2Xu3ulrJcA
	na0D7OFWw1SjHzG79pN/Rb1Ng5/zGryBIEJPItL31hxBrVq8xaDCdIUXBREqIY7qpMF5stNfquPcc
	3N7Ks7eiPPyz4jpK/wxNXSxbedOH4eeOL+i4tY+kWd3c1JHgIo/3LjSjj536L86Z/hbpUhfhdJO/R
	/CG6fz9fKZmxYXoo2NVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huXsV-0001BI-Ev; Mon, 05 Aug 2019 07:57:59 +0000
Received: from [195.167.85.94] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1huXrK-0000xQ-Dy; Mon, 05 Aug 2019 07:56:47 +0000
From: Christoph Hellwig <hch@lst.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: [PATCH] arm: initialize the dma-remap atomic pool for LPAE configs
Date: Mon,  5 Aug 2019 10:56:37 +0300
Message-Id: <20190805075637.5373-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190805075637.5373-1-hch@lst.de>
References: <20190805075637.5373-1-hch@lst.de>
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

When we use the generic dma-direct + remap code we also need to
initialize the atomic pool that is used for GFP_ATOMIC allocations on
non-coherent devices.

Fixes: ad3c7b18c5b3 ("arm: use swiotlb for bounce buffering on LPAE configs")
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/mm/dma-mapping.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index 6774b03aa405..e509365cc9ca 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -2423,4 +2423,10 @@ void arch_dma_free(struct device *dev, size_t size, void *cpu_addr,
 {
 	__arm_dma_free(dev, size, cpu_addr, dma_handle, attrs, false);
 }
+
+static int __init atomic_pool_init(void)
+{
+	return dma_atomic_pool_init(GFP_DMA, pgprot_noncached(PAGE_KERNEL));
+}
+postcore_initcall(atomic_pool_init);
 #endif /* CONFIG_SWIOTLB */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
