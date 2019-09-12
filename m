Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8189AB1742
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 04:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHxFAhioUS0d+7EpdKggoOk2ej5sfuB+raxvBbMmROI=; b=ViUJ7fcGnSusLS
	WRjte978AbzszNOW18UiFR6ZHZNRMNt1iHwJoeOLHmve2HJvQAuKjiF9KwqnCDXVgxdQVGhuaKotI
	7VuApXH1k+vy6y9zfHKI/rww0GqFnnq5G+yIcxvsFrz8j3QNFFiTA87Ab5sTrF+g5K5OWaDbplnWR
	l6xTey0uxZ4fBbdSeb++zKFx2bHK5YqRMNeeY26B5C6h+P6gTwQR1gShViV2wj1AhUbT9IW730Ycr
	FOKUQOVd1Cx8/3wBdSUAhowIHxxBssaEWa7iJh3dvxOwlLpC9iQ/DvxUl+EjCftt/vqs2I23nT0af
	anhVYCDRWZO7b6QAj13Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8bWW-00024y-SA; Fri, 13 Sep 2019 02:41:25 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8bVo-0001oZ-2i
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 02:40:41 +0000
Received: by mail-pg1-x544.google.com with SMTP id 4so14442757pgm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 19:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UP1u+Dca8sbP4Ltz5lkNdGLJogvNgYuMygajS9RlyYE=;
 b=BlJvvwTnzkIA0n+L8NqoxzOtG9oKdjMXjIljgTUnEY4TDEIVCL98hvGYxFGso5Govp
 /mrbptuCcSCKFnR6cI8BAIPfcv/R+dhaGmRvaozpc/HHqRYObph8iyyb2msX+SgCzlWh
 bTWmHGS1fWrioNoJNz/baL1KgqSdzA8Qe1WqxMI/uxTxVSKb85Hsp2P2i1ppD2WXPfBN
 zPi6N79XOSTPwrAiMLTovC1l0BCR4JnPEsYp8WmmDPMBXJkoGksyN7xUTXU5BB+UtAX5
 SUD+MA3wDB+IFoq2E3RHRZVw+tqlpGKMxL/cIp42f66sO3gH2y1ka+rk+XBXj+xsSiR4
 atxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UP1u+Dca8sbP4Ltz5lkNdGLJogvNgYuMygajS9RlyYE=;
 b=q1d1IApSIUeX48uHemTbDR3mRSHVdqoRVM74pKEAq1WNY7qfzDZGFmcTLRJPyAn32k
 mQR4279meL/PVdjfwPhbHOgz9J39L820AF3PQaTnAi0NqBJoNrLtEQ08OP7eYWBhGHdO
 iS/qmEVVayvSycZvlRuDqyl2dOdwboenyhJb748g1ji+iMUSG2VhN1gfgJN3euCwDxwB
 uFIhXi0w0gEOqjQwC0rNEZRE7uDz1WRq316UHrJj2N3ufOniAlSdsV+b7xSHcE9Q85Zq
 nKIIgUEm1McEchv1UswNy2Kbo6cD1RxCYQFX3W0Qyf4HAXn8pnfMEXCFnhY1j3ewGNyO
 Fhyw==
X-Gm-Message-State: APjAAAVHKGno2bSxhDqrX5YoD0TTlk/yPTVniA7wFozaHHZ6ykeN9a/5
 3i8Lge2EbhWtZ6fZaUZ/+dE=
X-Google-Smtp-Source: APXvYqxXudnFv0wlNAyfrLVbGR5PsDT0j5xxkmQaSeJwOpX52h+MqyJpzvy9Cm7IZab0s11TaKzU5Q==
X-Received: by 2002:a62:8c11:: with SMTP id m17mr22088610pfd.245.1568342434904; 
 Thu, 12 Sep 2019 19:40:34 -0700 (PDT)
Received: from localhost (c-73-158-250-148.hsd1.ca.comcast.net.
 [73.158.250.148])
 by smtp.gmail.com with ESMTPSA id z23sm387918pje.2.2019.09.12.19.40.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 12 Sep 2019 19:40:34 -0700 (PDT)
Date: Thu, 12 Sep 2019 21:22:39 +0100
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 2/5] input: keyboard: imx_sc: Add i.MX system
 controller key support
Message-ID: <20190912202239.GB636@penguin>
References: <1567546600-21566-1-git-send-email-Anson.Huang@nxp.com>
 <1567546600-21566-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567546600-21566-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_194040_124301_A54247D5 
X-CRM114-Status: GOOD (  26.02  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
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
 jagan@amarulasolutions.com, linux-input@vger.kernel.org, ronald@innovation.ch,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, arnd@arndb.de,
 s.hauer@pengutronix.de, mripard@kernel.org, m.felsch@pengutronix.de,
 robh+dt@kernel.org, tglx@linutronix.de, andriy.shevchenko@linux.intel.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, fugang.duan@nxp.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, kernel@pengutronix.de,
 olof@lixom.net, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Tue, Sep 03, 2019 at 05:36:37PM -0400, Anson Huang wrote:
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
> Changes since V2:
> 	- use private platform data instead of global data;
> 	- use "key" instead of "pwrkey";
> 	- fix some data format.
> ---
>  drivers/input/keyboard/Kconfig      |   7 ++
>  drivers/input/keyboard/Makefile     |   1 +
>  drivers/input/keyboard/imx_sc_key.c | 178 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 186 insertions(+)
>  create mode 100644 drivers/input/keyboard/imx_sc_key.c
> 
> diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
> index 2e6d288..607acf2 100644
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
> index 0000000..e69479b
> --- /dev/null
> +++ b/drivers/input/keyboard/imx_sc_key.c
> @@ -0,0 +1,178 @@
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
> +				      msecs_to_jiffies(REPEAT_INTERVAL));
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
> +
> +	if (state ^ priv->keystate) {
> +		pm_wakeup_event(input->dev.parent, 0);
> +		priv->keystate = state;
> +		input_event(input, EV_KEY, priv->keycode, state);
> +		input_sync(input);
> +		if (!state)
> +			priv->delay_check = 0;
> +		pm_relax(priv->input->dev.parent);
> +	}
> +
> +	if (state)
> +		schedule_delayed_work(&priv->check_work,
> +				      msecs_to_jiffies(DEBOUNCE_TIME));

Hmm, I am not quite sure follow the code. Judging by the name, you are
trying to handle debounce, but if I understand this correctly you
already sent out the press event for now.

Could you please explain what you are trying to do here.

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
> +	}
> +
> +	return ret;
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

You need a remove() handler to disable the itq group, remove the
notifier, cancel the delayed work, etc.

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
