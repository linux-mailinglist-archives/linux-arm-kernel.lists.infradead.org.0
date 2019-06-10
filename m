Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C97A83B2A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+4TzRq1nwjfYAp8AUUJwipWdPDEmft2b+RM8lZKivA=; b=OvLCGH+AANXGtq
	oL8KduAV4NlcDWmGgdK/obP68/EjnWtK22gUQf3sTo0GlUd0F5/2rZkDethM10Bakifz87HQLRCoZ
	fCCiIgNLkheiUYeZAVOImuJm2DdJBEkf2qg9xeRnlea2KcS7EWtVCDIBIksUdjJ9VotglHBxhPCwl
	nkKylqMApcd5BHrTdjap95OqcFm0v1tDAXheAXniZy3rgKrTjqsdODNceNNpvkV7WEaV7d1MIP7Yo
	lbXlfDDsjAzt/V2cI6krTWD/AdrVClLhokO1yBdOLbpKSrqhYCTZVaB6gNnyXfqHUkt4BPXhVpY6m
	Pc9puNsB1cp6CYlzxF8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haH6o-0001KP-Cq; Mon, 10 Jun 2019 10:00:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haH6U-0001JY-Lh
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:00:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6F84C344;
 Mon, 10 Jun 2019 03:00:37 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B2E13F246;
 Mon, 10 Jun 2019 03:02:17 -0700 (PDT)
Date: Mon, 10 Jun 2019 11:00:33 +0100
From: Andre Przywara <andre.przywara@foss.arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Message-ID: <20190610110033.28d21d21@donnerap.cambridge.arm.com>
In-Reply-To: <AM0PR04MB448168C72F1D40C1B9BEB1F788130@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <866db682-785a-e0a6-b394-bb65c7a694c6@gmail.com>
 <20190606142056.68272dc0@donnerap.cambridge.arm.com>
 <AM0PR04MB448168C72F1D40C1B9BEB1F788130@AM0PR04MB4481.eurprd04.prod.outlook.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_030038_755068_54561F64 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Jun 2019 01:32:49 +0000
Peng Fan <peng.fan@nxp.com> wrote:

Hi Peng,

[ ... ]

> > > > +
> > > > +	irq_count = platform_irq_count(pdev);
> > > > +	if (irq_count == -EPROBE_DEFER)
> > > > +		return irq_count;
> > > > +
> > > > +	if (irq_count && irq_count != val) {
> > > > +		dev_err(dev, "Interrupts not match num-chans\n");  
> > >
> > > Interrupts property does not match \"arm,num-chans\" would be more  
> > correct.
> > 
> > Given that interrupts are optional, do we have to rely on this?   
> 
> If there is interrupt property, the interrupts should match channel counts.
> 
> Do we actually
> > need one interrupt per channel?  
> 
> I thought about this, provide one interrupt for all channels.
> But there is no good way to let interrupt handlers know which
> channel triggers the interrupt. So I use one interrupt per channel.

Yeah, I was wondering about this as well. Seems like we need this indeed.
Just sounds wasteful, but I guess we don't expect many channels anyway,
normally.

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
