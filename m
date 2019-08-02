Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5399E7EE8D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 10:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USZF96Gj3w8zdOIea6kGoF5IsO3EVq+i1Z9L6wmbvS0=; b=U6+Qau7nnhjlv6
	BeHZsocwaH3k2xoVQZvlFKJzloFksrDrRdldmMnHpsLGrEOHSkbaief6JgN8PPYhJemB+ItRI7NQw
	f+KhE0DFoD3jALnNikcb8vvu3m0Y0TbQm+wL0IZQFpqTfMPCp9Ut+DWx4lwLs8lo3jpn9/5uN5PvT
	f7CmUUMf3MXQ51SI3972dv96PZ6NM3tz25dXOuFTLC5EZVU+HznWcTVAMYXCvidX9BFineqqcn/q4
	BvCORs9kGKf4xIqUMoINCQ7Fgj8Jq+htN5mHf8fyFnvSZasSWd0D+5bMnxpSX3ZpVwjlvXhinTNOP
	qCIJF10U6qG/aRL3aYeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htSiL-0004ew-Ob; Fri, 02 Aug 2019 08:15:01 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htSi6-0004e1-I7
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 08:14:47 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9F17E68B05; Fri,  2 Aug 2019 10:14:41 +0200 (CEST)
Date: Fri, 2 Aug 2019 10:14:41 +0200
From: Christoph Hellwig <hch@lst.de>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] dma-mapping: fix page attributes for dma_mmap_*
Message-ID: <20190802081441.GA9725@lst.de>
References: <20190801142118.21225-1-hch@lst.de>
 <20190801142118.21225-2-hch@lst.de>
 <20190801162305.3m32chycsdjmdejk@willie-the-truck>
 <20190801163457.GB26588@lst.de>
 <20190801164411.kmsl4japtfkgvzxe@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801164411.kmsl4japtfkgvzxe@willie-the-truck>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_011446_758197_C7454B49 
X-CRM114-Status: GOOD (  15.32  )
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
Cc: Shawn Anastasio <shawn@anastas.io>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Catalin Marinas <catalin.marinas@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 05:44:12PM +0100, Will Deacon wrote:
> > > Although arch_dma_mmap_pgprot() is a bit of a misnomer now that it only
> > > gets involved in the non-coherent case.
> > 
> > A better name is welcome.
> 
> How about arch_dma_noncoherent_mmap_pgprot() ? Too long?

Sounds a little long yes.  And doesn't fix the additional problem that
we don't just it for mmap but also for the in-kernel remapping these
days.

> > But my worry is how this interacts with architectures that have an
> > uncached segment (mips, nios2, microblaze, extensa) where we'd have
> > the kernel access DMA_ATTR_WRITE_COMBINE mappigns using the uncached
> > segment, and userspace mmaps using pgprot_writecombine, which could
> > lead to aliasing issues.  But then again mips already supports
> > DMA_ATTR_WRITE_COMBINE, so this must be ok somehow.  I guess I'll
> > need to field that question to the relevant parties.
> 
> Or it's always been busted and happens to work out in practice...

I've sent a ping to the mips folks.  While we'are at it:  arm64
and arm32 (optionally) map dma coherent allocations as write combine.
I suspect this hasn't always just been busted but intentional (of course!),
but is there any chance to get a quote from the arm architecture spec
on why this is fine as it looks rather confusion?

Also if we assume mips is buggy DMA_ATTR_WRITE_COMBINE really just seems
to be there for old arm platforms, which makes the scope pretty limited.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
