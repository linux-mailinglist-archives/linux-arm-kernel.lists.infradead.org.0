Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 591CCEABF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 21:16:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sghZ/9gMO9g6uudISKJxbkeohsWoSkS09WKoMuXsfVU=; b=dlFLy1cAHO1ysl
	toDq4be0AVy7DfhzvPxvvV/ff+2hEGuQqefyiDhSIDOfMFbqg56sKlSdt8Zy1RWkjmu3aUk9CRcAP
	l+KG/xck0QzxagtV7j4ETaQCQdIYgrOfIEtSF/hgWzUta7TXQIMwqLWPFQLV1L7ys+zscVK45L4HO
	b+ia/A8Q68GqkkYr/b/DudSE7pvmTbN3auZQwE9RPzeuGyb7QlZvHv11x9XLrv9cJx2W9D/3QA1sx
	JJaQinzmNr5orGkWK857YGZ20KLqqCZh9KAeHiXRVmE7AeVS0xBPB2VOdOuuP16tNpTXRciMeM/xC
	1LM6yUCKQ2RRZ639RN9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLBlf-0006tr-Js; Mon, 29 Apr 2019 19:16:47 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLBlY-0006tS-4H
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 19:16:41 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 00C1768AFE; Mon, 29 Apr 2019 21:16:22 +0200 (CEST)
Date: Mon, 29 Apr 2019 21:16:22 +0200
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 14/26] iommu/dma: Refactor iommu_dma_free
Message-ID: <20190429191622.GD5637@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-15-hch@lst.de>
 <8321a363-f448-3e48-48f6-58d2b44a2900@arm.com> <20190429190348.GB5637@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429190348.GB5637@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_121640_312838_7F03BCA8 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 09:03:48PM +0200, Christoph Hellwig wrote:
> On Mon, Apr 29, 2019 at 02:59:43PM +0100, Robin Murphy wrote:
> > Hmm, I do still prefer my original flow with the dma_common_free_remap() 
> > call right out of the way at the end rather than being a special case in 
> > the middle of all the page-freeing (which is the kind of existing 
> > complexity I was trying to eliminate). I guess you've done this to avoid 
> > having "if (!dma_release_from_contiguous(...))..." twice like I ended up 
> > with, which is fair enough I suppose - once we manage to solve the new 
> > dma_{alloc,free}_contiguous() interface that may tip the balance so I can 
> > always revisit this then.
> 
> Ok, I'll try to accomodate that with a minor rework.

Does this look reasonable?

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 5b2a2bf44078..f884d22b1388 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -921,7 +921,7 @@ static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
 {
 	size_t alloc_size = PAGE_ALIGN(size);
 	int count = alloc_size >> PAGE_SHIFT;
-	struct page *page = NULL;
+	struct page *page = NULL, **pages = NULL;
 
 	__iommu_dma_unmap(dev, handle, size);
 
@@ -934,19 +934,17 @@ static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
 		 * If it the address is remapped, then it's either non-coherent
 		 * or highmem CMA, or an iommu_dma_alloc_remap() construction.
 		 */
-		struct page **pages = __iommu_dma_get_pages(cpu_addr);
-
-		if (pages)
-			__iommu_dma_free_pages(pages, count);
-		else
+		pages = __iommu_dma_get_pages(cpu_addr);
+		if (!pages)
 			page = vmalloc_to_page(cpu_addr);
-
 		dma_common_free_remap(cpu_addr, alloc_size, VM_USERMAP);
 	} else {
 		/* Lowmem means a coherent atomic or CMA allocation */
 		page = virt_to_page(cpu_addr);
 	}
 
+	if (pages)
+		__iommu_dma_free_pages(pages, count);
 	if (page && !dma_release_from_contiguous(dev, page, count))
 		__free_pages(page, get_order(alloc_size));
 }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
