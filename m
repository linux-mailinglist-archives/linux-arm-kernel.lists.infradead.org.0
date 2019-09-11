Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5246FB0479
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 21:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ql11s56CxMrCDwrMovM2buFjtEckkcSG7Ppo1fFzo80=; b=FP09PsqMDeRRYN
	gVvOPOkUypheCdGEUkV+1w2muKAVX3DonNsoVpJP9s/K7IGy1NSVcX51MKac2oQikZs94Z+2TqbTH
	4wMh7i9+FG+gqUShWzCVWB1pzA3SNhW5k4e9eIrmin7MbNdVPVZVhpM/hXliXU24VNzSgESPfPj5z
	OubXC8lZ31L+3u9ZobfwlL7pEUGAS4yuQ3L8uADo51FempMq8aK6tssVA/ftKChOQVVRRDPXZyMHw
	aS/cd05o9l0sKRuq8IhjGRa20/st7xuGF4S+BlHiEUafD3RS2ULnB+m03fXNxVgs6t5opLVlOTNAC
	fOUdt/3jqhTPZDoCaq9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8836-0000W3-0c; Wed, 11 Sep 2019 19:13:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i882j-0000Vg-WE
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 19:12:43 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A4242075C;
 Wed, 11 Sep 2019 19:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568229161;
 bh=VPT7mijC4q1kEydmhkrufKNG2yzGMdjsTOZaEMfyAb8=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=06FeZG8ZNyNusLCCPXzRSYmNlOeHcB9qefO1tzjUjw08sIGocxmuBX/13QuREeVi3
 YneN37UBEK1ALsEP802ZNxG5xPe+yh1l9Ame8GNhvAjFqHCXFiolye32I9AJx3Cd3U
 Dzbya/sKdFP7WtGH5NKiXCZ3PD5UYH97yToyJUN0=
Date: Wed, 11 Sep 2019 12:12:34 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Peng Fan <peng.fan@nxp.com>
Subject: RE: [PATCH V2] arm: xen: mm: use __GPF_DMA32 for arm64
In-Reply-To: <AM0PR04MB448166E527EF4ABFCE3DD59688B10@AM0PR04MB4481.eurprd04.prod.outlook.com>
Message-ID: <alpine.DEB.2.21.1909111211290.6288@sstabellini-ThinkPad-T480s>
References: <1567175255-1798-1-git-send-email-peng.fan@nxp.com>
 <d7477406-a8a0-5c3c-13dc-2c84e27b8afa@arm.com>
 <20190830085807.GA15771@infradead.org>
 <alpine.DEB.2.21.1908301926500.21347@sstabellini-ThinkPad-T480s>
 <AM0PR04MB448166E527EF4ABFCE3DD59688B10@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_121242_062990_F4BC3020 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "jgross@suse.com" <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 Christoph Hellwig <hch@infradead.org>, Julien Grall <Julien.Grall@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 "boris.ostrovsky@oracle.com" <boris.ostrovsky@oracle.com>, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <Robin.Murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 11 Sep 2019, Peng Fan wrote:
> > Subject: Re: [PATCH V2] arm: xen: mm: use __GPF_DMA32 for arm64
> > 
> > + Juergen, Boris
> > 
> > On Fri, 30 Aug 2019, Christoph Hellwig wrote:
> > > Can we take a step back and figure out what we want to do here?
> > >
> > > AFAICS this function allocates memory for the swiotlb-xen buffer, and
> > > that means it must be <= 32-bit addressable to satisfy the DMA API
> > > guarantees.  That means we generally want to use GFP_DMA32
> > everywhere
> > > that exists, but on systems with odd zones we might want to dip into
> > > GFP_DMA.  This also means swiotlb-xen doesn't actually do the right
> > > thing on x86 at the moment.  So shouldn't we just have one common
> > > routine in swiotlb-xen.c that checks if we have CONFIG_ZONE_DMA32 set,
> > > then try GFP_DMA32, and if not check if CONFIG_ZONE_DMA is set and
> > > then try that, else default to GFP_KERNEL?
> > 
> > Yes, for ARM/ARM64 it makes a lot of sense given that dom0 is 1:1 mapped
> > (pseudo-physical == physical).  I'll let Juergen and Boris comment on the x86
> > side of things, but on x86 PV Dom0 is not 1:1 mapped so
> > GFP_DMA32 is probably not meaningful.
> 
> If we only take ARM/ARM64, so could the following patch be ok?
> 
> diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
> index d33b77e9add3..e5a6a73b2e06 100644
> --- a/arch/arm/xen/mm.c
> +++ b/arch/arm/xen/mm.c
> @@ -28,7 +28,11 @@ unsigned long xen_get_swiotlb_free_pages(unsigned int order)
> 
>         for_each_memblock(memory, reg) {
>                 if (reg->base < (phys_addr_t)0xffffffff) {
> +#ifdef CONFIG_ZONE_DMA32
> +                       flags |= __GFP_DMA32;
> +#else
>                         flags |= __GFP_DMA;
> +#endif
>                         break;
>                 }
>         }

I am OK with something like this, but at that point we can use
IS_ENABLED(CONFIG_ZONE_DMA32) for the check.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
