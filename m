Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E144CAB2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 11:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vzQxWaCGVrMVyYjfFrvEIkiklv9E8Xdf0O1Sy5r44GY=; b=ru9BuFVAB8Rcrz
	HzhhpVpgdR+sIPCHkxWF5rz2DOha2K0XRsOqL+h3j+XORYC36UJ5cd+dRbAgb8GaJ1rvsdOKujn7F
	Hy+uAwuZCQ18iSQYciFx3sPD6SmiqfihcmygYgB2ipKVlLW2Br5jcyk22HeJq7sDbtGRj2SMyj/t3
	6b5ezXMoyZRkpViJf7YIq8rywImFpk16adGvosAJNpLa3ROiXesb2XYSSILHwdZPAvtL/EyDUBrik
	upwGHFvsUInxOvmXf8IywhcQdLoCQpYVV/gXmQ77sw9EZig8Tp6Gh74JhOLotk0fhuo71ZMTP5DaD
	BnL9qUc/LpuwGOFY1Zbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtI4-0003GY-5Z; Thu, 20 Jun 2019 09:23:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtHd-0003CH-RF
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 09:23:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0816C360;
 Thu, 20 Jun 2019 02:23:05 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2178F3F246;
 Thu, 20 Jun 2019 02:23:03 -0700 (PDT)
Date: Thu, 20 Jun 2019 10:23:01 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: peng.fan@nxp.com
Subject: Re: [PATCH V2 2/2] mailbox: introduce ARM SMC based mailbox
Message-ID: <20190620092301.GD1248@e107155-lin>
References: <20190603083005.4304-1-peng.fan@nxp.com>
 <20190603083005.4304-3-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603083005.4304-3-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_022306_281808_B88A7D98 
X-CRM114-Status: GOOD (  22.20  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 festevam@gmail.com, jassisinghbrar@gmail.com, linux-kernel@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, andre.przywara@arm.com, van.freenix@gmail.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 04:30:05PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
>
> This mailbox driver implements a mailbox which signals transmitted data
> via an ARM smc (secure monitor call) instruction. The mailbox receiver
> is implemented in firmware and can synchronously return data when it
> returns execution to the non-secure world again.
> An asynchronous receive path is not implemented.
> This allows the usage of a mailbox to trigger firmware actions on SoCs
> which either don't have a separate management processor or on which such
> a core is not available. A user of this mailbox could be the SCP
> interface.
>
> Modified from Andre Przywara's v2 patch
> https://lore.kernel.org/patchwork/patch/812999/
>
> Cc: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>
> V2:
>  Add interrupts notification support.
>
>  drivers/mailbox/Kconfig                 |   7 ++
>  drivers/mailbox/Makefile                |   2 +
>  drivers/mailbox/arm-smc-mailbox.c       | 190 ++++++++++++++++++++++++++++++++
>  include/linux/mailbox/arm-smc-mailbox.h |  10 ++
>  4 files changed, 209 insertions(+)
>  create mode 100644 drivers/mailbox/arm-smc-mailbox.c
>  create mode 100644 include/linux/mailbox/arm-smc-mailbox.h
>
> diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig
> index 595542bfae85..c3bd0f1ddcd8 100644
> --- a/drivers/mailbox/Kconfig
> +++ b/drivers/mailbox/Kconfig
> @@ -15,6 +15,13 @@ config ARM_MHU
>  	  The controller has 3 mailbox channels, the last of which can be
>  	  used in Secure mode only.
>
> +config ARM_SMC_MBOX
> +	tristate "Generic ARM smc mailbox"
> +	depends on OF && HAVE_ARM_SMCCC
> +	help
> +	  Generic mailbox driver which uses ARM smc calls to call into
> +	  firmware for triggering mailboxes.
> +
>  config IMX_MBOX
>  	tristate "i.MX Mailbox"
>  	depends on ARCH_MXC || COMPILE_TEST
> diff --git a/drivers/mailbox/Makefile b/drivers/mailbox/Makefile
> index c22fad6f696b..93918a84c91b 100644
> --- a/drivers/mailbox/Makefile
> +++ b/drivers/mailbox/Makefile
> @@ -7,6 +7,8 @@ obj-$(CONFIG_MAILBOX_TEST)	+= mailbox-test.o
>
>  obj-$(CONFIG_ARM_MHU)	+= arm_mhu.o
>
> +obj-$(CONFIG_ARM_SMC_MBOX)	+= arm-smc-mailbox.o
> +
>  obj-$(CONFIG_IMX_MBOX)	+= imx-mailbox.o
>
>  obj-$(CONFIG_ARMADA_37XX_RWTM_MBOX)	+= armada-37xx-rwtm-mailbox.o
> diff --git a/drivers/mailbox/arm-smc-mailbox.c b/drivers/mailbox/arm-smc-mailbox.c
> new file mode 100644
> index 000000000000..fef6e38d8b98
> --- /dev/null
> +++ b/drivers/mailbox/arm-smc-mailbox.c
> @@ -0,0 +1,190 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2016,2017 ARM Ltd.
> + * Copyright 2019 NXP
> + */
> +
> +#include <linux/arm-smccc.h>
> +#include <linux/device.h>
> +#include <linux/kernel.h>
> +#include <linux/interrupt.h>
> +#include <linux/mailbox_controller.h>
> +#include <linux/mailbox/arm-smc-mailbox.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +
> +#define ARM_SMC_MBOX_USE_HVC	BIT(0)
> +#define ARM_SMC_MBOX_USB_IRQ	BIT(1)
> +
> +struct arm_smc_chan_data {
> +	u32 function_id;
> +	u32 flags;
> +	int irq;
> +};
> +
> +static int arm_smc_send_data(struct mbox_chan *link, void *data)
> +{
> +	struct arm_smc_chan_data *chan_data = link->con_priv;
> +	struct arm_smccc_mbox_cmd *cmd = data;
> +	struct arm_smccc_res res;
> +	u32 function_id;
> +
> +	if (chan_data->function_id != UINT_MAX)
> +		function_id = chan_data->function_id;
> +	else
> +		function_id = cmd->a0;
> +
> +	if (chan_data->flags & ARM_SMC_MBOX_USE_HVC)
> +		arm_smccc_hvc(function_id, cmd->a1, cmd->a2, cmd->a3, cmd->a4,
> +			      cmd->a5, cmd->a6, cmd->a7, &res);
> +	else
> +		arm_smccc_smc(function_id, cmd->a1, cmd->a2, cmd->a3, cmd->a4,
> +			      cmd->a5, cmd->a6, cmd->a7, &res);
> +

So how will the SMC/HVC handler in EL3/2 find which mailbox is being referred
with this command ? I prefer 2nd argument to be the mailbox number.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
