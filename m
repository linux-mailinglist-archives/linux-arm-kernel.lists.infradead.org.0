Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1609E4B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 11:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvIwG/mPlAHrIU56aJY5Exefw3IUxSx4ygFxuPBM8Tk=; b=sGMoKTfM0gLBoB
	TMe7N6mIUTn91a9Iy82M6aJ34WRelBSo8zJQHMC9wzl7OBRRD7vL8GFTnMYCODqSsdw9v7uqy8B5S
	thqgVQRyRv9fiX8pvH4U/T4ZrzfsSQAvG5tRmU8qZUNBSJcnYKQkEWZongP6rX3Z4mCgPfhcg8MOR
	T5REzlRHEQyw3pGw8ZN+QcC8MuMDzGyLI/fWb+f3/GZqf12eDIo1j6uMClry3ILkcp1uRegGVeULQ
	PZp/euk9os97Dw/7pYT3j/MJHH+f5+gznIgnRLMUStRNkgKwvfGFPimAXKEld3woYV8mZL03jOE3a
	BqWY3ZapsW1HczM3DuDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Y2q-0003Zu-HX; Tue, 27 Aug 2019 09:45:44 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Y2e-0003ZU-Cm
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 09:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=db4eeeBDxOPeQgCnxVgK0cY8TBZGLFlCe0NsKNFsxDw=; b=pE4dxLaD4wDroPGs8tQLb6wF0
 V+nS/JucfqBwoulqP0IfXx6iiAVhPBAlNdlPeLBPz65OMFeoMqdEOkAVzaLSf4kHnFIhnr70g6yE3
 khUUxAHxfcda9QVcxqglAMS8K8PVBqsVS6QAqd/5+KzM/Kb5j9Rkd1oD1Tm+PcypsIS+D2YBXswKN
 10c3adRsX0Si5HSR9OoZFhhjY/dJ3G3dyIdDYqE01O2glKpBQtH5vIPwho7cjB9q7nlgAs67xH0CL
 /U0G8hs5+Ie3mnYVJv9fabZP0c7XGDfMRW1F2KJLf+h1Vv6SeqI4hVts1ZkI/Y3A000xdMHIPGHKU
 GRJfQ/gwQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:38568)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i2Y2V-0003bW-8m; Tue, 27 Aug 2019 10:45:23 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i2Y2S-0005ek-8q; Tue, 27 Aug 2019 10:45:20 +0100
Date: Tue, 27 Aug 2019 10:45:20 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
Message-ID: <20190827094520.GJ13294@shell.armlinux.org.uk>
References: <20190709083729.11135-1-peng.fan@nxp.com>
 <AM0PR04MB448135E1B2C85F0B6029F7B788C70@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <AM0PR04MB44818BB69CAD35DC989A416988A00@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB44818BB69CAD35DC989A416988A00@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_024532_438885_84BD2DFE 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "sstabellini@kernel.org" <sstabellini@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "julien.grall@arm.com" <julien.grall@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

You need to find someone who is interested in Xen on 32-bit ARM, and
who knows this code - and therefore what impact your change causes.
That isn't me, sorry.

On Tue, Aug 27, 2019 at 09:27:53AM +0000, Peng Fan wrote:
> Ping again..
> 
> +Julien
> 
> > Subject: RE: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
> > 
> > Hi Russell, Stefano
> > 
> > > Subject: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
> > 
> > Any comments?
> > 
> > >
> > > arm64 shares some code under arch/arm/xen, including mm.c.
> > > However ZONE_DMA is removed by commit
> > > ad67f5a6545("arm64: replace ZONE_DMA with ZONE_DMA32").
> > > So to ARM64, need use __GFP_DMA32.
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >  arch/arm/xen/mm.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c index
> > > e1d44b903dfc..a95e76d18bf9 100644
> > > --- a/arch/arm/xen/mm.c
> > > +++ b/arch/arm/xen/mm.c
> > > @@ -27,7 +27,7 @@ unsigned long xen_get_swiotlb_free_pages(unsigned
> > int
> > > order)
> > >
> > >  	for_each_memblock(memory, reg) {
> > >  		if (reg->base < (phys_addr_t)0xffffffff) {
> > > -			flags |= __GFP_DMA;
> > > +			flags |= __GFP_DMA | __GFP_DMA32;
> > >  			break;
> > >  		}
> > >  	}
> > 
> > Thanks,
> > Peng.
> 
> Thanks,
> Peng.
> 
> > 
> > > --
> > > 2.16.4
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
