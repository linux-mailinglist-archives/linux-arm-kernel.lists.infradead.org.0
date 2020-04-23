Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F331B5FF6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:54:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aCLmcRzJqul0Cpa7cf4/bAHzgdSMurcTZwWVqAqZv+A=; b=GkbDJWnzRf8xgE
	5oX2ju6O9mpqYc3K4yB0vRPoDHmwJ/iXGT0qSttj7lXbZ1A8XLdSif3P7b/dlhGXX7psjIp+coYMl
	KcxB6whJcpim/zJutwCJwX8iMN/mb3o7U/5W50hB2FWffR6BZlg8WSPb999QrA20oHCEf0xqBmJa+
	ge+TZPhQjT36MmBTjRzeHpKZ4L9Uvg2D/BZKsKhA/7VwelYfrKiv7nqaTsRcXaWOyDHi3Ied2GQ7w
	Lv9EK7GwVFm0y9u3tWLxK3eCnaKXEtiQ1vr6ZuBREvfaEq8lRxvjKvVzyCUzbqTj1tiXBaFbOU6s3
	gShcupgi3b/zYd8EB5jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jReAu-0000ru-Qf; Thu, 23 Apr 2020 15:54:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jReAl-0000qs-Np
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:53:57 +0000
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com
 [209.85.219.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 00B5220CC7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 15:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587657235;
 bh=s3YHiF3eHUkNFeBMptoPc4xjgSN1RME0WUf4jO6w/us=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=A4phta+jNe4PkzlcXnUchsz34o2lcWJYlSeHvPrXxVgP2NqWk+Xq1dOTpvwJ/2nKr
 JPrRIp+D3x3lLbTzRDRlRzzAZZxaVLBa/87IcYH6WfNHeYa8pqIXKbQtfh1zk24sCJ
 AtLQweB9a+m8MyWv2FPyhkscdXMXQfFul7pYyNXs=
Received: by mail-yb1-f178.google.com with SMTP id f13so3377835ybk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 08:53:54 -0700 (PDT)
X-Gm-Message-State: AGi0PuZR5rv1EnudCBRrXGVAa+nzReDpDZSCZI0vIIi4UL4WhskixIe0
 ZrMI0VY4Pbv1L8wRGpyeojV7wPP7WFJfSQHy2Q==
X-Google-Smtp-Source: APiQypItf6P4u5QhuwYnh32TjB2B27BbwMX+t2h/1EzeCIMKMBZ70JAemO83CNpLnyd2kyd3i8vYaBELfUOCkztl7Xo=
X-Received: by 2002:a25:b74c:: with SMTP id e12mr8433306ybm.472.1587657234161; 
 Thu, 23 Apr 2020 08:53:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-9-robh@kernel.org>
 <20200422210802.GH25585@bogus> <20200423133342.GA10628@bogus>
In-Reply-To: <20200423133342.GA10628@bogus>
From: Rob Herring <robh@kernel.org>
Date: Thu, 23 Apr 2020 10:53:40 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLnKd5_ifeARuc8RfsUCnc37jNBOkGSeWEp6EPA4J9tqA@mail.gmail.com>
Message-ID: <CAL_JsqLnKd5_ifeARuc8RfsUCnc37jNBOkGSeWEp6EPA4J9tqA@mail.gmail.com>
Subject: Re: [PATCH 08/17] clk: vexpress-osc: Support building as a module
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_085355_814263_F838D23D 
X-CRM114-Status: GOOD (  25.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sebastian Reichel <sre@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 8:45 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Apr 22, 2020 at 10:08:02PM +0100, Sudeep Holla wrote:
> > On Sun, Apr 19, 2020 at 12:08:01PM -0500, Rob Herring wrote:
> > > Enable building the vexpress-osc clock driver as a module.
> > >
> > > Cc: Linus Walleij <linus.walleij@linaro.org>
> > > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Cc: Michael Turquette <mturquette@baylibre.com>
> > > Cc: Stephen Boyd <sboyd@kernel.org>
> > > Cc: linux-clk@vger.kernel.org
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > ---
> > >  drivers/clk/versatile/Kconfig            |  4 ++--
> > >  drivers/clk/versatile/clk-vexpress-osc.c | 10 ++++------
> > >  2 files changed, 6 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
> > > index 5bdd5c98990b..9de2396dcf9b 100644
> > > --- a/drivers/clk/versatile/Kconfig
> > > +++ b/drivers/clk/versatile/Kconfig
> > > @@ -15,8 +15,8 @@ config CLK_SP810
> > >       of the ARM SP810 System Controller cell.
> > >
> > >  config CLK_VEXPRESS_OSC
> > > -   bool "Clock driver for Versatile Express OSC clock generators"
> > > -   depends on VEXPRESS_CONFIG || COMPILE_TEST
> > > +   tristate "Clock driver for Versatile Express OSC clock generators"
> > > +   depends on VEXPRESS_CONFIG
> > >     default y if ARCH_VEXPRESS
> > >     ---help---
> > >       Simple regmap-based driver driving clock generators on Versatile
> > > diff --git a/drivers/clk/versatile/clk-vexpress-osc.c b/drivers/clk/versatile/clk-vexpress-osc.c
> > > index 5bb1d5a714d0..b2b32fa2d7c3 100644
> > > --- a/drivers/clk/versatile/clk-vexpress-osc.c
> > > +++ b/drivers/clk/versatile/clk-vexpress-osc.c
> > > @@ -7,6 +7,7 @@
> > >  #include <linux/clkdev.h>
> > >  #include <linux/clk-provider.h>
> > >  #include <linux/err.h>
> > > +#include <linux/module.h>
> > >  #include <linux/of.h>
> > >  #include <linux/platform_device.h>
> > >  #include <linux/slab.h>
> > > @@ -108,6 +109,7 @@ static const struct of_device_id vexpress_osc_of_match[] = {
> > >     { .compatible = "arm,vexpress-osc", },
> > >     {}
> > >  };
> > > +MODULE_DEVICE_TABLE(of, vexpress_osc_of_match);
> > >
> > >  static struct platform_driver vexpress_osc_driver = {
> > >     .driver = {
> > > @@ -116,9 +118,5 @@ static struct platform_driver vexpress_osc_driver = {
> > >     },
> > >     .probe = vexpress_osc_probe,
> > >  };
> > > -
> > > -static int __init vexpress_osc_init(void)
> > > -{
> > > -   return platform_driver_register(&vexpress_osc_driver);
> > > -}
> > > -core_initcall(vexpress_osc_init);
> > > +module_platform_driver(vexpress_osc_driver);
> >
> > I am not 100% sure of this. This might break the boot on CA9 and TC2
> > at-least. There are loads of MB peripherals that need this. This will
> > break the boot. We need to check if all the dependent modules are also
> > at module_initcall level and if they deal with deferred probe correctly.
> > Lot of them are legacy and may happen to be working by carefully initcall
> > level adjustments.
> >
>
> OK I managed to try this on my TC2 and it fails to boot. However when I
> enable earlyprintk as I see no log without it, it boots just fine.

Well, the uart clocks for TC2 are all dependent on vexpress-osc. The
console setup is going to fail to get the clocks and just fail as
there's no deferred probe for consoles. We need some way to retrigger
the console matching.

> I also checked adding initcall_debug and I may be wrong on the dependency
> part. The modules dependent on vexpress-osc are probed later correctly.
>
> This make it more difficult to debug as I don't have any debugger attached
> at the moment to look at the logbuf when it hangs without earlyprintk.
>
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
