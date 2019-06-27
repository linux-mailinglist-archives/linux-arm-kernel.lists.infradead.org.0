Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F57587FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 19:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkHnjSCr8ASkTMag8TFjFGx8zgSWJFZ78zMuQ1dOo94=; b=hhGKWgh6GiRPP0
	YNH/Qys3RW/QmvwmSTSwDjPkxlOGdMWUkaglzxAZulJs83fpwHmS707WcUHMhUGSyNbK+uBF0pp+p
	enOu8PwkEsA46T0Rmt5FmlLQ5SZ14PiB+d1ZbnUtu8aYnmkItPN4Lv6+zs7eBz5c2n6+VnkqUn3ak
	EFjrsb6Rdo46or8how7UCDqvxOfVeHkKXAT524V61lvHZtZ3nN6dO23oZ6nC9hZ6p+J9mwhMjwQFR
	8eho1d5FQsJP55auZ+A8H2W+oS6gkEPoyTnq9cbK6O1UaqGQmapRyhgZJtnbEh5M94zqTqB7SsJZr
	t/NkvCCNzV8jqj/vtVZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXsy-000736-2r; Thu, 27 Jun 2019 17:08:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXsB-00070X-6D
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 17:07:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 69900360;
 Thu, 27 Jun 2019 10:07:43 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 815AA3F718;
 Thu, 27 Jun 2019 10:07:41 -0700 (PDT)
Date: Thu, 27 Jun 2019 18:07:35 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Message-ID: <20190627170735.GA27591@e107155-lin>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <CABb+yY1wW-arSMQSYjrezXOZ0Ar_shAr78MOyUD3hBxXohWx3g@mail.gmail.com>
 <AM0PR04MB44813A4DE544E53EB7B6F02B88E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY38MAZqVOhjyV+GByPvpFcTfKbNG1rJ8YDRd1vi1F4fqg@mail.gmail.com>
 <AM0PR04MB44814D3BD59033ECDDE3094C88E20@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <e49278ba-f734-e019-ab44-53afe558bd85@gmail.com>
 <CABb+yY2B_bGqZhd3HRm2qOwGNXG8UYvRo0_uBmwGbx_1gA-vfA@mail.gmail.com>
 <20190627090903.GD13572@e107155-lin>
 <CABb+yY1aVbKfuqX=GvTzyjkgRXB3DXLvgjZARGn8k8m2R2vSqA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY1aVbKfuqX=GvTzyjkgRXB3DXLvgjZARGn8k8m2R2vSqA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_100747_325993_FC032870 
X-CRM114-Status: GOOD (  28.96  )
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

On Thu, Jun 27, 2019 at 10:32:27AM -0500, Jassi Brar wrote:
> On Thu, Jun 27, 2019 at 4:09 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Wed, Jun 26, 2019 at 01:27:41PM -0500, Jassi Brar wrote:
> > > On Wed, Jun 26, 2019 at 11:44 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
> > > >
> > > > On 6/26/19 6:31 AM, Peng Fan wrote:
> > > > >>> The firmware driver might not have func-id, such as SCMI/SCPI.
> > > > >>> So add an optional func-id to let smc mailbox driver could
> > > > >>> use smc SiP func id.
> > > > >>>
> > > > >> There is no end to conforming to protocols. Controller drivers should
> > > > >> be written having no particular client in mind.
> > > > >
> > > > > If the func-id needs be passed from user, then the chan_id suggested
> > > > > by Sudeep should also be passed from user, not in mailbox driver.
> > > > >
> > > > > Jassi, so from your point, arm_smc_send_data just send a0 - a6
> > > > > to firmware, right?
> > > > >
> > > > > Sudeep, Andre, Florian,
> > > > >
> > > > > What's your suggestion? SCMI not support, do you have
> > > > > plan to add smc transport in SCMI?
> > > >
> > > > On the platforms that I work with, we have taken the liberty of
> > > > implementing SCMI in our monitor firmware because the other MCU we use
> > > > for dynamic voltage and frequency scaling did not have enough memory to
> > > > support that and we still had the ability to make that firmware be
> > > > trusted enough we could give it power management responsibilities. I
> > > > would certainly feel more comfortable if the SCMI specification was
> > > > amended to indicate that the Agent could be such a software entity,
> > > > still residing on the same host CPU as the Platform(s), but if not,
> > > > that's fine.
> > > >
> > > > This has lead us to implement a mailbox driver that uses a proprietary
> > > > SMC call for the P2A path ("tx" channel) and the return being done via
> > > > either that same SMC or through SGI. You can take a look at it in our
> > > > downstream tree here actually:
> > > >
> > > > https://github.com/Broadcom/stblinux-4.9/blob/master/linux/drivers/mailbox/brcmstb-mailbox.c
> > > >
> > > > If we can get rid of our own driver and uses a standard SMC based
> > > > mailbox driver that supports our use case that involves interrupts (we
> > > > can always change their kind without our firmware/boot loader since FDT
> > > > is generated from that component), that would be great.
> > > >
> > > static irqreturn_t brcm_isr(void)
> > > {
> > >          mbox_chan_received_data(&chans[0], NULL);
> > >          return IRQ_HANDLED;
> > > }
> > >
> > > Sorry, I fail to understand why the irq can't be moved inside the
> > > client driver itself? There can't be more cost to it and there
> > > definitely is no functionality lost.
> >
> > What if there are multiple clients ?
> >
> There is a flag IRQF_SHARED for such situations.

Indeed, we can use it.

> (good to see you considering multiple clients per channel as a legit scenario)
>

Not single channel, but single IRQ shared by multiple channels.
We can have multiple SMC based mailbox but one shared IRQ.

> > And I assume you are referring to case like this where IRQ is not tied
> > to the mailbox IP.
> >
> Yes, and that is the reason the irq should not be manageid by the mailbox driver.

Thanks for confirmation.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
