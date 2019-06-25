Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E77D6551D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FiZsLGWsAy2bGOPc5yo9B15AjJlb+Y8tg7ycUI9+4VA=; b=GcikAdrh/C9jOI
	nkA7QTdHeWo+OgkC5qlfrFFGYIC6YF1/U1Um8wEAwLc1ti1b0vWJEvcJOO4WCR6NTh4MS4BWmp3QA
	EkUt0Xr7EogyCUE8RpTr7kdf360Z8Jf3lGEe1fQzuyMBBYZ1sU7YEbZ7U7/KB88PgWx+t6q/tn2Y2
	aKP8X4bmWXLGFkUFqh7ESW/m8z2hbsnRRPSeRTQMYDQ6aPcFn3Vbgivw1nvdiFBrlKgwf+0YxpVLR
	nZpRFO5hhxEvsqAkswzhjXHDbrhZo7Do5s3jvVBKMMbXWcHD5Om3FxYFKbdILecXMSubTCBX8dQuw
	haKqWDIhAGtQi60gCR9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmZ6-0007i8-62; Tue, 25 Jun 2019 14:36:56 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmYx-0007gz-90
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:36:49 +0000
Received: by mail-io1-xd43.google.com with SMTP id i10so1341696iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 07:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=675OzOy+510rgklrUaR96A8aWWUmnotqZyJprpSFvDY=;
 b=C8d6P2LjPsGOUIC0tsQoXICkz7v3AIjhqBGFbjqHH928L6FdjG1uNi8gPm9Z1CCbwV
 Xzw4VD+dM9v7UVqP2QhYzm7D6YYREj4FneX1uUG8NUumMooHWJXNSCDQSvG64Xg6DbVg
 sAY+9S8x4SkMiCeY0p4EgJqp1i8RthYYi+1ylaNW4MgmNsPEyY68KH8gFjpl6/vjD7nI
 nurfPFrv12oiOHOL7PaG+VSnmAw+Bo79IO3jgbs4yA0Z9zTSHq+7paAUwF5MocNdOmNE
 N1+TvLRKGzrvNYGzzoOrgFBrVv+EE8EhIsy1tpw7rqXz4CWW5OR+HVMhKuyIbnPRZDSX
 fpUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=675OzOy+510rgklrUaR96A8aWWUmnotqZyJprpSFvDY=;
 b=Z+XIcTNpMQBfSj8/XaT4gZLby2S0dQF3zYwtIQGayUEu+56MvPbTDS6Y+NwSC0Kx1N
 MbRiiBv2SwSuP/8kboBv4srnKb+8d/jpnxg2hQJzVOlQMVqosUfU180dv2zvda5QY5HB
 bkUe+Dh2dCU3rOUveTxOe0tn1go6K4bla5MY3pLTaxCK5W8ZfAPUf8v1st0FQ/CNwUQV
 JfQb97taF9w5zpDizL9ALIfi+0L9Vh6+3MzjFNHAkz551IEVFkhgDMTqkCkU2NRP9V99
 XsNSU2gWU6RGx5DozinaffaLAj9XlRO/0rhrkQYu7cOvVoQYpfs3YthWGqc6je5BbtC0
 xdFQ==
X-Gm-Message-State: APjAAAWCgH1eiCZhLpOquwUIsLo4CQJrGBBw+S2tzzE/QWVV4J4nHOFF
 E/Dy9pEDA47IDAbqlN9Z7EQgS9nlSUGNRX6ldok=
X-Google-Smtp-Source: APXvYqyIhHfq9+Y1O90Dc9QCg+QologakcjEJq20JB9jjKKHZ3UFv1CEoNGBNtNqH+gGzl2D3yh6phm+3DUz6D1TNAU=
X-Received: by 2002:a6b:c90c:: with SMTP id z12mr1767390iof.11.1561473405499; 
 Tue, 25 Jun 2019 07:36:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <CABb+yY1wW-arSMQSYjrezXOZ0Ar_shAr78MOyUD3hBxXohWx3g@mail.gmail.com>
 <AM0PR04MB44813A4DE544E53EB7B6F02B88E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB44813A4DE544E53EB7B6F02B88E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Tue, 25 Jun 2019 09:36:34 -0500
Message-ID: <CABb+yY38MAZqVOhjyV+GByPvpFcTfKbNG1rJ8YDRd1vi1F4fqg@mail.gmail.com>
Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_073647_316645_6408684D 
X-CRM114-Status: GOOD (  28.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andre Przywara <andre.przywara@arm.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, ", Sascha Hauer" <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 2:30 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> Hi Jassi
>
> > Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
> >
> > On Mon, Jun 3, 2019 at 3:28 AM <peng.fan@nxp.com> wrote:
> > >
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > This mailbox driver implements a mailbox which signals transmitted
> > > data via an ARM smc (secure monitor call) instruction. The mailbox
> > > receiver is implemented in firmware and can synchronously return data
> > > when it returns execution to the non-secure world again.
> > > An asynchronous receive path is not implemented.
> > > This allows the usage of a mailbox to trigger firmware actions on SoCs
> > > which either don't have a separate management processor or on which
> > > such a core is not available. A user of this mailbox could be the SCP
> > > interface.
> > >
> > > Modified from Andre Przywara's v2 patch
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore
> > > .kernel.org%2Fpatchwork%2Fpatch%2F812999%2F&amp;data=02%7C01%7
> > Cpeng.fa
> > >
> > n%40nxp.com%7C1237677cb01044ad714508d6f59f648f%7C686ea1d3bc2b4
> > c6fa92cd
> > >
> > 99c5c301635%7C0%7C0%7C636966462272457978&amp;sdata=Hzgeu43m5
> > ZkeRMtL8Bx
> > > gUm3%2B6FBObib1OPHPlSccE%2B0%3D&amp;reserved=0
> > >
> > > Cc: Andre Przywara <andre.przywara@arm.com>
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >
> > > V2:
> > >  Add interrupts notification support.
> > >
> > >  drivers/mailbox/Kconfig                 |   7 ++
> > >  drivers/mailbox/Makefile                |   2 +
> > >  drivers/mailbox/arm-smc-mailbox.c       | 190
> > ++++++++++++++++++++++++++++++++
> > >  include/linux/mailbox/arm-smc-mailbox.h |  10 ++
> > >  4 files changed, 209 insertions(+)
> > >  create mode 100644 drivers/mailbox/arm-smc-mailbox.c  create mode
> > > 100644 include/linux/mailbox/arm-smc-mailbox.h
> > >
> > > diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig index
> > > 595542bfae85..c3bd0f1ddcd8 100644
> > > --- a/drivers/mailbox/Kconfig
> > > +++ b/drivers/mailbox/Kconfig
> > > @@ -15,6 +15,13 @@ config ARM_MHU
> > >           The controller has 3 mailbox channels, the last of which can be
> > >           used in Secure mode only.
> > >
> > > +config ARM_SMC_MBOX
> > > +       tristate "Generic ARM smc mailbox"
> > > +       depends on OF && HAVE_ARM_SMCCC
> > > +       help
> > > +         Generic mailbox driver which uses ARM smc calls to call into
> > > +         firmware for triggering mailboxes.
> > > +
> > >  config IMX_MBOX
> > >         tristate "i.MX Mailbox"
> > >         depends on ARCH_MXC || COMPILE_TEST diff --git
> > > a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile index
> > > c22fad6f696b..93918a84c91b 100644
> > > --- a/drivers/mailbox/Makefile
> > > +++ b/drivers/mailbox/Makefile
> > > @@ -7,6 +7,8 @@ obj-$(CONFIG_MAILBOX_TEST)      += mailbox-test.o
> > >
> > >  obj-$(CONFIG_ARM_MHU)  += arm_mhu.o
> > >
> > > +obj-$(CONFIG_ARM_SMC_MBOX)     += arm-smc-mailbox.o
> > > +
> > >  obj-$(CONFIG_IMX_MBOX) += imx-mailbox.o
> > >
> > >  obj-$(CONFIG_ARMADA_37XX_RWTM_MBOX)    +=
> > armada-37xx-rwtm-mailbox.o
> > > diff --git a/drivers/mailbox/arm-smc-mailbox.c
> > > b/drivers/mailbox/arm-smc-mailbox.c
> > > new file mode 100644
> > > index 000000000000..fef6e38d8b98
> > > --- /dev/null
> > > +++ b/drivers/mailbox/arm-smc-mailbox.c
> > > @@ -0,0 +1,190 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * Copyright (C) 2016,2017 ARM Ltd.
> > > + * Copyright 2019 NXP
> > > + */
> > > +
> > > +#include <linux/arm-smccc.h>
> > > +#include <linux/device.h>
> > > +#include <linux/kernel.h>
> > > +#include <linux/interrupt.h>
> > > +#include <linux/mailbox_controller.h> #include
> > > +<linux/mailbox/arm-smc-mailbox.h>
> > > +#include <linux/module.h>
> > > +#include <linux/platform_device.h>
> > > +
> > > +#define ARM_SMC_MBOX_USE_HVC   BIT(0)
> > > +#define ARM_SMC_MBOX_USB_IRQ   BIT(1)
> > > +
> > IRQ bit is unused (and unnecessary IMO)
> >
> > > +struct arm_smc_chan_data {
> > > +       u32 function_id;
> > > +       u32 flags;
> > > +       int irq;
> > > +};
> > > +
> > > +static int arm_smc_send_data(struct mbox_chan *link, void *data) {
> > > +       struct arm_smc_chan_data *chan_data = link->con_priv;
> > > +       struct arm_smccc_mbox_cmd *cmd = data;
> > > +       struct arm_smccc_res res;
> > > +       u32 function_id;
> > > +
> > > +       if (chan_data->function_id != UINT_MAX)
> > > +               function_id = chan_data->function_id;
> > > +       else
> > > +               function_id = cmd->a0;
> > > +
> > Not sure about chan_data->function_id.  Why restrict from DT?
> > 'a0' is the function_id register, let the user pass func-id via the 'a0' like other
> > values via 'a[1-7]'
>
> Missed to reply this comment.
>
> The firmware driver might not have func-id, such as SCMI/SCPI.
> So add an optional func-id to let smc mailbox driver could
> use smc SiP func id.
>
There is no end to conforming to protocols. Controller drivers should
be written having no particular client in mind.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
