Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBDA56F59
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 19:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NVTPerCAntMeNSFlnc2xzz2qIyWXIXTUS0pvHjD3WO4=; b=PRBLZa0IaSiTc+
	TrCftsZuuAVJEAoL0dZrr6Zs5eVK12D2aQ60jdd1LrKMH7CZ/2epCp28JO+mRLc/u72Ufv85qE7NT
	Qrhrei4VQfqZ+75PKXUbkVxzqOv+h0yOJifDsJeFyuAhI2koj9T7ZNsSBf8TWLT/sZm7yVyBeKslV
	hbeoTwpCZbd5Vz28N4/9UD9JZ8+r4fShH3tBZ3FKoz2rl7gfRk66ENGl5WTkCfnjrdpNAZ0gy1Vq8
	MOfAwQa+EA+Wrv1XHZu9MWBUV7Yc6dxCDhv59Q8PvnnYTYo7eqyefFBlNVZW2o7925YBVD7ztQelq
	i5prZZG0O+9toJY3P4kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgBQv-0004It-PT; Wed, 26 Jun 2019 17:10:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgBQB-0004IC-Tu
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 17:09:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5AD402B;
 Wed, 26 Jun 2019 10:09:23 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6DAB53F718;
 Wed, 26 Jun 2019 10:09:21 -0700 (PDT)
Date: Wed, 26 Jun 2019 18:09:19 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Message-ID: <20190626170919.GC13572@e107155-lin>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <CABb+yY1wW-arSMQSYjrezXOZ0Ar_shAr78MOyUD3hBxXohWx3g@mail.gmail.com>
 <AM0PR04MB44813A4DE544E53EB7B6F02B88E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CABb+yY38MAZqVOhjyV+GByPvpFcTfKbNG1rJ8YDRd1vi1F4fqg@mail.gmail.com>
 <AM0PR04MB44814D3BD59033ECDDE3094C88E20@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <e49278ba-f734-e019-ab44-53afe558bd85@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e49278ba-f734-e019-ab44-53afe558bd85@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_100924_053432_A7F029FD 
X-CRM114-Status: GOOD (  20.37  )
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
 Devicetree List <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "festevam@gmail.com" <festevam@gmail.com>,
 Jassi Brar <jassisinghbrar@gmail.com>,
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

On Wed, Jun 26, 2019 at 09:44:06AM -0700, Florian Fainelli wrote:
> On 6/26/19 6:31 AM, Peng Fan wrote:
> >>> The firmware driver might not have func-id, such as SCMI/SCPI.
> >>> So add an optional func-id to let smc mailbox driver could
> >>> use smc SiP func id.
> >>>
> >> There is no end to conforming to protocols. Controller drivers should
> >> be written having no particular client in mind.
> >
> > If the func-id needs be passed from user, then the chan_id suggested
> > by Sudeep should also be passed from user, not in mailbox driver.
> >
> > Jassi, so from your point, arm_smc_send_data just send a0 - a6
> > to firmware, right?
> >
> > Sudeep, Andre, Florian,
> >
> > What's your suggestion? SCMI not support, do you have
> > plan to add smc transport in SCMI?
>
> On the platforms that I work with, we have taken the liberty of
> implementing SCMI in our monitor firmware because the other MCU we use
> for dynamic voltage and frequency scaling did not have enough memory to
> support that and we still had the ability to make that firmware be
> trusted enough we could give it power management responsibilities. I
> would certainly feel more comfortable if the SCMI specification was
> amended to indicate that the Agent could be such a software entity,
> still residing on the same host CPU as the Platform(s), but if not,
> that's fine.
>

That's completely legal and there's nothing in the specification that
prohibits. I understand it's not explicitly not mentioned and I have
been trying to get such things clarified. But since it's main focus
is on the message protocol, the clarity on transport mechanism is very
thin and there's hesitation to add more details under the impression
that it may restrict the usage.

But as I mentioned, I understand what you need there :)

> This has lead us to implement a mailbox driver that uses a proprietary
> SMC call for the P2A path ("tx" channel) and the return being done via
> either that same SMC or through SGI. You can take a look at it in our
> downstream tree here actually:
>
> https://github.com/Broadcom/stblinux-4.9/blob/master/linux/drivers/mailbox/brcmstb-mailbox.c
>

Just curious, I see it's fast call and why do you still depend on
interrupt to indicate completion of the message. Will the return from
SMC not suffice ? Sorry if I am missing something obvious.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
