Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FF29DE28
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 08:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XhD1HcCCX1+bSrmdgzuu5gDht6o5nAUeqRnm4sBwQk=; b=fBwv0FEhObnrRb
	12x3ZF+ym/W7f59gI1fuv5k/IhwgsDkftYbZmbbelQtlcswhISK0KCdITEBT6047oyOZUJyAurEfo
	DNr2ZNE3Athdnl1/wXCk8/T9ZqLw7cnqS3amWIEyPw02oEvHPt5/0co0yiCArkDRpEexrjOwltDrt
	hlXZNQ8y+RNedK6cXU0mZFbcTE3ZYJzsuB2Y4e6ixcCfVhpt4cDtifksQdwUx86PDJ0QY6suWcCXc
	uxsdwt68Q1y2FiKYSzg7/h92HC5jajFm3wFNL3ZIoUoWy3Tbwe/u5sGdhXmrOnMZt59K17FsX8Pz8
	4AbhCJnka4/0ZgCZUvZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2V7K-0005Gq-OT; Tue, 27 Aug 2019 06:38:10 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2V77-0005GP-Ms
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 06:37:59 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8625768AFE; Tue, 27 Aug 2019 08:37:54 +0200 (CEST)
Date: Tue, 27 Aug 2019 08:37:54 +0200
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: Re: [PATCH 03/11] xen/arm: simplify dma_cache_maint
Message-ID: <20190827063754.GA32045@lst.de>
References: <20190826121944.515-1-hch@lst.de> <20190826121944.515-4-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826121944.515-4-hch@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_233758_044813_41942456 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: xen-devel@lists.xenproject.org, iommu@lists.linux-foundation.org,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

And this was still buggy I think, it really needs some real Xen/Arm
testing which I can't do.  Hopefully better version below:

--
From 5ad4b6e291dbb49f65480c9b769414931cbd485a Mon Sep 17 00:00:00 2001
From: Christoph Hellwig <hch@lst.de>
Date: Wed, 24 Jul 2019 15:26:08 +0200
Subject: xen/arm: simplify dma_cache_maint

Calculate the required operation in the caller, and pass it directly
instead of recalculating it for each page, and use simple arithmetics
to get from the physical address to Xen page size aligned chunks.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/xen/mm.c | 61 ++++++++++++++++-------------------------------
 1 file changed, 21 insertions(+), 40 deletions(-)

diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
index 90574d89d0d4..2fde161733b0 100644
--- a/arch/arm/xen/mm.c
+++ b/arch/arm/xen/mm.c
@@ -35,64 +35,45 @@ unsigned long xen_get_swiotlb_free_pages(unsigned int order)
 	return __get_free_pages(flags, order);
 }
 
-enum dma_cache_op {
-       DMA_UNMAP,
-       DMA_MAP,
-};
 static bool hypercall_cflush = false;
 
-/* functions called by SWIOTLB */
-
-static void dma_cache_maint(dma_addr_t handle, unsigned long offset,
-	size_t size, enum dma_data_direction dir, enum dma_cache_op op)
+/* buffers in highmem or foreign pages cannot cross page boundaries */
+static void dma_cache_maint(dma_addr_t handle, size_t size, u32 op)
 {
 	struct gnttab_cache_flush cflush;
-	unsigned long xen_pfn;
-	size_t left = size;
 
-	xen_pfn = (handle >> XEN_PAGE_SHIFT) + offset / XEN_PAGE_SIZE;
-	offset %= XEN_PAGE_SIZE;
+	cflush.a.dev_bus_addr = handle & XEN_PAGE_MASK;
+	cflush.offset = xen_offset_in_page(handle);
+	cflush.op = op;
 
 	do {
-		size_t len = left;
-	
-		/* buffers in highmem or foreign pages cannot cross page
-		 * boundaries */
-		if (len + offset > XEN_PAGE_SIZE)
-			len = XEN_PAGE_SIZE - offset;
-
-		cflush.op = 0;
-		cflush.a.dev_bus_addr = xen_pfn << XEN_PAGE_SHIFT;
-		cflush.offset = offset;
-		cflush.length = len;
-
-		if (op == DMA_UNMAP && dir != DMA_TO_DEVICE)
-			cflush.op = GNTTAB_CACHE_INVAL;
-		if (op == DMA_MAP) {
-			if (dir == DMA_FROM_DEVICE)
-				cflush.op = GNTTAB_CACHE_INVAL;
-			else
-				cflush.op = GNTTAB_CACHE_CLEAN;
-		}
-		if (cflush.op)
-			HYPERVISOR_grant_table_op(GNTTABOP_cache_flush, &cflush, 1);
+		if (size + cflush.offset > XEN_PAGE_SIZE)
+			cflush.length = XEN_PAGE_SIZE - cflush.offset;
+		else
+			cflush.length = size;
+
+		HYPERVISOR_grant_table_op(GNTTABOP_cache_flush, &cflush, 1);
 
-		offset = 0;
-		xen_pfn++;
-		left -= len;
-	} while (left);
+		cflush.offset = 0;
+		cflush.a.dev_bus_addr += cflush.length;
+		size -= cflush.length;
+	} while (size);
 }
 
 static void __xen_dma_page_dev_to_cpu(struct device *hwdev, dma_addr_t handle,
 		size_t size, enum dma_data_direction dir)
 {
-	dma_cache_maint(handle & PAGE_MASK, handle & ~PAGE_MASK, size, dir, DMA_UNMAP);
+	if (dir != DMA_TO_DEVICE)
+		dma_cache_maint(handle, size, GNTTAB_CACHE_INVAL);
 }
 
 static void __xen_dma_page_cpu_to_dev(struct device *hwdev, dma_addr_t handle,
 		size_t size, enum dma_data_direction dir)
 {
-	dma_cache_maint(handle & PAGE_MASK, handle & ~PAGE_MASK, size, dir, DMA_MAP);
+	if (dir == DMA_FROM_DEVICE)
+		dma_cache_maint(handle, size, GNTTAB_CACHE_INVAL);
+	else
+		dma_cache_maint(handle, size, GNTTAB_CACHE_CLEAN);
 }
 
 void __xen_dma_map_page(struct device *hwdev, struct page *page,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
