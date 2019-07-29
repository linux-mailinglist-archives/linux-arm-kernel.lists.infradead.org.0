Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8560178905
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 11:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tWvtYLfCA3G7YHZRf1dRj9WDy+8vq3TBPwAbnS1p4X0=; b=MDp/UrOH+VhiBf
	7aQQLnjTKL0ncKX0OsH23aaZcWALTwiGCvxjOw7o2cDAcRfQBZK9lWPyg7fKk9ldAhZVPdqQatL5P
	l3EjSm7WBda3TxWXeeOb9z5iaGcXDPgg3SyKG91/3tc47XzSd3SdDJ/26Y7JJvw6JVEqrN/xRhgxw
	bNk6ev/Ipw2a6aSY2v7B9QGmy0uDTUbt6o9Vc2PlM3vGUjy02Rh/hV7RHH5RvJpIXUI2FoX/6iFjS
	HqGmlkhJHqwhYKhLSGD16VFNYaBC35biSvqXBIL7/QNOkyd1LwZxIdY3sazpGJSOgngIuel6LakCG
	uzXYsmC58qxSrlDurMUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs2RI-00026U-2w; Mon, 29 Jul 2019 09:59:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs2R4-0001xY-Vj
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 09:59:20 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hs2R3-0003CH-A1; Mon, 29 Jul 2019 11:59:17 +0200
Message-ID: <1564394355.7633.5.camel@pengutronix.de>
Subject: Re: [PATCH 5/5] reset: Add support for resets provided by SCMI
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Date: Mon, 29 Jul 2019 11:59:15 +0200
In-Reply-To: <20190726135954.11078-6-sudeep.holla@arm.com>
References: <20190726135954.11078-1-sudeep.holla@arm.com>
 <20190726135954.11078-6-sudeep.holla@arm.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_025919_189750_335EE792 
X-CRM114-Status: GOOD (  26.49  )
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
Cc: Peng Fan <peng.fan@nxp.com>, Etienne Carriere <etienne.carriere@linaro.org>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>, wesleys@xilinx.com,
 aidapala@qti.qualcomm.com, linux-kernel@vger.kernel.org,
 Saeed Nowshadi <saeed.nowshadi@xilinx.com>,
 Bo Zhang <bozhang.zhang@broadcom.com>, Felix Burton <fburton@xilinx.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, pajay@qti.qualcomm.com,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

On Fri, 2019-07-26 at 14:59 +0100, Sudeep Holla wrote:
> On some ARM based systems, a separate Cortex-M based System Control
> Processor(SCP) provides the overall power, clock, reset and system
> control. System Control and Management Interface(SCMI) Message Protocol
> is defined for the communication between the Application Cores(AP)
> and the SCP.
> 
> Adds support for the resets provided using SCMI protocol for performing
> reset management of various devices present on the SoC. Various reset
> functionalities are achieved by the means of different ARM SCMI device
> operations provided by the ARM SCMI framework.
> 
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

thank you for the patch. I have a few suggestions below.

> ---
>  MAINTAINERS                |   1 +
>  drivers/reset/Kconfig      |  10 +++
>  drivers/reset/Makefile     |   1 +
>  drivers/reset/reset-scmi.c | 133 +++++++++++++++++++++++++++++++++++++
>  4 files changed, 145 insertions(+)
>  create mode 100644 drivers/reset/reset-scmi.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 783569e3c4b4..59df8f88b56d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -15545,6 +15545,7 @@ F:	drivers/clk/clk-sc[mp]i.c
>  F:	drivers/cpufreq/sc[mp]i-cpufreq.c
>  F:	drivers/firmware/arm_scpi.c
>  F:	drivers/firmware/arm_scmi/
> +F:	drivers/reset/reset-scmi.c
>  F:	include/linux/sc[mp]i_protocol.h
>  
>  SYSTEM RESET/SHUTDOWN DRIVERS
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index 21efb7d39d62..09dcc3bf3b7a 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -22,6 +22,16 @@ config RESET_A10SR
>  	  This option enables support for the external reset functions for
>  	  peripheral PHYs on the Altera Arria10 System Resource Chip.
>  
> +config RESET_ARM_SCMI
> +	tristate "Reset driver controlled via ARM SCMI interface"
> +	depends on ARM_SCMI_PROTOCOL || COMPILE_TEST

Should this have a

+	default ARM_SCMI_PROTOCOL

?	

> +	help
> +	  This driver provides support for reset signal/domains that are
> +	  controlled by firmware that implements the SCMI interface.
> +
> +	  This driver uses SCMI Message Protocol to interact with the
> +	  firmware providing all the reset signals.

s/providing/controlling/ ?

> +
>  config RESET_ATH79
>  	bool "AR71xx Reset Driver" if COMPILE_TEST
>  	default ATH79
> diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> index 61456b8f659c..2f1103d31938 100644
> --- a/drivers/reset/Makefile
> +++ b/drivers/reset/Makefile
> @@ -4,6 +4,7 @@ obj-y += hisilicon/
>  obj-$(CONFIG_ARCH_STI) += sti/
>  obj-$(CONFIG_ARCH_TEGRA) += tegra/
>  obj-$(CONFIG_RESET_A10SR) += reset-a10sr.o
> +obj-$(CONFIG_RESET_ARM_SCMI) += reset-scmi.o

s/RESET_ARM_SCMI/RESET_SCMI/ to match the driver/module name?

>  obj-$(CONFIG_RESET_ATH79) += reset-ath79.o
>  obj-$(CONFIG_RESET_AXS10X) += reset-axs10x.o
>  obj-$(CONFIG_RESET_BERLIN) += reset-berlin.o
> diff --git a/drivers/reset/reset-scmi.c b/drivers/reset/reset-scmi.c
> new file mode 100644
> index 000000000000..9e5d07cac2ed
> --- /dev/null
> +++ b/drivers/reset/reset-scmi.c
> @@ -0,0 +1,133 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * ARM System Control and Management Interface (ARM SCMI) reset driver
> + *
> + * Copyright (C) 2019 ARM Ltd.
> + */
> +
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset-controller.h>
> +#include <linux/scmi_protocol.h>
> +
> +/**
> + * struct scmi_reset_data - reset controller information structure
> + * @rcdev: reset controller entity
> + * @handle: ARM SCMI handle used for communication with system controller
> + * @dev: reset controller device pointer
> + */
> +struct scmi_reset_data {
> +	struct reset_controller_dev rcdev;
> +	const struct scmi_handle *handle;
> +	struct device *dev;

dev is unused, you could just remove it.

> +};
> +
> +#define to_scmi_reset_data(p)	\
> +	container_of((p), struct scmi_reset_data, rcdev)
> +
> +/**
> + * scmi_reset_assert() - assert device reset
> + * @rcdev: reset controller entity
> + * @id: ID of the reset to be asserted
> + *
> + * This function implements the reset driver op to assert a device's reset
> + * using the ARM SCMI protocol.
> + *
> + * Return: 0 for successful request, else a corresponding error value
> + */
> +static int
> +scmi_reset_assert(struct reset_controller_dev *rcdev, unsigned long id)
> +{
> +	struct scmi_reset_data *data = to_scmi_reset_data(rcdev);
> +	const struct scmi_handle *handle = data->handle;

This could be shortened to to_scmi_handle(rcdev), since none of the
other fields in scmi_reset_data are used by the reset_control_ops
callbacks.

> +	int ret;
> +
> +	ret = handle->reset_ops->assert(handle, id);
> +
> +	return ret;

No need for ret here, see _deassert() and _reset().

> +}
> +
> +/**
> + * scmi_reset_deassert() - deassert device reset
> + * @rcdev: reset controller entity
> + * @id: ID of the reset to be deasserted
> + *
> + * This function implements the reset driver op to deassert a device's reset
> + * using the ARM SCMI protocol.
> + *
> + * Return: 0 for successful request, else a corresponding error value
> + */
> +static int
> +scmi_reset_deassert(struct reset_controller_dev *rcdev, unsigned long id)
> +{
> +	struct scmi_reset_data *data = to_scmi_reset_data(rcdev);
> +	const struct scmi_handle *handle = data->handle;
> +
> +	return handle->reset_ops->deassert(handle, id);
> +}
> +
> +/**
> + * scmi_reset_reset() - reset the device
> + * @rcdev: reset controller entity
> + * @id: ID of the reset signal to be reset(assert + deassert)
> + *
> + * This function implements the reset driver op to reset a device's reset
> + * signal using the ARM SCMI protocol.

"to reset a device" or "to trigger a device's reset signal" would be a
more accurate description.

> + *
> + * Return: 0 for successful request, else a corresponding error value
> + */
> +static int
> +scmi_reset_reset(struct reset_controller_dev *rcdev, unsigned long id)
> +{
> +	struct scmi_reset_data *data = to_scmi_reset_data(rcdev);
> +	const struct scmi_handle *handle = data->handle;
> +
> +	return handle->reset_ops->reset(handle, id);
> +}
> +
> +static const struct reset_control_ops scmi_reset_ops = {
> +	.assert		= scmi_reset_assert,
> +	.deassert	= scmi_reset_deassert,
> +	.reset		= scmi_reset_reset,
> +};
> +
> +static int scmi_reset_probe(struct scmi_device *sdev)
> +{
> +	struct scmi_reset_data *data;
> +	struct device *dev = &sdev->dev;
> +	struct device_node *np = dev->of_node;
> +	const struct scmi_handle *handle = sdev->handle;
> +
> +	if (!handle || !handle->reset_ops)
> +		return -ENODEV;
> +
> +	data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	data->rcdev.ops = &scmi_reset_ops;
> +	data->rcdev.owner = THIS_MODULE;
> +	data->rcdev.of_node = np;

This is missing rcdev.nr_resets. When nr_resets is kept at zero, the
check in of_reset_simple_xlate will fail for any id.

> +	data->dev = dev;
> +
> +	return devm_reset_controller_register(dev, &data->rcdev);
> +}
> +
> +static const struct scmi_device_id scmi_id_table[] = {
> +	{ SCMI_PROTOCOL_RESET },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(scmi, scmi_id_table);
> +
> +static struct scmi_driver scmi_reset_driver = {
> +	.name = "scmi-reset",
> +	.probe = scmi_reset_probe,
> +	.id_table = scmi_id_table,
> +};
> +module_scmi_driver(scmi_reset_driver);
> +
> +MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
> +MODULE_DESCRIPTION("ARM SCMI clock driver");

s/clock/reset controller/

> +MODULE_LICENSE("GPL v2");

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
