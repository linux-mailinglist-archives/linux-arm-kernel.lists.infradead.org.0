Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B48711A13
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 15:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZhTKVV5OF5tNnIXfyLTb0T6dXNoCdSP5JFHWs0xPGQ=; b=FuXbV7I1Tc8U/h
	yFUzYr8MU24u81C45j0HFjJvR00ujgDO7/OaDw56Q7yw7cAxTMTXhQBAK2T7jJEpK1lNYt2Z7/U2g
	kM0HxvspUoL+jCjiT+1JI093CUvT6fUvmTFrGdE65MgrpJT8zDV2j1AytSkCf0CHMxWENtcsL0Tx/
	001Rxj5MUh/0d8uBT9t3JQWLnZx9CogVyZvyHM1ma8kqmBSqymgT2ZO/yZuL3SYOG3xdobIuJXank
	d/1myDiwuajRJo+h/Q54qxhtkCpxcZqLSVy8kVFHNBxuX92RGp6apBbYHoQG5GuxlfH7wRAhhA4k+
	gkclidvxPbbjQQM6DcCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBfX-00064j-Sf; Thu, 02 May 2019 13:22:35 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBfQ-00063z-MZ
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 13:22:30 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id B9DF368AA6; Thu,  2 May 2019 15:22:08 +0200 (CEST)
Date: Thu, 2 May 2019 15:22:08 +0200
From: Christoph Hellwig <hch@lst.de>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: Re: implement generic dma_map_ops for IOMMUs v4
Message-ID: <20190502132208.GA3069@lst.de>
References: <20190430105214.24628-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430105214.24628-1-hch@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_062228_888552_8B936A7D 
X-CRM114-Status: GOOD (  15.07  )
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin and Will,

can you quickly look over the arm64 parts?  I'd really like to still
get this series in for this merge window as it would conflict with
a lot of dma-mapping work for next merge window, and we also have
the amd and possibly intel iommu conversions to use it waiting.

On Tue, Apr 30, 2019 at 06:51:49AM -0400, Christoph Hellwig wrote:
> Hi Robin,
> 
> please take a look at this series, which implements a completely generic
> set of dma_map_ops for IOMMU drivers.  This is done by taking the
> existing arm64 code, moving it to drivers/iommu and then massaging it
> so that it can also work for architectures with DMA remapping.  This
> should help future ports to support IOMMUs more easily, and also allow
> to remove various custom IOMMU dma_map_ops implementations, like Tom
> was planning to for the AMD one.
> 
> A git tree is also available at:
> 
>     git://git.infradead.org/users/hch/misc.git dma-iommu-ops.3
> 
> Gitweb:
> 
>     http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-iommu-ops.3
> 
> Changes since v3:
>  - fold the separate patch to refactor mmap bounds checking
>  - don't warn on not finding a vm_area
>  - improve a commit log
>  - refactor __dma_iommu_free a little differently
>  - remove a minor MSI map cleanup to avoid a conflict with the
>    "Split iommu_dma_map_msi_msg" series
> 
> Changes since v2:
>  - address various review comments and include patches from Robin
> 
> Changes since v1:
>  - only include other headers in dma-iommu.h if CONFIG_DMA_IOMMU is enabled
>  - keep using a scatterlist in iommu_dma_alloc
>  - split out mmap/sgtable fixes and move them early in the series
>  - updated a few commit logs
> _______________________________________________
> iommu mailing list
> iommu@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/iommu
---end quoted text---

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
