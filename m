Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E4E12CA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:45:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sDRvCGcXttPgAtoPLIEunTvbnEdQUX7UfdnGm0isdU=; b=jERtuEUAGVeM14
	b9LdPRrO+XEszuYbhDXwaN9hSnOVKDuPdN3H5+fawRFMOjTDxHBVRofDy4vV4oUqSICPEpv3YFH+6
	a99Zq+m6OmJcTsOIinSJCuHVfrqoe2Cuiazf7+yfbER3aRljw9O3ZuZmXwcWSGZCZEkJYx0iJjLyp
	PVOvzNamxLtEUpnJkUfE23UK72Qz/EWTBv1u/Y3e/VjklT6uCzxJHIIJY9sQ8pufnX05uCkl0sTc/
	XM4UfoSV2hMki/8DOB1bueLdbVgO0T/XCc2dsUtlnCsRPBLW7AtbMy0The8nvaz3fAJ29Hly1B4Oh
	B5ANtzI1PFloJzqFgDVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWcp-0000WA-1J; Fri, 03 May 2019 11:45:11 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWce-00009b-ET
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 11:45:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6EBDF374;
 Fri,  3 May 2019 04:44:58 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 DA2A53F220; Fri,  3 May 2019 04:44:56 -0700 (PDT)
Date: Fri, 3 May 2019 12:44:54 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 04/25] iommu/dma: Remove the flush_page callback
Message-ID: <20190503114454.GD55449@arrakis.emea.arm.com>
References: <20190430105214.24628-1-hch@lst.de>
 <20190430105214.24628-5-hch@lst.de>
 <20190503114335.GC55449@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503114335.GC55449@arrakis.emea.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_044500_494301_AFCBD8CA 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 12:43:35PM +0100, Catalin Marinas wrote:
> On Tue, Apr 30, 2019 at 06:51:53AM -0400, Christoph Hellwig wrote:
> > We now have a arch_dma_prep_coherent architecture hook that is used
> > for the generic DMA remap allocator, and we should use the same
> > interface for the dma-iommu code.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > Reviewed-by: Robin Murphy <robin.murphy@arm.com>
> > ---
> >  arch/arm64/mm/dma-mapping.c | 8 +-------
> >  drivers/iommu/dma-iommu.c   | 8 +++-----
> >  include/linux/dma-iommu.h   | 3 +--
> >  3 files changed, 5 insertions(+), 14 deletions(-)
> > 
> > diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
> > index 674860e3e478..10a8852c8b6a 100644
> > --- a/arch/arm64/mm/dma-mapping.c
> > +++ b/arch/arm64/mm/dma-mapping.c
> > @@ -104,12 +104,6 @@ arch_initcall(arm64_dma_init);
> >  #include <linux/platform_device.h>
> >  #include <linux/amba/bus.h>
> >  
> > -/* Thankfully, all cache ops are by VA so we can ignore phys here */
> > -static void flush_page(struct device *dev, const void *virt, phys_addr_t phys)
> > -{
> > -	__dma_flush_area(virt, PAGE_SIZE);
> > -}
> 
> Rather than removing, should this not become arch_dma_prep_coherent()?
> With patch 2 selecting the corresponding Kconfig option, I think with
> this patch you'd get a build error (haven't tried).

Ah, sorry, it was already there.

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
