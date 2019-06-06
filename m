Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9E137509
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 15:21:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMv58L9IKU49PuybX90rhTZ0Oan7MZxr+MBf1lUBW60=; b=ktPhg7blO7arv9
	VU2RblSUMi9KYb73bYQ4yiBNVqKCHmlXZLSELJQ6bcHHT8X1JCyAIAd51kwadtnQ+NhJc97aY+/Yt
	EvhZ0jvOYd6AeChk/p5KuRHHGvEHb0fEXnBP+qoH+fZP9YZKhMr96/6JeWk37My/EG49lqwx2PTHG
	c9cs2aqRPEzR8U6+gyTR/5ZIsnD7UJf146csOlzOKu5ayp/oflIPSfnLLKHHhkGkafOXcPBU7qozA
	VgHHsS+Th3TF8yrrMotSZusqYZKV9AUo3VShlSHhl3PNsZ4Bqt1kQrhVBeiu6Kyb1ZfMw2X8r07n5
	IpqlPLUL7YsAxgiyA9bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYsKS-00056B-Vk; Thu, 06 Jun 2019 13:21:17 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYsKL-00055S-Uc
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 13:21:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 226E3374;
 Thu,  6 Jun 2019 06:21:07 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B99BE3F5AF;
 Thu,  6 Jun 2019 06:21:04 -0700 (PDT)
Date: Thu, 6 Jun 2019 14:20:56 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Message-ID: <20190606142056.68272dc0@donnerap.cambridge.arm.com>
In-Reply-To: <866db682-785a-e0a6-b394-bb65c7a694c6@gmail.com>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
 <866db682-785a-e0a6-b394-bb65c7a694c6@gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_062109_997447_721FB6AF 
X-CRM114-Status: GOOD (  28.85  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, peng.fan@nxp.com,
 festevam@gmail.com, jassisinghbrar@gmail.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 sudeep.holla@arm.com, van.freenix@gmail.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 3 Jun 2019 09:32:42 -0700
Florian Fainelli <f.fainelli@gmail.com> wrote:

Hi,

> On 6/3/19 1:30 AM, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> > 
> > This mailbox driver implements a mailbox which signals transmitted data
> > via an ARM smc (secure monitor call) instruction. The mailbox receiver
> > is implemented in firmware and can synchronously return data when it
> > returns execution to the non-secure world again.
> > An asynchronous receive path is not implemented.
> > This allows the usage of a mailbox to trigger firmware actions on SoCs
> > which either don't have a separate management processor or on which such
> > a core is not available. A user of this mailbox could be the SCP
> > interface.
> > 
> > Modified from Andre Przywara's v2 patch
> > https://lore.kernel.org/patchwork/patch/812999/
> > 
> > Cc: Andre Przywara <andre.przywara@arm.com>
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---  
> 
> [snip]
> 
> +#define ARM_SMC_MBOX_USB_IRQ	BIT(1)
> 
> That flag appears unused.
> 
> > +static int arm_smc_mbox_probe(struct platform_device *pdev)
> > +{
> > +	struct device *dev = &pdev->dev;
> > +	struct mbox_controller *mbox;
> > +	struct arm_smc_chan_data *chan_data;
> > +	const char *method;
> > +	bool use_hvc = false;
> > +	int ret, irq_count, i;
> > +	u32 val;
> > +
> > +	if (!of_property_read_u32(dev->of_node, "arm,num-chans", &val)) {
> > +		if (val < 1 || val > INT_MAX) {
> > +			dev_err(dev, "invalid arm,num-chans value %u of %pOFn\n", val, pdev->dev.of_node);

Isn't the of_node parameter redundant, because dev_err() already takes care of that?

> > +			return -EINVAL;
> > +		}
> > +	}  
> 
> Should not the upper bound check be done against UINT_MAX since val is
> an unsigned int?

But wouldn't that be somewhat pointless, given that val is a u32? So I
guess we could just condense this down to:
...
		if (!val) {
...

> > +
> > +	irq_count = platform_irq_count(pdev);
> > +	if (irq_count == -EPROBE_DEFER)
> > +		return irq_count;
> > +
> > +	if (irq_count && irq_count != val) {
> > +		dev_err(dev, "Interrupts not match num-chans\n");  
> 
> Interrupts property does not match \"arm,num-chans\" would be more correct.

Given that interrupts are optional, do we have to rely on this? Do we
actually need one interrupt per channel?

> > +		return -EINVAL;
> > +	}
> > +
> > +	if (!of_property_read_string(dev->of_node, "method", &method)) {
> > +		if (!strcmp("hvc", method)) {
> > +			use_hvc = true;
> > +		} else if (!strcmp("smc", method)) {
> > +			use_hvc = false;
> > +		} else {
> > +			dev_warn(dev, "invalid \"method\" property: %s\n",
> > +				 method);
> > +
> > +			return -EINVAL;
> > +		}  
> 
> Having at least one method specified does not seem to be checked later
> on in the code, so if I omitted to specify that property, we would still
> register the mailbox and default to use "smc" since the
> ARM_SMC_MBOX_USE_HVC flag would not be set, would not we want to make
> sure that we do have in fact a valid method specified given the binding
> documents that property as mandatory?
> 
> [snip]
> 
> > +	mbox->txdone_poll = false;
> > +	mbox->txdone_irq = false;
> > +	mbox->ops = &arm_smc_mbox_chan_ops;
> > +	mbox->dev = dev;
> > +
> > +	ret = mbox_controller_register(mbox);
> > +	if (ret)
> > +		return ret;
> > +
> > +	platform_set_drvdata(pdev, mbox);  
> 
> I would move this above mbox_controller_register() that way there is no
> room for race conditions in case another part of the driver expects to
> have pdev->dev.drvdata set before the mbox controller is registered.
> Since you use devm_* functions for everything, you may even remove that
> call.
> 
> [snip]
> 
> > +#ifndef _LINUX_ARM_SMC_MAILBOX_H_
> > +#define _LINUX_ARM_SMC_MAILBOX_H_
> > +
> > +struct arm_smccc_mbox_cmd {
> > +	unsigned long a0, a1, a2, a3, a4, a5, a6, a7;
> > +};  
> 
> Do you expect this to be used by other in-kernel users? If so, it might
> be good to document how a0 can have a special meaning and be used as a
> substitute for the function_id?

I don't think we should really expose this outside of the driver. From a mailbox point of view this is just the payload, transported according to the SMCCC. Also using "long" here sounds somewhat troublesome.

Also, looking at the SMCCC, I only see six parameters in addition to the function identifier. Shall we reflect this here?

Cheers,
Andre.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
