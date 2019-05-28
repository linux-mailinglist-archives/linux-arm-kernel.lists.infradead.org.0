Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9DC2CA91
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 17:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gleR6O66RAeLSPaMk6dcWZXSPgquYKXABDatRVPWfHE=; b=BHmp/crDFIe5tZ
	jJaGDLL34TQomj6zWLn0s/IVjtTm4w6dXelqCsvAb2+/xu+Exo+85o88rvxW4xYScSCgdP1ndDrzm
	tihPRGODb3helPoXWH8CM3btJi91mPzLmOOkoUZh1RekEFOiZFcP0EZTouT2PeOSdp+HFgUqG9I4s
	cF86ryEyVOB4Q4HV0wFk0uUbDsXHYP3g34TiSxwzSMw+oEu9QImj4f/YHY8BKhUhcmBTebHXZA4OT
	vBWhPTwZGzq8DLddiPsxdkxVP/DG8gZJIKJq8uPdMjQUinOqBkh7J1ulqYlwmGo+961K+xEFoQWGh
	tdhjXUMraatjJ13U7TaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVeJh-0006Yy-0a; Tue, 28 May 2019 15:47:09 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeJW-0006UL-FT; Tue, 28 May 2019 15:47:03 +0000
X-UUID: deb7c255ae734f81abead77dacf636e3-20190528
X-UUID: deb7c255ae734f81abead77dacf636e3-20190528
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1967243365; Tue, 28 May 2019 07:46:48 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 May 2019 08:46:46 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 May 2019 23:46:45 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 28 May 2019 23:46:45 +0800
Message-ID: <1559058405.26151.6.camel@mtkswgap22>
Subject: Re: [PATCH] arm64: mm: make CONFIG_ZONE_DMA32 configurable
From: Miles Chen <miles.chen@mediatek.com>
To: Robin Murphy <robin.murphy@arm.com>
Date: Tue, 28 May 2019 23:46:45 +0800
In-Reply-To: <814b9bd0-38de-4b8d-92b3-d663931d90bf@arm.com>
References: <1558973315-19655-1-git-send-email-miles.chen@mediatek.com>
 <814b9bd0-38de-4b8d-92b3-d663931d90bf@arm.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_084658_517928_301D839E 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: wsd_upstream@mediatek.com, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-05-28 at 11:43 +0100, Robin Murphy wrote:
> On 27/05/2019 17:08, Miles Chen wrote:
> > This change makes CONFIG_ZONE_DMA32 defuly y and allows users
> > to overwrite it.
> > 
> > For the SoCs that do not need CONFIG_ZONE_DMA32, this is the
> > first step to manage all available memory by a single
> > zone(normal zone) to reduce the overhead of multiple zones.
> > 
> > The change also fixes a build error when CONFIG_NUMA=y and
> > CONFIG_ZONE_DMA32=n.
> > 
> > arch/arm64/mm/init.c:195:17: error: use of undeclared identifier 'ZONE_DMA32'
> >                  max_zone_pfns[ZONE_DMA32] = PFN_DOWN(max_zone_dma_phys());
> > 
> > Signed-off-by: Miles Chen <miles.chen@mediatek.com>
> > ---
> >   arch/arm64/Kconfig   | 3 ++-
> >   arch/arm64/mm/init.c | 2 ++
> >   2 files changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 76f6e4765f49..9d20a736d1d1 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -260,7 +260,8 @@ config GENERIC_CALIBRATE_DELAY
> >   	def_bool y
> >   
> >   config ZONE_DMA32
> > -	def_bool y
> > +	bool "Support DMA32 zone"
> 
> This probably warrants an "if EMBEDDED" or "if EXPERT", since turning it 
> off produces a kernel which won't work at all on certain systems (I've 
> played around with this before...)

Thanks for your comment. 
I'll put a "if EXPERT"  here to avoid this case.

> 
> > +	default y
> >   
> >   config HAVE_GENERIC_GUP
> >   	def_bool y
> > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > index d2adffb81b5d..96829ce21f99 100644
> > --- a/arch/arm64/mm/init.c
> > +++ b/arch/arm64/mm/init.c
> > @@ -191,8 +191,10 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
> >   {
> >   	unsigned long max_zone_pfns[MAX_NR_ZONES]  = {0};
> >   
> > +#ifdef CONFIG_ZONE_DMA32
> >   	if (IS_ENABLED(CONFIG_ZONE_DMA32))
> 
> There's no point keeping the IS_ENABLED() check when it's entirely 
> redundant with the #ifdefs.

I'll remove the IS_ENABLE() code in next patch.

-Miles
> 
> Robin.
> 
> >   		max_zone_pfns[ZONE_DMA32] = PFN_DOWN(max_zone_dma_phys());
> > +#endif
> >   	max_zone_pfns[ZONE_NORMAL] = max;
> >   
> >   	free_area_init_nodes(max_zone_pfns);
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
