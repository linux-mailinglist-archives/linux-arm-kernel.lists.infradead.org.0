Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F68FC9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 17:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNqHjd8SNT+Ady9790GIrqPGdrmlrqrEzsJN+5TxvfY=; b=fj7bmkfBIVjAgJ
	rrdYIB7cS69aI+B+1uo4X9VW96TYCVKQwp6xdxJPKCbYOztpGfk1MU92O4aIyvF3IJ+8J8KrYRSva
	RPzgZHRIjb8EnAj/q+ZyV3B6x9DRpRnQTjO/5/PhKMTm4ib26EI1wg1adbC+0s7TrjxGyohYPCRkz
	JHvI0HzODsaET1VVzkj6rlITcBFtGkqHEENUSLPJ6whAw//LcsdER/R7E6pw8VY2oCxuRey9iWRXQ
	IGGwaCTXWMKdX+lwui3hn3bFEmZVwg3JPt2ZKe9LyKjBKYA7OH9w78JNd86leYPHZA0Fvdfc1Kg1R
	yBdFcKCvDzBtZCSSwg1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUX6-0001EI-Ky; Tue, 30 Apr 2019 15:19:00 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLUWy-0001Di-P5
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 15:18:54 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id D457F67358; Tue, 30 Apr 2019 17:18:33 +0200 (CEST)
Date: Tue, 30 Apr 2019 17:18:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [RFC/RFT PATCH 1/2] dma-contiguous: Simplify
 dma_*_from_contiguous() function calls
Message-ID: <20190430151833.GB25447@lst.de>
References: <20190430015521.27734-1-nicoleotsuka@gmail.com>
 <20190430015521.27734-2-nicoleotsuka@gmail.com>
 <20190430105640.GA20021@lst.de>
 <0e3e6d8b-de44-d23e-a039-8d11b578ec5c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0e3e6d8b-de44-d23e-a039-8d11b578ec5c@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_081852_966930_8AB109B3 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
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
Cc: tony@atomide.com, catalin.marinas@arm.com, will.deacon@arm.com,
 jcmvbkbc@gmail.com, Christoph Hellwig <hch@lst.de>, m.szyprowski@samsung.com,
 sfr@canb.auug.org.au, joro@8bytes.org, linux@armlinux.org.uk,
 treding@nvidia.com, linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 Nicolin Chen <nicoleotsuka@gmail.com>, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, chris@zankel.net,
 wsa+renesas@sang-engineering.com, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, iamjoonsoo.kim@lge.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 01:37:54PM +0100, Robin Murphy wrote:
> On 30/04/2019 11:56, Christoph Hellwig wrote:
>> So while I really, really like this cleanup it turns out it isn't
>> actually safe for arm :(  arm remaps the CMA allocation in place
>> instead of using a new mapping, which can be done because they don't
>> share PMDs with the kernel.
>>
>> So we'll probably need a __dma_alloc_from_contiguous version with
>> an additional bool fallback argument - everyone but arms uses
>> dma_alloc_from_contiguous as in your patch, just arm will get the
>> non-fallback one.
>
> Or we even just implement dma_{alloc,free}_contiguous() as a wrapper around 
> the existing APIs so that users can be thoroughly checked and converted 
> one-by-one.

Yeah.  Actually given all the contention I wonder if the easiest solution
for now is to just open code the cma_alloc/cma_free calls in dma-direct
and dma-iommu, with the hopes that everyone is going to migrate to those
implementations in the mid-term anyway and dma_alloc_from_contiguous /
dma_release_from_contiguous just go away..

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
