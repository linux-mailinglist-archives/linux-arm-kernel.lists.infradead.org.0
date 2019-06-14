Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D2C4614A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8SUySQPRC4+VFaxVVVYFe4mVr21st5bzr9/RkDP+Mzo=; b=GgDWlnP2XOw3uZ
	NpD5ig2Hp3+6b1+XhwiP47eT9Weh7VQPEz3C9+6u/3JGemY/sdtD97dRTZuKbf8Adc61yAr8HXIAu
	/iFMUWfa5wwk/Yrebbw/PrT1HXEz+2RkBTZHpSLKK5WtaPk24vsBnsBbxHFRegNuFMo1Hvb6Ec7hv
	yeAjM6J5MziUv6YqNDiU6In2QQUJ8s4CDC3jd1XrLgBG2py96BZElWU8kPH6l/RtWZ6YtPZ2yrRUu
	o4/xmdY+OWHMiJkqKPGyxRynDwMXfYZzLQuLutnIhdqmcrmLLePnJL44Vuy3Q2X1gOrmEsDtPZPth
	obdt1Lvb5/3GlaoAPiqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnSC-00067p-1g; Fri, 14 Jun 2019 14:45:20 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnRY-0005pM-87; Fri, 14 Jun 2019 14:44:40 +0000
From: Christoph Hellwig <hch@lst.de>
To: Vineet Gupta <vgupta@synopsys.com>
Subject: [PATCH 1/7] arm-nommu: remove the partial DMA_ATTR_NON_CONSISTENT
 support
Date: Fri, 14 Jun 2019 16:44:25 +0200
Message-Id: <20190614144431.21760-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614144431.21760-1-hch@lst.de>
References: <20190614144431.21760-1-hch@lst.de>
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
Cc: Jonas Bonn <jonas@southpole.se>, linux-xtensa@linux-xtensa.org,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 Helge Deller <deller@gmx.de>, linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 Stafford Horne <shorne@gmail.com>, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arm-nommu DMA code supports DMA_ATTR_NON_CONSISTENT allocations, but
does not provide a cache_sync operation.  This means any user of it
will never be able to actually transfer cache ownership and thus cause
coherency bugs.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/mm/dma-mapping-nommu.c | 24 +++---------------------
 1 file changed, 3 insertions(+), 21 deletions(-)

diff --git a/arch/arm/mm/dma-mapping-nommu.c b/arch/arm/mm/dma-mapping-nommu.c
index f304b10e23a4..bc003df45546 100644
--- a/arch/arm/mm/dma-mapping-nommu.c
+++ b/arch/arm/mm/dma-mapping-nommu.c
@@ -39,18 +39,7 @@ static void *arm_nommu_dma_alloc(struct device *dev, size_t size,
 				 unsigned long attrs)
 
 {
-	void *ret;
-
-	/*
-	 * Try generic allocator first if we are advertised that
-	 * consistency is not required.
-	 */
-
-	if (attrs & DMA_ATTR_NON_CONSISTENT)
-		return dma_direct_alloc_pages(dev, size, dma_handle, gfp,
-				attrs);
-
-	ret = dma_alloc_from_global_coherent(size, dma_handle);
+	void *ret = dma_alloc_from_global_coherent(size, dma_handle);
 
 	/*
 	 * dma_alloc_from_global_coherent() may fail because:
@@ -70,16 +59,9 @@ static void arm_nommu_dma_free(struct device *dev, size_t size,
 			       void *cpu_addr, dma_addr_t dma_addr,
 			       unsigned long attrs)
 {
-	if (attrs & DMA_ATTR_NON_CONSISTENT) {
-		dma_direct_free_pages(dev, size, cpu_addr, dma_addr, attrs);
-	} else {
-		int ret = dma_release_from_global_coherent(get_order(size),
-							   cpu_addr);
-
-		WARN_ON_ONCE(ret == 0);
-	}
+	int ret = dma_release_from_global_coherent(get_order(size), cpu_addr);
 
-	return;
+	WARN_ON_ONCE(ret == 0);
 }
 
 static int arm_nommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
