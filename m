Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE7EFCBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 17:24:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KxsveiHO1yTlV/cwrZcpV86qudB1nzXQx0TYFGok70o=; b=pk5OCYBE1lw/oy
	vF5DIBQsTqDWQ0NedcBrKak0k3S1lqDqrMBeKGMl91SqXq4Gz1BkE5Lyij7l2TI+CDzQTn2InC68j
	3P6JMf55Bj8X4DDAQbhsbV+xIxXN/Dlv+Gh8XUp8FJgshlEojHGEFCzTchBMSN+AZKGFCuv3vIojM
	7gJY+Vg1F7T6yCCuu9aVG7Ui9bjasbVd5/fcIZdMUb99iE1wTB/uT704BMEkZDGXCRVMIlOAYqyLE
	7XIklSsS9sMWp1cI9/8dl6HZWHB4Ud72uOUnKpmoycYik8Ougzua2fQIKnc+UI+3t0yjmJzvjZrBq
	g6b+bYEPXpX6CiW2on0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUcY-0003OB-CO; Tue, 30 Apr 2019 15:24:38 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLUcP-0003Mj-K0
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 15:24:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9B7A9374;
 Tue, 30 Apr 2019 08:24:26 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 738263F719; Tue, 30 Apr 2019 08:24:24 -0700 (PDT)
Date: Tue, 30 Apr 2019 16:24:21 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v2 RFC/RFT 1/5] ARM: dma-mapping: Add fallback normal
 page allocations
Message-ID: <20190430152421.GE29799@arrakis.emea.arm.com>
References: <20190326230131.16275-1-nicoleotsuka@gmail.com>
 <20190326230131.16275-2-nicoleotsuka@gmail.com>
 <20190424150638.GA22191@lst.de>
 <20190424183310.GA6168@Asurada-Nvidia.nvidia.com>
 <20190424192652.GA29032@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190424192652.GA29032@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_082429_661794_C30B95A6 
X-CRM114-Status: GOOD (  18.00  )
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
Cc: tony@atomide.com, joro@8bytes.org, will.deacon@arm.com,
 linux@armlinux.org.uk, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nicolin Chen <nicoleotsuka@gmail.com>,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(catching up on email)

On Wed, Apr 24, 2019 at 09:26:52PM +0200, Christoph Hellwig wrote:
> On Wed, Apr 24, 2019 at 11:33:11AM -0700, Nicolin Chen wrote:
> > I feel it's similar to my previous set, which did most of these
> > internally except the renaming part. But Catalin had a concern
> > that some platforms might have limits on CMA range [1]. Will it
> > be still okay to do the fallback internally?
> > 
> > [1: https://www.spinics.net/lists/arm-kernel/msg714295.html ]
> 
> Catalins statement is correct, but I don't see how it applies to
> your patch.  Your patch just ensures that the fallback we have
> in most callers is uniformly applied everywhere.  The non-iommu
> callers will still need to select a specific zone and/or retry
> just the page allocator with other flags if the CMA (or fallback)
> page doesn't match what they need.  dma-direct does this correctly
> and I think the arm32 allocator does as well, although it is a bit
> hard to follow sometimes.

My reading of the arm32 __dma_alloc() is that if the conditions are
right for the CMA allocator (allows blocking) and there is a default CMA
area or a per-device one, the call ends up in cma_alloc() without any
fallback if such allocation fails. Whether this is on purpose, I'm not
entirely sure. There are a couple of arm32 SoCs which call
dma_declare_contiguous() or dma_contiguous_reserve_area() and a few DT
files describing a specific CMA range (e.g. arch/arm/boot/dts/sun5i.dtsi
with a comment that address must be kept in the lower 256MB).

If ZONE_DMA is set up correctly so that cma_alloc() is (or can be made)
interchangeable with alloc_pages(GFP_DMA) from a device DMA capability
perspective , I think it should be fine to have such fallback.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
