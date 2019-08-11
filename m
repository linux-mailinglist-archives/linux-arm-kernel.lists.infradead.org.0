Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA309891CE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 15:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fmMCmLQutdojKSJK2Yd0dTZd8fIA4m61wbh/59ApOEo=; b=X36FqznX6YNKy4
	zbG2TcZk0Z+vnXnZ3NF3r9ZhOP8ZhzmUd5q5qurGYqQH9cjDJRzCBOYXD8xv9XERBXMBsUEp1d2kr
	e4681QkJJeiUs5C+7P/tW137ftY28DITp1M4vRYghPvkJ73qXihsl5xw3pTEseBROhS0lAMfUM01s
	EhpUB5rrAgHF/jjJ4AyR3W+4s1wL8XDB2Dxj3MUvT+LwGITs+pZfDSS4ZKrHiQHs+5pnHEI5ZB0QC
	j6bQrWjXxz2ibHJ6FpZ8jMGr1mXiuxA9L7oF4vdSXsN1qibVf4jr5sj/JP7qA+kO2Ie3ZyZ+5lJU2
	pCgJXkQ/RWCmQbczIgmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwnnW-0007Qk-Dg; Sun, 11 Aug 2019 13:22:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwnnN-0007QH-Ln
 for linux-arm-kernel@lists.infradead.org; Sun, 11 Aug 2019 13:22:03 +0000
Received: by mail-wm1-x341.google.com with SMTP id m125so5524569wmm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 06:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=81qCuUFMQOYN3/BeLVBcBqQxmpC5bqESCxl9zrnjH3k=;
 b=kBj5/dpDPO+wXC+oRm4zmnYnm0FULXvPtJQZN6J9RPexldVHiByxMD5XdJ60JjobGg
 e1pyZf3kTmM4fuWiyTHHS4QWc/cZPUM8uy+B9PkK1uK2DkVuxG2BOrV5LNp9yENjxAvB
 jMvGVhlay0fCno8inE0XZ9bentQdGfahhNxVQ6YpLt0xaRxCiL2xhuevsk0gcb1o9FXI
 C3Rzi36AC9mwcze2kmW+PbffVxWSYx/U3/wyhcudIw20pXXnapwvO9GtIQKbPxvhAGTh
 jAssWv+PZgemTnO5ZRwApRL0hG4IL9kFD6RKRK6KvMFsbXF0rgtYDKmwzGglsCv050tr
 1N+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=81qCuUFMQOYN3/BeLVBcBqQxmpC5bqESCxl9zrnjH3k=;
 b=uIoNez5N9ORBel6ExFO/iIAUe9mnPTX4adV1QtKbobH8pY0SSRpvFlqp1D7OrgIh+5
 y4pzlhXULFmip6/1Ui2n2yMeW1EjcN1ky0fcv9RqCF38o5ig3acTGfL5Cnve46qa4kmc
 QfUs2xTN4MqONl7+TTDkETReEc1oVqzrs/fSjiz0gCO4c+fsGRHRE0LTdMAXm9w12Cog
 peOU9wbHOCta9WvoWQ+jKd3OXe8vhTmnxdb98WsZu2c5zERXqjoQ2nlHM7ASK0xDR1fn
 ipFClTf5mhfqLcrjyKLDSyYMevxxvnkXS70laj8lNm+k6BtwTh9Af9yNxxtiWBBur5+w
 EHVg==
X-Gm-Message-State: APjAAAUVYkciZdZov7IurdBfW0vOFmY+AohEKw3mg/HAK5lxleL+jFMI
 8pHFuuMjtNPJg8Rjhtf/5ScknmEYqLsXnHvbJfI=
X-Google-Smtp-Source: APXvYqylMZswf1rMSSiHjfMCMktE+XgCIppYE/Z8Jh+rAsaxisML/J2VToFtYyDZD103oRWe8pdelyFmLi7hF27Mq2g=
X-Received: by 2002:a1c:c188:: with SMTP id r130mr21292543wmf.73.1565529719450; 
 Sun, 11 Aug 2019 06:21:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190801095636.22944-1-daniel.baluta@nxp.com>
In-Reply-To: <20190801095636.22944-1-daniel.baluta@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Sun, 11 Aug 2019 16:21:47 +0300
Message-ID: <CAEnQRZDemAWhszuKu=BeOQcGsfK=TA5QJWuszhPQtoFj93pL0w@mail.gmail.com>
Subject: Re: [PATCH v4] firmware: imx: Add DSP IPC protocol interface
To: Daniel Baluta <daniel.baluta@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_062201_744827_09E8BE37 
X-CRM114-Status: GOOD (  30.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Sridharan, Ranjani" <ranjani.sridharan@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, tglx@linutronix.de,
 Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

Can you please have a look at this when you have some time?

Basically, we need this patch for imx8 SOF Linux driver:

https://github.com/thesofproject/linux/pull/1048

I already got:

Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>

For an older version of this patch.

thanks,
Daniel.

On Thu, Aug 1, 2019 at 1:02 PM Daniel Baluta <daniel.baluta@nxp.com> wrote:
>
> Some of i.MX8 processors (e.g i.MX8QM, i.MX8QXP) contain
> the Tensilica HiFi4 DSP for advanced pre- and post-audio
> processing.
>
> The communication between Host CPU and DSP firmware is
> taking place using a shared memory area for message passing
> and a dedicated Messaging Unit for notifications.
>
> DSP IPC protocol offers a doorbell interface using
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
> The protocol interface will be used by a Host client to
> communicate with the DSP. First client will be the i.MX8
> part from Sound Open Firmware infrastructure.
>
> The protocol offers the following interface:
>
> On Tx:
>    - imx_dsp_ring_doorbell, will be called to notify the DSP
>    that it needs to handle a request.
>
> On Rx:
>    - clients need to provide two callbacks:
>         .handle_reply
>         .handle_request
>   - the callbacks will be used by the protocol on
>     notification arrival from DSP.
>
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
> Changes since v3:
>         - Added remove function
>
>  drivers/firmware/imx/Kconfig     |  11 +++
>  drivers/firmware/imx/Makefile    |   1 +
>  drivers/firmware/imx/imx-dsp.c   | 155 +++++++++++++++++++++++++++++++
>  include/linux/firmware/imx/dsp.h |  67 +++++++++++++
>  4 files changed, 234 insertions(+)
>  create mode 100644 drivers/firmware/imx/imx-dsp.c
>  create mode 100644 include/linux/firmware/imx/dsp.h
>
> diff --git a/drivers/firmware/imx/Kconfig b/drivers/firmware/imx/Kconfig
> index 42b566f8903f..0dbee32da4c6 100644
> --- a/drivers/firmware/imx/Kconfig
> +++ b/drivers/firmware/imx/Kconfig
> @@ -1,4 +1,15 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> +config IMX_DSP
> +       bool "IMX DSP Protocol driver"
> +       depends on IMX_MBOX
> +       help
> +         This enables DSP IPC protocol between host AP (Linux)
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
> index 000000000000..a43d2db5cbdb
> --- /dev/null
> +++ b/drivers/firmware/imx/imx-dsp.c
> @@ -0,0 +1,155 @@
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
> +       device_set_of_node_from_dev(&pdev->dev, pdev->dev.parent);
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
> +static int imx_dsp_remove(struct platform_device *pdev)
> +{
> +       struct imx_dsp_chan *dsp_chan;
> +       struct imx_dsp_ipc *dsp_ipc;
> +       int i;
> +
> +       dsp_ipc = dev_get_drvdata(&pdev->dev);
> +
> +       for (i = 0; i < DSP_MU_CHAN_NUM; i++) {
> +               dsp_chan = &dsp_ipc->chans[i];
> +               mbox_free_channel(dsp_chan->ch);
> +       }
> +
> +       return 0;
> +}
> +
> +static struct platform_driver imx_dsp_driver = {
> +       .driver = {
> +               .name = "imx-dsp",
> +       },
> +       .probe = imx_dsp_probe,
> +       .remove = imx_dsp_remove,
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
