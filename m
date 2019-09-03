Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB09A6171
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uB4b3Iic4kdPKVGr17IOgXqIuRKPcewsmv2DJZ+BSJE=; b=jd51i2yMfTnKrli0rWS0Gl1PT
	LQt87ANK7zp3KYwJZ1AWBI+9iuTdyNG9dgkXi/cVkn6z17Faj6tjq7oToDzTf2rKPJ3fp8yGKb4jX
	jKIbqyGF0owlU+LNFe7aZVokHtI/VGbD2JGGfbHspX8rZAuAv/6U1pve6D/MnQN0LprhzbkF7kufr
	uYi352r+6Q6xVm0iKW2dBqOfMwl1DXFXaserYAfx2iaSqMaPgEzTPSM6hv+EAo+aBTTXlY1jwVKfF
	Rk3VEiw7GxJK+Bk9AxvzMPachOox+u720CEPpWbZO/THSf7U/Jw51X7Wxo8SP80fwhHxoHPvbvezR
	MCmR6+ZHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52Jy-0004Eg-Ns; Tue, 03 Sep 2019 06:29:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52Jk-0004Dn-Rt
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:29:31 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <o.rempel@pengutronix.de>)
 id 1i52Jg-0001vX-Jw; Tue, 03 Sep 2019 08:29:24 +0200
Subject: Re: [PATCH V2 2/5] input: keyboard: imx_sc: Add i.MX system
 controller power key support
To: Anson Huang <Anson.Huang@nxp.com>, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, catalin.marinas@arm.com,
 will@kernel.org, dmitry.torokhov@gmail.com, aisheng.dong@nxp.com,
 ulf.hansson@linaro.org, fugang.duan@nxp.com, peng.fan@nxp.com,
 daniel.baluta@nxp.com, leonard.crestez@nxp.com, mripard@kernel.org,
 olof@lixom.net, arnd@arndb.de, jagan@amarulasolutions.com,
 bjorn.andersson@linaro.org, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, stefan@agner.ch, gregkh@linuxfoundation.org,
 andriy.shevchenko@linux.intel.com, yuehaibing@huawei.com,
 tglx@linutronix.de, ronald@innovation.ch, m.felsch@pengutronix.de,
 ping.bai@nxp.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
 <1567519424-32271-2-git-send-email-Anson.Huang@nxp.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <6d8dd5df-02da-b4cd-e61d-a4a15d0bf0c8@pengutronix.de>
Date: Tue, 3 Sep 2019 08:29:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1567519424-32271-2-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:13da
X-SA-Exim-Mail-From: o.rempel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_232929_067321_2C1F2F3B 
X-CRM114-Status: GOOD (  28.76  )
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
Cc: Linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 03.09.19 16:03, Anson Huang wrote:
> i.MX8QXP is an ARMv8 SoC which has a Cortex-M4 system controller
> inside, the system controller is in charge of controlling power,
> clock and power key etc..
> 
> Adds i.MX system controller power key driver support, Linux kernel
> has to communicate with system controller via MU (message unit) IPC
> to get power key's status.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- remove "wakeup-source" property operation, scu power key uses generic scu irq,
> 	  no need to have this property for device wakeup operation.
> ---
>   drivers/input/keyboard/Kconfig         |   7 ++
>   drivers/input/keyboard/Makefile        |   1 +
>   drivers/input/keyboard/imx_sc_pwrkey.c | 169 +++++++++++++++++++++++++++++++++
>   3 files changed, 177 insertions(+)
>   create mode 100644 drivers/input/keyboard/imx_sc_pwrkey.c
> 
> diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
> index 2e6d288..3aaeb9c 100644
> --- a/drivers/input/keyboard/Kconfig
> +++ b/drivers/input/keyboard/Kconfig
> @@ -469,6 +469,13 @@ config KEYBOARD_IMX
>   	  To compile this driver as a module, choose M here: the
>   	  module will be called imx_keypad.
>   
> +config KEYBOARD_IMX_SC_PWRKEY
> +	tristate "IMX SCU Power Key Driver"
> +	depends on IMX_SCU
> +	help
> +	  This is the system controller powerkey driver for NXP i.MX SoCs with
> +	  system controller inside.

The KEY is configurable over devicetree, why is it called PWRKEY? It looks for me as 
generic SCU key handler.

>   config KEYBOARD_NEWTON
>   	tristate "Newton keyboard"
>   	select SERIO
> diff --git a/drivers/input/keyboard/Makefile b/drivers/input/keyboard/Makefile
> index 9510325..9ea5585 100644
> --- a/drivers/input/keyboard/Makefile
> +++ b/drivers/input/keyboard/Makefile
> @@ -29,6 +29,7 @@ obj-$(CONFIG_KEYBOARD_HIL)		+= hil_kbd.o
>   obj-$(CONFIG_KEYBOARD_HIL_OLD)		+= hilkbd.o
>   obj-$(CONFIG_KEYBOARD_IPAQ_MICRO)	+= ipaq-micro-keys.o
>   obj-$(CONFIG_KEYBOARD_IMX)		+= imx_keypad.o
> +obj-$(CONFIG_KEYBOARD_IMX_SC_PWRKEY)	+= imx_sc_pwrkey.o
>   obj-$(CONFIG_KEYBOARD_HP6XX)		+= jornada680_kbd.o
>   obj-$(CONFIG_KEYBOARD_HP7XX)		+= jornada720_kbd.o
>   obj-$(CONFIG_KEYBOARD_LKKBD)		+= lkkbd.o
> diff --git a/drivers/input/keyboard/imx_sc_pwrkey.c b/drivers/input/keyboard/imx_sc_pwrkey.c
> new file mode 100644
> index 0000000..53aa9a4
> --- /dev/null
> +++ b/drivers/input/keyboard/imx_sc_pwrkey.c
> @@ -0,0 +1,169 @@
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
> +struct imx_pwrkey_drv_data {
> +	int keycode;
> +	bool keystate;  /* 1: pressed, 0: release */
> +	bool delay_check;
> +	struct delayed_work check_work;
> +	struct input_dev *input;
> +};
> +
> +struct imx_sc_msg_pwrkey {
> +	struct imx_sc_rpc_msg hdr;
> +	u8 state;
> +};
> +static struct imx_pwrkey_drv_data *pdata;

Why is it global struct? It seems to be flexible configurable over devicetree. So I would 
assume it should be able to handle more then one button. Please remove global variables, 
make it allocatable per OF node.

Please use different name "pdata" is usually used as platform data. Please, use "priv".

> +static struct imx_sc_ipc *pwrkey_ipc_handle;

same as before, no global variables.

> +
> +static int imx_sc_pwrkey_notify(struct notifier_block *nb,
> +				unsigned long event, void *group)
> +{
> +	if ((event & SC_IRQ_BUTTON) && (*(u8 *)group == SC_IRQ_GROUP_WAKE)
> +	    && !pdata->delay_check) {
> +		pdata->delay_check = 1;
> +		schedule_delayed_work(&pdata->check_work,
> +				      msecs_to_jiffies(REPEAT_INTERVAL));
> +	}
> +
> +	return 0;
> +}
> +
> +static void imx_sc_check_for_events(struct work_struct *work)
> +{
> +	struct input_dev *input = pdata->input;
> +	struct imx_sc_msg_pwrkey msg;
> +	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> +	bool state;
> +
> +	hdr->ver = IMX_SC_RPC_VERSION;
> +	hdr->svc = IMX_SC_RPC_SVC_MISC;
> +	hdr->func = IMX_SC_MISC_FUNC_GET_BUTTON_STATUS;
> +	hdr->size = 1;
> +
> +	/*
> +	 * Current SCU firmware does NOT have return value for
> +	 * this API, that means it is always successful.
> +	 */

It is not true for the kernel part:
https://elixir.bootlin.com/linux/latest/source/drivers/firmware/imx/imx-scu.c#L157

imx_scu_call_rpc() may fail in different ways and provide proper error value. Please use it.

> +	imx_scu_call_rpc(pwrkey_ipc_handle, &msg, true); > +	state = msg.state;

the conversation u8 to bool should be done here.

> +
> +	if (!state && !pdata->keystate)
> +		state = true;
> +
> +	if (state ^ pdata->keystate) {
> +		pm_wakeup_event(input->dev.parent, 0);
> +		pdata->keystate = !!state;

		the state is already bool. Why do you need extra conversations?

> +		input_event(input, EV_KEY, pdata->keycode, !!state);

same here.

> +		input_sync(input);
> +		if (!state)
> +			pdata->delay_check = 0;
> +		pm_relax(pdata->input->dev.parent);
> +	}
> +
> +	if (state)
> +		schedule_delayed_work(&pdata->check_work,
> +				      msecs_to_jiffies(DEBOUNCE_TIME));
> +}
> +
> +static struct notifier_block imx_sc_pwrkey_notifier = {
> +	.notifier_call = imx_sc_pwrkey_notify,
> +};
> +
> +static int imx_sc_pwrkey_probe(struct platform_device *pdev)
> +{
> +	struct device_node *np = pdev->dev.of_node;
> +	struct input_dev *input;
> +	int ret;
> +
> +	ret = imx_scu_get_handle(&pwrkey_ipc_handle);
> +	if (ret)
> +		return ret;
> +
> +	pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
> +	if (!pdata)
> +		return -ENOMEM;
> +
> +	if (of_property_read_u32(np, "linux,keycode", &pdata->keycode) > +		pdata->keycode = KEY_POWER;

According binding documentation, linux,keycode is requered parameter, in this case you 
should fail if it is not set.

> +		dev_warn(&pdev->dev, "KEY_POWER without setting in dts\n");
> +	}
> +
> +	INIT_DELAYED_WORK(&pdata->check_work, imx_sc_check_for_events);
> +
> +	input = devm_input_allocate_device(&pdev->dev);
> +	if (!input) {
> +		dev_err(&pdev->dev, "failed to allocate the input device\n");
> +		return -ENOMEM;
> +	}
> +
> +	input->name = pdev->name;
> +	input->phys = "imx-sc-pwrkey/input0";
> +	input->id.bustype = BUS_HOST;
> +
> +	input_set_capability(input, EV_KEY, pdata->keycode);
> +
> +	ret = input_register_device(input);
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "failed to register input device\n");
> +		return ret;
> +	}
> +
> +	pdata->input = input;
> +	platform_set_drvdata(pdev, pdata);
> +
> +	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE, SC_IRQ_BUTTON, true);
> +	if (ret) {
> +		dev_warn(&pdev->dev, "enable scu group irq failed\n");
> +		return ret;
> +	}
> +
> +	ret = imx_scu_irq_register_notifier(&imx_sc_pwrkey_notifier);
> +	if (ret) {
> +		imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE, SC_IRQ_BUTTON, false);
> +		dev_warn(&pdev->dev, "register scu notifier failed\n");
> +	}
> +
> +	return ret;
> +}
> +
> +static const struct of_device_id imx_sc_pwrkey_ids[] = {
> +	{ .compatible = "fsl,imx-sc-pwrkey" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, imx_sc_pwrkey_ids);
> +
> +static struct platform_driver imx_sc_pwrkey_driver = {
> +	.driver = {
> +		.name = "imx-sc-pwrkey",
> +		.of_match_table = imx_sc_pwrkey_ids,
> +	},
> +	.probe = imx_sc_pwrkey_probe,
> +};
> +module_platform_driver(imx_sc_pwrkey_driver);
> +
> +MODULE_AUTHOR("Anson Huang <Anson.Huang@nxp.com>");
> +MODULE_DESCRIPTION("i.MX System Controller Power Key Driver");
> +MODULE_LICENSE("GPL v2");
> 

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
