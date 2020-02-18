Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1505F162EE0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:42:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lOtJaMIs7MmvQUHyuk80MrWcw68NLw9gZQnDiYyLxnE=; b=UZlglxzQE3J+DX
	ADwqkD+94FjWf6A+wU10B7szkcDA/6jBxhRe2EA0k8mNhKKeRsuDAAWa0PcR/NMbgHqHVSfhrXxg3
	Wv6icZY377E9ZLNDTFuF/kijwIke2TZTi6WnwxMEyGkwr07tuUYgy4yqe2Yvk/lfrRAiRvqqXWKuG
	4UCjlcxiL9gP7QdB/ZmuvISimOCccUltvAe1OXmLQMXYCS/6K2yNU4JZaQtPqAp2zRWop6Bgi0Fe3
	Hw4N9h38tSUA97eXwF1qr59jJfk0iWKFjJyO8pCQjUYKSrAE15H/bv57PwhOGNz0V/3RWT4a9t+NQ
	Bu9SRY4ZMl0z72zqjwdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47ox-00034e-E3; Tue, 18 Feb 2020 18:42:11 +0000
Received: from [199.255.44.128] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47oh-0002xO-K7; Tue, 18 Feb 2020 18:41:55 +0000
From: Christoph Hellwig <hch@lst.de>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH 2/3] ARM/dma-mapping: take the bus limit into account in
 __dma_alloc
Date: Tue, 18 Feb 2020 10:41:02 -0800
Message-Id: <20200218184103.35932-3-hch@lst.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200218184103.35932-1-hch@lst.de>
References: <20200218184103.35932-1-hch@lst.de>
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
Cc: linux-kernel@vger.kernel.org, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DMA coherent allocator needs to take bus limits into account for
picking the zone that the memory is allocated from.

Reported-by: Roger Quadros <rogerq@ti.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Tested-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Tested-by: Roger Quadros <rogerq@ti.com>
---
 arch/arm/mm/dma-mapping.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index 72ddc3d0f5eb..87aba505554a 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -658,7 +658,7 @@ static void *__dma_alloc(struct device *dev, size_t size, dma_addr_t *handle,
 			 gfp_t gfp, pgprot_t prot, bool is_coherent,
 			 unsigned long attrs, const void *caller)
 {
-	u64 mask = dev->coherent_dma_mask;
+	u64 mask = min_not_zero(dev->coherent_dma_mask, dev->bus_dma_limit);
 	struct page *page = NULL;
 	void *addr;
 	bool allowblock, cma;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
