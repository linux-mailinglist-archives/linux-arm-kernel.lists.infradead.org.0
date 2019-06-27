Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A6C57EFE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 11:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kFTvtsaQz7qjX9BRzNC5TYWaaP+k36pldeD113vQ6QQ=; b=tXruyIpwR8CEeZ
	RKQK6zZ59rSYpIYKCCwKvNibdhdy2HxexP0n8NYF+c9NuprFbN9yeEoztjWo2bqiWJ/PsyWlOTTeF
	OI/l5gBnaeeWCIKJYhkK3uP+TT+gNurLO+QQ9+3/KwXh7zbMJjmmN63suj5LaDb1LtbyJlieNyGzX
	L3eFjZOtnU9eupo0hB+jRGd3YmovFws3JTJRnfUjGYi2BNCYRkD64xHlwFwoknX5OJxCz9nPc6h0i
	N2pTNw0iTtrdgokQWlZnRPrmNOyGpmGa1lhcebgbJYmS2s8Tp3SW4x7Gkk2bZCnjTNTtGK1hKuIq1
	xXEB4orc4DDsDs+LyPDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgQPb-0002ra-HE; Thu, 27 Jun 2019 09:09:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgQOy-0002qz-Iy
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 09:09:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0B772B;
 Thu, 27 Jun 2019 02:09:07 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 06B373F718;
 Thu, 27 Jun 2019 02:09:05 -0700 (PDT)
Date: Thu, 27 Jun 2019 10:09:03 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Message-ID: <20190627090903.GD13572@e107155-lin>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <CABb+yY1wW-arSMQSYjrezXOZ0Ar_shAr78MOyUD3hBxXohWx3g@mail.gmail.com>
 <AM0PR04MB44813A4DE544E53EB7B6F02B88E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY38MAZqVOhjyV+GByPvpFcTfKbNG1rJ8YDRd1vi1F4fqg@mail.gmail.com>
 <AM0PR04MB44814D3BD59033ECDDE3094C88E20@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <e49278ba-f734-e019-ab44-53afe558bd85@gmail.com>
 <CABb+yY2B_bGqZhd3HRm2qOwGNXG8UYvRo0_uBmwGbx_1gA-vfA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY2B_bGqZhd3HRm2qOwGNXG8UYvRo0_uBmwGbx_1gA-vfA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_020908_720395_60214B70 
X-CRM114-Status: GOOD (  24.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>, ",
 Sascha Hauer" <kernel@pengutronix.de>, Andre Przywara <andre.przywara@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 01:27:41PM -0500, Jassi Brar wrote:
> On Wed, Jun 26, 2019 at 11:44 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
> >
> > On 6/26/19 6:31 AM, Peng Fan wrote:
> > >>> The firmware driver might not have func-id, such as SCMI/SCPI.
> > >>> So add an optional func-id to let smc mailbox driver could
> > >>> use smc SiP func id.
> > >>>
> > >> There is no end to conforming to protocols. Controller drivers should
> > >> be written having no particular client in mind.
> > >
> > > If the func-id needs be passed from user, then the chan_id suggested
> > > by Sudeep should also be passed from user, not in mailbox driver.
> > >
> > > Jassi, so from your point, arm_smc_send_data just send a0 - a6
> > > to firmware, right?
> > >
> > > Sudeep, Andre, Florian,
> > >
> > > What's your suggestion? SCMI not support, do you have
> > > plan to add smc transport in SCMI?
> >
> > On the platforms that I work with, we have taken the liberty of
> > implementing SCMI in our monitor firmware because the other MCU we use
> > for dynamic voltage and frequency scaling did not have enough memory to
> > support that and we still had the ability to make that firmware be
> > trusted enough we could give it power management responsibilities. I
> > would certainly feel more comfortable if the SCMI specification was
> > amended to indicate that the Agent could be such a software entity,
> > still residing on the same host CPU as the Platform(s), but if not,
> > that's fine.
> >
> > This has lead us to implement a mailbox driver that uses a proprietary
> > SMC call for the P2A path ("tx" channel) and the return being done via
> > either that same SMC or through SGI. You can take a look at it in our
> > downstream tree here actually:
> >
> > https://github.com/Broadcom/stblinux-4.9/blob/master/linux/drivers/mailbox/brcmstb-mailbox.c
> >
> > If we can get rid of our own driver and uses a standard SMC based
> > mailbox driver that supports our use case that involves interrupts (we
> > can always change their kind without our firmware/boot loader since FDT
> > is generated from that component), that would be great.
> >
> static irqreturn_t brcm_isr(void)
> {
>          mbox_chan_received_data(&chans[0], NULL);
>          return IRQ_HANDLED;
> }
> 
> Sorry, I fail to understand why the irq can't be moved inside the
> client driver itself? There can't be more cost to it and there
> definitely is no functionality lost.

What if there are multiple clients ?
And I assume you are referring to case like this where IRQ is not tied
to the mailbox IP.

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
