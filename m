Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D668110AD42
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:08:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mebJ2ukg1Ht5QUQWvCpimCidAN2XafiZgDN5gIOG4aM=; b=icvqyH1IMftBt7
	RqJyOguE7B46ZH37g1ExUCyHH/vE1qE0GO9SDoD9U1JBZMwL/M5aQvQCP/XDQvtuCkA6rDxFRZ5jw
	0t1qiq5nwEaHjeOLo23Kd0O/CZQEO/+6lBxKaCxLBjutd+IMQ/d2jNL5TMEAit4BHslAdqfAmYgeR
	dgJZG77X+oBLomKYvG8AN8k3yc5SNE0TWGyHJ1/9uGnZmm6uJY6BqwQrHZsH5rUu+mhuHl3U0s3Yc
	fpAuNi6VedaU/h66HQFEUT4q0RluYC2h10ss3UDA9Ob0ZPPSFoH+HtNFrmCJdMojZSbQwvj2MEVYh
	oTM7yxt0nqYLTjF66+GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZuFD-0005tB-LJ; Wed, 27 Nov 2019 10:08:23 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuF4-0005t5-UP
 for linux-arm-kernel@bombadil.infradead.org; Wed, 27 Nov 2019 10:08:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tIKlrou5vu+SRxjzOJcT4cullNoWyUFjyhWuengpKAs=; b=s6LCUtPtLK+vn48a40xQ9dUTf
 b5yxgROddpLWnOutQC1BMXygGBT5ne5280TlOe1RQjGSWYXRmzmeIcGW4QF9/R+j1GJjFiB0F3fkl
 EcuGZKtz3QJONNDU48Yaaz4kzUGHK37mGoD3gAiHXduoDc9rdQi3sNXH1Oc3aR2y+OjiVvJas3+x+
 zqFSLB1CGE7A2a3ydhYFgL++p6d2WFVzcifIKkQzDWdWg26huB4p5l/06A7GVfc8Cy04Puzsf8NYo
 1Qx+WImVBgp3SNQSMbAzRtwtKfcH0GzHbAgY0sZOuwebka/qREu2QJ2jBhu38xYbNT5ENtZF/iQmi
 yID2FSBHA==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuF1-00042Y-Um
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:08:13 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-1-1480-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 25041E002F;
 Wed, 27 Nov 2019 10:07:23 +0000 (UTC)
Date: Wed, 27 Nov 2019 11:07:22 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH v2 02/17] ARM: at91: pm: move SAM9X60's PM under its own
 SoC config flag
Message-ID: <20191127100722.GI299836@piout.net>
References: <1574773941-20649-1-git-send-email-claudiu.beznea@microchip.com>
 <1574773941-20649-3-git-send-email-claudiu.beznea@microchip.com>
 <20191126212841.GR299836@piout.net>
 <10705ea9-7a0f-5af4-e383-293fabed6b89@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10705ea9-7a0f-5af4-e383-293fabed6b89@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, Ludovic.Desroches@microchip.com, sre@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/11/2019 08:06:47+0000, Claudiu.Beznea@microchip.com wrote:
> 
> 
> On 26.11.2019 23:28, Alexandre Belloni wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > On 26/11/2019 15:12:06+0200, Claudiu Beznea wrote:
> >> Move SAM9X60's PM part under SoC config flag. This allows the building
> >> of SAM9X60 platform withouth depending on CONFIG_SOC_AT91SAM9 flag,
> >> allowing us to select only necessary config flags for SAM9X60.
> >>
> > 
> > I'm really wondering, how much space does that really save?
> > 
> > The net benefit seems to be very small...
> 
> Not that much, indeed. We want to be independent of SOC_AT91SAM9.
> 

The question is why? I don't see the technical benefit but I
definitively see the maintenance burden of having two separate configs
doing almost the same thing.

> > 
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> >> ---
> >>  arch/arm/mach-at91/Makefile   |  1 +
> >>  arch/arm/mach-at91/at91sam9.c | 18 ------------------
> >>  arch/arm/mach-at91/pm.c       |  2 +-
> >>  arch/arm/mach-at91/sam9x60.c  | 34 ++++++++++++++++++++++++++++++++++
> >>  4 files changed, 36 insertions(+), 19 deletions(-)
> >>  create mode 100644 arch/arm/mach-at91/sam9x60.c
> >>
> >> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
> >> index de64301dcff2..f565490f1b70 100644
> >> --- a/arch/arm/mach-at91/Makefile
> >> +++ b/arch/arm/mach-at91/Makefile
> >> @@ -6,6 +6,7 @@
> >>  # CPU-specific support
> >>  obj-$(CONFIG_SOC_AT91RM9200) += at91rm9200.o
> >>  obj-$(CONFIG_SOC_AT91SAM9)   += at91sam9.o
> >> +obj-$(CONFIG_SOC_SAM9X60)    += sam9x60.o
> >>  obj-$(CONFIG_SOC_SAMA5)              += sama5.o
> >>  obj-$(CONFIG_SOC_SAMV7)              += samv7.o
> >>
> >> diff --git a/arch/arm/mach-at91/at91sam9.c b/arch/arm/mach-at91/at91sam9.c
> >> index bf629c90c758..7e572189a5eb 100644
> >> --- a/arch/arm/mach-at91/at91sam9.c
> >> +++ b/arch/arm/mach-at91/at91sam9.c
> >> @@ -31,21 +31,3 @@ DT_MACHINE_START(at91sam_dt, "Atmel AT91SAM9")
> >>       .init_machine   = at91sam9_init,
> >>       .dt_compat      = at91_dt_board_compat,
> >>  MACHINE_END
> >> -
> >> -static void __init sam9x60_init(void)
> >> -{
> >> -     of_platform_default_populate(NULL, NULL, NULL);
> >> -
> >> -     sam9x60_pm_init();
> >> -}
> >> -
> >> -static const char *const sam9x60_dt_board_compat[] __initconst = {
> >> -     "microchip,sam9x60",
> >> -     NULL
> >> -};
> >> -
> >> -DT_MACHINE_START(sam9x60_dt, "Microchip SAM9X60")
> >> -     /* Maintainer: Microchip */
> >> -     .init_machine   = sam9x60_init,
> >> -     .dt_compat      = sam9x60_dt_board_compat,
> >> -MACHINE_END
> >> diff --git a/arch/arm/mach-at91/pm.c b/arch/arm/mach-at91/pm.c
> >> index d5af6aedc02c..56a6a49b19e2 100644
> >> --- a/arch/arm/mach-at91/pm.c
> >> +++ b/arch/arm/mach-at91/pm.c
> >> @@ -805,7 +805,7 @@ void __init at91rm9200_pm_init(void)
> >>
> >>  void __init sam9x60_pm_init(void)
> >>  {
> >> -     if (!IS_ENABLED(CONFIG_SOC_AT91SAM9))
> >> +     if (!IS_ENABLED(CONFIG_SOC_SAM9X60))
> >>               return;
> >>
> >>       at91_pm_modes_init();
> >> diff --git a/arch/arm/mach-at91/sam9x60.c b/arch/arm/mach-at91/sam9x60.c
> >> new file mode 100644
> >> index 000000000000..d8c739d25458
> >> --- /dev/null
> >> +++ b/arch/arm/mach-at91/sam9x60.c
> >> @@ -0,0 +1,34 @@
> >> +// SPDX-License-Identifier: GPL-2.0+
> >> +/*
> >> + * Setup code for SAM9X60.
> >> + *
> >> + * Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries
> >> + *
> >> + * Author: Claudiu Beznea <claudiu.beznea@microchip.com>
> >> + */
> >> +
> >> +#include <linux/of.h>
> >> +#include <linux/of_platform.h>
> >> +
> >> +#include <asm/mach/arch.h>
> >> +#include <asm/system_misc.h>
> >> +
> >> +#include "generic.h"
> >> +
> >> +static void __init sam9x60_init(void)
> >> +{
> >> +     of_platform_default_populate(NULL, NULL, NULL);
> >> +
> >> +     sam9x60_pm_init();
> >> +}
> >> +
> >> +static const char *const sam9x60_dt_board_compat[] __initconst = {
> >> +     "microchip,sam9x60",
> >> +     NULL
> >> +};
> >> +
> >> +DT_MACHINE_START(sam9x60_dt, "Microchip SAM9X60")
> >> +     /* Maintainer: Microchip */
> >> +     .init_machine   = sam9x60_init,
> >> +     .dt_compat      = sam9x60_dt_board_compat,
> >> +MACHINE_END
> >> --
> >> 2.7.4
> >>
> > 
> > --
> > Alexandre Belloni, Bootlin
> > Embedded Linux and Kernel engineering
> > https://bootlin.com
> > 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
