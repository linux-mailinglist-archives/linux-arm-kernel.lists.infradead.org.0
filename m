Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C5C506CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 12:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8TzOaMIPx/71WBlDz12gnSH90ENwJ/xt43pQugrVg4=; b=j4iTL6F+rPSNhi
	2KRam0kS6C7l+52LC4Y5qKqBiMqm+yjxQc2hcDa+07jLOvdRDXSFkTBVjUjP2MZ1+SsVdl1Fim/kK
	+J6gNaRPLwm8xP7xtFz+Eb1ILcEKnUsp+y6zBZkreaQNKSLH5mzQEQtKeQ3w2YEwPz6Nr30dyPZ7N
	1oPNo3C2EmCcStrY75xkl7Av6GIRx/+XKOzijLEd/R9aPTLvjyeHU1pjWURIOoCp/Y/3javNqZn/p
	3nM+8i/0xIJnOdYKxIaZvt1zN+Cpl44BaJNy1eH1SZTkeXnFGyiSFayFij1My2b0Xzez01kK092g6
	PLsKdXOqLdI71vjZ+hGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLow-000425-LS; Mon, 24 Jun 2019 10:03:30 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLkC-00073q-1K; Mon, 24 Jun 2019 09:58:38 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 02:58:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,411,1557212400"; d="scan'208";a="182604821"
Received: from kuha.fi.intel.com ([10.237.72.189])
 by fmsmga001.fm.intel.com with SMTP; 24 Jun 2019 02:58:28 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Mon, 24 Jun 2019 12:58:27 +0300
Date: Mon, 24 Jun 2019 12:58:27 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v7 09/10] usb: roles: add USB Type-B GPIO connector driver
Message-ID: <20190624095827.GA6501@kuha.fi.intel.com>
References: <1560242680-23844-1-git-send-email-chunfeng.yun@mediatek.com>
 <1560242680-23844-10-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560242680-23844-10-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_025836_158262_558DD8AD 
X-CRM114-Status: GOOD (  34.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Nagarjuna Kristam <nkristam@nvidia.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chunfeng,

On Tue, Jun 11, 2019 at 04:44:39PM +0800, Chunfeng Yun wrote:
> Due to the requirement of usb-connector.txt binding, the old way
> using extcon to support USB Dual-Role switch is now deprecated
> when use Type-B connector.
> This patch introduces a driver of Type-B connector which typically
> uses an input GPIO to detect USB ID pin, and try to replace the
> function provided by extcon-usb-gpio driver

I'm sorry for asking this so late, but why is this driver a Type-B
specific driver (I really thought somebody had already asked this
question)?

I don't see anything Type-B specific in the driver. Basically it looks
to me like just a gpio based connection detection driver that would
work fine with for example uAB connectors..

> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> Tested-by: Nagarjuna Kristam <nkristam@nvidia.com>
> ---
> v7 changes:
>   1. remove macro DEV_PMS_OPS suggested by Andy
>   2. add tested-by Nagarjuna
> 
> v6 changes:
>   1. get usb-role-swtich by usb_role_switch_get()
> 
> v5 changes:
>   1. put usb_role_switch when error happens suggested by Biju
>   2. don't treat bype-B connector as a virtual device suggested by Rob
> 
> v4 changes:
>   1. remove linux/gpio.h suggested by Linus
>   2. put node when error happens
> 
> v3 changes:
>   1. treat bype-B connector as a virtual device;
>   2. change file name again
> 
> v2 changes:
>   1. file name is changed
>   2. use new compatible
> ---
>  drivers/usb/roles/Kconfig           |  11 ++
>  drivers/usb/roles/Makefile          |   1 +
>  drivers/usb/roles/typeb-conn-gpio.c | 284 ++++++++++++++++++++++++++++

..It also drives me crazy that you've put this driver under this
folder. It does not create a role switch so ideally it should not go
under driver/usb/roles/. I think a better place for it would be
drivers/usb/misc/, or actually, maybe it should go under
drivers/usb/common/?

Could you still rename the driver to something like "usb-gpio.c" or
conn-gpio.c, or something else, and also move it under
drivers/usb/misc/ or drivers/usb/common/?

>  3 files changed, 296 insertions(+)
>  create mode 100644 drivers/usb/roles/typeb-conn-gpio.c
> 
> diff --git a/drivers/usb/roles/Kconfig b/drivers/usb/roles/Kconfig
> index f8b31aa67526..d1156e18a81a 100644
> --- a/drivers/usb/roles/Kconfig
> +++ b/drivers/usb/roles/Kconfig
> @@ -26,4 +26,15 @@ config USB_ROLES_INTEL_XHCI
>  	  To compile the driver as a module, choose M here: the module will
>  	  be called intel-xhci-usb-role-switch.
>  
> +config TYPEB_CONN_GPIO
> +	tristate "USB Type-B GPIO Connector"

USB GPIO connection detection driver?

> +	depends on GPIOLIB
> +	help
> +	  The driver supports USB role switch between host and device via GPIO
> +	  based USB cable detection, used typically if an input GPIO is used
> +	  to detect USB ID pin.
> +
> +	  To compile the driver as a module, choose M here: the module will
> +	  be called typeb-conn-gpio.ko
> +
>  endif # USB_ROLE_SWITCH
> diff --git a/drivers/usb/roles/Makefile b/drivers/usb/roles/Makefile
> index 757a7d2797eb..5d5620d9d113 100644
> --- a/drivers/usb/roles/Makefile
> +++ b/drivers/usb/roles/Makefile
> @@ -3,3 +3,4 @@
>  obj-$(CONFIG_USB_ROLE_SWITCH)		+= roles.o
>  roles-y					:= class.o
>  obj-$(CONFIG_USB_ROLES_INTEL_XHCI)	+= intel-xhci-usb-role-switch.o
> +obj-$(CONFIG_TYPEB_CONN_GPIO)		+= typeb-conn-gpio.o
> diff --git a/drivers/usb/roles/typeb-conn-gpio.c b/drivers/usb/roles/typeb-conn-gpio.c
> new file mode 100644
> index 000000000000..e3fba1656069
> --- /dev/null
> +++ b/drivers/usb/roles/typeb-conn-gpio.c
> @@ -0,0 +1,284 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * USB Type-B GPIO Connector Driver
> + *
> + * Copyright (C) 2019 MediaTek Inc.
> + *
> + * Author: Chunfeng Yun <chunfeng.yun@mediatek.com>
> + *
> + * Some code borrowed from drivers/extcon/extcon-usb-gpio.c
> + */
> +
> +#include <linux/device.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/interrupt.h>
> +#include <linux/irq.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/pinctrl/consumer.h>
> +#include <linux/platform_device.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/usb/role.h>
> +
> +#define USB_GPIO_DEB_MS		20	/* ms */
> +#define USB_GPIO_DEB_US		((USB_GPIO_DEB_MS) * 1000)	/* us */
> +
> +#define USB_CONN_IRQF	\
> +	(IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING | IRQF_ONESHOT)
> +
> +struct usb_conn_info {
> +	struct device *dev;
> +	struct usb_role_switch *role_sw;
> +	enum usb_role last_role;
> +	struct regulator *vbus;
> +	struct delayed_work dw_det;
> +	unsigned long debounce_jiffies;
> +
> +	struct gpio_desc *id_gpiod;
> +	struct gpio_desc *vbus_gpiod;
> +	int id_irq;
> +	int vbus_irq;
> +};
> +
> +/**
> + * "DEVICE" = VBUS and "HOST" = !ID, so we have:
> + * Both "DEVICE" and "HOST" can't be set as active at the same time
> + * so if "HOST" is active (i.e. ID is 0)  we keep "DEVICE" inactive
> + * even if VBUS is on.
> + *
> + *  Role          |   ID  |  VBUS
> + * ------------------------------------
> + *  [1] DEVICE    |   H   |   H
> + *  [2] NONE      |   H   |   L
> + *  [3] HOST      |   L   |   H
> + *  [4] HOST      |   L   |   L
> + *
> + * In case we have only one of these signals:
> + * - VBUS only - we want to distinguish between [1] and [2], so ID is always 1
> + * - ID only - we want to distinguish between [1] and [4], so VBUS = ID
> + */
> +static void usb_conn_detect_cable(struct work_struct *work)
> +{
> +	struct usb_conn_info *info;
> +	enum usb_role role;
> +	int id, vbus, ret;
> +
> +	info = container_of(to_delayed_work(work),
> +			    struct usb_conn_info, dw_det);
> +
> +	/* check ID and VBUS */
> +	id = info->id_gpiod ?
> +		gpiod_get_value_cansleep(info->id_gpiod) : 1;
> +	vbus = info->vbus_gpiod ?
> +		gpiod_get_value_cansleep(info->vbus_gpiod) : id;
> +
> +	if (!id)
> +		role = USB_ROLE_HOST;
> +	else if (vbus)
> +		role = USB_ROLE_DEVICE;
> +	else
> +		role = USB_ROLE_NONE;
> +
> +	dev_dbg(info->dev, "role %d/%d, gpios: id %d, vbus %d\n",
> +		info->last_role, role, id, vbus);
> +
> +	if (info->last_role == role) {
> +		dev_warn(info->dev, "repeated role: %d\n", role);
> +		return;
> +	}
> +
> +	if (info->last_role == USB_ROLE_HOST)
> +		regulator_disable(info->vbus);
> +
> +	ret = usb_role_switch_set_role(info->role_sw, role);
> +	if (ret)
> +		dev_err(info->dev, "failed to set role: %d\n", ret);
> +
> +	if (role == USB_ROLE_HOST) {
> +		ret = regulator_enable(info->vbus);
> +		if (ret)
> +			dev_err(info->dev, "enable vbus regulator failed\n");
> +	}
> +
> +	info->last_role = role;
> +
> +	dev_dbg(info->dev, "vbus regulator is %s\n",
> +		regulator_is_enabled(info->vbus) ? "enabled" : "disabled");
> +}
> +
> +static void usb_conn_queue_dwork(struct usb_conn_info *info,
> +				 unsigned long delay)
> +{
> +	queue_delayed_work(system_power_efficient_wq, &info->dw_det, delay);
> +}
> +
> +static irqreturn_t usb_conn_isr(int irq, void *dev_id)
> +{
> +	struct usb_conn_info *info = dev_id;
> +
> +	usb_conn_queue_dwork(info, info->debounce_jiffies);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int usb_conn_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct usb_conn_info *info;
> +	int ret = 0;
> +
> +	info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
> +	if (!info)
> +		return -ENOMEM;
> +
> +	info->dev = dev;
> +	info->id_gpiod = devm_gpiod_get_optional(dev, "id", GPIOD_IN);
> +	if (IS_ERR(info->id_gpiod))
> +		return PTR_ERR(info->id_gpiod);
> +
> +	info->vbus_gpiod = devm_gpiod_get_optional(dev, "vbus", GPIOD_IN);
> +	if (IS_ERR(info->vbus_gpiod))
> +		return PTR_ERR(info->vbus_gpiod);
> +
> +	if (!info->id_gpiod && !info->vbus_gpiod) {
> +		dev_err(dev, "failed to get gpios\n");
> +		return -ENODEV;
> +	}
> +
> +	if (info->id_gpiod)
> +		ret = gpiod_set_debounce(info->id_gpiod, USB_GPIO_DEB_US);
> +	if (!ret && info->vbus_gpiod)
> +		ret = gpiod_set_debounce(info->vbus_gpiod, USB_GPIO_DEB_US);
> +	if (ret < 0)
> +		info->debounce_jiffies = msecs_to_jiffies(USB_GPIO_DEB_MS);
> +
> +	INIT_DELAYED_WORK(&info->dw_det, usb_conn_detect_cable);
> +
> +	info->vbus = devm_regulator_get(dev, "vbus");
> +	if (IS_ERR(info->vbus)) {
> +		dev_err(dev, "failed to get vbus\n");
> +		return PTR_ERR(info->vbus);
> +	}
> +
> +	info->role_sw = usb_role_switch_get(dev);
> +	if (IS_ERR(info->role_sw)) {
> +		if (PTR_ERR(info->role_sw) != -EPROBE_DEFER)
> +			dev_err(dev, "failed to get role switch\n");
> +
> +		return PTR_ERR(info->role_sw);
> +	}
> +
> +	if (info->id_gpiod) {
> +		info->id_irq = gpiod_to_irq(info->id_gpiod);
> +		if (info->id_irq < 0) {
> +			dev_err(dev, "failed to get ID IRQ\n");
> +			ret = info->id_irq;
> +			goto put_role_sw;
> +		}
> +
> +		ret = devm_request_threaded_irq(dev, info->id_irq, NULL,
> +						usb_conn_isr, USB_CONN_IRQF,
> +						pdev->name, info);
> +		if (ret < 0) {
> +			dev_err(dev, "failed to request ID IRQ\n");
> +			goto put_role_sw;
> +		}
> +	}
> +
> +	if (info->vbus_gpiod) {
> +		info->vbus_irq = gpiod_to_irq(info->vbus_gpiod);
> +		if (info->vbus_irq < 0) {
> +			dev_err(dev, "failed to get VBUS IRQ\n");
> +			ret = info->vbus_irq;
> +			goto put_role_sw;
> +		}
> +
> +		ret = devm_request_threaded_irq(dev, info->vbus_irq, NULL,
> +						usb_conn_isr, USB_CONN_IRQF,
> +						pdev->name, info);
> +		if (ret < 0) {
> +			dev_err(dev, "failed to request VBUS IRQ\n");
> +			goto put_role_sw;
> +		}
> +	}
> +
> +	platform_set_drvdata(pdev, info);
> +
> +	/* Perform initial detection */
> +	usb_conn_queue_dwork(info, 0);
> +
> +	return 0;
> +
> +put_role_sw:
> +	usb_role_switch_put(info->role_sw);
> +	return ret;
> +}
> +
> +static int usb_conn_remove(struct platform_device *pdev)
> +{
> +	struct usb_conn_info *info = platform_get_drvdata(pdev);
> +
> +	cancel_delayed_work_sync(&info->dw_det);
> +
> +	if (info->last_role == USB_ROLE_HOST)
> +		regulator_disable(info->vbus);
> +
> +	usb_role_switch_put(info->role_sw);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused usb_conn_suspend(struct device *dev)
> +{
> +	struct usb_conn_info *info = dev_get_drvdata(dev);
> +
> +	if (info->id_gpiod)
> +		disable_irq(info->id_irq);
> +	if (info->vbus_gpiod)
> +		disable_irq(info->vbus_irq);
> +
> +	pinctrl_pm_select_sleep_state(dev);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused usb_conn_resume(struct device *dev)
> +{
> +	struct usb_conn_info *info = dev_get_drvdata(dev);
> +
> +	pinctrl_pm_select_default_state(dev);
> +
> +	if (info->id_gpiod)
> +		enable_irq(info->id_irq);
> +	if (info->vbus_gpiod)
> +		enable_irq(info->vbus_irq);
> +
> +	usb_conn_queue_dwork(info, 0);
> +
> +	return 0;
> +}
> +
> +static SIMPLE_DEV_PM_OPS(usb_conn_pm_ops,
> +			 usb_conn_suspend, usb_conn_resume);
> +
> +static const struct of_device_id usb_conn_dt_match[] = {
> +	{ .compatible = "linux,typeb-conn-gpio", },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, usb_conn_dt_match);
> +
> +static struct platform_driver usb_conn_driver = {
> +	.probe		= usb_conn_probe,
> +	.remove		= usb_conn_remove,
> +	.driver		= {
> +		.name	= "typeb-conn-gpio",
> +		.pm	= &usb_conn_pm_ops,
> +		.of_match_table = usb_conn_dt_match,
> +	},
> +};
> +
> +module_platform_driver(usb_conn_driver);
> +
> +MODULE_AUTHOR("Chunfeng Yun <chunfeng.yun@mediatek.com>");
> +MODULE_DESCRIPTION("USB Type-B GPIO connector driver");
> +MODULE_LICENSE("GPL v2");
> -- 
> 2.21.0

thanks,

-- 
heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
