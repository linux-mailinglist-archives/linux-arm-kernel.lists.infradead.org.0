Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B989E11A1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 15:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYOLzegDnXIiovLRQDy6I+CWUqM7MgmExxq5zk9o9y0=; b=CwJ5fBcMTzWbui
	WqJ/PdKPXbnLVnn98Yd+3niLmq5l935CE36Es9UUjCOg3B3jLc7w6Pf3kb5IebFUp5zfoFhHIpTCJ
	4LRIHzVtLyvYL+78aGM6woYFxgqtMXcXFkQ/Clp364KntJ3bjpJwUMpdbAsfzujW/EIxDc+b+G8uq
	gbp6uR5BrrpCjPYCWDMBlPI0FPIep60AWSx7kQO5ReclybMgFOM8R2hiDyE7/FfKfpcWyX4otfPG+
	tFwp+e0SDaw6VTyRpDob5O/XB0FB35m538hr+xyk1ySTulbzEU6EvobO/pulw+S3sXvJvACLjjOpi
	QFFIrv5mbO0XUXK6Idkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBjP-0007kp-2c; Thu, 02 May 2019 13:26:35 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBjJ-0007kT-9r
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 13:26:30 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id ABBCA68AA6; Thu,  2 May 2019 15:26:10 +0200 (CEST)
Date: Thu, 2 May 2019 15:26:10 +0200
From: Christoph Hellwig <hch@lst.de>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2 RFC/RFT 1/5] ARM: dma-mapping: Add fallback normal
 page allocations
Message-ID: <20190502132610.GA3107@lst.de>
References: <20190326230131.16275-1-nicoleotsuka@gmail.com>
 <20190326230131.16275-2-nicoleotsuka@gmail.com>
 <20190424150638.GA22191@lst.de>
 <20190424183310.GA6168@Asurada-Nvidia.nvidia.com>
 <20190424192652.GA29032@lst.de> <20190430152421.GE29799@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430152421.GE29799@arrakis.emea.arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_062629_487895_BEB0B412 
X-CRM114-Status: GOOD (  12.05  )
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
Cc: tony@atomide.com, joro@8bytes.org, will.deacon@arm.com,
 linux@armlinux.org.uk, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nicolin Chen <nicoleotsuka@gmail.com>,
 robin.murphy@arm.com, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 04:24:21PM +0100, Catalin Marinas wrote:
> My reading of the arm32 __dma_alloc() is that if the conditions are
> right for the CMA allocator (allows blocking) and there is a default CMA
> area or a per-device one, the call ends up in cma_alloc() without any
> fallback if such allocation fails. Whether this is on purpose, I'm not
> entirely sure. There are a couple of arm32 SoCs which call
> dma_declare_contiguous() or dma_contiguous_reserve_area() and a few DT
> files describing a specific CMA range (e.g. arch/arm/boot/dts/sun5i.dtsi
> with a comment that address must be kept in the lower 256MB).
> 
> If ZONE_DMA is set up correctly so that cma_alloc() is (or can be made)
> interchangeable with alloc_pages(GFP_DMA) from a device DMA capability
> perspective , I think it should be fine to have such fallback.

Indeed.  I missed arm32 being different from everyone else, but we
already addresses that in another thread.  Sorry for misleading
everyone.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
