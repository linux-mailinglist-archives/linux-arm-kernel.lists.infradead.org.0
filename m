Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC6A74E1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 14:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpW/WcxBqiAqNs+2op+h2Q0h9JKnblzLEI3xXZIpSvI=; b=CLLb1m++MKgpwv
	bFEIXt8iVC/y9GT9P4EcHqrolaso06Awr8PZR9/7iIIV7PVmCqvvZ1yPQafPa+nuVg/hLKu8UUl1e
	lD7eZDNQfeYK0PWFWsLE7ok0BDwXk/KYYyFVXD17pcn3O8KaLqJhSDE4uYgRherWd6SQ2Q2/ynCPT
	HGu0bJkOOPEjoM/y5JAFtsLmX/F9Yh/obvXiOqsCWzhaS4r9sUvB7Vz09SAOqIzkXVucigIohh3na
	k90CGxoLwP/zIF7aamJoh8RG5OCxmat8jv/EgNmrl/1MeH3LUlbBR3OgXcW68G5jkg9fqpXw3d3aA
	qekM1D8R+iia3QdQVHUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqcq5-0000Qs-AW; Thu, 25 Jul 2019 12:27:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqcpw-0000Q7-Kf
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 12:27:10 +0000
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B38E922BF5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 12:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564057628;
 bh=hvi3f3uSdwxr0fxa/SPUSykPmRb3g6bN/bUFZtDjvhI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YZpskwbt1odRPzwi3XE+eml0ZTe9NPpZWTrMsgmJGPx4Y+qK+C7h906w6fLgMqtIU
 wHY0uOpjn1sjLb2P+cNhxg2E7sYmG1NlZq6DCzEjnDt37XfLmMHh9y/Feyj/djLrlW
 T8zZoehu8Pc5sagkTOSounsKUgxflLe6nTcz2/b8=
Received: by mail-lj1-f181.google.com with SMTP id p17so47819710ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 05:27:07 -0700 (PDT)
X-Gm-Message-State: APjAAAWqZQMNZFluqOO+orZe/tM/2KkbQ0E1P6Q84DaVrNvFz5Xo5Xc3
 v6kUiGPE6RQ9rlZsLiM4veLQIS/NnIukA2TfO3U=
X-Google-Smtp-Source: APXvYqzN8ydq4aVkNBBiwc3aMzUs16m0V4H8GdXu0fjMbItklJjwxFqKAyKZIP0rj6F/MAszB1Y2IdacyLLN14bbkeM=
X-Received: by 2002:a2e:124b:: with SMTP id t72mr46505545lje.143.1564057625857; 
 Thu, 25 Jul 2019 05:27:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190724072008.6272-1-guillaume.gardet@free.fr>
 <20190725083433.6505-1-guillaume.gardet@arm.com>
 <CAJKOXPejSxxH5DJPyEHTt=VEOdVgiXOm1c3MKKir-qRxtDcLLA@mail.gmail.com>
 <DBBPR08MB4678546DF9EE76EE6427DBB783C10@DBBPR08MB4678.eurprd08.prod.outlook.com>
In-Reply-To: <DBBPR08MB4678546DF9EE76EE6427DBB783C10@DBBPR08MB4678.eurprd08.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 25 Jul 2019 14:26:54 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdLd5C0FPwijGwTWW9t46exysdqgeb07txPhp-f_b5DFA@mail.gmail.com>
Message-ID: <CAJKOXPdLd5C0FPwijGwTWW9t46exysdqgeb07txPhp-f_b5DFA@mail.gmail.com>
Subject: Re: [PATCH V2 1/2] arm: dts: exynos: Add GPU/Mali T604 node to
 exynos5250
To: Guillaume Gardet <Guillaume.Gardet@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_052708_713671_C01CA0BC 
X-CRM114-Status: GOOD (  27.60  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 25 Jul 2019 at 13:35, Guillaume Gardet <Guillaume.Gardet@arm.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Krzysztof Kozlowski <krzk@kernel.org>
> > Sent: 25 July 2019 13:19
> > To: Guillaume Gardet <Guillaume.Gardet@arm.com>
> > Cc: linux-samsung-soc@vger.kernel.org; Kukjin Kim <kgene@kernel.org>; linux-
> > arm-kernel@lists.infradead.org
> > Subject: Re: [PATCH V2 1/2] arm: dts: exynos: Add GPU/Mali T604 node to
> > exynos5250
> >
> > On Thu, 25 Jul 2019 at 10:34, Guillaume <guillaume.gardet@arm.com> wrote:
> > >
> > > From: Guillaume GARDET <guillaume.gardet@arm.com>
> > >
> > > Add nodes for GPU (Mali T604) to Exynos5250.
> > > Tested with kmscube and glmark2-es2-drm on Chromebook snow.
> > > Load tested on arndale board.
> > >
> > > Signed-off-by: Guillaume GARDET <guillaume.gardet@arm.com>
> > >
> > > Cc: Kukjin Kim <kgene@kernel.org>
> > > Cc: Krzysztof Kozlowski <krzk@kernel.org>
> > > Cc: linux-arm-kernel@lists.infradead.org
> > > ---
> > > V2 changes:
> > >   * move mali node as /soc sub-node
> > >   * move gpu_opp_table as mali sub-node
> > >   * minor style updates
> > >   * test on arndale board
> > >   * enable by default
> >
> > I was not specific enough. It can stay disabled in the DTSI because not all
> > resources are provided. The board DTSes (all or ones which are
> > tested) will enable it and provide missing resources - mali-supply.
>
> I think all resources are provided, since no mali-supply property is needed here.

No, regulator is not provided. On all Exynos boards Mali uses its own
dedicated regulator (and sometimes additional one). It worked in your
case because the regulator was set as always-on but this is a
workaround for lack of consumers. Once there is a consumer, the
regulator should not be always-on to save the energy when not used.

> So, I can either enable it by default for all exynos5250 platforms there, or I can enable it only for Arndale board and Chromebook snow. What do you prefer?

Then please enable it on tested platforms.

>
> > Just like:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f
> > 0a6208b90bdd44f48f5718c8bb0eb1e763d14c0
> >
> > >   * add dt bindings, in a separate patch
> >
> > Put the bindings before DTS change.
>
> Yes, makes sense.
>
> >
> > >
> > >  arch/arm/boot/dts/exynos5250.dtsi | 47
> > > +++++++++++++++++++++++++++++++
> > >  1 file changed, 47 insertions(+)
> > >
> > > diff --git a/arch/arm/boot/dts/exynos5250.dtsi
> > > b/arch/arm/boot/dts/exynos5250.dtsi
> > > index d5e0392b409e..f7f34d469bde 100644
> > > --- a/arch/arm/boot/dts/exynos5250.dtsi
> > > +++ b/arch/arm/boot/dts/exynos5250.dtsi
> > > @@ -328,6 +328,52 @@
> > >                         iommus = <&sysmmu_rotator>;
> > >                 };
> > >
> > > +               mali: gpu@11800000 {
> > > +                       compatible = "samsung,exynos5250-mali", "arm,mali-t604";
> > > +                       reg = <0x11800000 0x5000>;
> > > +                       interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
> > > +                                    <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
> > > +                                    <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> > > +                       interrupt-names = "job", "mmu", "gpu";
> > > +                       clocks = <&clock CLK_G3D>;
> > > +                       clock-names = "g3d";
> >
> > According to bindings this is not proper clock name. I wonder why it was
> > working... it seems the driver expects first clock to be always the core clock.
>
> Yes, it works, because 1st clock is assumed to be the core clock.
> Clock names are optional and could be omitted as in https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/rk3288.dtsi?h=v5.3-rc1#n1284
> Not sure if it would be better to rename it to 'core', or  just skip it? Any opinion?

The driver can change anytime and it might look for "core" so DTS
should follow the bindings. Additionally, Panfrost might behave
differently than Arm driver. So "core" please.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
