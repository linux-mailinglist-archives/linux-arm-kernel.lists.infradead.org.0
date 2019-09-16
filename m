Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52391B44BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 01:53:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eKqkIpIHtLTuGz+2+ofBjFQsTwTrOW0Y9XROz7WDAO8=; b=uB7L6xDYMx/vX+
	S11npOGYGIqvsCk+je6ehmDGI695BsZrKU7nZ9x38LCXT/pH9viuevGj3mQdA3Ff2PR2HONwKJSzE
	GOmLMe3Xys6wIiF5S+hW3SQbf4eofa78ohU+sEtzPCJ0Klcp94cpCDXr951xIkr+lpVtd7jnv4ex1
	Zkg8TETUD/apBB9JaQwKcM9YYmNcp9h2OLjRXCrW8L59ZpRNwPNDadDDYwUGughZ2klEx8NMlcekM
	GxphsOg3alHS/J5ixpYUOfB19N9gqoaCVQZD3qtPf2LHsejEji0A7bLVrqaM/s7522wi2tLIwDMD3
	YJvxO83ynJYwmuGH+k9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA0oU-0008Gu-H7; Mon, 16 Sep 2019 23:53:46 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA0oJ-0008GS-OA
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 23:53:37 +0000
Received: by mail-pf1-x443.google.com with SMTP id x127so928824pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 16:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7yM8bc9dUdHZnwXo81JLespay94Pp7w4ktcsiUR2rz0=;
 b=IiWb4+sjZ3upqo+z4y9O+5aDEK9yf3cceXa6QcMxaLH0OFv/2zLXDydVnkVUoStc09
 mePffjU3Pcztlbu0EIoryNKXgCzisGPdFI7RMHAmEh7YhKK6PAFdDE1TqTxTdaP5u93X
 6lxN6f67KdohNHPHP8/mRU9lrimUXFOy8f0H7Vdh+vQ8NO3jWgkRh0jHjQ325J3LEhNj
 qETvcUNut+25Tc6ZVpTQ9dq3iRptCo/1HW/LhJIzSmkvRlNWreTXd+fngitkhA0KkEd1
 6CGyiYxZIsfdSMrV5tyDcYU+Jsq/0H2CPkiQ3WzBVPJ72LBvWXsdMsccvIR2cxTiaIOd
 sHvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7yM8bc9dUdHZnwXo81JLespay94Pp7w4ktcsiUR2rz0=;
 b=oWVyWIvuy2sqzRo59j8Y7EvjMLlt1om3Wz876ciw0pU7pEIKlYc+YmbyXm6icIdtmZ
 D1JcHH3VKER12z6yltpws4PnPrugvrsKD6KzdNZPA32uOUJcvFnIZhH72jOjdrZu5HdP
 0+8jVPL4i/PUoc5uPrHHw0GFXPSLAkW0jcQHOz6fth148tRwCMqmj7ET1XntuIr6XPcU
 U0MWyP0duuAm+GvEGsJzMrQBOWVA5uB+0QA0rTBErSk0zzSqMAMQig09MCFuHyM3QLmj
 oQEHGUXnGpjCBKoFMFdXKTyNHbBGi+iOQYKy3DF5SWqPmXVTVLKJCXXOPcCAJOguExzb
 bt/A==
X-Gm-Message-State: APjAAAXd6o8d0qgHduO6sLx0b2ocMx7+fqLREe2gAZCazx6tsRlPOmbb
 gUBSp9d59sSI22L9XoXM5+o=
X-Google-Smtp-Source: APXvYqxI6uqo7dfGr8YwI6O/iAA3+texS3l1QJD5B7oqxNEFtnH+j1B8Nd7WU5Cs5gJnPgyQH4Gedg==
X-Received: by 2002:a63:904:: with SMTP id 4mr715939pgj.36.1568678014086;
 Mon, 16 Sep 2019 16:53:34 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id g11sm203237pgu.11.2019.09.16.16.53.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 16:53:33 -0700 (PDT)
Date: Mon, 16 Sep 2019 16:53:30 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V4 2/5] input: keyboard: imx_sc: Add i.MX system
 controller key support
Message-ID: <20190916235330.GI237523@dtor-ws>
References: <1568602373-14164-1-git-send-email-Anson.Huang@nxp.com>
 <1568602373-14164-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568602373-14164-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_165335_817428_54D8D1AB 
X-CRM114-Status: GOOD (  25.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, ping.bai@nxp.com,
 catalin.marinas@arm.com, peng.fan@nxp.com, stefan@agner.ch,
 bjorn.andersson@linaro.org, leonard.crestez@nxp.com, will@kernel.org,
 festevam@gmail.com, yuehaibing@huawei.com, marcin.juszkiewicz@linaro.org,
 cw00.choi@samsung.com, jagan@amarulasolutions.com, linux-input@vger.kernel.org,
 ronald@innovation.ch, Linux-imx@nxp.com, devicetree@vger.kernel.org,
 arnd@arndb.de, s.hauer@pengutronix.de, mripard@kernel.org,
 m.felsch@pengutronix.de, enric.balletbo@collabora.com, robh+dt@kernel.org,
 andriy.shevchenko@linux.intel.com, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 fugang.duan@nxp.com, linux-kernel@vger.kernel.org, dinguyen@kernel.org,
 kernel@pengutronix.de, olof@lixom.net, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 10:52:50AM +0800, Anson Huang wrote:
> i.MX8QXP is an ARMv8 SoC which has a Cortex-M4 system controller
> inside, the system controller is in charge of controlling power,
> clock and scu key etc..
> 
> Adds i.MX system controller key driver support, Linux kernel has
> to communicate with system controller via MU (message unit) IPC
> to get scu key's status.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V3:
> 	- switch the debounce and repeat interval time for delay work schdule;
> 	- add .remove to handle group irq and notify etc..
> ---
>  drivers/input/keyboard/Kconfig      |   7 ++
>  drivers/input/keyboard/Makefile     |   1 +
>  drivers/input/keyboard/imx_sc_key.c | 190 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 198 insertions(+)
>  create mode 100644 drivers/input/keyboard/imx_sc_key.c
> 
> diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
> index 8911bc2..00f8428 100644
> --- a/drivers/input/keyboard/Kconfig
> +++ b/drivers/input/keyboard/Kconfig
> @@ -469,6 +469,13 @@ config KEYBOARD_IMX
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called imx_keypad.
>  
> +config KEYBOARD_IMX_SC_KEY
> +	tristate "IMX SCU Key Driver"
> +	depends on IMX_SCU
> +	help
> +	  This is the system controller key driver for NXP i.MX SoCs with
> +	  system controller inside.
> +
>  config KEYBOARD_NEWTON
>  	tristate "Newton keyboard"
>  	select SERIO
> diff --git a/drivers/input/keyboard/Makefile b/drivers/input/keyboard/Makefile
> index 9510325..f5b1752 100644
> --- a/drivers/input/keyboard/Makefile
> +++ b/drivers/input/keyboard/Makefile
> @@ -29,6 +29,7 @@ obj-$(CONFIG_KEYBOARD_HIL)		+= hil_kbd.o
>  obj-$(CONFIG_KEYBOARD_HIL_OLD)		+= hilkbd.o
>  obj-$(CONFIG_KEYBOARD_IPAQ_MICRO)	+= ipaq-micro-keys.o
>  obj-$(CONFIG_KEYBOARD_IMX)		+= imx_keypad.o
> +obj-$(CONFIG_KEYBOARD_IMX_SC_KEY)	+= imx_sc_key.o
>  obj-$(CONFIG_KEYBOARD_HP6XX)		+= jornada680_kbd.o
>  obj-$(CONFIG_KEYBOARD_HP7XX)		+= jornada720_kbd.o
>  obj-$(CONFIG_KEYBOARD_LKKBD)		+= lkkbd.o
> diff --git a/drivers/input/keyboard/imx_sc_key.c b/drivers/input/keyboard/imx_sc_key.c
> new file mode 100644
> index 0000000..59c68fa
> --- /dev/null
> +++ b/drivers/input/keyboard/imx_sc_key.c
> @@ -0,0 +1,190 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP.
> + */
> +
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/firmware/imx/sci.h>
> +#include <linux/init.h>
> +#include <linux/input.h>
> +#include <linux/interrupt.h>
> +#include <linux/jiffies.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/platform_device.h>
> +
> +#define DEBOUNCE_TIME	100
> +#define REPEAT_INTERVAL	60
> +
> +#define SC_IRQ_BUTTON		1
> +#define SC_IRQ_GROUP_WAKE	3
> +#define IMX_SC_MISC_FUNC_GET_BUTTON_STATUS	18
> +
> +struct imx_key_drv_data {
> +	int keycode;
> +	bool keystate;  /* 1: pressed, 0: release */
> +	bool delay_check;
> +	struct delayed_work check_work;
> +	struct input_dev *input;
> +	struct imx_sc_ipc *key_ipc_handle;
> +	struct notifier_block key_notifier;
> +};
> +
> +struct imx_sc_msg_key {
> +	struct imx_sc_rpc_msg hdr;
> +	u8 state;
> +};
> +
> +static int imx_sc_key_notify(struct notifier_block *nb,
> +			     unsigned long event, void *group)
> +{
> +	struct imx_key_drv_data *priv =
> +				 container_of(nb,
> +					      struct imx_key_drv_data,
> +					      key_notifier);
> +
> +	if ((event & SC_IRQ_BUTTON) && (*(u8 *)group == SC_IRQ_GROUP_WAKE)
> +	    && !priv->delay_check) {
> +		priv->delay_check = 1;
> +		schedule_delayed_work(&priv->check_work,
> +				      msecs_to_jiffies(DEBOUNCE_TIME));

If I am reading this right, you are trying to avoid scheduling the work
again if it is already scheduled. You do not need to do that, as
schedule_delayed_work() will take care of that (if you want to make sure
the work is re-scheduled with updated expiration, you need to use
mod_delayed_work).

> +	}
> +
> +	return 0;
> +}
> +
> +static void imx_sc_check_for_events(struct work_struct *work)
> +{
> +	struct imx_key_drv_data *priv =
> +				 container_of(work,
> +					      struct imx_key_drv_data,
> +					      check_work.work);
> +	struct input_dev *input = priv->input;
> +	struct imx_sc_msg_key msg;
> +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> +	bool state;
> +	int ret;
> +
> +	hdr->ver = IMX_SC_RPC_VERSION;
> +	hdr->svc = IMX_SC_RPC_SVC_MISC;
> +	hdr->func = IMX_SC_MISC_FUNC_GET_BUTTON_STATUS;
> +	hdr->size = 1;
> +
> +	ret = imx_scu_call_rpc(priv->key_ipc_handle, &msg, true);
> +	if (ret) {
> +		dev_err(&input->dev, "read imx sc key failed, ret %d\n", ret);
> +		return;
> +	}
> +
> +	state = (bool)msg.state;
> +
> +	if (!state && !priv->keystate)
> +		state = true;

This needs an explanation please.

> +
> +	if (state ^ priv->keystate) {
> +		pm_wakeup_event(input->dev.parent, 0);

I'd expect this happening in imx_sc_key_notify() so that the device
would have a change to run this work.

> +		priv->keystate = state;
> +		input_event(input, EV_KEY, priv->keycode, state);
> +		input_sync(input);
> +		if (!state)
> +			priv->delay_check = 0;
> +		pm_relax(priv->input->dev.parent);

Are you sure you want to call pm_relax() unconditionally, and not when
state == false (i.e. button released)?

> +	}
> +
> +	if (state)
> +		schedule_delayed_work(&priv->check_work,
> +				      msecs_to_jiffies(REPEAT_INTERVAL));
> +}
> +
> +static int imx_sc_key_probe(struct platform_device *pdev)
> +{
> +	struct device_node *np = pdev->dev.of_node;
> +	static struct imx_key_drv_data *priv;
> +	struct input_dev *input;
> +	int ret;
> +
> +	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	ret = imx_scu_get_handle(&priv->key_ipc_handle);
> +	if (ret)
> +		return ret;
> +
> +	if (of_property_read_u32(np, "linux,keycode", &priv->keycode)) {
> +		dev_err(&pdev->dev, "missing KEY_POWER in DT\n");
> +		return -EINVAL;
> +	}
> +
> +	INIT_DELAYED_WORK(&priv->check_work, imx_sc_check_for_events);
> +
> +	input = devm_input_allocate_device(&pdev->dev);
> +	if (!input) {
> +		dev_err(&pdev->dev, "failed to allocate the input device\n");
> +		return -ENOMEM;
> +	}
> +
> +	input->name = pdev->name;
> +	input->phys = "imx-sc-key/input0";
> +	input->id.bustype = BUS_HOST;
> +
> +	input_set_capability(input, EV_KEY, priv->keycode);
> +
> +	ret = input_register_device(input);
> +	if (ret) {

Could you please rename this (and elsewhere) from 'ret' to 'error'?

> +		dev_err(&pdev->dev, "failed to register input device\n");
> +		return ret;
> +	}
> +
> +	priv->input = input;
> +	platform_set_drvdata(pdev, priv);
> +
> +	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE, SC_IRQ_BUTTON, true);
> +	if (ret) {
> +		dev_warn(&pdev->dev, "enable scu group irq failed\n");
> +		return ret;
> +	}
> +
> +	priv->key_notifier.notifier_call = imx_sc_key_notify;
> +	ret = imx_scu_irq_register_notifier(&priv->key_notifier);
> +	if (ret) {
> +		imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE, SC_IRQ_BUTTON, false);
> +		dev_warn(&pdev->dev, "register scu notifier failed\n");

		return error;
> +	}
> +
> +	return ret;

	return 0;
> +}
> +
> +static int imx_sc_key_remove(struct platform_device *pdev)
> +{
> +	struct imx_key_drv_data *priv = platform_get_drvdata(pdev);
> +
> +	imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE, SC_IRQ_BUTTON, false);
> +	imx_scu_irq_unregister_notifier(&priv->key_notifier);
> +	cancel_delayed_work_sync(&priv->check_work);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id imx_sc_key_ids[] = {
> +	{ .compatible = "fsl,imx-sc-key" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, imx_sc_key_ids);
> +
> +static struct platform_driver imx_sc_key_driver = {
> +	.driver = {
> +		.name = "imx-sc-key",
> +		.of_match_table = imx_sc_key_ids,
> +	},
> +	.probe = imx_sc_key_probe,
> +	.remove = imx_sc_key_remove,
> +};
> +module_platform_driver(imx_sc_key_driver);
> +
> +MODULE_AUTHOR("Anson Huang <Anson.Huang@nxp.com>");
> +MODULE_DESCRIPTION("i.MX System Controller Key Driver");
> +MODULE_LICENSE("GPL v2");
> -- 
> 2.7.4
> 

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
