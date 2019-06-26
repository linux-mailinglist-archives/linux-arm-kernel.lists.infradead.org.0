Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B76E56F3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 19:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5BjuFvzOo38kJiFtqrHzngeaANrtpi80wR3ZZDkgEk=; b=Ig5Rh/nZXsiHA/
	AA8Ofms3ruOs0yUtgF2zaObICQS5dBz5QxcVaXjpLv0JyA6PF56BcTQ/1GNzyd8eijS6aqpHiLZ8I
	dSxGoC2z9RzP4k6kqwUrwqhwXsy+GNcyHidzitPB26bOxpeOIdx3iLT7Z0suc3yc/PM8D298uE5lM
	b7qXGTJZBNrLMnt+b4QIAYl/w03oeXbKkNlCoArlft9vNHS8KWsQlAeSYVJqeJ1TBYUar3qXQeAoV
	9eFVR3k56Bwe9wc17SHSlRsNpiEwVHvdYQLlSpShEGlUfU13tQNlis0njofKUJt1J5fJph5NNTYig
	eTe/uYecxqm9LdDjBktg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgBKJ-0001Dy-Ab; Wed, 26 Jun 2019 17:03:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgBK3-0001Cw-Dx
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 17:03:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7367FD6E;
 Wed, 26 Jun 2019 10:03:00 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 84F1A3F706;
 Wed, 26 Jun 2019 10:02:58 -0700 (PDT)
Date: Wed, 26 Jun 2019 18:02:56 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Message-ID: <20190626170256.GB13572@e107155-lin>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <CABb+yY1wW-arSMQSYjrezXOZ0Ar_shAr78MOyUD3hBxXohWx3g@mail.gmail.com>
 <AM0PR04MB44813A4DE544E53EB7B6F02B88E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY38MAZqVOhjyV+GByPvpFcTfKbNG1rJ8YDRd1vi1F4fqg@mail.gmail.com>
 <AM0PR04MB44814D3BD59033ECDDE3094C88E20@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB44814D3BD59033ECDDE3094C88E20@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_100303_562026_0B581191 
X-CRM114-Status: GOOD (  32.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jassi Brar <jassisinghbrar@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, ", Sascha Hauer" <kernel@pengutronix.de>,
 Andre Przywara <andre.przywara@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 01:31:15PM +0000, Peng Fan wrote:
> 
> Hi All,
> 
> > Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
> > 
> > On Tue, Jun 25, 2019 at 2:30 AM Peng Fan <peng.fan@nxp.com> wrote:
> > >
> > > Hi Jassi
> > >
> > > > Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
> > > >
> > > > On Mon, Jun 3, 2019 at 3:28 AM <peng.fan@nxp.com> wrote:
> > > > >
> > > > > From: Peng Fan <peng.fan@nxp.com>
> > > > >
> > > > > This mailbox driver implements a mailbox which signals transmitted
> > > > > data via an ARM smc (secure monitor call) instruction. The mailbox
> > > > > receiver is implemented in firmware and can synchronously return
> > > > > data when it returns execution to the non-secure world again.
> > > > > An asynchronous receive path is not implemented.
> > > > > This allows the usage of a mailbox to trigger firmware actions on
> > > > > SoCs which either don't have a separate management processor or on
> > > > > which such a core is not available. A user of this mailbox could
> > > > > be the SCP interface.
> > > > >
> > > > > Modified from Andre Przywara's v2 patch https://lore
> > > > > .kernel.org%2Fpatchwork%2Fpatch%2F812999%2F&amp;data=02%7C0
> > 1%7
> > > > Cpeng.fa
> > > > >
> > > >
> > n%40nxp.com%7C1237677cb01044ad714508d6f59f648f%7C686ea1d3bc2b4
> > > > c6fa92cd
> > > > >
> > > >
> > 99c5c301635%7C0%7C0%7C636966462272457978&amp;sdata=Hzgeu43m5
> > > > ZkeRMtL8Bx
> > > > > gUm3%2B6FBObib1OPHPlSccE%2B0%3D&amp;reserved=0
> > > > >
> > > > > Cc: Andre Przywara <andre.przywara@arm.com>
> > > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > > ---
> > > > >
> > > > > V2:
> > > > >  Add interrupts notification support.
> > > > >
> > > > >  drivers/mailbox/Kconfig                 |   7 ++
> > > > >  drivers/mailbox/Makefile                |   2 +
> > > > >  drivers/mailbox/arm-smc-mailbox.c       | 190
> > > > ++++++++++++++++++++++++++++++++
> > > > >  include/linux/mailbox/arm-smc-mailbox.h |  10 ++
> > > > >  4 files changed, 209 insertions(+)
> > > > >  create mode 100644 drivers/mailbox/arm-smc-mailbox.c  create
> > mode
> > > > > 100644 include/linux/mailbox/arm-smc-mailbox.h
> > > > >
> > > > > diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig index
> > > > > 595542bfae85..c3bd0f1ddcd8 100644
> > > > > --- a/drivers/mailbox/Kconfig
> > > > > +++ b/drivers/mailbox/Kconfig
> > > > > @@ -15,6 +15,13 @@ config ARM_MHU
> > > > >           The controller has 3 mailbox channels, the last of which can
> > be
> > > > >           used in Secure mode only.
> > > > >
> > > > > +config ARM_SMC_MBOX
> > > > > +       tristate "Generic ARM smc mailbox"
> > > > > +       depends on OF && HAVE_ARM_SMCCC
> > > > > +       help
> > > > > +         Generic mailbox driver which uses ARM smc calls to call into
> > > > > +         firmware for triggering mailboxes.
> > > > > +
> > > > >  config IMX_MBOX
> > > > >         tristate "i.MX Mailbox"
> > > > >         depends on ARCH_MXC || COMPILE_TEST diff --git
> > > > > a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile index
> > > > > c22fad6f696b..93918a84c91b 100644
> > > > > --- a/drivers/mailbox/Makefile
> > > > > +++ b/drivers/mailbox/Makefile
> > > > > @@ -7,6 +7,8 @@ obj-$(CONFIG_MAILBOX_TEST)      +=
> > mailbox-test.o
> > > > >
> > > > >  obj-$(CONFIG_ARM_MHU)  += arm_mhu.o
> > > > >
> > > > > +obj-$(CONFIG_ARM_SMC_MBOX)     += arm-smc-mailbox.o
> > > > > +
> > > > >  obj-$(CONFIG_IMX_MBOX) += imx-mailbox.o
> > > > >
> > > > >  obj-$(CONFIG_ARMADA_37XX_RWTM_MBOX)    +=
> > > > armada-37xx-rwtm-mailbox.o
> > > > > diff --git a/drivers/mailbox/arm-smc-mailbox.c
> > > > > b/drivers/mailbox/arm-smc-mailbox.c
> > > > > new file mode 100644
> > > > > index 000000000000..fef6e38d8b98
> > > > > --- /dev/null
> > > > > +++ b/drivers/mailbox/arm-smc-mailbox.c
> > > > > @@ -0,0 +1,190 @@
> > > > > +// SPDX-License-Identifier: GPL-2.0
> > > > > +/*
> > > > > + * Copyright (C) 2016,2017 ARM Ltd.
> > > > > + * Copyright 2019 NXP
> > > > > + */
> > > > > +
> > > > > +#include <linux/arm-smccc.h>
> > > > > +#include <linux/device.h>
> > > > > +#include <linux/kernel.h>
> > > > > +#include <linux/interrupt.h>
> > > > > +#include <linux/mailbox_controller.h> #include
> > > > > +<linux/mailbox/arm-smc-mailbox.h>
> > > > > +#include <linux/module.h>
> > > > > +#include <linux/platform_device.h>
> > > > > +
> > > > > +#define ARM_SMC_MBOX_USE_HVC   BIT(0)
> > > > > +#define ARM_SMC_MBOX_USB_IRQ   BIT(1)
> > > > > +
> > > > IRQ bit is unused (and unnecessary IMO)
> > > >
> > > > > +struct arm_smc_chan_data {
> > > > > +       u32 function_id;
> > > > > +       u32 flags;
> > > > > +       int irq;
> > > > > +};
> > > > > +
> > > > > +static int arm_smc_send_data(struct mbox_chan *link, void *data) {
> > > > > +       struct arm_smc_chan_data *chan_data = link->con_priv;
> > > > > +       struct arm_smccc_mbox_cmd *cmd = data;
> > > > > +       struct arm_smccc_res res;
> > > > > +       u32 function_id;
> > > > > +
> > > > > +       if (chan_data->function_id != UINT_MAX)
> > > > > +               function_id = chan_data->function_id;
> > > > > +       else
> > > > > +               function_id = cmd->a0;
> > > > > +
> > > > Not sure about chan_data->function_id.  Why restrict from DT?
> > > > 'a0' is the function_id register, let the user pass func-id via the 'a0' like
> > other
> > > > values via 'a[1-7]'
> > >
> > > Missed to reply this comment.
> > >
> > > The firmware driver might not have func-id, such as SCMI/SCPI.
> > > So add an optional func-id to let smc mailbox driver could
> > > use smc SiP func id.
> > >
> > There is no end to conforming to protocols. Controller drivers should
> > be written having no particular client in mind.
> 
> If the func-id needs be passed from user, then the chan_id suggested
> by Sudeep should also be passed from user, not in mailbox driver.
>

Why ? I understand SMC may have 1-1 mapping from DT to channel id, but
that may not be true for other mailbox controller. The client is provided
with mbox handle in DT and the mbox APIs are used to get the controller
handle. The client just uses the same and when it calls say send_data,
controller understands which channel the handle is mapped to and
client need not have remote idea on channel id. If by user you mean
DT yes but as described as it's indirect.

> Jassi, so from your point, arm_smc_send_data just send a0 - a6
> to firmware, right?
>
> Sudeep, Andre, Florian,
>
> What's your suggestion? SCMI not support, do you have
> plan to add smc transport in SCMI?
>

I *wish* we could abstract all the transport protocol behind the mailbox
APIs and SCMI just deals with message protocol as it is a message protocol
specification.

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
