Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C645DECF93
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 16:44:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rESIBMz+8ftt4Mg5NAB2nq7HIEGfRLsQxFarXH0sO9A=; b=Y1jXqMXjRj8Ohq
	k7ha6EcLwjh/9xiXgpg124FDKbzbc0QzySM1hXoZMAIq722J9XOz8EI36Z854mRv24jxD3XQn1p31
	Gub+q6ofG8KldY6yEi/Q/sMkqMvQT7L03ZBO37PVheZOskCUv/Fy236TlUhut2IQ6Lng6BjTccSOb
	jcdC3xxLgrbSYs9bxcCPaT2G/ZWV1mpiIw9awHbt79Wf5ZeWxeY01CAIWUNp628/DQsdsKuR+yK76
	1COci7nV5lIDL99PDmSwJ6uqldxUT0A6+gVPmmoJWeKPu93ybsx9lhVcaGWNCjeUNJZ0n3+jFCTFa
	FRIeJX5e9BeN3pZqM5Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQvZV-0003C5-Ok; Sat, 02 Nov 2019 15:44:13 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQvZL-0003B2-70; Sat, 02 Nov 2019 15:44:04 +0000
Received: by mail-pg1-x543.google.com with SMTP id 15so8335614pgt.7;
 Sat, 02 Nov 2019 08:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/mLuVIjBGN9C/gmNmh+XuUlavsahcHDeH6Y/owYS8Yc=;
 b=ezAxr4zytvGneNoOxzPOl/LzxBBVOiePWdGVZ1Jb6xqFtIgAOuKJEAV5DRau/KocUf
 8p6XkoGaM6umZgT6E/ihS1MBpExdXR+TScYyICk3FS4WfPtLk53uJfXaYYaA3ZHtVr21
 JSAnm0fVBQNoJwCeryYhc+hhgrrKkUgUQm7kxJr+RUniHZ/eKnwwQvAg3RK0MRdnKjO2
 T0g3zrNRHZKVcoFocRaOMYWDZYKZOQjM8K6puHVM5hQ8gpqLYZoUfyay9sg9vv/nfRxw
 iUv+cpAL20F6+ItY9EazCTGD1iXtzhsyXc6yQHshI5YYp8rv2LRhJ1YEqP80qP6EjKJ3
 nCVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=/mLuVIjBGN9C/gmNmh+XuUlavsahcHDeH6Y/owYS8Yc=;
 b=aQheD3f/+Gegyy0KZlQb7gE3D4+mD70lwc/fm/msIE3IaNSPAqPmNIiiTo0FOYeaE6
 +k8pEfMAkqbrPIU2NbJc9d2PRGHGhfU2ULbhoiTYc2ytRFkNMRfKTC3QYVADX5bC1n0C
 buEsbnEyaB0esfnWkj1dbLKcw41d9MNa1KnRaPwtDfw1/lli0QxrnToW4znl9EE76s4o
 KUPc+WbHzQ5XIn/aXYRUJlIgX3nmhXoAYlarV0km82apLO1RzI5QcROeeZ5WydH0MgBM
 2PrWqwVHGm4dCRko8hvSAl7EBfiwQE2FjI9h9suIT/pIW0hcY1UG8tij8CJo9qY79wi6
 L0AA==
X-Gm-Message-State: APjAAAUJrQ1QXjQHCbNkAuGIx6hMbatOVXWqSkm7VrRLAGATGBj1kPY9
 HySyMnfazjlWBushUBhLHA4=
X-Google-Smtp-Source: APXvYqy/IrbXjH2jJLcBFe+rmRCHCoc+sHw3IHIHO+Hhf5gam3TScXrai+88dFRnb8UKyQAqYywLIg==
X-Received: by 2002:a65:6492:: with SMTP id e18mr20725988pgv.111.1572709442272; 
 Sat, 02 Nov 2019 08:44:02 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id 10sm10678107pgs.11.2019.11.02.08.44.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 02 Nov 2019 08:44:01 -0700 (PDT)
Date: Sat, 2 Nov 2019 08:44:00 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Xingyu Chen <xingyu.chen@amlogic.com>
Subject: Re: [PATCH v3 3/4] watchdog: add meson secure watchdog driver
Message-ID: <20191102154400.GA17593@roeck-us.net>
References: <1571983984-11771-1-git-send-email-xingyu.chen@amlogic.com>
 <1571983984-11771-4-git-send-email-xingyu.chen@amlogic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571983984-11771-4-git-send-email-xingyu.chen@amlogic.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_084403_277382_3F88DAB1 
X-CRM114-Status: GOOD (  23.56  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, linux-watchdog@vger.kernel.org,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Jian Hu <jian.hu@amlogic.com>, linux-amlogic@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 02:13:03PM +0800, Xingyu Chen wrote:
> The watchdog controller on the Meson-A/C series SoCs is moved to secure
> world, watchdog operation needs to be done in secure EL3 mode via ATF,
> Non-secure world can call SMC instruction to trap to AFT for watchdog
> operation.
> 
> Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>

For my reference:

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

Note to self and Wim: Do not apply until instantiation issues are resolved.

> ---
>  drivers/watchdog/Kconfig         |  16 ++++
>  drivers/watchdog/Makefile        |   1 +
>  drivers/watchdog/meson_sec_wdt.c | 187 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 204 insertions(+)
>  create mode 100644 drivers/watchdog/meson_sec_wdt.c
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 58e7c10..e305fba 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -826,6 +826,22 @@ config MESON_GXBB_WATCHDOG
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called meson_gxbb_wdt.
>  
> +config MESON_SEC_WATCHDOG
> +	tristate "Amlogic Meson Secure watchdog support"
> +	depends on MESON_SM
> +	select WATCHDOG_CORE
> +	help
> +	  The watchdog controller on the Meson-A/C series SoCs is moved to
> +	  secure world, watchdog operation needs to be done in secure EL3
> +	  mode via ATF, non-secure world can call SMC instruction to trap
> +	  to ATF for the watchdog operation.
> +
> +	  Say Y here if watchdog controller on Meson SoCs is located in
> +	  secure world.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called meson_sec_wdt.
> +
>  config MESON_WATCHDOG
>  	tristate "Amlogic Meson SoCs watchdog support"
>  	depends on ARCH_MESON || COMPILE_TEST
> diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
> index 2ee352b..5e6b73d 100644
> --- a/drivers/watchdog/Makefile
> +++ b/drivers/watchdog/Makefile
> @@ -78,6 +78,7 @@ obj-$(CONFIG_QCOM_WDT) += qcom-wdt.o
>  obj-$(CONFIG_BCM_KONA_WDT) += bcm_kona_wdt.o
>  obj-$(CONFIG_TEGRA_WATCHDOG) += tegra_wdt.o
>  obj-$(CONFIG_MESON_GXBB_WATCHDOG) += meson_gxbb_wdt.o
> +obj-$(CONFIG_MESON_SEC_WATCHDOG) += meson_sec_wdt.o
>  obj-$(CONFIG_MESON_WATCHDOG) += meson_wdt.o
>  obj-$(CONFIG_MEDIATEK_WATCHDOG) += mtk_wdt.o
>  obj-$(CONFIG_DIGICOLOR_WATCHDOG) += digicolor_wdt.o
> diff --git a/drivers/watchdog/meson_sec_wdt.c b/drivers/watchdog/meson_sec_wdt.c
> new file mode 100644
> index 00000000..a20657d
> --- /dev/null
> +++ b/drivers/watchdog/meson_sec_wdt.c
> @@ -0,0 +1,187 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + * Author: Xingyu Chen <xingyu.chen@amlogic.com>
> + *
> + */
> +#include <linux/err.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/types.h>
> +#include <linux/watchdog.h>
> +#include <linux/firmware/meson/meson_sm.h>
> +
> +#define MESON_SIP_WDT_DISABLE		0x1
> +#define MESON_SIP_WDT_ENABLE		0x2
> +#define MESON_SIP_WDT_PING		0x3
> +#define MESON_SIP_WDT_INIT		0x4
> +#define MESON_SIP_WDT_RESETNOW		0x5
> +#define MESON_SIP_WDT_SETTIMEOUT	0x6
> +#define MESON_SIP_WDT_GETTIMELEFT	0x7
> +
> +#define DEFAULT_TIMEOUT			30 /* seconds */
> +
> +/*
> + * Watchdog timer tick is set to 1ms in secfw side, and tick count is
> + * stored in the bit[16-31] of WATCHDOG_CNT register, so the maximum
> + * timeout value is 0xffff ms.
> + */
> +#define MAX_TIMEOUT_MS			0xFFFF
> +
> +struct meson_sec_wdt {
> +	struct watchdog_device wdt_dev;
> +	struct meson_sm_firmware *fw;
> +};
> +
> +static int meson_sec_wdt_start(struct watchdog_device *wdt_dev)
> +{
> +	struct meson_sec_wdt *data = watchdog_get_drvdata(wdt_dev);
> +
> +	return meson_sm_call(data->fw, SM_WATCHDOG_OPS, NULL,
> +			     MESON_SIP_WDT_ENABLE, 0, 0, 0, 0);
> +}
> +
> +static int meson_sec_wdt_stop(struct watchdog_device *wdt_dev)
> +{
> +	struct meson_sec_wdt *data = watchdog_get_drvdata(wdt_dev);
> +
> +	return meson_sm_call(data->fw, SM_WATCHDOG_OPS, NULL,
> +			     MESON_SIP_WDT_DISABLE, 0, 0, 0, 0);
> +}
> +
> +static int meson_sec_wdt_ping(struct watchdog_device *wdt_dev)
> +{
> +	struct meson_sec_wdt *data = watchdog_get_drvdata(wdt_dev);
> +
> +	return meson_sm_call(data->fw, SM_WATCHDOG_OPS, NULL,
> +			     MESON_SIP_WDT_PING, 0, 0, 0, 0);
> +}
> +
> +static int meson_sec_wdt_set_timeout(struct watchdog_device *wdt_dev,
> +				     unsigned int timeout)
> +{
> +	struct meson_sec_wdt *data = watchdog_get_drvdata(wdt_dev);
> +
> +	wdt_dev->timeout = timeout;
> +
> +	return meson_sm_call(data->fw, SM_WATCHDOG_OPS, NULL,
> +			     MESON_SIP_WDT_SETTIMEOUT,
> +			     wdt_dev->timeout, 0, 0, 0);
> +}
> +
> +static unsigned int meson_sec_wdt_get_timeleft(struct watchdog_device *wdt_dev)
> +{
> +	int ret;
> +	unsigned int timeleft;
> +	struct meson_sec_wdt *data = watchdog_get_drvdata(wdt_dev);
> +
> +	ret = meson_sm_call(data->fw, SM_WATCHDOG_OPS, &timeleft,
> +			    MESON_SIP_WDT_GETTIMELEFT, 0, 0, 0, 0);
> +
> +	if (ret)
> +		return 0;
> +
> +	return timeleft;
> +}
> +
> +static const struct watchdog_ops meson_sec_wdt_ops = {
> +	.start = meson_sec_wdt_start,
> +	.stop = meson_sec_wdt_stop,
> +	.ping = meson_sec_wdt_ping,
> +	.set_timeout = meson_sec_wdt_set_timeout,
> +	.get_timeleft = meson_sec_wdt_get_timeleft,
> +};
> +
> +static const struct watchdog_info meson_sec_wdt_info = {
> +	.identity = "Meson Secure Watchdog Timer",
> +	.options = WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING | WDIOF_MAGICCLOSE,
> +};
> +
> +static int __maybe_unused meson_sec_wdt_resume(struct device *dev)
> +{
> +	struct meson_sec_wdt *data = dev_get_drvdata(dev);
> +
> +	if (watchdog_active(&data->wdt_dev))
> +		return meson_sec_wdt_start(&data->wdt_dev);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused meson_sec_wdt_suspend(struct device *dev)
> +{
> +	struct meson_sec_wdt *data = dev_get_drvdata(dev);
> +
> +	if (watchdog_active(&data->wdt_dev))
> +		return meson_sec_wdt_stop(&data->wdt_dev);
> +
> +	return 0;
> +}
> +
> +static const struct dev_pm_ops meson_sec_wdt_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(meson_sec_wdt_suspend, meson_sec_wdt_resume)
> +};
> +
> +static const struct of_device_id meson_sec_wdt_dt_ids[] = {
> +	 { .compatible = "amlogic,meson-sec-wdt", },
> +	 { /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, meson_sec_wdt_dt_ids);
> +
> +static int meson_sec_wdt_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct meson_sec_wdt *data;
> +	struct device_node *sm_np;
> +	int ret;
> +
> +	data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	sm_np = of_parse_phandle(pdev->dev.of_node, "secure-monitor", 0);
> +	if (!sm_np) {
> +		dev_err(&pdev->dev, "no secure-monitor node\n");
> +		return -EINVAL;
> +	}
> +
> +	data->fw = meson_sm_get(sm_np);
> +	of_node_put(sm_np);
> +	if (!data->fw)
> +		return -EPROBE_DEFER;
> +
> +	platform_set_drvdata(pdev, data);
> +
> +	data->wdt_dev.parent = dev;
> +	data->wdt_dev.info = &meson_sec_wdt_info;
> +	data->wdt_dev.ops = &meson_sec_wdt_ops;
> +	data->wdt_dev.max_hw_heartbeat_ms = MAX_TIMEOUT_MS;
> +	data->wdt_dev.min_timeout = 1;
> +	data->wdt_dev.timeout = DEFAULT_TIMEOUT;
> +	watchdog_set_drvdata(&data->wdt_dev, data);
> +
> +	ret = meson_sm_call(data->fw, SM_WATCHDOG_OPS, NULL,
> +			    MESON_SIP_WDT_INIT,
> +			    data->wdt_dev.timeout, 0, 0, 0);
> +	if (ret)
> +		return ret;
> +
> +	watchdog_stop_on_reboot(&data->wdt_dev);
> +
> +	return devm_watchdog_register_device(dev, &data->wdt_dev);
> +}
> +
> +static struct platform_driver meson_sec_wdt_driver = {
> +	.probe	= meson_sec_wdt_probe,
> +	.driver = {
> +		.name = "meson-sec-wdt",
> +		.pm = &meson_sec_wdt_pm_ops,
> +		.of_match_table	= meson_sec_wdt_dt_ids,
> +	},
> +};
> +
> +module_platform_driver(meson_sec_wdt_driver);
> +
> +MODULE_AUTHOR("Xingyu Chen <xingyu.chen@amlogic.com>");
> +MODULE_DESCRIPTION("Amlogic Secure Watchdog Timer Driver");
> +MODULE_LICENSE("Dual MIT/GPL");

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
