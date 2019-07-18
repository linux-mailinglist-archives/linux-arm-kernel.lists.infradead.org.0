Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D656C95D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 08:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMVjvtMYPIqRNkBAVVaUOOqkZjW6uYD8xRpF8lZ6bGA=; b=Bk7rXyy5TMZGnu
	7nRETS0zYrGhHvWeaJyQO1LCLq2yiK47HF1TDsQ6R++aDtWMWIJQ1dlDSCDl/TNtAfrLHuTTPJrml
	DxuAiBcohgEBZIsf1EmxS7kZlVBGVtmK/QdYnWypUYw1R4AjYWrtfszmNm7WUuvcFMQ/+CjlzKCJw
	LHP09XvrWzR6fUKCnKXJQVUNbzPiDiqzRhOPsMTjlsKAo0hJErI7LjA35l/Df27DefJtrstmc0ViD
	gFpaqPNg0m87KlQnxot+6K3hDIIkLKjXPTBTpnXfInJkYRHPdi/G6BifOTHfep59VsnphsvTObfEN
	PcxZDYFV01evWiVzqGDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho05e-0002sm-9J; Thu, 18 Jul 2019 06:40:30 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho05N-0002sO-BS
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 06:40:15 +0000
Received: by mail-wr1-x443.google.com with SMTP id p13so27285267wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 23:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Yiq84YH0EGr0jtd9Nm3le9TtbVZfQEjSL3GrWPPx5Ow=;
 b=ROcsAp0QHtwZEhwBmcUJ5paGNdRrs5oBThUgR6Uc7kozaOlhTNiv1mnQGrQD3xOiE4
 Xp2x34O3VyotqZW/IV2mcEiimpf7LxI1/OTQXZyyXRLY20MIRMBXTQx8A4uDEmbYbiE9
 HtiIHJaKWRKR7k7WhFxEZMXbSnlPTgXKwsAM66K5Fss6vNR47RG3LwWZAIc73MMb1sGQ
 zHuaXVOg4WAjScaWAGKvA2NUPeqhk2nY+7yBBQCoNkXlkhQRTmCu5KUOn+h97F7V5Lag
 tdLyGAfcROQWeaZXf8D3SrPz6MK6C1HgGlPm5iCoVkMe+5ygfDxoVJIEPpKP3H97qA8c
 UVsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Yiq84YH0EGr0jtd9Nm3le9TtbVZfQEjSL3GrWPPx5Ow=;
 b=opbEcaEYP7cuzRiuRQ0CcfJhVLdPWB9WjBWdC8IEMF/YL1PMhXNIPn+tyZ3BJk1JGl
 sHpTaCn9ch6NIJIedlGv+g01sIP7fNYa/hvC0BJXs8CagCEV50N/Jv79BwGd84KaWqib
 4VkwHpU0AImKvFsFOxOen4K7WC5dz6j14/q6jtCxM2C5RQnkRWg/Acu87BA0KSMTdnbZ
 To7XPqMkyp6mCYOM3WaPNSU1tcBLCBgLt1pQXfWmYN0+xmPZqIiH9GvmrOalHO91Z2R9
 m7fsjR1mrlpwWpJmR1hOlYZg4hsOd+GrPx09GxG/8+W3Af0JLgz7G0d+ysNVljN7cGbg
 ifyw==
X-Gm-Message-State: APjAAAWkgx7VcOAIk1aBA5xs4w9RWAVUM141WL6xXf3aweB0NgNW6PzJ
 xbY45LpKnN+i4fvGeT3ae49nBUVMM5JpSN6GXHw=
X-Google-Smtp-Source: APXvYqwpiPk4ZG/hJIPPlfVcSZOii/3M88OIcBbI+tPybGZtXnTNGx+rIJik+xaOd2Eb8HzkdMLlrCMIktsOZnfj+/M=
X-Received: by 2002:a5d:46cf:: with SMTP id g15mr49231594wrs.93.1563432011604; 
 Wed, 17 Jul 2019 23:40:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190627081205.22065-1-daniel.baluta@nxp.com>
 <20190627081205.22065-2-daniel.baluta@nxp.com>
 <CAEnQRZAGTdMpsnH-F_Xoaae0+nX8WTqYOrMJUjeQ6vhWvZ1y1Q@mail.gmail.com>
 <20190709120241.nlzy7o6etucn5udk@pengutronix.de>
In-Reply-To: <20190709120241.nlzy7o6etucn5udk@pengutronix.de>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 18 Jul 2019 09:40:00 +0300
Message-ID: <CAEnQRZA=5q-EnvHs41k0nFxYLt591C65GPhO6b5iOtOqBMuCYg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] firmware: imx: Add DSP IPC protocol interface
To: Oleksij Rempel <o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_234013_399912_42BB1C37 
X-CRM114-Status: GOOD (  31.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I just made some minor changes and will send the patch right now.
Shawn please skip this.

On Tue, Jul 9, 2019 at 3:02 PM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
>
> On Tue, Jul 09, 2019 at 08:48:20AM +0300, Daniel Baluta wrote:
> > Hi Oleksij,
> >
> > Any comments on this?
>
> Looks good for me. All my suggestions was fixed.
>
> Reviewed-by: <o.rempel@pengutronix.de>
>
> > On Thu, Jun 27, 2019 at 11:14 AM Daniel Baluta <daniel.baluta@nxp.com> wrote:
> > >
> > > Some of i.MX8 processors (e.g i.MX8QM, i.MX8QXP) contain
> > > the Tensilica HiFi4 DSP for advanced pre- and post-audio
> > > processing.
> > >
> > > The communication between Host CPU and DSP firmware is
> > > taking place using a shared memory area for message passing
> > > and a dedicated Messaging Unit for notifications.
> > >
> > > DSP IPC protocol driver offers a doorbell interface using
> > > imx-mailbox API.
> > >
> > > We use 4 MU channels (2 x TXDB, 2 x RXDB) to implement a
> > > request-reply protocol.
> > >
> > > Connection 0 (txdb0, rxdb0):
> > >         - Host writes messasge to shared memory [SHMEM]
> > >         - Host sends a request [MU]
> > >         - DSP handles request [SHMEM]
> > >         - DSP sends reply [MU]
> > >
> > > Connection 1 (txdb1, rxdb1):
> > >         - DSP writes a message to shared memory [SHMEM]
> > >         - DSP sends a request [MU]
> > >         - Host handles request [SHMEM]
> > >         - Host sends reply [MU]
> > >
> > > The protocol driver will be used by a Host client to
> > > communicate with the DSP. First client will be the i.MX8
> > > part from Sound Open Firmware infrastructure.
> > >
> > > The protocol drivers offers the following interface:
> > >
> > > On Tx:
> > >    - imx_dsp_ring_doorbell, will be called to notify the DSP
> > >    that it needs to handle a request.
> > >
> > > On Rx:
> > >    - clients need to provide two callbacks:
> > >         .handle_reply
> > >         .handle_request
> > >   - the callbacks will be used by the protocol driver on
> > >     notification arrival from DSP.
> > >
> > > Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> > > ---
> > >  drivers/firmware/imx/Kconfig     |  11 +++
> > >  drivers/firmware/imx/Makefile    |   1 +
> > >  drivers/firmware/imx/imx-dsp.c   | 142 +++++++++++++++++++++++++++++++
> > >  include/linux/firmware/imx/dsp.h |  67 +++++++++++++++
> > >  4 files changed, 221 insertions(+)
> > >  create mode 100644 drivers/firmware/imx/imx-dsp.c
> > >  create mode 100644 include/linux/firmware/imx/dsp.h
> > >
> > > diff --git a/drivers/firmware/imx/Kconfig b/drivers/firmware/imx/Kconfig
> > > index 42b566f8903f..ddb241708c31 100644
> > > --- a/drivers/firmware/imx/Kconfig
> > > +++ b/drivers/firmware/imx/Kconfig
> > > @@ -1,4 +1,15 @@
> > >  # SPDX-License-Identifier: GPL-2.0-only
> > > +config IMX_DSP
> > > +       bool "IMX DSP Protocol driver"
> > > +       depends on IMX_MBOX
> > > +       help
> > > +         This enables DSP IPC protocol between host CPU (Linux)
> > > +         and the firmware running on DSP.
> > > +         DSP exists on some i.MX8 processors (e.g i.MX8QM, i.MX8QXP).
> > > +
> > > +         It acts like a doorbell. Client might use shared memory to
> > > +         exchange information with DSP side.
> > > +
> > >  config IMX_SCU
> > >         bool "IMX SCU Protocol driver"
> > >         depends on IMX_MBOX
> > > diff --git a/drivers/firmware/imx/Makefile b/drivers/firmware/imx/Makefile
> > > index 802c4ad8e8f9..08bc9ddfbdfb 100644
> > > --- a/drivers/firmware/imx/Makefile
> > > +++ b/drivers/firmware/imx/Makefile
> > > @@ -1,3 +1,4 @@
> > >  # SPDX-License-Identifier: GPL-2.0
> > > +obj-$(CONFIG_IMX_DSP)          += imx-dsp.o
> > >  obj-$(CONFIG_IMX_SCU)          += imx-scu.o misc.o imx-scu-irq.o
> > >  obj-$(CONFIG_IMX_SCU_PD)       += scu-pd.o
> > > diff --git a/drivers/firmware/imx/imx-dsp.c b/drivers/firmware/imx/imx-dsp.c
> > > new file mode 100644
> > > index 000000000000..c4d34a2fbff3
> > > --- /dev/null
> > > +++ b/drivers/firmware/imx/imx-dsp.c
> > > @@ -0,0 +1,142 @@
> > > +// SPDX-License-Identifier: GPL-2.0+
> > > +/*
> > > + * Copyright 2019 NXP
> > > + *  Author: Daniel Baluta <daniel.baluta@nxp.com>
> > > + *
> > > + * Implementation of the DSP IPC interface (host side)
> > > + */
> > > +
> > > +#include <linux/firmware/imx/dsp.h>
> > > +#include <linux/kernel.h>
> > > +#include <linux/mailbox_client.h>
> > > +#include <linux/module.h>
> > > +#include <linux/of_platform.h>
> > > +#include <linux/platform_device.h>
> > > +#include <linux/slab.h>
> > > +
> > > +/*
> > > + * imx_dsp_ring_doorbell - triggers an interrupt on the other side (DSP)
> > > + *
> > > + * @dsp: DSP IPC handle
> > > + * @chan_idx: index of the channel where to trigger the interrupt
> > > + *
> > > + * Returns non-negative value for success, negative value for error
> > > + */
> > > +int imx_dsp_ring_doorbell(struct imx_dsp_ipc *ipc, unsigned int idx)
> > > +{
> > > +       int ret;
> > > +       struct imx_dsp_chan *dsp_chan;
> > > +
> > > +       if (idx >= DSP_MU_CHAN_NUM)
> > > +               return -EINVAL;
> > > +
> > > +       dsp_chan = &ipc->chans[idx];
> > > +       ret = mbox_send_message(dsp_chan->ch, NULL);
> > > +       if (ret < 0)
> > > +               return ret;
> > > +
> > > +       return 0;
> > > +}
> > > +EXPORT_SYMBOL(imx_dsp_ring_doorbell);
> > > +
> > > +/*
> > > + * imx_dsp_handle_rx - rx callback used by imx mailbox
> > > + *
> > > + * @c: mbox client
> > > + * @msg: message received
> > > + *
> > > + * Users of DSP IPC will need to privde handle_reply and handle_request
> > > + * callbacks.
> > > + */
> > > +static void imx_dsp_handle_rx(struct mbox_client *c, void *msg)
> > > +{
> > > +       struct imx_dsp_chan *chan = container_of(c, struct imx_dsp_chan, cl);
> > > +
> > > +       if (chan->idx == 0) {
> > > +               chan->ipc->ops->handle_reply(chan->ipc);
> > > +       } else {
> > > +               chan->ipc->ops->handle_request(chan->ipc);
> > > +               imx_dsp_ring_doorbell(chan->ipc, 1);
> > > +       }
> > > +}
> > > +
> > > +static int imx_dsp_probe(struct platform_device *pdev)
> > > +{
> > > +       struct device *dev = &pdev->dev;
> > > +       struct imx_dsp_ipc *dsp_ipc;
> > > +       struct imx_dsp_chan *dsp_chan;
> > > +       struct mbox_client *cl;
> > > +       char *chan_name;
> > > +       int ret;
> > > +       int i, j;
> > > +
> > > +       dsp_ipc = devm_kzalloc(dev, sizeof(*dsp_ipc), GFP_KERNEL);
> > > +       if (!dsp_ipc)
> > > +               return -ENOMEM;
> > > +
> > > +       for (i = 0; i < DSP_MU_CHAN_NUM; i++) {
> > > +               if (i < 2)
> > > +                       chan_name = kasprintf(GFP_KERNEL, "txdb%d", i);
> > > +               else
> > > +                       chan_name = kasprintf(GFP_KERNEL, "rxdb%d", i - 2);
> > > +
> > > +               if (!chan_name)
> > > +                       return -ENOMEM;
> > > +
> > > +               dsp_chan = &dsp_ipc->chans[i];
> > > +               cl = &dsp_chan->cl;
> > > +               cl->dev = dev;
> > > +               cl->tx_block = false;
> > > +               cl->knows_txdone = true;
> > > +               cl->rx_callback = imx_dsp_handle_rx;
> > > +
> > > +               dsp_chan->ipc = dsp_ipc;
> > > +               dsp_chan->idx = i % 2;
> > > +               dsp_chan->ch = mbox_request_channel_byname(cl, chan_name);
> > > +               if (IS_ERR(dsp_chan->ch)) {
> > > +                       ret = PTR_ERR(dsp_chan->ch);
> > > +                       if (ret != -EPROBE_DEFER)
> > > +                               dev_err(dev, "Failed to request mbox chan %s ret %d\n",
> > > +                                       chan_name, ret);
> > > +                       goto out;
> > > +               }
> > > +
> > > +               dev_dbg(dev, "request mbox chan %s\n", chan_name);
> > > +               /* chan_name is not used anymore by framework */
> > > +               kfree(chan_name);
> > > +       }
> > > +
> > > +       dsp_ipc->dev = dev;
> > > +
> > > +       dev_set_drvdata(dev, dsp_ipc);
> > > +
> > > +       dev_info(dev, "NXP i.MX DSP IPC initialized\n");
> > > +
> > > +       return devm_of_platform_populate(dev);
> > > +out:
> > > +       kfree(chan_name);
> > > +       for (j = 0; j < i; j++) {
> > > +               dsp_chan = &dsp_ipc->chans[j];
> > > +               mbox_free_channel(dsp_chan->ch);
> > > +       }
> > > +
> > > +       return ret;
> > > +}
> > > +
> > > +static const struct of_device_id imx_dsp_match[] = {
> > > +       { .compatible = "fsl,imx8qxp-dsp", },
> > > +       { /* Sentinel */ }
> > > +};
> > > +
> > > +static struct platform_driver imx_dsp_driver = {
> > > +       .driver = {
> > > +               .name = "imx-dsp",
> > > +               .of_match_table = imx_dsp_match,
> > > +       },
> > > +       .probe = imx_dsp_probe,
> > > +};
> > > +builtin_platform_driver(imx_dsp_driver);
> > > +
> > > +MODULE_AUTHOR("Daniel Baluta <daniel.baluta@nxp.com>");
> > > +MODULE_DESCRIPTION("IMX DSP IPC protocol driver");
> > > +MODULE_LICENSE("GPL v2");
> > > diff --git a/include/linux/firmware/imx/dsp.h b/include/linux/firmware/imx/dsp.h
> > > new file mode 100644
> > > index 000000000000..7562099c9e46
> > > --- /dev/null
> > > +++ b/include/linux/firmware/imx/dsp.h
> > > @@ -0,0 +1,67 @@
> > > +/* SPDX-License-Identifier: GPL-2.0+ */
> > > +/*
> > > + * Copyright 2019 NXP
> > > + *
> > > + * Header file for the DSP IPC implementation
> > > + */
> > > +
> > > +#ifndef _IMX_DSP_IPC_H
> > > +#define _IMX_DSP_IPC_H
> > > +
> > > +#include <linux/device.h>
> > > +#include <linux/types.h>
> > > +#include <linux/mailbox_client.h>
> > > +
> > > +#define DSP_MU_CHAN_NUM                4
> > > +
> > > +struct imx_dsp_chan {
> > > +       struct imx_dsp_ipc *ipc;
> > > +       struct mbox_client cl;
> > > +       struct mbox_chan *ch;
> > > +       char *name;
> > > +       int idx;
> > > +};
> > > +
> > > +struct imx_dsp_ops {
> > > +       void (*handle_reply)(struct imx_dsp_ipc *ipc);
> > > +       void (*handle_request)(struct imx_dsp_ipc *ipc);
> > > +};
> > > +
> > > +struct imx_dsp_ipc {
> > > +       /* Host <-> DSP communication uses 2 txdb and 2 rxdb channels */
> > > +       struct imx_dsp_chan chans[DSP_MU_CHAN_NUM];
> > > +       struct device *dev;
> > > +       struct imx_dsp_ops *ops;
> > > +       void *private_data;
> > > +};
> > > +
> > > +static inline void imx_dsp_set_data(struct imx_dsp_ipc *ipc, void *data)
> > > +{
> > > +       if (!ipc)
> > > +               return;
> > > +
> > > +       ipc->private_data = data;
> > > +}
> > > +
> > > +static inline void *imx_dsp_get_data(struct imx_dsp_ipc *ipc)
> > > +{
> > > +       if (!ipc)
> > > +               return NULL;
> > > +
> > > +       return ipc->private_data;
> > > +}
> > > +
> > > +#if IS_ENABLED(CONFIG_IMX_DSP)
> > > +
> > > +int imx_dsp_ring_doorbell(struct imx_dsp_ipc *dsp, unsigned int chan_idx);
> > > +
> > > +#else
> > > +
> > > +static inline int imx_dsp_ring_doorbell(struct imx_dsp_ipc *ipc,
> > > +                                       unsigned int chan_idx)
> > > +{
> > > +       return -ENOTSUPP;
> > > +}
> > > +
> > > +#endif
> > > +#endif /* _IMX_DSP_IPC_H */
> > > --
> > > 2.17.1
> > >
> >
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
