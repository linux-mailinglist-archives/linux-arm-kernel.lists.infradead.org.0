Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D138E7F533
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 12:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uT8aOxGQH/lzlWVEYj8Imyy6qtemUiD5kE5kjRf8VAs=; b=dVm0tb1ELQWiC6
	FCVxuall/pFSdVPbWwZuWg92zzqpmji06DDNEwqqkaKXABbbkEWGYc+pYwB5DPNAouZklvUFoG/zD
	/42hQ+1ViYL7lU5ptsieJR2Q/IbiKAY2VgRQpLZNVZFcrqZt+Di0nHXp6NPEN/jHPuCsI9R/ZJ4hT
	nbbDNOdr9tM6eRlbUceg2vJXeqMT1ZVB7D+Dvc5F5EJqSNGeoUxhf3OHh2q42NUN6VvoSK+kOvROn
	0E99gr/HVDK/1eN205UdOokM1aWqyl62ES7slMOsHRYAZR88f4Oz3EOtV4IMb4Axkh9D/ZJyC9Zxx
	RGPzApBxiKsImzOKnwmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htUwx-0004VR-Vw; Fri, 02 Aug 2019 10:38:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htUwr-0004V5-5p
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 10:38:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D13942086A;
 Fri,  2 Aug 2019 10:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564742288;
 bh=IYNwTW73rLYyMyjD9BJMjODjl0NeiQXEjNWG7ynwQFE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qVCPNdH/6+F3JEUwjc5ECdeVvv2rxFW/YIsSdLtdhUSAecBHvE/aZD9g4yMo2gZSj
 2yoBLIUP0QYtsd9bkMqXcwYzxDAGO2T7/GL9cxrLT0Ys0KRqsv6Oult274XWCLaght
 wblNSh7hCme4l3pG2uJghbpPO6jnYgJmHgYdUE7s=
Date: Fri, 2 Aug 2019 11:38:03 +0100
From: Will Deacon <will@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] dma-mapping: fix page attributes for dma_mmap_*
Message-ID: <20190802103803.3qrbhqwxlasojsco@willie-the-truck>
References: <20190801142118.21225-1-hch@lst.de>
 <20190801142118.21225-2-hch@lst.de>
 <20190801162305.3m32chycsdjmdejk@willie-the-truck>
 <20190801163457.GB26588@lst.de>
 <20190801164411.kmsl4japtfkgvzxe@willie-the-truck>
 <20190802081441.GA9725@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802081441.GA9725@lst.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_033809_260839_7C06D871 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 10:14:41AM +0200, Christoph Hellwig wrote:
> On Thu, Aug 01, 2019 at 05:44:12PM +0100, Will Deacon wrote:
> > > > Although arch_dma_mmap_pgprot() is a bit of a misnomer now that it only
> > > > gets involved in the non-coherent case.
> > > 
> > > A better name is welcome.
> > 
> > How about arch_dma_noncoherent_mmap_pgprot() ? Too long?
> 
> Sounds a little long yes.  And doesn't fix the additional problem that
> we don't just it for mmap but also for the in-kernel remapping these
> days.

Hmm. Maybe just arch_dma_noncoherent_pgprot() then.

> > > But my worry is how this interacts with architectures that have an
> > > uncached segment (mips, nios2, microblaze, extensa) where we'd have
> > > the kernel access DMA_ATTR_WRITE_COMBINE mappigns using the uncached
> > > segment, and userspace mmaps using pgprot_writecombine, which could
> > > lead to aliasing issues.  But then again mips already supports
> > > DMA_ATTR_WRITE_COMBINE, so this must be ok somehow.  I guess I'll
> > > need to field that question to the relevant parties.
> > 
> > Or it's always been busted and happens to work out in practice...
> 
> I've sent a ping to the mips folks.  While we'are at it:  arm64
> and arm32 (optionally) map dma coherent allocations as write combine.
> I suspect this hasn't always just been busted but intentional (of course!),
> but is there any chance to get a quote from the arm architecture spec
> on why this is fine as it looks rather confusion?

So this boils down to a terminology mismatch. The Arm architecture doesn't have
anything called "write combine", so in Linux we instead provide what the Arm
architecture calls "Normal non-cacheable" memory for pgprot_writecombine().
Amongst other things, this memory type permits speculation, unaligned accesses
and merging of writes. I found something in the architecture spec about
non-cachable memory, but it's written in Armglish[1].

pgprot_noncached(), on the other hand, provides what the architecture calls
Strongly Ordered or Device-nGnRnE memory. This is intended for mapping MMIO
(i.e. PCI config space) and therefore forbids speculation, preserves access
size, requires strict alignment and also forces write responses to come from
the endpoint.

I think the naming mismatch is historical, but on arm64 we wanted to use the
same names as arm32 so that any drivers using these things directly would get
the same behaviour.

Will

[1]

B2.4.4 Implication of caches for the application programmer

[...]

Data coherency issues

Software can ensure the data coherency of caches in the following ways:

  * By not using the caches in situations where coherency issues can arise.
    This can be achieved by:

    - Using Non-cacheable or, in some cases, Write-Through Cacheable memory.

    - Not enabling caches in the system.

  * By using cache maintenance instructions to manage the coherency issues
    in software.

  * By using hardware coherency mechanisms to ensure the coherency of data
    accesses to memory for cacheable locations by observers within the
    different shareability domains.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
