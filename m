Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2FE1880F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 11:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jc2oynQBUXkXkalAy1Cnp3AD9MPRI8jlkyjnAgR7TAI=; b=Be26B25ivh9jH2
	SEGvF8fWoJgPRxJv13deKs+8v1240268hzJZTllgjMMrjkDz1zpfTLV8hKTbyKYP0LN0YTl2wsTYl
	OYdIlrusdDIUP2kRbCpNNw26PcZ0g2rfE3brjpxJcBUZ//S2wwwmJ2KyNZsaCmJZ6EmsesG71QhDH
	xqVkVQ5tbCjMRGcSgGnFVf3gf6Rc5kvuneYYuPt9XJiWH2src2IA/1ZDgJRRXZx/fkEMgo5RbfQyY
	Qx/Z9h6R1mpcQ/pnQrlSjliijcJxjPuVLygP0bCxloKJQIaPp4MauFQjCnNNlr7jMcCdtY6iCFcLm
	GdWPMkLGgsIP2hoV7kFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOfoV-0007zg-32; Thu, 09 May 2019 09:58:07 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOfoJ-0007zJ-2A
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 09:57:56 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id DFD1F25AEBF;
 Thu,  9 May 2019 19:57:51 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id D94149403F2; Thu,  9 May 2019 11:57:49 +0200 (CEST)
Date: Thu, 9 May 2019 11:57:49 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2] arm64: dts: renesas: r8a7795: Create thermal zone to
 support IPA
Message-ID: <20190509095749.23b2jnvfks4enkpt@verge.net.au>
References: <20190508115605.13726-1-horms+renesas@verge.net.au>
 <CAMuHMdX3YW0NaDXvN1WjWeNrCH366LALa3UT41REqAHNJk-9JA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdX3YW0NaDXvN1WjWeNrCH366LALa3UT41REqAHNJk-9JA@mail.gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_025755_263052_942D8B96 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 03:20:03PM +0200, Geert Uytterhoeven wrote:
> Hi Simon,
> 
> Thanks for your patch!
> 
> On Wed, May 8, 2019 at 1:56 PM Simon Horman <horms+renesas@verge.net.au> wrote:

...

> 
> > --- a/arch/arm64/boot/dts/renesas/r8a7795.dtsi
> > +++ b/arch/arm64/boot/dts/renesas/r8a7795.dtsi
> > @@ -155,6 +155,7 @@
> >                         power-domains = <&sysc R8A7795_PD_CA57_CPU0>;
> >                         next-level-cache = <&L2_CA57>;
> >                         enable-method = "psci";
> > +                       dynamic-power-coefficient = <854>;
> 
> The dynamic-power-coefficient property is a property of the CPU,
> documented in Documentation/devicetree/bindings/arm/cpus.yaml,
> and not directly related to thermal zones.
> 
> Hence I think its addition should be done in a separate patch.

Sure, can do. Should the coefficient be added to each CPU or only
to a57_0 and a53_0, as is the case in this patch?

I assume the latter because the A53 coefficient applies to all A53 cores
and likewise for A57.

> >                         clocks = <&cpg CPG_CORE R8A7795_CLK_Z>;
> >                         operating-points-v2 = <&cluster0_opp>;
> >                         capacity-dmips-mhz = <1024>;
> > @@ -207,6 +208,8 @@
> >                         power-domains = <&sysc R8A7795_PD_CA53_CPU0>;
> >                         next-level-cache = <&L2_CA53>;
> >                         enable-method = "psci";
> > +                       #cooling-cells = <2>;
> > +                       dynamic-power-coefficient = <277>;
> 
> Likewise.
> 
> >                         clocks = <&cpg CPG_CORE R8A7795_CLK_Z2>;
> >                         operating-points-v2 = <&cluster1_opp>;
> >                         capacity-dmips-mhz = <535>;
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
