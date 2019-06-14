Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2F54583C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lB1rpSjjRZeMSaVY1Et5ZpMx7J13LubTUgdgspMhlqE=; b=ajPIATh6yMEZvh
	cKAX9CrKZGHrLSVdx/swJlPFca1riLdB2/sirznvIs+VeCjrKfw2BsAM0dKp8AeZyTV++3Yi6YYMS
	GzIlfkarzkZLjq6137usf9FMyLgisYymG9hp/tGTDcM31zOO1zMwUHVXSRqSJ90EfeBu8R/Fm+cvM
	OPUzby4ASPOxF6EGSdqGD5urbe1en4xalmNmJaOpiVnqZDj1Ai6cg65+BdcKIB3Y1kUV9kTWhfgvh
	4CJR0c2ec8bSypQzJg0BAuqisXPyoFGTOm92zetezIvdEbCzRJvT6k+Vu7j/BamVMy39P7wJ+1RDV
	jqPI/WssZZQo/CXLnDKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbiCP-0008N9-Nr; Fri, 14 Jun 2019 09:08:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbiCA-0008MI-65
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 09:08:28 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1hbiC0-0005HQ-NT; Fri, 14 Jun 2019 11:08:16 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1hbiBz-0001J6-Ji; Fri, 14 Jun 2019 11:08:15 +0200
Date: Fri, 14 Jun 2019 11:08:15 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: daniel.baluta@nxp.com
Subject: Re: [PATCH 1/2] firmware: imx: Add DSP IPC protocol driver
Message-ID: <20190614090815.lb2vnncqnom3fgu2@pengutronix.de>
References: <20190614081650.11880-1-daniel.baluta@nxp.com>
 <20190614081650.11880-2-daniel.baluta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614081650.11880-2-daniel.baluta@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:44:09 up 27 days, 15:02, 49 users,  load average: 0.03, 0.16, 0.24
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_020826_400405_E3E5BE96 
X-CRM114-Status: GOOD (  33.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aisheng.dong@nxp.com, mark.rutland@arm.com, daniel.baluta@gmail.com,
 anson.huang@nxp.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-imx@nxp.com, festevam@gmail.com, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

please, see my review inline.

On Fri, Jun 14, 2019 at 04:16:49PM +0800, daniel.baluta@nxp.com wrote:
> From: Daniel Baluta <daniel.baluta@nxp.com>
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
> 	- Host sends a request [MU]
> 	- DSP handles request [SHMEM]
> 	- DSP sends reply [MU]
> 
> Connection 1 (txdb1, rxdb1):
> 	- DSP writes a message to shared memory [SHMEM]
> 	- DSP sends a request [MU]
> 	- Host handles request [SHMEM]
> 	- Host sends reply [MU]
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
> 	.handle_reply
> 	.handle_request
>   - the callbacks will be used by the protocol driver on
>     notification arrival from DSP.
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
>  drivers/firmware/imx/Kconfig     |  11 ++
>  drivers/firmware/imx/Makefile    |   1 +
>  drivers/firmware/imx/imx-dsp.c   | 167 +++++++++++++++++++++++++++++++
>  include/linux/firmware/imx/dsp.h |  61 +++++++++++
>  4 files changed, 240 insertions(+)
>  create mode 100644 drivers/firmware/imx/imx-dsp.c
>  create mode 100644 include/linux/firmware/imx/dsp.h
> 
> diff --git a/drivers/firmware/imx/Kconfig b/drivers/firmware/imx/Kconfig
> index 42b566f8903f..383996b679a8 100644
> --- a/drivers/firmware/imx/Kconfig
> +++ b/drivers/firmware/imx/Kconfig
> @@ -1,4 +1,15 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> +config IMX_DSP
> +	bool "IMX DSP Protocol driver"
> +	depends on IMX_MBOX
> +	help
> +	  This enables DSP IPC protocol between host CPU (Linux)
> +	  and the firmware running on DSP.
> +	  DSP exists on some i.MX8 processors (e.g i.MX8QM, i.MX8QXP).
> +
> +          It acts like a doorbell. Client might use shared memory to
> +	  exchange information with DSP side.
> +
>  config IMX_SCU
>  	bool "IMX SCU Protocol driver"
>  	depends on IMX_MBOX
> diff --git a/drivers/firmware/imx/Makefile b/drivers/firmware/imx/Makefile
> index 802c4ad8e8f9..08bc9ddfbdfb 100644
> --- a/drivers/firmware/imx/Makefile
> +++ b/drivers/firmware/imx/Makefile
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0
> +obj-$(CONFIG_IMX_DSP)		+= imx-dsp.o
>  obj-$(CONFIG_IMX_SCU)		+= imx-scu.o misc.o imx-scu-irq.o
>  obj-$(CONFIG_IMX_SCU_PD)	+= scu-pd.o
> diff --git a/drivers/firmware/imx/imx-dsp.c b/drivers/firmware/imx/imx-dsp.c
> new file mode 100644
> index 000000000000..953fd364ad76
> --- /dev/null
> +++ b/drivers/firmware/imx/imx-dsp.c
> @@ -0,0 +1,167 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2018 NXP
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
> +static struct imx_dsp_ipc *imx_dsp_handle;
> +
> +/*
> + * Get the default handle used by DSP
> + */
> +int imx_dsp_get_handle(struct imx_dsp_ipc **ipc)
> +{
> +	if (!imx_dsp_handle)
> +		return -EPROBE_DEFER;
> +
> +	*ipc = imx_dsp_handle;
> +	return 0;
> +}
> +EXPORT_SYMBOL(imx_dsp_get_handle);

Please, extract needed device or handle form device tree. The consumer
should pars own device tree node and get the phandle to the dsp node.

> +void imx_dsp_set_data(struct imx_dsp_ipc *ipc, void *data)
> +{
> +	if (!ipc)
> +		return;
> +
> +	ipc->private_data = data;
> +}
> +EXPORT_SYMBOL(imx_dsp_set_data);
> +
> +void *imx_dsp_get_data(struct imx_dsp_ipc *ipc)
> +{
> +	if (!ipc)
> +		return NULL;
> +
> +	return ipc->private_data;
> +}
> +EXPORT_SYMBOL(imx_dsp_get_data);
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
> +	int ret;
> +	struct imx_dsp_chan *dsp_chan;
> +
> +	if (idx > DSP_MU_CHAN_NUM)
> +		return -EINVAL;

On this test idx may overflow. DSP_MU_CHAN_NUM is 4, means idx can be:
0, 1, 2, 3. In you case idx == 4 is allowed, so the caller will be able
to corrupt the rest of imx_dsp_ipc struct.

> +	dsp_chan = &ipc->chans[idx];
> +	ret = mbox_send_message(dsp_chan->ch, NULL);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
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
> +	struct imx_dsp_chan *chan = container_of(c, struct imx_dsp_chan, cl);
> +
> +	if (chan->idx == 0) {
> +		chan->ipc->ops->handle_reply(chan->ipc);
> +	} else {
> +		chan->ipc->ops->handle_request(chan->ipc);
> +		imx_dsp_ring_doorbell(chan->ipc, 1);
> +	}
> +}
> +
> +static int imx_dsp_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct imx_dsp_ipc *dsp_ipc;
> +	struct imx_dsp_chan *dsp_chan;
> +	struct mbox_client *cl;
> +	char *chan_name;
> +	int ret;
> +	int i;
> +
> +	dsp_ipc = devm_kzalloc(dev, sizeof(*dsp_ipc), GFP_KERNEL);
> +	if (!dsp_ipc)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < DSP_MU_CHAN_NUM; i++) {
> +		if (i < 2)
> +			chan_name = kasprintf(GFP_KERNEL, "txdb%d", i);
> +		else
> +			chan_name = kasprintf(GFP_KERNEL, "rxdb%d", i - 2);
> +
> +		if (!chan_name)
> +			return -ENOMEM;
> +
> +		dsp_chan = &dsp_ipc->chans[i];
> +		cl = &dsp_chan->cl;
> +		cl->dev = dev;
> +		cl->tx_block = false;
> +		cl->knows_txdone = true;
> +		cl->rx_callback = imx_dsp_handle_rx;
> +
> +		dsp_chan->ipc = dsp_ipc;
> +		dsp_chan->idx = i % 2;
> +		dsp_chan->ch = mbox_request_channel_byname(cl, chan_name);
> +		if (IS_ERR(dsp_chan->ch)) {
> +			ret = PTR_ERR(dsp_chan->ch);
> +			if (ret != -EPROBE_DEFER)
> +				dev_err(dev, "Failed to request mbox chan %s ret %d\n",
> +					chan_name, ret);
> +			return ret;

On the error you will leak the memory previously allocated chan_name.
And you should call mbox_free_channel() for each previously registered
channel in this loop. 

> +		}
> +
> +		dev_dbg(dev, "request mbox chan %s\n", chan_name);
> +		/* chan_name is not used anymore by framework */
> +		kfree(chan_name);
> +	}
> +
> +	dsp_ipc->dev = dev;
> +
> +	imx_dsp_handle = dsp_ipc;

bad idea. What happens if multiple dsp nodes are registered in the
device tree?

> +	dev_info(dev, "NXP i.MX DSP IPC initialized\n");
> +
> +	return devm_of_platform_populate(dev);
> +}
> +
> +static const struct of_device_id imx_dsp_match[] = {
> +	{ .compatible = "fsl,imx-dsp", },

i would prefer to have chip name in the compatible. For example
fsl,imx8qm-dsp. Soon or later we will need to define some quirks
for on or another chip.

> +	{ /* Sentinel */ }
> +};
> +
> +static struct platform_driver imx_dsp_driver = {
> +	.driver = {
> +		.name = "imx-dsp",
> +		.of_match_table = imx_dsp_match,
> +	},
> +	.probe = imx_dsp_probe,
> +};
> +builtin_platform_driver(imx_dsp_driver);
> +
> +MODULE_AUTHOR("Daniel Baluta <daniel.baluta@nxp.com>");
> +MODULE_DESCRIPTION("IMX DSP IPC protocol driver");
> +MODULE_LICENSE("GPL v2");
> diff --git a/include/linux/firmware/imx/dsp.h b/include/linux/firmware/imx/dsp.h
> new file mode 100644
> index 000000000000..75637d8fab34
> --- /dev/null
> +++ b/include/linux/firmware/imx/dsp.h
> @@ -0,0 +1,61 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright 2018 NXP
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
> +#define DSP_MU_CHAN_NUM		4
> +
> +struct imx_dsp_chan {
> +	struct imx_dsp_ipc *ipc;
> +	struct mbox_client cl;
> +	struct mbox_chan *ch;
> +	int idx;
> +};
> +
> +struct imx_dsp_ops {
> +	void (*handle_reply)(struct imx_dsp_ipc *ipc);
> +	void (*handle_request)(struct imx_dsp_ipc *ipc);
> +};
> +
> +struct imx_dsp_ipc {
> +	/* Host <-> DSP communication uses 2 txdb and 2 rxdb channels */
> +	struct imx_dsp_chan chans[DSP_MU_CHAN_NUM];
> +	struct device *dev;
> +	struct imx_dsp_ops *ops;
> +	void *private_data;
> +};
> +
> +#if IS_ENABLED(CONFIG_IMX_DSP)
> +
> +int imx_dsp_ring_doorbell(struct imx_dsp_ipc *dsp, unsigned int chan_idx);
> +int imx_dsp_get_handle(struct imx_dsp_ipc **ipc);
> +void imx_dsp_set_data(struct imx_dsp_ipc *ipc, void *data);
> +void *imx_dsp_get_data(struct imx_dsp_ipc *ipc);
> +
> +#else
> +
> +static inline int imx_dsp_get_handle(struct imx_dsp_ipc **ipc)
> +{
> +	return -EIO;

please, use -ENOTSUPP instead.

> +}
> +
> +static inline int imx_dsp_ring_doorbell(struct imx_dsp_ipc *ipc,
> +					unsigned int chan_idx)
> +{
> +	return -EIO;
> +}
> +
> +void imx_dsp_set_data(struct imx_dsp_ipc *ipc, void *data) { }
> +void *imx_dsp_get_data(struct imx_dsp_ipc *ipc) { return NULL; }
> +
> +#endif
> +#endif /* _IMX_DSP_IPC_H */
> -- 
> 2.17.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
