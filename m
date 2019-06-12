Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA4642D53
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cU9BJw0bi1dgfOX36hotMjFCxXdgm3SxwV750ZyIMD8=; b=TLGReW1wVr+8/p
	4D3Tsyu5AGWG8A0P6euOaWGjcACSr7e1zm6jcNy77bshYyUi4Q0chukMVPTSbXuuTXbIB+jiIMGiW
	NZsYfavfNd7z6EcfjN3OYoCxh58QrOu8T4bXktGd7+5Ai27YgdwXiJBXuQpabDznpkatjNk4otsVf
	HjYRqOh27neIUDGqanTOJCuIFyxOW9woM3vx9xAqy/uTLKMLbJ9GTcnvhXWwVzAIytK4NsyuiQlwD
	+wtyFKcGpM5Xg/p8d7lQFXYes1pbI5ZHuwPGmZmOwRApyshlXEIFrVMUwjl+UsI6ZaDJq+rkwnGF5
	P4kciX1aZ9PYAJ8SraNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb6tK-0001p0-H4; Wed, 12 Jun 2019 17:18:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb6t3-0001jJ-3v
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:18:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0BFEE28;
 Wed, 12 Jun 2019 10:18:10 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3DB5C3F246;
 Wed, 12 Jun 2019 10:18:08 -0700 (PDT)
Date: Wed, 12 Jun 2019 18:18:05 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Message-ID: <20190612181805.470f59d1@donnerap.cambridge.arm.com>
In-Reply-To: <AM0PR04MB4481617CD1DFA9C01470B38E88EC0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <866db682-785a-e0a6-b394-bb65c7a694c6@gmail.com>
 <20190606142056.68272dc0@donnerap.cambridge.arm.com>
 <AM0PR04MB448168C72F1D40C1B9BEB1F788130@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <AM0PR04MB4481617CD1DFA9C01470B38E88EC0@AM0PR04MB4481.eurprd04.prod.outlook.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_101813_249679_591CEDE6 
X-CRM114-Status: GOOD (  38.54  )
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

On Wed, 12 Jun 2019 12:59:04 +0000
Peng Fan <peng.fan@nxp.com> wrote:

Hi,

> > Subject: RE: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
> > 
> > Hi Andre,  
> > > Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
> > >
> > > On Mon, 3 Jun 2019 09:32:42 -0700
> > > Florian Fainelli <f.fainelli@gmail.com> wrote:
> > >
> > > Hi,
> > >  
> > > > On 6/3/19 1:30 AM, peng.fan@nxp.com wrote:  
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
> > > > > Modified from Andre Przywara's v2 patch
> > > > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2F
> > > > > lo
> > > > >  
> > >  
> > re.kernel.org%2Fpatchwork%2Fpatch%2F812999%2F&amp;data=02%7C01%  
> > > 7Cpen  
> > > > >  
> > >  
> > g.fan%40nxp.com%7C15c4180b8fe5405d3de808d6ea81d5f1%7C686ea1d3bc  
> > > 2b4c6  
> > > > >  
> > > fa92cd99c5c301635%7C0%7C0%7C636954240720601454&amp;sdata=1Cp
> > > WSgTH7lF  
> > > > > cBKxJnLeIDw%2FDAQJJO%2FVypV1LUU1BRQA%3D&amp;reserved=0
> > > > >
> > > > > Cc: Andre Przywara <andre.przywara@arm.com>
> > > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > > ---  
> > > >
> > > > [snip]
> > > >
> > > > +#define ARM_SMC_MBOX_USB_IRQ	BIT(1)
> > > >
> > > > That flag appears unused.
> > > >  
> > > > > +static int arm_smc_mbox_probe(struct platform_device *pdev) {
> > > > > +	struct device *dev = &pdev->dev;
> > > > > +	struct mbox_controller *mbox;
> > > > > +	struct arm_smc_chan_data *chan_data;
> > > > > +	const char *method;
> > > > > +	bool use_hvc = false;
> > > > > +	int ret, irq_count, i;
> > > > > +	u32 val;
> > > > > +
> > > > > +	if (!of_property_read_u32(dev->of_node, "arm,num-chans", &val)) {
> > > > > +		if (val < 1 || val > INT_MAX) {
> > > > > +			dev_err(dev, "invalid arm,num-chans value %u  
> > > of %pOFn\n", val,  
> > > > > +pdev->dev.of_node);  
> > >
> > > Isn't the of_node parameter redundant, because dev_err() already takes
> > > care of that?  
> > 
> > I'll remove that.
> >   
> > >  
> > > > > +			return -EINVAL;
> > > > > +		}
> > > > > +	}  
> > > >
> > > > Should not the upper bound check be done against UINT_MAX since val
> > > > is an unsigned int?  
> > >
> > > But wouldn't that be somewhat pointless, given that val is a u32? So I
> > > guess we could just condense this down to:
> > > ...
> > > 		if (!val) {
> > > ...  
> > 
> > make sense.
> >   
> > >  
> > > > > +
> > > > > +	irq_count = platform_irq_count(pdev);
> > > > > +	if (irq_count == -EPROBE_DEFER)
> > > > > +		return irq_count;
> > > > > +
> > > > > +	if (irq_count && irq_count != val) {
> > > > > +		dev_err(dev, "Interrupts not match num-chans\n");  
> > > >
> > > > Interrupts property does not match \"arm,num-chans\" would be more  
> > > correct.
> > >
> > > Given that interrupts are optional, do we have to rely on this?  
> > 
> > If there is interrupt property, the interrupts should match channel counts.
> > 
> > Do we actually  
> > > need one interrupt per channel?  
> > 
> > I thought about this, provide one interrupt for all channels.
> > But there is no good way to let interrupt handlers know which channel
> > triggers the interrupt. So I use one interrupt per channel.
> >   
> > >  
> > > > > +		return -EINVAL;
> > > > > +	}
> > > > > +
> > > > > +	if (!of_property_read_string(dev->of_node, "method", &method)) {
> > > > > +		if (!strcmp("hvc", method)) {
> > > > > +			use_hvc = true;
> > > > > +		} else if (!strcmp("smc", method)) {
> > > > > +			use_hvc = false;
> > > > > +		} else {
> > > > > +			dev_warn(dev, "invalid \"method\" property: %s\n",
> > > > > +				 method);
> > > > > +
> > > > > +			return -EINVAL;
> > > > > +		}  
> > > >
> > > > Having at least one method specified does not seem to be checked
> > > > later on in the code, so if I omitted to specify that property, we
> > > > would still register the mailbox and default to use "smc" since the
> > > > ARM_SMC_MBOX_USE_HVC flag would not be set, would not we want to  
> > > make  
> > > > sure that we do have in fact a valid method specified given the
> > > > binding documents that property as mandatory?
> > > >
> > > > [snip]
> > > >  
> > > > > +	mbox->txdone_poll = false;
> > > > > +	mbox->txdone_irq = false;
> > > > > +	mbox->ops = &arm_smc_mbox_chan_ops;
> > > > > +	mbox->dev = dev;
> > > > > +
> > > > > +	ret = mbox_controller_register(mbox);
> > > > > +	if (ret)
> > > > > +		return ret;
> > > > > +
> > > > > +	platform_set_drvdata(pdev, mbox);  
> > > >
> > > > I would move this above mbox_controller_register() that way there is
> > > > no room for race conditions in case another part of the driver
> > > > expects to have pdev->dev.drvdata set before the mbox controller is  
> > registered.  
> > > > Since you use devm_* functions for everything, you may even remove
> > > > that call.
> > > >
> > > > [snip]
> > > >  
> > > > > +#ifndef _LINUX_ARM_SMC_MAILBOX_H_ #define
> > > > > +_LINUX_ARM_SMC_MAILBOX_H_
> > > > > +
> > > > > +struct arm_smccc_mbox_cmd {
> > > > > +	unsigned long a0, a1, a2, a3, a4, a5, a6, a7; };  
> > > >
> > > > Do you expect this to be used by other in-kernel users? If so, it
> > > > might be good to document how a0 can have a special meaning and be
> > > > used as a substitute for the function_id?  
> > >
> > > I don't think we should really expose this outside of the driver. From
> > > a mailbox point of view this is just the payload, transported according to the  
> > SMCCC.  
> > > Also using "long" here sounds somewhat troublesome.  
> 
> Long on ARM64 is 64bit, and 32bit on ARM32, so I use long.
> Do you forsee any issues?

Yes, because having different sizes depending on the underlying instruction set asks for trouble when talking about protocols. If I compile a kernel with this driver once for arm(32) and once for arm64 and run it on the same machine with the same firmware, does that behave differently? Not saying it's impossible to handle, but we should make sure there is no ambiguity.

> > > Also, looking at the SMCCC, I only see six parameters in addition to
> > > the function identifier. Shall we reflect this here?  
> 
> a0 is used as function id, not no arm,func-ids provided in dts. a1-a7 are
> also passed to smc.

Yes, so those are *7* parameters on top of the function IDs, whereas the SMCCC only speaks of 6:
"When the SMC64/HVC64 convention is used, the SMC or HVC instruction takes up to six 64-bit arguments in
registers ..."
"When the SMC32/HVC32 convention is used, an SMC or HVC instruction takes a Function Identifier and up to six
32-bit register values as arguments, ..."

> If arm,func-ids is provided, a0 will be omitted just for consistency as above.
> 
> You mean write comments in the code for it?

I think we should prevent people expecting anything useful to happen with the seventh argument.

Cheers,
Andre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
