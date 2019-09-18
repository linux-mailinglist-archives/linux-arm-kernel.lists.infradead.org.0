Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74911B6471
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 15:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MoIvd6MFL23eeQFQmVhgJtFXqdjSUmXdKNGMZ7tx98=; b=R0b0isgLgLJk6m
	fgpAWdvXiFd9EMgxlTDT/oLKwqrToMIw1eID/5TsVuZMznjk5JP3TKVirt/NQS5SSwV/8OoeuPYWH
	EFD2jGmHIIzVb1YzFYsLggbeZumORuKhMB+wvDNrG753LXik/XC9iuFprLGEVlL6KAW1FaChugESa
	OLBtY51PggfJ4/2mUHqZ+w++21ctCT2THUqaUyicWMmEVcgHGnR8TG6ZqvTJd7I0PY7VGFEgSUvby
	xUPM8nLxpQgzdYhbJJIrL1dqLmXPspNPcdl9O5YhPLokKJbIut6HMIX694w0xHn+rQZoaR3+WBaUH
	ANijYInXilM2mbXwxypw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAa4C-0002Fd-Ua; Wed, 18 Sep 2019 13:32:21 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAa41-0002F9-Na
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 13:32:11 +0000
Received: by mail-io1-xd41.google.com with SMTP id h144so16117899iof.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 06:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JZFdNYiiGOjgcmbWDBqcSFS+4Hig0B1106x65CqCAe8=;
 b=AEr/t5PwUUa7Z2j94wsWLg4s12+ybS7o2UbrCX7BIr4WnGnmn+abCrepKWbLvVstbM
 NxGuG5qbyM6a9ndPikrt8III7aA8u5SK5O7qsu/aDV0yv2FHqoGXRtvY6hnMe31iTriK
 BnXG6qOJuJq5JMWEenxhG/r7wmH+jnmO1G4D/modvpMYuY4pjrn/0PQHfidER6RjW+Bx
 vlBt0d8iSUiEhGMQ5Xt4bzYze2i+uOakAFd4OxSRSc9RXVhC8TRdPk3u3cAWnP4rTydi
 YWkYWNNLy7E1cAZ8DX2y9As4YkgW1mqXQCrKiWlLLhNJiAyDv2EtJf0vIuFr0tla1iRH
 OhZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JZFdNYiiGOjgcmbWDBqcSFS+4Hig0B1106x65CqCAe8=;
 b=PuYTX8vPbnea4TugpYR16UpL8JFNpuDiafLpPygV83dcWH/En8K4/wIMpTO6Oh9bP/
 PiH7re53Wh3ENwx83lbUZVLQERbz9QypWlMSnOpail1t8NUZxsWmySftQbRnNNUNAPVr
 CIAzzov7dw9zAXr69qJ47gZJv8UNrdVt5WhoyWgoYpmPquvORsUEVVLqG6eXBtSFFy/K
 S88f4vVBzndBmDI2oUO+8R/8XHREklBxqb17ZVggywaTJfxOTe9AfR1MifMHSDHZ0P+j
 L7t3gmAgcCQSnppN6cVEbWHOp2MuzuQm8FZw8AMDPKccZ7i0AGkhpu7priZ/lis1f/ZN
 gDsA==
X-Gm-Message-State: APjAAAVRTOFwWbeYf4lT7dm/SRGZmP5AHsaVM049rMm+84DVG57uF7J+
 3XYlCuj+WMRdEU50uZyNmrqW5X1zHwlTLAYM3Rk=
X-Google-Smtp-Source: APXvYqyhmmpO+zwfScovtWC/EO5ycJuz7XFbwIJyPuUdqy4uCHzvGh0e69NMRgSuXeGCfrtoI6JS7ZbxLMjRcTRnTv8=
X-Received: by 2002:a5e:960a:: with SMTP id a10mr5386914ioq.87.1568813528689; 
 Wed, 18 Sep 2019 06:32:08 -0700 (PDT)
MIME-Version: 1.0
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-3-git-send-email-peng.fan@nxp.com>
 <20190917183856.2342beed@donnerap.cambridge.arm.com>
 <AM0PR04MB44813D62FF7E6762BB17460E888E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20190918110037.4edefb2f@donnerap.cambridge.arm.com>
In-Reply-To: <20190918110037.4edefb2f@donnerap.cambridge.arm.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 18 Sep 2019 08:31:57 -0500
Message-ID: <CABb+yY2G8s9gV8Pu+f__8-bubjCJsVQrQikbVMZXmpTwSMBxiQ@mail.gmail.com>
Subject: Re: [PATCH V6 2/2] mailbox: introduce ARM SMC based mailbox
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_063209_772810_CFDF1C49 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, Sep 18, 2019 at 5:00 AM Andre Przywara <andre.przywara@arm.com> wrote:

> >
> > >
> > > > + };
> > > > +};
> > >
> > > If this is the data structure that this mailbox controller uses, I would expect
> > > this to be documented somewhere, or even exported.
> >
> > Export this structure in include/linux/mailbox/smc-mailbox.h?
>
> For instance, even though I am not sure this is really desired or helpful, since we expect a generic mailbox client (the SCPI or SCMI driver) to deal with that mailbox.
>
> But at least the expected format should be documented, which could just be in writing, not necessarily in code.
>
Yes, the packet format is specified by the controller and defined in
some header for clients to include. Other platforms do that already.



> > > > +
> > > > +typedef unsigned long (smc_mbox_fn)(unsigned int, unsigned long,
> > > > +                             unsigned long, unsigned long,
> > > > +                             unsigned long, unsigned long,
> > > > +                             unsigned long);
> > > > +static smc_mbox_fn *invoke_smc_mbox_fn;
> > > > +
> > > > +static int arm_smc_send_data(struct mbox_chan *link, void *data) {
> > > > + struct arm_smc_chan_data *chan_data = link->con_priv;
> > > > + struct arm_smccc_mbox_cmd *cmd = data;
> > > > + unsigned long ret;
> > > > + u32 function_id;
> > > > +
> > > > + function_id = chan_data->function_id;
> > > > + if (!function_id)
> > > > +         function_id = cmd->function_id;
> > > > +
> > > > + if (function_id & BIT(30)) {
> > >
> > >     if (ARM_SMCCC_IS_64(function_id)) {
> >
> > ok
> >
> > >
> > > > +         ret = invoke_smc_mbox_fn(function_id, cmd->args_smccc64[0],
> > > > +                                  cmd->args_smccc64[1],
> > > > +                                  cmd->args_smccc64[2],
> > > > +                                  cmd->args_smccc64[3],
> > > > +                                  cmd->args_smccc64[4],
> > > > +                                  cmd->args_smccc64[5]);
> > > > + } else {
> > > > +         ret = invoke_smc_mbox_fn(function_id, cmd->args_smccc32[0],
> > > > +                                  cmd->args_smccc32[1],
> > > > +                                  cmd->args_smccc32[2],
> > > > +                                  cmd->args_smccc32[3],
> > > > +                                  cmd->args_smccc32[4],
> > > > +                                  cmd->args_smccc32[5]);
> > > > + }
> > > > +
> > > > + mbox_chan_received_data(link, (void *)ret);
> > > > +
> > > > + return 0;
> > > > +}
> > > > +
> > > > +static unsigned long __invoke_fn_hvc(unsigned int function_id,
> > > > +                              unsigned long arg0, unsigned long arg1,
> > > > +                              unsigned long arg2, unsigned long arg3,
> > > > +                              unsigned long arg4, unsigned long arg5) {
> > > > + struct arm_smccc_res res;
> > > > +
> > > > + arm_smccc_hvc(function_id, arg0, arg1, arg2, arg3, arg4,
> > > > +               arg5, 0, &res);
> > > > + return res.a0;
> > > > +}
> > > > +
> > > > +static unsigned long __invoke_fn_smc(unsigned int function_id,
> > > > +                              unsigned long arg0, unsigned long arg1,
> > > > +                              unsigned long arg2, unsigned long arg3,
> > > > +                              unsigned long arg4, unsigned long arg5) {
> > > > + struct arm_smccc_res res;
> > > > +
> > > > + arm_smccc_smc(function_id, arg0, arg1, arg2, arg3, arg4,
> > > > +               arg5, 0, &res);
> > > > + return res.a0;
> > > > +}
> > > > +
> > > > +static const struct mbox_chan_ops arm_smc_mbox_chan_ops = {
> > > > + .send_data      = arm_smc_send_data,
> > > > +};
> > > > +
> > > > +static int arm_smc_mbox_probe(struct platform_device *pdev) {
> > > > + struct device *dev = &pdev->dev;
> > > > + struct mbox_controller *mbox;
> > > > + struct arm_smc_chan_data *chan_data;
> > > > + int ret;
> > > > + u32 function_id = 0;
> > > > +
> > > > + if (of_device_is_compatible(dev->of_node, "arm,smc-mbox"))
> > > > +         invoke_smc_mbox_fn = __invoke_fn_smc;
> > > > + else
> > > > +         invoke_smc_mbox_fn = __invoke_fn_hvc;
> > > > +
> > > > + mbox = devm_kzalloc(dev, sizeof(*mbox), GFP_KERNEL);
> > > > + if (!mbox)
> > > > +         return -ENOMEM;
> > > > +
> > > > + mbox->num_chans = 1;
> > > > + mbox->chans = devm_kzalloc(dev, sizeof(*mbox->chans), GFP_KERNEL);
> > > > + if (!mbox->chans)
> > > > +         return -ENOMEM;
> > > > +
> > > > + chan_data = devm_kzalloc(dev, sizeof(*chan_data), GFP_KERNEL);
> > > > + if (!chan_data)
> > > > +         return -ENOMEM;
> > > > +
> > > > + of_property_read_u32(dev->of_node, "arm,func-id", &function_id);
> > > > + chan_data->function_id = function_id;
> > > > +
> > > > + mbox->chans->con_priv = chan_data;
> > > > +
> > > > + mbox->txdone_poll = false;
> > > > + mbox->txdone_irq = false;
> > >
> > > Don't we need to provide something to confirm reception to the client? In our
> > > case we can set this as soon as the smc/hvc returns.
> >
> > As smc/hvc returns, it means the transfer is over and receive is done.
>
> I understand that, but was wondering if the Linux mailbox framework knows about that? In my older version I was calling mbox_chan_received_data() after the smc call returned.
>
The code already does that at the end of  send_data

> Also there is mbox_chan_txdone() with which a controller driver can signal TX completion explicitly.
>
No. Controller can use that only if it has specified txdone_irq, which
is not the case here.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
