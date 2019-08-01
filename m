Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E7A7E06D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 18:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSOW4UfLLpw9WpRClNa8gK1LTYm3Nn2TqoQD9aU/nz0=; b=RJtIMe0bM+to8j
	gnEQ9hT7SCzK+9hqW5LOo9e7fXRdYyXnMll9x10+JUCmcbvrkw4ZqJl4yhc13j5Qt8Kss0dEZi6Q5
	E8QOZkDp1xtfIlfNy4Sb3Sc22ekmu5WokN5tIVaPv1rX/v/iwnr/OsxzsXLJUs071DLv3/gG1QoB2
	4EgnsrTT47rFka4JrdxrnKRaZMo0OhE60gtCB1b3mH6zIBSFamdzBPH40li4VphOg978Uf+5Rq2hB
	MuFFlUo7ZyOL8uSbeUnz8qhrJnCkvr8WvBOV2sft0MDYKtm7ikyjooLvKThCx+tumZI3a3b7ynBWn
	YJxDoWbh26VNxQOQm60A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htEBk-0006gG-6u; Thu, 01 Aug 2019 16:44:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htEBc-0006fw-Ku
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 16:44:17 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A272C20838;
 Thu,  1 Aug 2019 16:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564677856;
 bh=luxeEe+sNcMiUEJZddOmw2LCtZnw/7cP+2BTlvtj75g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1vCYTqrWNpzwy70+mDDkDyYbXSINihdTQt827ZNZ38BqrocpuTP/5twuQPWb+gghN
 +bl+z5TixFmhDdNjnDx+Eh8sSH8KshmaqVzUor7b7NSq1e0PiUUaxnmgdxPhdn1229
 Armf1YNDTLI9lVu8j9VV+a1Qdb+UMV3aZU2PBKDY=
Date: Thu, 1 Aug 2019 17:44:12 +0100
From: Will Deacon <will@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] dma-mapping: fix page attributes for dma_mmap_*
Message-ID: <20190801164411.kmsl4japtfkgvzxe@willie-the-truck>
References: <20190801142118.21225-1-hch@lst.de>
 <20190801142118.21225-2-hch@lst.de>
 <20190801162305.3m32chycsdjmdejk@willie-the-truck>
 <20190801163457.GB26588@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801163457.GB26588@lst.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_094416_710489_3D8A4C06 
X-CRM114-Status: GOOD (  16.92  )
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

On Thu, Aug 01, 2019 at 06:34:57PM +0200, Christoph Hellwig wrote:
> On Thu, Aug 01, 2019 at 05:23:06PM +0100, Will Deacon wrote:
> > > -	if (!dev_is_dma_coherent(dev) || (attrs & DMA_ATTR_WRITE_COMBINE))
> > > -		return pgprot_writecombine(prot);
> > > -	return prot;
> > > +	return pgprot_writecombine(prot);
> > >  }
> > 
> > Seems like a sensible cleanup to me:
> > 
> > Acked-by: Will Deacon <will@kernel.org>
> > 
> > Although arch_dma_mmap_pgprot() is a bit of a misnomer now that it only
> > gets involved in the non-coherent case.
> 
> A better name is welcome.

How about arch_dma_noncoherent_mmap_pgprot() ? Too long?

> My other idea would be to just remove it entirely and do something like:
> 
> #ifndef pgprot_dmacoherent
> #define pgprot_dmacoherent pgprot_noncached
> #endif
> 
> pgprot_t dma_mmap_pgprot(struct device *dev, pgprot_t prot, unsigned long attrs)
> {
> 	if (dev_is_dma_coherent(dev) || (attrs & DMA_ATTR_NON_CONSISTENT))
> 		return prot;
> #ifdef pgprot_writecombine
> 	if (attrs & DMA_ATTR_WRITE_COMBINE)
> 		return pgprot_writecombine(prot);
> #endif
> 	return pgprot_dmacoherent(prot);
> }

Oh, I prefer that!

> But my worry is how this interacts with architectures that have an
> uncached segment (mips, nios2, microblaze, extensa) where we'd have
> the kernel access DMA_ATTR_WRITE_COMBINE mappigns using the uncached
> segment, and userspace mmaps using pgprot_writecombine, which could
> lead to aliasing issues.  But then again mips already supports
> DMA_ATTR_WRITE_COMBINE, so this must be ok somehow.  I guess I'll
> need to field that question to the relevant parties.

Or it's always been busted and happens to work out in practice...

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
