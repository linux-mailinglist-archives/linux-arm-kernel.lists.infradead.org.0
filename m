Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09C46302B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 07:48:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MxlnxCj/RvgwuefgVLMMKqMGjos9hvanSnLxo/rMog=; b=ErAu1sy73Y0HFA
	lgtkAuIVcgp34cQ/h7/nSmIieEpSijVMfk1yxCekdh0B5KSId5qd5wVspzDO4rDgaajBkq/hhf0Qd
	p999Yyps4Q0zcpaFpI1jEem31er7rYZwm0iDNP+cNF/V7TsZKNQQWYjCQrY0WMaxpDFJjvPTBLYgk
	0Q/64PR/SE2PjBK9yp9Q7gmN8s1dYbMDVBY1rWN79ocU9E0LEr2rTBsTCn1+H6GnrwxY01s5/nM7x
	UsV7btPpVYbnJUSDJk5fosLkpxHRtgZGSdcFZpCJuOm0Cktk0d8kuwYOaF1ngfrTwPu8X0PSDCRPK
	ox680EyAFGXpXjDD46qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkize-0003cT-Te; Tue, 09 Jul 2019 05:48:47 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkizS-0003c4-Ce
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 05:48:36 +0000
Received: by mail-wr1-x443.google.com with SMTP id a10so18422297wrp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 22:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CNN2kJc+nWrTuiXZEL6GkuVZVuX+Nw04FbBGD7IU+LE=;
 b=lqjpDQkAZeYNEQ+sEWPveNoi5a1wx01TcknFbfj1ITpgr/Qhpf3ZfyGbfGH1gkNePK
 VJ4jOwsvWQ0hE/cR8t12CYteK9N4tX+ipFo87rmV2VUnjsp8x876k3/fyKnbfarOV+vo
 5QEXYY+wwxVCSL89ABGSSQAIhVQVST0D9apQgwOgsao7m6+yxrl3nW/xUWUJoM6EvBba
 6TxDA7bjQeWBJFJPKZcGChL8mvm37bpuctuZxZ3mDv8uRDhhmPv28DQ7qn0eJn+VuCSc
 F/1ruD0LMLgkjvZEGywE3qPPoJW7Q0Dp23Ss9e+0s6EDDStEgCWqyXLpOfMGpeWyOFMJ
 CbDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CNN2kJc+nWrTuiXZEL6GkuVZVuX+Nw04FbBGD7IU+LE=;
 b=uhJzpYRy3p/BdFi2WsbdETOrpihsfiNJ0vgjmPXDn2b1i6P+ehYbEs69n0IFa1H/qV
 iuRs0a0iTSKOjNLSKrskFhf0nIe6gt9p/aUoktcX4Zr4HuEz91XTCv+4WZh6yqDVRz0F
 eDXTBeN5lsH9nPBv9ylwD9YeMZfDwfG41LO1ye7/2R9iBxIdAK+FV+g3g1Y6GfNa4x1d
 DcPAVOtQMFueMiwHzWfMxlVzdhSDILFmAoX47lgOieTpWLQmlugtKNVnFMhdM4bi1yKg
 1HudEIKboYtu8fNUwvC3NInZNPdfDzjt5OSKx/7S3lFDDR+SveE0SQ3QzWo7xSGa3SnB
 5o1w==
X-Gm-Message-State: APjAAAVSgS/BPLFh+sFZlwqYU6g4D7HnVHaXuNaNKP44Y3bcyJEv13m7
 N3EGb40/fAEGP2EEki2fH1N6uBwf8e+XolDThJ4=
X-Google-Smtp-Source: APXvYqx0FZcur7ze+PmaoG3LMB6+HzCJzBe4KY7ZuSc+kzByCrpvYHptgS/2GwByhfvQ4sAjm2o2mRlZvIClkYTo3RM=
X-Received: by 2002:a5d:46cf:: with SMTP id g15mr3688002wrs.93.1562651312263; 
 Mon, 08 Jul 2019 22:48:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190627081205.22065-1-daniel.baluta@nxp.com>
 <20190627081205.22065-2-daniel.baluta@nxp.com>
In-Reply-To: <20190627081205.22065-2-daniel.baluta@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 9 Jul 2019 08:48:20 +0300
Message-ID: <CAEnQRZAGTdMpsnH-F_Xoaae0+nX8WTqYOrMJUjeQ6vhWvZ1y1Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] firmware: imx: Add DSP IPC protocol interface
To: Daniel Baluta <daniel.baluta@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_224834_459793_01D647D9 
X-CRM114-Status: GOOD (  28.59  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oleksij,

Any comments on this?


On Thu, Jun 27, 2019 at 11:14 AM Daniel Baluta <daniel.baluta@nxp.com> wrote:
>
> Some of i.MX8 processors (e.g i.MX8QM, i.MX8QXP) contain
> the Tensilica HiFi4 DSP for advanced pre- and post-audio
> processing.
>
> The communication between Host CPU and DSP firmware is
> taking place using a shared memory area for message passing
> and a dedicated Messaging Unit for notifications.
>
> DSP IPC protocol driver offers a doorbell interface using
> imx-mailbox API.
>
> We use 4 MU channels (2 x TXDB, 2 x RXDB) to implement a
> request-reply protocol.
>
> Connection 0 (txdb0, rxdb0):
>         - Host writes messasge to shared memory [SHMEM]
>         - Host sends a request [MU]
>         - DSP handles request [SHMEM]
>         - DSP sends reply [MU]
>
> Connection 1 (txdb1, rxdb1):
>         - DSP writes a message to shared memory [SHMEM]
>         - DSP sends a request [MU]
>         - Host handles request [SHMEM]
>         - Host sends reply [MU]
>
> The protocol driver will be used by a Host client to
> communicate with the DSP. First client will be the i.MX8
> part from Sound Open Firmware infrastructure.
>
> The protocol drivers offers the following interface:
>
> On Tx:
>    - imx_dsp_ring_doorbell, will be called to notify the DSP
>    that it needs to handle a request.
>
> On Rx:
>    - clients need to provide two callbacks:
>         .handle_reply
>         .handle_request
>   - the callbacks will be used by the protocol driver on
>     notification arrival from DSP.
>
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
>  drivers/firmware/imx/Kconfig     |  11 +++
>  drivers/firmware/imx/Makefile    |   1 +
>  drivers/firmware/imx/imx-dsp.c   | 142 +++++++++++++++++++++++++++++++
>  include/linux/firmware/imx/dsp.h |  67 +++++++++++++++
>  4 files changed, 221 insertions(+)
>  create mode 100644 drivers/firmware/imx/imx-dsp.c
>  create mode 100644 include/linux/firmware/imx/dsp.h
>
> diff --git a/drivers/firmware/imx/Kconfig b/drivers/firmware/imx/Kconfig
> index 42b566f8903f..ddb241708c31 100644
> --- a/drivers/firmware/imx/Kconfig
> +++ b/drivers/firmware/imx/Kconfig
> @@ -1,4 +1,15 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> +config IMX_DSP
> +       bool "IMX DSP Protocol driver"
> +       depends on IMX_MBOX
> +       help
> +         This enables DSP IPC protocol between host CPU (Linux)
> +         and the firmware running on DSP.
> +         DSP exists on some i.MX8 processors (e.g i.MX8QM, i.MX8QXP).
> +
> +         It acts like a doorbell. Client might use shared memory to
> +         exchange information with DSP side.
> +
>  config IMX_SCU
>         bool "IMX SCU Protocol driver"
>         depends on IMX_MBOX
> diff --git a/drivers/firmware/imx/Makefile b/drivers/firmware/imx/Makefile
> index 802c4ad8e8f9..08bc9ddfbdfb 100644
> --- a/drivers/firmware/imx/Makefile
> +++ b/drivers/firmware/imx/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0
> +obj-$(CONFIG_IMX_DSP)          += imx-dsp.o
>  obj-$(CONFIG_IMX_SCU)          += imx-scu.o misc.o imx-scu-irq.o
>  obj-$(CONFIG_IMX_SCU_PD)       += scu-pd.o
> diff --git a/drivers/firmware/imx/imx-dsp.c b/drivers/firmware/imx/imx-dsp.c
> new file mode 100644
> index 000000000000..c4d34a2fbff3
> --- /dev/null
> +++ b/drivers/firmware/imx/imx-dsp.c
> @@ -0,0 +1,142 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2019 NXP
> + *  Author: Daniel Baluta <daniel.baluta@nxp.com>
> + *
> + * Implementation of the DSP IPC interface (host side)
> + */
> +
> +#include <linux/firmware/imx/dsp.h>
> +#include <linux/kernel.h>
> +#include <linux/mailbox_client.h>
> +#include <linux/module.h>
> +#include <linux/of_platform.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +
> +/*
> + * imx_dsp_ring_doorbell - triggers an interrupt on the other side (DSP)
> + *
> + * @dsp: DSP IPC handle
> + * @chan_idx: index of the channel where to trigger the interrupt
> + *
> + * Returns non-negative value for success, negative value for error
> + */
> +int imx_dsp_ring_doorbell(struct imx_dsp_ipc *ipc, unsigned int idx)
> +{
> +       int ret;
> +       struct imx_dsp_chan *dsp_chan;
> +
> +       if (idx >= DSP_MU_CHAN_NUM)
> +               return -EINVAL;
> +
> +       dsp_chan = &ipc->chans[idx];
> +       ret = mbox_send_message(dsp_chan->ch, NULL);
> +       if (ret < 0)
> +               return ret;
> +
> +       return 0;
> +}
> +EXPORT_SYMBOL(imx_dsp_ring_doorbell);
> +
> +/*
> + * imx_dsp_handle_rx - rx callback used by imx mailbox
> + *
> + * @c: mbox client
> + * @msg: message received
> + *
> + * Users of DSP IPC will need to privde handle_reply and handle_request
> + * callbacks.
> + */
> +static void imx_dsp_handle_rx(struct mbox_client *c, void *msg)
> +{
> +       struct imx_dsp_chan *chan = container_of(c, struct imx_dsp_chan, cl);
> +
> +       if (chan->idx == 0) {
> +               chan->ipc->ops->handle_reply(chan->ipc);
> +       } else {
> +               chan->ipc->ops->handle_request(chan->ipc);
> +               imx_dsp_ring_doorbell(chan->ipc, 1);
> +       }
> +}
> +
> +static int imx_dsp_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct imx_dsp_ipc *dsp_ipc;
> +       struct imx_dsp_chan *dsp_chan;
> +       struct mbox_client *cl;
> +       char *chan_name;
> +       int ret;
> +       int i, j;
> +
> +       dsp_ipc = devm_kzalloc(dev, sizeof(*dsp_ipc), GFP_KERNEL);
> +       if (!dsp_ipc)
> +               return -ENOMEM;
> +
> +       for (i = 0; i < DSP_MU_CHAN_NUM; i++) {
> +               if (i < 2)
> +                       chan_name = kasprintf(GFP_KERNEL, "txdb%d", i);
> +               else
> +                       chan_name = kasprintf(GFP_KERNEL, "rxdb%d", i - 2);
> +
> +               if (!chan_name)
> +                       return -ENOMEM;
> +
> +               dsp_chan = &dsp_ipc->chans[i];
> +               cl = &dsp_chan->cl;
> +               cl->dev = dev;
> +               cl->tx_block = false;
> +               cl->knows_txdone = true;
> +               cl->rx_callback = imx_dsp_handle_rx;
> +
> +               dsp_chan->ipc = dsp_ipc;
> +               dsp_chan->idx = i % 2;
> +               dsp_chan->ch = mbox_request_channel_byname(cl, chan_name);
> +               if (IS_ERR(dsp_chan->ch)) {
> +                       ret = PTR_ERR(dsp_chan->ch);
> +                       if (ret != -EPROBE_DEFER)
> +                               dev_err(dev, "Failed to request mbox chan %s ret %d\n",
> +                                       chan_name, ret);
> +                       goto out;
> +               }
> +
> +               dev_dbg(dev, "request mbox chan %s\n", chan_name);
> +               /* chan_name is not used anymore by framework */
> +               kfree(chan_name);
> +       }
> +
> +       dsp_ipc->dev = dev;
> +
> +       dev_set_drvdata(dev, dsp_ipc);
> +
> +       dev_info(dev, "NXP i.MX DSP IPC initialized\n");
> +
> +       return devm_of_platform_populate(dev);
> +out:
> +       kfree(chan_name);
> +       for (j = 0; j < i; j++) {
> +               dsp_chan = &dsp_ipc->chans[j];
> +               mbox_free_channel(dsp_chan->ch);
> +       }
> +
> +       return ret;
> +}
> +
> +static const struct of_device_id imx_dsp_match[] = {
> +       { .compatible = "fsl,imx8qxp-dsp", },
> +       { /* Sentinel */ }
> +};
> +
> +static struct platform_driver imx_dsp_driver = {
> +       .driver = {
> +               .name = "imx-dsp",
> +               .of_match_table = imx_dsp_match,
> +       },
> +       .probe = imx_dsp_probe,
> +};
> +builtin_platform_driver(imx_dsp_driver);
> +
> +MODULE_AUTHOR("Daniel Baluta <daniel.baluta@nxp.com>");
> +MODULE_DESCRIPTION("IMX DSP IPC protocol driver");
> +MODULE_LICENSE("GPL v2");
> diff --git a/include/linux/firmware/imx/dsp.h b/include/linux/firmware/imx/dsp.h
> new file mode 100644
> index 000000000000..7562099c9e46
> --- /dev/null
> +++ b/include/linux/firmware/imx/dsp.h
> @@ -0,0 +1,67 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright 2019 NXP
> + *
> + * Header file for the DSP IPC implementation
> + */
> +
> +#ifndef _IMX_DSP_IPC_H
> +#define _IMX_DSP_IPC_H
> +
> +#include <linux/device.h>
> +#include <linux/types.h>
> +#include <linux/mailbox_client.h>
> +
> +#define DSP_MU_CHAN_NUM                4
> +
> +struct imx_dsp_chan {
> +       struct imx_dsp_ipc *ipc;
> +       struct mbox_client cl;
> +       struct mbox_chan *ch;
> +       char *name;
> +       int idx;
> +};
> +
> +struct imx_dsp_ops {
> +       void (*handle_reply)(struct imx_dsp_ipc *ipc);
> +       void (*handle_request)(struct imx_dsp_ipc *ipc);
> +};
> +
> +struct imx_dsp_ipc {
> +       /* Host <-> DSP communication uses 2 txdb and 2 rxdb channels */
> +       struct imx_dsp_chan chans[DSP_MU_CHAN_NUM];
> +       struct device *dev;
> +       struct imx_dsp_ops *ops;
> +       void *private_data;
> +};
> +
> +static inline void imx_dsp_set_data(struct imx_dsp_ipc *ipc, void *data)
> +{
> +       if (!ipc)
> +               return;
> +
> +       ipc->private_data = data;
> +}
> +
> +static inline void *imx_dsp_get_data(struct imx_dsp_ipc *ipc)
> +{
> +       if (!ipc)
> +               return NULL;
> +
> +       return ipc->private_data;
> +}
> +
> +#if IS_ENABLED(CONFIG_IMX_DSP)
> +
> +int imx_dsp_ring_doorbell(struct imx_dsp_ipc *dsp, unsigned int chan_idx);
> +
> +#else
> +
> +static inline int imx_dsp_ring_doorbell(struct imx_dsp_ipc *ipc,
> +                                       unsigned int chan_idx)
> +{
> +       return -ENOTSUPP;
> +}
> +
> +#endif
> +#endif /* _IMX_DSP_IPC_H */
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
