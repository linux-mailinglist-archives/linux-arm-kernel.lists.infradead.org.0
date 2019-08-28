Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF269A0944
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:10:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7LpsCK/QHXkVsm1Xae7hTxONzTgYOytJBve/xu+f8wc=; b=XqRLC+bBcupetT
	3/Z8ekWWuG1tnn04oYjH+RVA9W+mHtnrzvi28rq1Nu0hyU+5TVBZgjIwQnOweRKM6NOWzQKRMqXGg
	yk5OsJTBQJkF5DH61KFxD/96xanK471tjQZsPKxnOrlnLYD7fTHjEq1wGiE9EduP3NMNdL4TzSWGy
	jLtQS+cfW8gu4QPl42rJ3yn2F3yDSw+Oyirdm56qz3FYaGPz2cgDSMxIe9n4VJ8XrJZ9SEo3cZXw2
	czg7GR7BtSE9xInKYhxulwUYGkIUW1w2zEC6h9LkUeYBulVPxL01igHV/OhfGbClEFs7Z6iUQ9vQf
	60FpZldXZzXlzZrLxEWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32OP-0004f0-3D; Wed, 28 Aug 2019 18:10:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i32OB-0004ea-TU
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:09:49 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0953F2053B;
 Wed, 28 Aug 2019 18:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567015787;
 bh=pEW7d4+ki1j7cGrysUa/rs6+n6aWIK6WXN6/tbYAFzs=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=SPT3DChX1H83A9Qle/0AqSTbAk6v+FbOYww2pgDUZeRbOYCEyK/D4OEH5eWuzjVuC
 xDRQFHaR+yKsCIOSiA8B8PhK8UDu1KCgDFfj4b4ahORsC/TvPnQROWaAKyTMWTCALu
 t81UTiYo2w495kttG20MKcBuBREwFON4EDlYJMPY=
Date: Wed, 28 Aug 2019 11:09:46 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Peng Fan <peng.fan@nxp.com>
Subject: RE: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
In-Reply-To: <AM0PR04MB4481386D2C54AEA6987E1B1588A30@AM0PR04MB4481.eurprd04.prod.outlook.com>
Message-ID: <alpine.DEB.2.21.1908281103290.25361@sstabellini-ThinkPad-T480s>
References: <20190709083729.11135-1-peng.fan@nxp.com>
 <d70b3a5c-647c-2147-99be-4572f76e898b@arm.com>
 <AM0PR04MB4481386D2C54AEA6987E1B1588A30@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_110947_997259_5C818EB2 
X-CRM114-Status: GOOD (  21.85  )
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
Cc: "sstabellini@kernel.org" <sstabellini@kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 28 Aug 2019, Peng Fan wrote:
> Hi Robin,
> 
> > Subject: Re: [PATCH] arm: xen: mm: use __GPF_DMA32 for arm64
> > 
> > On 09/07/2019 09:22, Peng Fan wrote:
> > > arm64 shares some code under arch/arm/xen, including mm.c.
> > > However ZONE_DMA is removed by commit
> > > ad67f5a6545("arm64: replace ZONE_DMA with ZONE_DMA32").
> > > So to ARM64, need use __GFP_DMA32.

Hi Peng,

Sorry for being so late in replying, this email got lost in the noise.


> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >   arch/arm/xen/mm.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c index
> > > e1d44b903dfc..a95e76d18bf9 100644
> > > --- a/arch/arm/xen/mm.c
> > > +++ b/arch/arm/xen/mm.c
> > > @@ -27,7 +27,7 @@ unsigned long xen_get_swiotlb_free_pages(unsigned
> > > int order)
> > >
> > >   	for_each_memblock(memory, reg) {
> > >   		if (reg->base < (phys_addr_t)0xffffffff) {
> > > -			flags |= __GFP_DMA;
> > > +			flags |= __GFP_DMA | __GFP_DMA32;
> > 
> > Given the definition of GFP_ZONE_BAD, I'm not sure this combination of flags
> > is strictly valid, but rather is implicitly reliant on only one of those zones ever
> > actually existing. As such, it seems liable to blow up if the plans to add
> > ZONE_DMA to arm64[1] go ahead.
> 
> How about this, or do you have any suggestions?
> diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
> index d33b77e9add3..f61c29a4430f 100644
> --- a/arch/arm/xen/mm.c
> +++ b/arch/arm/xen/mm.c
> @@ -28,7 +28,11 @@ unsigned long xen_get_swiotlb_free_pages(unsigned int order)
> 
>         for_each_memblock(memory, reg) {
>                 if (reg->base < (phys_addr_t)0xffffffff) {
> +#ifdef CONFIG_ARM64
> +                       flags |= __GFP_DMA32;
> +#else
>                         flags |= __GFP_DMA;
> +#endif
>                         break;
>                 }
>         }

Yes I think this is the way to go, but we are trying not to add any
#ifdef CONFIG_ARM64 under arch/arm. Maybe you could introduce a static
inline function to set GFP_DMA:

  static inline void xen_set_gfp_dma(gfp_t *flags)

it could be implemented under arch/arm/include/asm/xen/page.h for arm
and under arch/arm64/include/asm/xen/page.h for arm64 using __GFP_DMA
for the former and __GFP_DMA32 for the latter.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
