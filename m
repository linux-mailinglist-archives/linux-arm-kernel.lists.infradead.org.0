Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6841F45A09
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:10:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8z9bRWjU8TLbjJZbaD5Xb0VwzO4ZdiRp10JwBtUMvVM=; b=t6Rs+uAE0QkRNK
	jlti73ob4FNlnd9U2m5fVp+ZDfCS9cPUvrhca34mqenL/n58eOqZzBgn+K2w/Hrv32MSKWksNrErb
	XALjdRHPzO8/P/P7bUDGaqCBSba6WxLJ6Qw2Mg8yR+SuNz0J0/jIys4ltKtHfkRwuGAo7WlKDjhOj
	k3JNKqHqxl+DKp+yEcyO1+1DIcb22biWS7QGb/e1z+PhzB2VmkCLe9ORh2yXVHWT0Vchoe/qZw4jA
	x2FyDlLj965fgSExPdB9RRkOFGvWR/7uGCD9VX2ACUiswKF9wakCDWI4Dw0uwzPry5iPj6nOstJlh
	U8FlelHjRxj/jZCCOGQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbj9t-00081P-Ai; Fri, 14 Jun 2019 10:10:09 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbj9G-0007qK-0Y
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 10:09:32 +0000
Received: by mail-wm1-x341.google.com with SMTP id g135so1713316wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 03:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tttA6QP3drU9UFZ8meFU4pNEjel88MoFarHf7RqWNG0=;
 b=uQ7/2/6HS8ExTK9uAfP12Bhl15IO8YnSUKnz1+VYd466/iP9Gwaj/PYu4aOp1E4hFA
 x08aopG/vj6EPwPEnhf7QkoHKZlWBLwxaoXbmyt5TU3/yCaSkNWJidCEQgABquokD9lT
 iMxnP5FH3nPxAiJ1ANZxhIBWNCS8iKtA2sUvITBOkJ4xOGyy42VfAcEFHVFHdN7AauCD
 bNzybTbBn2C2RWSo64WdtXCSAf4CzJZa+BDbNBr0cLHMA+B9Vd5Vm9XEzrTWGgnFpfQe
 QVOAcB2sLlpkTiQxw5JOTc7XyDg9on6Fq02UL5mZF4fpul40nR/JFSdkG5WdhRyMKS5A
 deQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tttA6QP3drU9UFZ8meFU4pNEjel88MoFarHf7RqWNG0=;
 b=VvpHgj8sgMK7wj5J/760Ysu7PV4hQ0DR2HOSjoP1718wcS/G3qvb2HelxlFXW+atUT
 sio5cAJ3g+0WFBoDZrOwD25oHuFy0NYkWtt1NgumREKPZbf4+yKunZotLZ2d/TSpfbnL
 C9NfmtbVyiRppNF2BZes83iKNejX1NQMvXi+vXQAdwJPXfeTsXxwLkc8Yf+E68UaTXym
 X5KMlcB7pEvd/IyRdGt33hCmLXB/DHh7OaPvLHfuWi4ESmhjxoNQVfxQcpV1MT9igqyH
 Yjl/70Yz7g3Uyz2STIIF0err84B52uMwHIRmINlDTRfUViqjDsHeOrZ9qcs6HbOafcMY
 fDNg==
X-Gm-Message-State: APjAAAXXezbTg3YLb0BuwhpfZJ/6dBri8u0kxeItxDSR2ilBRdlR2IwE
 AwO0fiL3w4zJloPfxQiAWXMIHpT5ag6jotE/kMs=
X-Google-Smtp-Source: APXvYqxNBpcJGXy5iu+MavJyA3/r4Y+qJh1Zy6rneXKcvJxT0Utb863yXxgiGtEt/vxmK5hyu36bARLqoFmqv6oQY3I=
X-Received: by 2002:a05:600c:206:: with SMTP id 6mr6900329wmi.73.1560506967636; 
 Fri, 14 Jun 2019 03:09:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190614081650.11880-1-daniel.baluta@nxp.com>
 <20190614081650.11880-2-daniel.baluta@nxp.com>
 <20190614090815.lb2vnncqnom3fgu2@pengutronix.de>
In-Reply-To: <20190614090815.lb2vnncqnom3fgu2@pengutronix.de>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 14 Jun 2019 13:09:16 +0300
Message-ID: <CAEnQRZCCsWZUyeoaRns6HjjyG-u0Nrac9g9Ga5E2UiF=CJLqEg@mail.gmail.com>
Subject: Re: [PATCH 1/2] firmware: imx: Add DSP IPC protocol driver
To: Oleksij Rempel <o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_030930_243385_7D684113 
X-CRM114-Status: GOOD (  39.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 12:08 PM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
>
> Hi Daniel,
>
> please, see my review inline.

Thanks Oleksij for review. See my answers inline.

>
> On Fri, Jun 14, 2019 at 04:16:49PM +0800, daniel.baluta@nxp.com wrote:
> > From: Daniel Baluta <daniel.baluta@nxp.com>
> >
> > Some of i.MX8 processors (e.g i.MX8QM, i.MX8QXP) contain
> > the Tensilica HiFi4 DSP for advanced pre- and post-audio
> > processing.
> >
> > The communication between Host CPU and DSP firmware is
> > taking place using a shared memory area for message passing
> > and a dedicated Messaging Unit for notifications.
> >
> > DSP IPC protocol driver offers a doorbell interface using
> > imx-mailbox API.
> >
> > We use 4 MU channels (2 x TXDB, 2 x RXDB) to implement a
> > request-reply protocol.
> >
> > Connection 0 (txdb0, rxdb0):
> >         - Host writes messasge to shared memory [SHMEM]
> >       - Host sends a request [MU]
> >       - DSP handles request [SHMEM]
> >       - DSP sends reply [MU]
> >
> > Connection 1 (txdb1, rxdb1):
> >       - DSP writes a message to shared memory [SHMEM]
> >       - DSP sends a request [MU]
> >       - Host handles request [SHMEM]
> >       - Host sends reply [MU]
> >
> > The protocol driver will be used by a Host client to
> > communicate with the DSP. First client will be the i.MX8
> > part from Sound Open Firmware infrastructure.
> >
> > The protocol drivers offers the following interface:
> >
> > On Tx:
> >    - imx_dsp_ring_doorbell, will be called to notify the DSP
> >    that it needs to handle a request.
> >
> > On Rx:
> >    - clients need to provide two callbacks:
> >       .handle_reply
> >       .handle_request
> >   - the callbacks will be used by the protocol driver on
> >     notification arrival from DSP.
> >
> > Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> > ---
> >  drivers/firmware/imx/Kconfig     |  11 ++
> >  drivers/firmware/imx/Makefile    |   1 +
> >  drivers/firmware/imx/imx-dsp.c   | 167 +++++++++++++++++++++++++++++++
> >  include/linux/firmware/imx/dsp.h |  61 +++++++++++
> >  4 files changed, 240 insertions(+)
> >  create mode 100644 drivers/firmware/imx/imx-dsp.c
> >  create mode 100644 include/linux/firmware/imx/dsp.h
> >
> > diff --git a/drivers/firmware/imx/Kconfig b/drivers/firmware/imx/Kconfig
> > index 42b566f8903f..383996b679a8 100644
> > --- a/drivers/firmware/imx/Kconfig
> > +++ b/drivers/firmware/imx/Kconfig
> > @@ -1,4 +1,15 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> > +config IMX_DSP
> > +     bool "IMX DSP Protocol driver"
> > +     depends on IMX_MBOX
> > +     help
> > +       This enables DSP IPC protocol between host CPU (Linux)
> > +       and the firmware running on DSP.
> > +       DSP exists on some i.MX8 processors (e.g i.MX8QM, i.MX8QXP).
> > +
> > +          It acts like a doorbell. Client might use shared memory to
> > +       exchange information with DSP side.
> > +
> >  config IMX_SCU
> >       bool "IMX SCU Protocol driver"
> >       depends on IMX_MBOX
> > diff --git a/drivers/firmware/imx/Makefile b/drivers/firmware/imx/Makefile
> > index 802c4ad8e8f9..08bc9ddfbdfb 100644
> > --- a/drivers/firmware/imx/Makefile
> > +++ b/drivers/firmware/imx/Makefile
> > @@ -1,3 +1,4 @@
> >  # SPDX-License-Identifier: GPL-2.0
> > +obj-$(CONFIG_IMX_DSP)                += imx-dsp.o
> >  obj-$(CONFIG_IMX_SCU)                += imx-scu.o misc.o imx-scu-irq.o
> >  obj-$(CONFIG_IMX_SCU_PD)     += scu-pd.o
> > diff --git a/drivers/firmware/imx/imx-dsp.c b/drivers/firmware/imx/imx-dsp.c
> > new file mode 100644
> > index 000000000000..953fd364ad76
> > --- /dev/null
> > +++ b/drivers/firmware/imx/imx-dsp.c
> > @@ -0,0 +1,167 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright 2018 NXP
> > + *  Author: Daniel Baluta <daniel.baluta@nxp.com>
> > + *
> > + * Implementation of the DSP IPC interface (host side)
> > + */
> > +
> > +#include <linux/firmware/imx/dsp.h>
> > +#include <linux/kernel.h>
> > +#include <linux/mailbox_client.h>
> > +#include <linux/module.h>
> > +#include <linux/of_platform.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/slab.h>
> > +
> > +static struct imx_dsp_ipc *imx_dsp_handle;
> > +
> > +/*
> > + * Get the default handle used by DSP
> > + */
> > +int imx_dsp_get_handle(struct imx_dsp_ipc **ipc)
> > +{
> > +     if (!imx_dsp_handle)
> > +             return -EPROBE_DEFER;
> > +
> > +     *ipc = imx_dsp_handle;
> > +     return 0;
> > +}
> > +EXPORT_SYMBOL(imx_dsp_get_handle);
>
> Please, extract needed device or handle form device tree. The consumer
> should pars own device tree node and get the phandle to the dsp node.

I understand the idea, but I'm not sure how this can be done.

imx_dsp_handle is just a pointer to the memory allocated in imx_dsp_probe.

I assume that consumer might have access to this driver's
platform_device dev and
we can hive the imx_dsp_ipc handle inside some sort of private date. I will
investigate this. So far I have followed the approach taken in
drivers/firmware/imx/imx-scu.c

>
> > +void imx_dsp_set_data(struct imx_dsp_ipc *ipc, void *data)
> > +{
> > +     if (!ipc)
> > +             return;
> > +
> > +     ipc->private_data = data;
> > +}
> > +EXPORT_SYMBOL(imx_dsp_set_data);
> > +
> > +void *imx_dsp_get_data(struct imx_dsp_ipc *ipc)
> > +{
> > +     if (!ipc)
> > +             return NULL;
> > +
> > +     return ipc->private_data;
> > +}
> > +EXPORT_SYMBOL(imx_dsp_get_data);
> > +
> > +/*
> > + * imx_dsp_ring_doorbell - triggers an interrupt on the other side (DSP)
> > + *
> > + * @dsp: DSP IPC handle
> > + * @chan_idx: index of the channel where to trigger the interrupt
> > + *
> > + * Returns non-negative value for success, negative value for error
> > + */
> > +int imx_dsp_ring_doorbell(struct imx_dsp_ipc *ipc, unsigned int idx)
> > +{
> > +     int ret;
> > +     struct imx_dsp_chan *dsp_chan;
> > +
> > +     if (idx > DSP_MU_CHAN_NUM)
> > +             return -EINVAL;
>
> On this test idx may overflow. DSP_MU_CHAN_NUM is 4, means idx can be:
> 0, 1, 2, 3. In you case idx == 4 is allowed, so the caller will be able
> to corrupt the rest of imx_dsp_ipc struct.

Indeed, you are right! Will fix in v2.

>
> > +     dsp_chan = &ipc->chans[idx];
> > +     ret = mbox_send_message(dsp_chan->ch, NULL);
> > +     if (ret < 0)
> > +             return ret;
> > +
> > +     return 0;
> > +}
> > +EXPORT_SYMBOL(imx_dsp_ring_doorbell);
> > +
> > +/*
> > + * imx_dsp_handle_rx - rx callback used by imx mailbox
> > + *
> > + * @c: mbox client
> > + * @msg: message received
> > + *
> > + * Users of DSP IPC will need to privde handle_reply and handle_request
> > + * callbacks.
> > + */
> > +static void imx_dsp_handle_rx(struct mbox_client *c, void *msg)
> > +{
> > +     struct imx_dsp_chan *chan = container_of(c, struct imx_dsp_chan, cl);
> > +
> > +     if (chan->idx == 0) {
> > +             chan->ipc->ops->handle_reply(chan->ipc);
> > +     } else {
> > +             chan->ipc->ops->handle_request(chan->ipc);
> > +             imx_dsp_ring_doorbell(chan->ipc, 1);
> > +     }
> > +}
> > +
> > +static int imx_dsp_probe(struct platform_device *pdev)
> > +{
> > +     struct device *dev = &pdev->dev;
> > +     struct imx_dsp_ipc *dsp_ipc;
> > +     struct imx_dsp_chan *dsp_chan;
> > +     struct mbox_client *cl;
> > +     char *chan_name;
> > +     int ret;
> > +     int i;
> > +
> > +     dsp_ipc = devm_kzalloc(dev, sizeof(*dsp_ipc), GFP_KERNEL);
> > +     if (!dsp_ipc)
> > +             return -ENOMEM;
> > +
> > +     for (i = 0; i < DSP_MU_CHAN_NUM; i++) {
> > +             if (i < 2)
> > +                     chan_name = kasprintf(GFP_KERNEL, "txdb%d", i);
> > +             else
> > +                     chan_name = kasprintf(GFP_KERNEL, "rxdb%d", i - 2);
> > +
> > +             if (!chan_name)
> > +                     return -ENOMEM;
> > +
> > +             dsp_chan = &dsp_ipc->chans[i];
> > +             cl = &dsp_chan->cl;
> > +             cl->dev = dev;
> > +             cl->tx_block = false;
> > +             cl->knows_txdone = true;
> > +             cl->rx_callback = imx_dsp_handle_rx;
> > +
> > +             dsp_chan->ipc = dsp_ipc;
> > +             dsp_chan->idx = i % 2;
> > +             dsp_chan->ch = mbox_request_channel_byname(cl, chan_name);
> > +             if (IS_ERR(dsp_chan->ch)) {
> > +                     ret = PTR_ERR(dsp_chan->ch);
> > +                     if (ret != -EPROBE_DEFER)
> > +                             dev_err(dev, "Failed to request mbox chan %s ret %d\n",
> > +                                     chan_name, ret);
> > +                     return ret;
>
> On the error you will leak the memory previously allocated chan_name.
> And you should call mbox_free_channel() for each previously registered
> channel in this loop.

Will fix in v2.

>
> > +             }
> > +
> > +             dev_dbg(dev, "request mbox chan %s\n", chan_name);
> > +             /* chan_name is not used anymore by framework */
> > +             kfree(chan_name);
> > +     }
> > +
> > +     dsp_ipc->dev = dev;
> > +
> > +     imx_dsp_handle = dsp_ipc;
>
> bad idea. What happens if multiple dsp nodes are registered in the
> device tree?

True. Altough we have only one DSP. Having that global variable seemed
a very idea from the start. Will need to fix that also in imx-scu.c

>
> > +     dev_info(dev, "NXP i.MX DSP IPC initialized\n");
> > +
> > +     return devm_of_platform_populate(dev);
> > +}
> > +
> > +static const struct of_device_id imx_dsp_match[] = {
> > +     { .compatible = "fsl,imx-dsp", },
>
> i would prefer to have chip name in the compatible. For example
> fsl,imx8qm-dsp. Soon or later we will need to define some quirks
> for on or another chip.

I see. Will fix in v2.

>
> > +     { /* Sentinel */ }
> > +};
> > +
> > +static struct platform_driver imx_dsp_driver = {
> > +     .driver = {
> > +             .name = "imx-dsp",
> > +             .of_match_table = imx_dsp_match,
> > +     },
> > +     .probe = imx_dsp_probe,
> > +};
> > +builtin_platform_driver(imx_dsp_driver);
> > +
> > +MODULE_AUTHOR("Daniel Baluta <daniel.baluta@nxp.com>");
> > +MODULE_DESCRIPTION("IMX DSP IPC protocol driver");
> > +MODULE_LICENSE("GPL v2");
> > diff --git a/include/linux/firmware/imx/dsp.h b/include/linux/firmware/imx/dsp.h
> > new file mode 100644
> > index 000000000000..75637d8fab34
> > --- /dev/null
> > +++ b/include/linux/firmware/imx/dsp.h
> > @@ -0,0 +1,61 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> > +/*
> > + * Copyright 2018 NXP
> > + *
> > + * Header file for the DSP IPC implementation
> > + */
> > +
> > +#ifndef _IMX_DSP_IPC_H
> > +#define _IMX_DSP_IPC_H
> > +
> > +#include <linux/device.h>
> > +#include <linux/types.h>
> > +#include <linux/mailbox_client.h>
> > +
> > +#define DSP_MU_CHAN_NUM              4
> > +
> > +struct imx_dsp_chan {
> > +     struct imx_dsp_ipc *ipc;
> > +     struct mbox_client cl;
> > +     struct mbox_chan *ch;
> > +     int idx;
> > +};
> > +
> > +struct imx_dsp_ops {
> > +     void (*handle_reply)(struct imx_dsp_ipc *ipc);
> > +     void (*handle_request)(struct imx_dsp_ipc *ipc);
> > +};
> > +
> > +struct imx_dsp_ipc {
> > +     /* Host <-> DSP communication uses 2 txdb and 2 rxdb channels */
> > +     struct imx_dsp_chan chans[DSP_MU_CHAN_NUM];
> > +     struct device *dev;
> > +     struct imx_dsp_ops *ops;
> > +     void *private_data;
> > +};
> > +
> > +#if IS_ENABLED(CONFIG_IMX_DSP)
> > +
> > +int imx_dsp_ring_doorbell(struct imx_dsp_ipc *dsp, unsigned int chan_idx);
> > +int imx_dsp_get_handle(struct imx_dsp_ipc **ipc);
> > +void imx_dsp_set_data(struct imx_dsp_ipc *ipc, void *data);
> > +void *imx_dsp_get_data(struct imx_dsp_ipc *ipc);
> > +
> > +#else
> > +
> > +static inline int imx_dsp_get_handle(struct imx_dsp_ipc **ipc)
> > +{
> > +     return -EIO;
>
> please, use -ENOTSUPP instead.

Makes sense. Will fix in v2.

thanks,
Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
