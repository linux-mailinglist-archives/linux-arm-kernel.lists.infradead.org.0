Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E4273058
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQrxWl+uXTs94GmkoHQ32+7FNwO0krRIbVBdMFUYIBo=; b=PwLMi3H+6vRkQm
	rFNfS0bVKOvHoBw0kTqtfCbOBezABhSzrdqogtKrv1EvFrTlO6jsloC89sm9Y3nNBg++cJhn2aV+X
	gm7+k0zf4qgKMgHnlSovUWD77AcXpI6QGBuvW+Wg+OMGbEvjgibWqBrep670I6x/pVyKQYDwedaS0
	0raJGGrWdWCc3rz4CxyX9i1tYSGSwubDNF7DA/VEf+FzqpNx4p5WrslgabFTP1GmBeTQ1fFOrqSHn
	EAk9A5CzlXEg7vrfls7hHoxLWAPVOkcy9AqfXPn8OkmPtqSe5gU9xtxGUwXixSoCAGSgUmq8JiCxF
	Lw40RmmjxqL2un4+Ebhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHla-0003zT-AT; Wed, 24 Jul 2019 13:57:14 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHlO-0003yL-Cn
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:57:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4D0A368B20; Wed, 24 Jul 2019 15:56:57 +0200 (CEST)
Date: Wed, 24 Jul 2019 15:56:57 +0200
From: Christoph Hellwig <hch@lst.de>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [RFC 3/4] dma-direct: add dma_direct_min_mask
Message-ID: <20190724135657.GA9075@lst.de>
References: <20190717153135.15507-1-nsaenzjulienne@suse.de>
 <20190717153135.15507-4-nsaenzjulienne@suse.de>
 <20190718091526.GA25321@lst.de>
 <13dd1a4f33fcf814545f0d93f18429e853de9eaf.camel@suse.de>
 <58753252bd7964e3b9e9558b633bd325c4a898a1.camel@suse.de>
 <20190724135124.GA44864@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724135124.GA44864@arrakis.emea.arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_065702_580846_3F152B6E 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com,
 Robin Murphy <robin.murphy@arm.com>, phil@raspberrypi.org,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Jisheng.Zhang@synaptics.com, mbrugger@suse.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, will@kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 02:51:24PM +0100, Catalin Marinas wrote:
> I think it may be better if we have both ZONE_DMA and ZONE_DMA32 on
> arm64. ZONE_DMA would be based on the smallest dma-ranges as described
> in the DT while DMA32 covers the first naturally aligned 4GB of RAM
> (unchanged). When a smaller ZONE_DMA is not needed, it could be expanded
> to cover what would normally be ZONE_DMA32 (or could we have ZONE_DMA as
> 0-bytes? I don't think GFP_DMA can still allocate memory in this case).
> 
> We'd probably have to define ARCH_ZONE_DMA_BITS for arm64 to something
> smaller than 32-bit but sufficient to cover the known platforms like
> RPi4 (the current 24 is too small, so maybe 30). AFAICT,
> __dma_direct_optimal_gfp_mask() figures out whether GFP_DMA or GFP_DMA32
> should be passed.

ARCH_ZONE_DMA_BITS should probably become a variable.  That way we can
just initialize it to the default 24 bits in kernel/dma/direct.c and
allow architectures to override it in their early boot code.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
