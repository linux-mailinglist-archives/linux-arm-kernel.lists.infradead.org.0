Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAD3B60F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 12:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bRGjc6pwYxu4EDCoPUwMzrt2pK1+A1qEhDRFgxOwBQ=; b=TdDRsw80pTYfqr
	5YJ6iB2qQ24UHy2LBTtOu82ZIMcDPcuODgCLZ3T4Ra3y722qvy9uiNgKqcvNdlkXjobA6H3j4k4gn
	g6dUSw8F89YtPGfh8SGLbiioQPFtFRSnhYQp5RL1FweUVh/CHwA3mjSmGVta6qOfboJc3PuriuD4F
	rCeT5Ma98X8U6FbpZ2QQEm21r/xzLMeI6k0m+RjJg9MSIVS2B83AeoAaXa2ao0lm/8nQ2szh1Z6gY
	TiZfLiMBaSstvU7mUHqvGlfUOITS/DzkXhvsMB6GRRMJLK6KXhhqpDe6Dd3dSK2uJGQBNSKIp1OLw
	d5eUsSRi57Ld8hw9LzRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAWlb-0001Fz-6X; Wed, 18 Sep 2019 10:00:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAWlO-0001FV-Eq
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 10:00:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90832337;
 Wed, 18 Sep 2019 03:00:41 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 397723F59C;
 Wed, 18 Sep 2019 03:00:40 -0700 (PDT)
Date: Wed, 18 Sep 2019 11:00:37 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V6 2/2] mailbox: introduce ARM SMC based mailbox
Message-ID: <20190918110037.4edefb2f@donnerap.cambridge.arm.com>
In-Reply-To: <AM0PR04MB44813D62FF7E6762BB17460E888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-3-git-send-email-peng.fan@nxp.com>
 <20190917183856.2342beed@donnerap.cambridge.arm.com>
 <AM0PR04MB44813D62FF7E6762BB17460E888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_030042_589767_15CCF0A2 
X-CRM114-Status: GOOD (  40.28  )
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
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Sep 2019 09:09:25 +0000
Peng Fan <peng.fan@nxp.com> wrote:

Hi,

> > Subject: Re: [PATCH V6 2/2] mailbox: introduce ARM SMC based mailbox
> > 
> > On Mon, 16 Sep 2019 09:44:41 +0000
> > Peng Fan <peng.fan@nxp.com> wrote:
> > 
> > Hi,
> > 
> > looks quite good now, some smaller comments below.
> > I think the only thing left is the "function ID passed by the client" topic.
> > 
> > Have you tried using this interface using hvc, for instance in KVM or Xen? For  
> 
> No. I do not have that implementation in hypervisor.

OK, I was thinking about this, because this comes up from to time in Xen, for instance.
It would allow to pass exactly one "virtual" clock to a guest (using SCMI), which Xen could pass on to Dom0, which would translate this to an the actual clock.

I was just worried that having just *one* example implementation might be too little to have a proper generic interface.
I started to update my Allwinner ATF mailbox implementation (which was using SCPI), I will let you know when I managed to eventually test this.

> > instance to provide access to a clock for a passed-through platform device?
> > Another use case that pops up from time to time is GPIO for guests. This
> > sounds like a use case for using the register interface, also we could use the
> > hvc return value.
> >   
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
> > n%40nxp.com%7C58a1ed4078264d14958f08d73b95ed7e%7C686ea1d3bc2b
> > 4c6fa92cd  
> > >  
> > 99c5c301635%7C0%7C1%7C637043387484474825&amp;sdata=Cp1zlhlpQbg
> > BsWu9ZDV  
> > > RKkXmd6kvUR%2BtPO7EPR7YLpA%3D&amp;reserved=0
> > >
> > > Cc: Andre Przywara <andre.przywara@arm.com>
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >  drivers/mailbox/Kconfig           |   7 ++
> > >  drivers/mailbox/Makefile          |   2 +
> > >  drivers/mailbox/arm-smc-mailbox.c | 167
> > > ++++++++++++++++++++++++++++++++++++++
> > >  3 files changed, 176 insertions(+)
> > >  create mode 100644 drivers/mailbox/arm-smc-mailbox.c
> > >
> > > diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig index
> > > ab4eb750bbdd..7707ee26251a 100644
> > > --- a/drivers/mailbox/Kconfig
> > > +++ b/drivers/mailbox/Kconfig
> > > @@ -16,6 +16,13 @@ config ARM_MHU
> > >  	  The controller has 3 mailbox channels, the last of which can be
> > >  	  used in Secure mode only.
> > >
> > > +config ARM_SMC_MBOX
> > > +	tristate "Generic ARM smc mailbox"
> > > +	depends on OF && HAVE_ARM_SMCCC
> > > +	help
> > > +	  Generic mailbox driver which uses ARM smc calls to call into
> > > +	  firmware for triggering mailboxes.
> > > +
> > >  config IMX_MBOX
> > >  	tristate "i.MX Mailbox"
> > >  	depends on ARCH_MXC || COMPILE_TEST
> > > diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile index
> > > c22fad6f696b..93918a84c91b 100644
> > > --- a/drivers/mailbox/Makefile
> > > +++ b/drivers/mailbox/Makefile
> > > @@ -7,6 +7,8 @@ obj-$(CONFIG_MAILBOX_TEST)	+= mailbox-test.o
> > >
> > >  obj-$(CONFIG_ARM_MHU)	+= arm_mhu.o
> > >
> > > +obj-$(CONFIG_ARM_SMC_MBOX)	+= arm-smc-mailbox.o
> > > +
> > >  obj-$(CONFIG_IMX_MBOX)	+= imx-mailbox.o
> > >
> > >  obj-$(CONFIG_ARMADA_37XX_RWTM_MBOX)	+=  
> > armada-37xx-rwtm-mailbox.o  
> > > diff --git a/drivers/mailbox/arm-smc-mailbox.c
> > > b/drivers/mailbox/arm-smc-mailbox.c
> > > new file mode 100644
> > > index 000000000000..c84aef39c8d9
> > > --- /dev/null
> > > +++ b/drivers/mailbox/arm-smc-mailbox.c
> > > @@ -0,0 +1,167 @@
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
> > > +#include <linux/mailbox_controller.h> #include <linux/module.h>
> > > +#include <linux/platform_device.h>
> > > +
> > > +struct arm_smc_chan_data {
> > > +	unsigned int function_id;
> > > +};
> > > +
> > > +struct arm_smccc_mbox_cmd {
> > > +	unsigned int function_id;
> > > +	union {
> > > +		unsigned int args_smccc32[6];
> > > +		unsigned long args_smccc64[6];  
> > 
> > Shouldn't this be u32 and u64 here, as the data type has this explicit length in
> > the SMCCC?  
> 
> ok
> 
> >   
> > > +	};
> > > +};  
> > 
> > If this is the data structure that this mailbox controller uses, I would expect
> > this to be documented somewhere, or even exported.  
> 
> Export this structure in include/linux/mailbox/smc-mailbox.h?

For instance, even though I am not sure this is really desired or helpful, since we expect a generic mailbox client (the SCPI or SCMI driver) to deal with that mailbox.

But at least the expected format should be documented, which could just be in writing, not necessarily in code.

> > And again, I don't like the idea of having the function ID in here.  
> 
> You mean function_id in arm_smccc_mbox_cmd is not good?

Yes, this should not be something which mailbox clients are able to choose arbitrarily (see my other email).
 
> >   
> > > +
> > > +typedef unsigned long (smc_mbox_fn)(unsigned int, unsigned long,
> > > +				    unsigned long, unsigned long,
> > > +				    unsigned long, unsigned long,
> > > +				    unsigned long);
> > > +static smc_mbox_fn *invoke_smc_mbox_fn;
> > > +
> > > +static int arm_smc_send_data(struct mbox_chan *link, void *data) {
> > > +	struct arm_smc_chan_data *chan_data = link->con_priv;
> > > +	struct arm_smccc_mbox_cmd *cmd = data;
> > > +	unsigned long ret;
> > > +	u32 function_id;
> > > +
> > > +	function_id = chan_data->function_id;
> > > +	if (!function_id)
> > > +		function_id = cmd->function_id;
> > > +
> > > +	if (function_id & BIT(30)) {  
> > 
> > 	if (ARM_SMCCC_IS_64(function_id)) {  
> 
> ok
> 
> >   
> > > +		ret = invoke_smc_mbox_fn(function_id, cmd->args_smccc64[0],
> > > +					 cmd->args_smccc64[1],
> > > +					 cmd->args_smccc64[2],
> > > +					 cmd->args_smccc64[3],
> > > +					 cmd->args_smccc64[4],
> > > +					 cmd->args_smccc64[5]);
> > > +	} else {
> > > +		ret = invoke_smc_mbox_fn(function_id, cmd->args_smccc32[0],
> > > +					 cmd->args_smccc32[1],
> > > +					 cmd->args_smccc32[2],
> > > +					 cmd->args_smccc32[3],
> > > +					 cmd->args_smccc32[4],
> > > +					 cmd->args_smccc32[5]);
> > > +	}
> > > +
> > > +	mbox_chan_received_data(link, (void *)ret);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static unsigned long __invoke_fn_hvc(unsigned int function_id,
> > > +				     unsigned long arg0, unsigned long arg1,
> > > +				     unsigned long arg2, unsigned long arg3,
> > > +				     unsigned long arg4, unsigned long arg5) {
> > > +	struct arm_smccc_res res;
> > > +
> > > +	arm_smccc_hvc(function_id, arg0, arg1, arg2, arg3, arg4,
> > > +		      arg5, 0, &res);
> > > +	return res.a0;
> > > +}
> > > +
> > > +static unsigned long __invoke_fn_smc(unsigned int function_id,
> > > +				     unsigned long arg0, unsigned long arg1,
> > > +				     unsigned long arg2, unsigned long arg3,
> > > +				     unsigned long arg4, unsigned long arg5) {
> > > +	struct arm_smccc_res res;
> > > +
> > > +	arm_smccc_smc(function_id, arg0, arg1, arg2, arg3, arg4,
> > > +		      arg5, 0, &res);
> > > +	return res.a0;
> > > +}
> > > +
> > > +static const struct mbox_chan_ops arm_smc_mbox_chan_ops = {
> > > +	.send_data	= arm_smc_send_data,
> > > +};
> > > +
> > > +static int arm_smc_mbox_probe(struct platform_device *pdev) {
> > > +	struct device *dev = &pdev->dev;
> > > +	struct mbox_controller *mbox;
> > > +	struct arm_smc_chan_data *chan_data;
> > > +	int ret;
> > > +	u32 function_id = 0;
> > > +
> > > +	if (of_device_is_compatible(dev->of_node, "arm,smc-mbox"))
> > > +		invoke_smc_mbox_fn = __invoke_fn_smc;
> > > +	else
> > > +		invoke_smc_mbox_fn = __invoke_fn_hvc;
> > > +
> > > +	mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
> > > +	if (!mbox)
> > > +		return -ENOMEM;
> > > +
> > > +	mbox->num_chans = 1;
> > > +	mbox->chans = devm_kzalloc(dev, sizeof(*mbox->chans), GFP_KERNEL);
> > > +	if (!mbox->chans)
> > > +		return -ENOMEM;
> > > +
> > > +	chan_data = devm_kzalloc(dev, sizeof(*chan_data), GFP_KERNEL);
> > > +	if (!chan_data)
> > > +		return -ENOMEM;
> > > +
> > > +	of_property_read_u32(dev->of_node, "arm,func-id", &function_id);
> > > +	chan_data->function_id = function_id;
> > > +
> > > +	mbox->chans->con_priv = chan_data;
> > > +
> > > +	mbox->txdone_poll = false;
> > > +	mbox->txdone_irq = false;  
> > 
> > Don't we need to provide something to confirm reception to the client? In our
> > case we can set this as soon as the smc/hvc returns.  
> 
> As smc/hvc returns, it means the transfer is over and receive is done.

I understand that, but was wondering if the Linux mailbox framework knows about that? In my older version I was calling mbox_chan_received_data() after the smc call returned.
Also there is mbox_chan_txdone() with which a controller driver can signal TX completion explicitly.

Cheers,
Andre.

> > Cheers,
> > Andre.
> >   
> > > +	mbox->ops = &arm_smc_mbox_chan_ops;
> > > +	mbox->dev = dev;
> > > +
> > > +	platform_set_drvdata(pdev, mbox);
> > > +
> > > +	ret = devm_mbox_controller_register(dev, mbox);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	dev_info(dev, "ARM SMC mailbox enabled.\n");
> > > +
> > > +	return ret;
> > > +}
> > > +
> > > +static int arm_smc_mbox_remove(struct platform_device *pdev) {
> > > +	struct mbox_controller *mbox = platform_get_drvdata(pdev);
> > > +
> > > +	mbox_controller_unregister(mbox);
> > > +	return 0;
> > > +}
> > > +
> > > +static const struct of_device_id arm_smc_mbox_of_match[] = {
> > > +	{ .compatible = "arm,smc-mbox", },
> > > +	{ .compatible = "arm,hvc-mbox", },
> > > +	{},
> > > +};
> > > +MODULE_DEVICE_TABLE(of, arm_smc_mbox_of_match);
> > > +
> > > +static struct platform_driver arm_smc_mbox_driver = {
> > > +	.driver = {
> > > +		.name = "arm-smc-mbox",
> > > +		.of_match_table = arm_smc_mbox_of_match,
> > > +	},
> > > +	.probe		= arm_smc_mbox_probe,
> > > +	.remove		= arm_smc_mbox_remove,
> > > +};
> > > +module_platform_driver(arm_smc_mbox_driver);
> > > +
> > > +MODULE_AUTHOR("Peng Fan <peng.fan@nxp.com>");
> > > +MODULE_DESCRIPTION("Generic ARM smc mailbox driver");
> > > +MODULE_LICENSE("GPL v2");  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
