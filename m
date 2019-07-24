Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C44AE72840
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 08:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTaM7CvD2ElpqdZ/YvFdPG6KurEZx4YHEGZ2nyIoqLU=; b=C2/auK0BgAMn/G
	C0RsuTJMiZdNlYKVrWzn5EUz35VXfMQXVMp+60hySxGL4ZdOY5KbBZ5WT7vWALzL7LmQTIZQaJe9g
	rTEwjfI8IgW5SsvJJKD+AnWdmoqwWFFC7FVPZzzzNgzbezD+mcXhBp6BgkEGc14qs+iTg2hNIJ0TI
	YP/D7gerJuMFpL6A12WHu+OdPSIo2P+yKTQVACu3UHJOksNqT1pA+uVXH8m+NUmI0Vc1t2aVHojW9
	bUDa4VMeWZPhW8MCvXseqIJTQaE4BznM0gBa8M66KjZm8AiF6jUjYkS1TotXLAenHpBGGkXXQijA9
	4UBT6Z27Gw3s39hgZKjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqAoE-0003ll-Jx; Wed, 24 Jul 2019 06:31:30 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqAo1-0003g0-1a
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 06:31:18 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 01D51816A;
 Wed, 24 Jul 2019 06:31:38 +0000 (UTC)
Date: Tue, 23 Jul 2019 23:31:10 -0700
From: Tony Lindgren <tony@atomide.com>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH 2/8] ARM: OMAP2+: Remove unconfigured midlemode for am3
 lcdc
Message-ID: <20190724063110.GT5447@atomide.com>
References: <20190723112811.44381-1-tony@atomide.com>
 <20190723112811.44381-3-tony@atomide.com>
 <bcc130a5-f7e0-e182-9f4b-5a48fc3d6e17@ti.com>
 <52328e14-58b2-2ea1-8b0a-33548a1c6a7a@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52328e14-58b2-2ea1-8b0a-33548a1c6a7a@ti.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_233117_128318_B901D9D5 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jyri Sarha <jsarha@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Keerthy <j-keerthy@ti.com> [190724 05:50]:
> 
> On 24/07/19 12:33 AM, Suman Anna wrote:
> > + Jyri
> > 
> > On 7/23/19 6:28 AM, Tony Lindgren wrote:
> > > We currently get a warning for lcdc because of a difference
> > > with dts provided configuration compared to the legacy platform
> > > data. This is because lcdc has SYSC_HAS_MIDLEMODE configured in
> > > the platform data without configuring the modes.
> > 
> > Hi Tony,
> > While I understand that you are trying to match the DT data with the
> > existing legacy data, do you know if there was a reason why this was
> > omitted in the first place? Should we be really adding the MSTANDBY_
> > flags and fix up the DTS node accordingly? I tried looking through the
> > git log, and the initial commit itself didn't add the MSTANDBY_ flags
> > but used the SYSC_HAS_MIDLEMODE.

Yes the goal is to get rid of all errors and warnings in dmesg output
so we can spot the real issues.

> > Jyri,
> > Do you know the history?
> 
> Tony/Suman,
> 
> This patch breaks DS0 on am3.

OK thanks for testing. Let's drop this for now, sounds like there is
some midlemode configuration happening even with no flags set.

Probably the right fix is to configure the usable midlemodes instead
both for platform data and dts data and then drop the platform data.

Regards,

Tony



> > > Let's fix the warning by removing SYSC_HAS_MIDLEMODE. Note that
> > > the am335x TRM lists SYSC_HAS_MIDLEMODE, but it is unused.
> > 
> > 
> > 
> > > 
> > > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > > ---
> > >   arch/arm/mach-omap2/omap_hwmod_33xx_data.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_data.c b/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
> > > --- a/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
> > > +++ b/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
> > > @@ -231,7 +231,7 @@ static struct omap_hwmod am33xx_control_hwmod = {
> > >   static struct omap_hwmod_class_sysconfig lcdc_sysc = {
> > >   	.rev_offs	= 0x0,
> > >   	.sysc_offs	= 0x54,
> > > -	.sysc_flags	= (SYSC_HAS_SIDLEMODE | SYSC_HAS_MIDLEMODE),
> > > +	.sysc_flags	= SYSC_HAS_SIDLEMODE,
> > >   	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
> > >   	.sysc_fields	= &omap_hwmod_sysc_type2,
> > >   };
> > > 
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
