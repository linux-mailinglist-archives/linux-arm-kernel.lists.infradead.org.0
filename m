Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AD9B653C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 15:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wiO2Ib3Bzhff583tICIRGP8lwmGeocrdTZyulReo6LE=; b=rnxRKX2bn5vF+b
	SHlHPQ2qIzMK2HTB2x0elqWr6jsmigGw+CcVJKIGQXVW6SgPlgckL48UaC9efiHydXg/znW42RfOF
	zFQnWUYLzVCi1/YjVARpBqgDIDgvAqmK97Ln0HMLG1v4qqLhiHWRwbZxKLMNyzIF+XeQTwgd1vK9k
	voadbvGME01deHa5M52hsDB+QNZTT7bKoHwUQZJDN99/J76kkndvJ4wUFbfPsLaealjxnKVdQmOY1
	z/503l5FH2/GblF1QcNl25Mcmz4mLftplywwFBqvumv3FfF7aza72ExYeuWqz7QPYOX7Fwghc/d6l
	FPC3ZzERXkhDYln/dMlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAaTq-0004OW-NG; Wed, 18 Sep 2019 13:58:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAaTe-0004NT-12
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 13:58:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 331341000;
 Wed, 18 Sep 2019 06:58:37 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CFDE23F67D;
 Wed, 18 Sep 2019 06:58:35 -0700 (PDT)
Date: Wed, 18 Sep 2019 14:58:32 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH V6 2/2] mailbox: introduce ARM SMC based mailbox
Message-ID: <20190918145832.0bb72e16@donnerap.cambridge.arm.com>
In-Reply-To: <CABb+yY2G8s9gV8Pu+f__8-bubjCJsVQrQikbVMZXmpTwSMBxiQ@mail.gmail.com>
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-3-git-send-email-peng.fan@nxp.com>
 <20190917183856.2342beed@donnerap.cambridge.arm.com>
 <AM0PR04MB44813D62FF7E6762BB17460E888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20190918110037.4edefb2f@donnerap.cambridge.arm.com>
 <CABb+yY2G8s9gV8Pu+f__8-bubjCJsVQrQikbVMZXmpTwSMBxiQ@mail.gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_065838_161558_87157A4E 
X-CRM114-Status: GOOD (  25.40  )
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
 Peng Fan <peng.fan@nxp.com>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Sep 2019 08:31:57 -0500
Jassi Brar <jassisinghbrar@gmail.com> wrote:

Hi,

> On Wed, Sep 18, 2019 at 5:00 AM Andre Przywara <andre.przywara@arm.com> wrote:
> 
> > >  
> > > >  
> > > > > + };
> > > > > +};  
> > > >
> > > > If this is the data structure that this mailbox controller uses, I would expect
> > > > this to be documented somewhere, or even exported.  
> > >
> > > Export this structure in include/linux/mailbox/smc-mailbox.h?  
> >
> > For instance, even though I am not sure this is really desired or helpful, since we expect a generic mailbox client (the SCPI or SCMI driver) to deal with that mailbox.
> >
> > But at least the expected format should be documented, which could just be in writing, not necessarily in code.
> >  
> Yes, the packet format is specified by the controller and defined in
> some header for clients to include. Other platforms do that already.

Yeah, I saw some examples as well, but not every driver was following this apparently.
I guess since we have a fixed data format we should export the struct then, maybe with a remark that the actual usage of registers is up to the protocol (within the SMCCC limits), so is optional.

> > > > > +
> > > > > +typedef unsigned long (smc_mbox_fn)(unsigned int, unsigned long,
> > > > > +                             unsigned long, unsigned long,
> > > > > +                             unsigned long, unsigned long,
> > > > > +                             unsigned long);
> > > > > +static smc_mbox_fn *invoke_smc_mbox_fn;
> > > > > +
> > > > > +static int arm_smc_send_data(struct mbox_chan *link, void *data) {
> > > > > + struct arm_smc_chan_data *chan_data = link->con_priv;
> > > > > + struct arm_smccc_mbox_cmd *cmd = data;
> > > > > + unsigned long ret;
> > > > > + u32 function_id;
> > > > > +
> > > > > + function_id = chan_data->function_id;
> > > > > + if (!function_id)
> > > > > +         function_id = cmd->function_id;
> > > > > +
> > > > > + if (function_id & BIT(30)) {  
> > > >
> > > >     if (ARM_SMCCC_IS_64(function_id)) {  
> > >
> > > ok
> > >  
> > > >  
> > > > > +         ret = invoke_smc_mbox_fn(function_id, cmd->args_smccc64[0],
> > > > > +                                  cmd->args_smccc64[1],
> > > > > +                                  cmd->args_smccc64[2],
> > > > > +                                  cmd->args_smccc64[3],
> > > > > +                                  cmd->args_smccc64[4],
> > > > > +                                  cmd->args_smccc64[5]);
> > > > > + } else {
> > > > > +         ret = invoke_smc_mbox_fn(function_id, cmd->args_smccc32[0],
> > > > > +                                  cmd->args_smccc32[1],
> > > > > +                                  cmd->args_smccc32[2],
> > > > > +                                  cmd->args_smccc32[3],
> > > > > +                                  cmd->args_smccc32[4],
> > > > > +                                  cmd->args_smccc32[5]);
> > > > > + }
> > > > > +
> > > > > + mbox_chan_received_data(link, (void *)ret);
> > > > > +
> > > > > + return 0;
> > > > > +}
> > > > > +
> > > > > +static unsigned long __invoke_fn_hvc(unsigned int function_id,
> > > > > +                              unsigned long arg0, unsigned long arg1,
> > > > > +                              unsigned long arg2, unsigned long arg3,
> > > > > +                              unsigned long arg4, unsigned long arg5) {
> > > > > + struct arm_smccc_res res;
> > > > > +
> > > > > + arm_smccc_hvc(function_id, arg0, arg1, arg2, arg3, arg4,
> > > > > +               arg5, 0, &res);
> > > > > + return res.a0;
> > > > > +}
> > > > > +
> > > > > +static unsigned long __invoke_fn_smc(unsigned int function_id,
> > > > > +                              unsigned long arg0, unsigned long arg1,
> > > > > +                              unsigned long arg2, unsigned long arg3,
> > > > > +                              unsigned long arg4, unsigned long arg5) {
> > > > > + struct arm_smccc_res res;
> > > > > +
> > > > > + arm_smccc_smc(function_id, arg0, arg1, arg2, arg3, arg4,
> > > > > +               arg5, 0, &res);
> > > > > + return res.a0;
> > > > > +}
> > > > > +
> > > > > +static const struct mbox_chan_ops arm_smc_mbox_chan_ops = {
> > > > > + .send_data      = arm_smc_send_data,
> > > > > +};
> > > > > +
> > > > > +static int arm_smc_mbox_probe(struct platform_device *pdev) {
> > > > > + struct device *dev = &pdev->dev;
> > > > > + struct mbox_controller *mbox;
> > > > > + struct arm_smc_chan_data *chan_data;
> > > > > + int ret;
> > > > > + u32 function_id = 0;
> > > > > +
> > > > > + if (of_device_is_compatible(dev->of_node, "arm,smc-mbox"))
> > > > > +         invoke_smc_mbox_fn = __invoke_fn_smc;
> > > > > + else
> > > > > +         invoke_smc_mbox_fn = __invoke_fn_hvc;
> > > > > +
> > > > > + mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
> > > > > + if (!mbox)
> > > > > +         return -ENOMEM;
> > > > > +
> > > > > + mbox->num_chans = 1;
> > > > > + mbox->chans = devm_kzalloc(dev, sizeof(*mbox->chans), GFP_KERNEL);
> > > > > + if (!mbox->chans)
> > > > > +         return -ENOMEM;
> > > > > +
> > > > > + chan_data = devm_kzalloc(dev, sizeof(*chan_data), GFP_KERNEL);
> > > > > + if (!chan_data)
> > > > > +         return -ENOMEM;
> > > > > +
> > > > > + of_property_read_u32(dev->of_node, "arm,func-id", &function_id);
> > > > > + chan_data->function_id = function_id;
> > > > > +
> > > > > + mbox->chans->con_priv = chan_data;
> > > > > +
> > > > > + mbox->txdone_poll = false;
> > > > > + mbox->txdone_irq = false;  
> > > >
> > > > Don't we need to provide something to confirm reception to the client? In our
> > > > case we can set this as soon as the smc/hvc returns.  
> > >
> > > As smc/hvc returns, it means the transfer is over and receive is done.  
> >
> > I understand that, but was wondering if the Linux mailbox framework knows about that? In my older version I was calling mbox_chan_received_data() after the smc call returned.
> >  
> The code already does that at the end of  send_data

True, for some reason I totally missed that line, sorry for that.
 
> > Also there is mbox_chan_txdone() with which a controller driver can signal TX completion explicitly.
> >  
> No. Controller can use that only if it has specified txdone_irq, which
> is not the case here.

I see. So does the framework handle the case where both txdone_poll and txdone_irq are false?

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
