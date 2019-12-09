Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF35116F62
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:44:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RkagZZ4gCNcW0TXHjP5UEIsVWKPEDeB0mmaft9JgCto=; b=qzxY2VYyQnmeQ10aZNNA1W37a
	1V5n81ZSs21r9W55ckdqO+1GIgFVrsZsRZUjqMjX2MUYAFkEkJFunKMn6hxiXweWm37NjhJ26Ep8p
	5foe6ueD/l15tEAuPe10mDDTzCjyGQuLFDOd2WQ7hUIU7+nnnk487Sfa0ik9MvuoL6jYXA4zMP0TJ
	J3pksNYE8iunjoL8o2yfyasYMRcWWQum8W9nScGpSf9ttN+WZgg4wrgDrtJQYc+M+Q78tFScbP02C
	zKrrQMdRq0OnVwkdLhZKIsfgwueL0y8vGfu1hhE03MCqJD9vepPqehQV+TGfxj1SI/3QEf33TYY0s
	vmpsDF5gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieKH0-0004Ei-4H; Mon, 09 Dec 2019 14:44:30 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieKGd-00044y-Vs; Mon, 09 Dec 2019 14:44:10 +0000
Received: by mail-pf1-x442.google.com with SMTP id 4so7337099pfz.9;
 Mon, 09 Dec 2019 06:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=h55xV1JUKoiB6QW2vaNEH5xJwQ0EHPReaPgdnu6qzo0=;
 b=Jn4MUAeBJVPgcOqvY3S2u3i3jlGbO293BT5opgCtEw64cQeGJ6OCionpqyHAnE9bH/
 UnTVzQF4EofxR9QEtVrIqsIwilvn3rEItJf/vRlY/e5vbcKMefEw3fSPXfs12o1enrgv
 woCW2hnOgKdkasN5t/R1W9Px7bJY5YSEIppBoUjMYB6g/PisLfV9BT+z0Rqzw/7pSLe7
 WfJpkdvfWHbVhqVrA5CoJzdaobWwjrDveuYB+pk725IFwICuDNqT4kr3eLddJXCoYvQk
 fkKVGevP70XBiru7Ht/mXB+mzhLKZRmecGmN4DIYoVT5ZbFKVZCPd4DokKC3uLRYw0mU
 vjdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=h55xV1JUKoiB6QW2vaNEH5xJwQ0EHPReaPgdnu6qzo0=;
 b=j5fjSxj7cqMfNrXMD25ExQBZTdlSsRQRO1k6+0v2S4HMBG8kA3fDZqYINxbVqKD3LZ
 WKplGtFU64BM9EtKmgX33r9iNfZqVdLnGKWWOGEYxSA5ru1LpZ+2w0koRQWZ2E5Aoybw
 yuflwvmtIb3OCBybdsHXrLAKzDRMcDGzJPcO3M+IxnLmr7UIzRV+RQJCbuLCUrKJL/Hq
 46oA1KTVe3I92XdGiyaLN1PvR1+gyMRNQCwBwYdpzg+0n7LEemiBG6idJsnIu8lP8k9v
 yCYr0dyTntZWurvqUI6zTIoOLwMmHUeX1bxujmmYULWFN8yUPUVRNX6Gifp4DzfErDao
 01wA==
X-Gm-Message-State: APjAAAXs9vYAQ8OEBRiMgEeH119fUd1jfjQ7mt4vtkKcp/9AT2o2dtJ5
 wpnWhxSEFzPwuSTd4dA0A50=
X-Google-Smtp-Source: APXvYqzGnOCt9CvRtMuAxjqcYyLigNB9xts1YWYYPifV2LPZrDWALZOP5kUSLY0mB70BBxA0MRoqXg==
X-Received: by 2002:aa7:9313:: with SMTP id 19mr28670167pfj.160.1575902646933; 
 Mon, 09 Dec 2019 06:44:06 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 q6sm26940255pfh.127.2019.12.09.06.44.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 06:44:06 -0800 (PST)
Subject: Re: [PATCH v4 2/2] watchdog: add meson secure watchdog driver
To: Xingyu Chen <xingyu.chen@amlogic.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Kevin Hilman <khilman@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Rob Herring <robh+dt@kernel.org>
References: <1574685218-31164-1-git-send-email-xingyu.chen@amlogic.com>
 <1574685218-31164-3-git-send-email-xingyu.chen@amlogic.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <53661e11-b5b2-b2e8-47b6-9b357beff375@roeck-us.net>
Date: Mon, 9 Dec 2019 06:44:04 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <1574685218-31164-3-git-send-email-xingyu.chen@amlogic.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_064408_059034_0E1B196B 
X-CRM114-Status: GOOD (  26.79  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Jianxin Pan <jianxin.pan@amlogic.com>, linux-kernel@vger.kernel.org,
 Jian Hu <jian.hu@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/25/19 4:33 AM, Xingyu Chen wrote:
> The watchdog controller on the Meson-A/C series SoCs is moved to secure
> world, watchdog operation needs to be done in secure EL3 mode via ATF,
> Non-secure world can call SMC instruction to trap to AFT for watchdog
> operation.
> 
> Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>
> ---
>   drivers/watchdog/Kconfig         |  16 +++
>   drivers/watchdog/Makefile        |   1 +
>   drivers/watchdog/meson_sec_wdt.c | 207 +++++++++++++++++++++++++++++++++++++++
>   3 files changed, 224 insertions(+)
>   create mode 100644 drivers/watchdog/meson_sec_wdt.c
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 58e7c10..e305fba 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -826,6 +826,22 @@ config MESON_GXBB_WATCHDOG
>   	  To compile this driver as a module, choose M here: the
>   	  module will be called meson_gxbb_wdt.
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
>   config MESON_WATCHDOG
>   	tristate "Amlogic Meson SoCs watchdog support"
>   	depends on ARCH_MESON || COMPILE_TEST
> diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
> index 2ee352b..5e6b73d 100644
> --- a/drivers/watchdog/Makefile
> +++ b/drivers/watchdog/Makefile
> @@ -78,6 +78,7 @@ obj-$(CONFIG_QCOM_WDT) += qcom-wdt.o
>   obj-$(CONFIG_BCM_KONA_WDT) += bcm_kona_wdt.o
>   obj-$(CONFIG_TEGRA_WATCHDOG) += tegra_wdt.o
>   obj-$(CONFIG_MESON_GXBB_WATCHDOG) += meson_gxbb_wdt.o
> +obj-$(CONFIG_MESON_SEC_WATCHDOG) += meson_sec_wdt.o
>   obj-$(CONFIG_MESON_WATCHDOG) += meson_wdt.o
>   obj-$(CONFIG_MEDIATEK_WATCHDOG) += mtk_wdt.o
>   obj-$(CONFIG_DIGICOLOR_WATCHDOG) += digicolor_wdt.o
> diff --git a/drivers/watchdog/meson_sec_wdt.c b/drivers/watchdog/meson_sec_wdt.c
> new file mode 100644
> index 00000000..c022d6d
> --- /dev/null
> +++ b/drivers/watchdog/meson_sec_wdt.c
> @@ -0,0 +1,207 @@
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
> +#define DRV_NAME			"meson-sec-wdt"
> +
> +static struct platform_device *platform_device;
> +struct meson_sec_wdt {
> +	struct watchdog_device wdt_dev;
> +	struct meson_sm_firmware *fw;
> +};
> +
> +static int meson_sec_wdt_start(struct watchdog_device *wdt_dev)
> +{
> +	struct meson_sec_wdt *data = watchdog_get_drvdata(wdt_dev);
> +
> +	return meson_sm_call(data->fw, SM_A1_WATCHDOG_OPS, NULL,
> +			     MESON_SIP_WDT_ENABLE, 0, 0, 0, 0);
> +}
> +
> +static int meson_sec_wdt_stop(struct watchdog_device *wdt_dev)
> +{
> +	struct meson_sec_wdt *data = watchdog_get_drvdata(wdt_dev);
> +
> +	return meson_sm_call(data->fw, SM_A1_WATCHDOG_OPS, NULL,
> +			     MESON_SIP_WDT_DISABLE, 0, 0, 0, 0);
> +}
> +
> +static int meson_sec_wdt_ping(struct watchdog_device *wdt_dev)
> +{
> +	struct meson_sec_wdt *data = watchdog_get_drvdata(wdt_dev);
> +
> +	return meson_sm_call(data->fw, SM_A1_WATCHDOG_OPS, NULL,
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
> +	return meson_sm_call(data->fw, SM_A1_WATCHDOG_OPS, NULL,
> +			     MESON_SIP_WDT_SETTIMEOUT,
> +			     wdt_dev->timeout * 1000, 0, 0, 0);
> +}
> +
> +static unsigned int meson_sec_wdt_get_timeleft(struct watchdog_device *wdt_dev)
> +{
> +	int ret;
> +	unsigned int timeleft;
> +	struct meson_sec_wdt *data = watchdog_get_drvdata(wdt_dev);
> +
> +	ret = meson_sm_call(data->fw, SM_A1_WATCHDOG_OPS, &timeleft,
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
> +	sm_np = of_find_compatible_node(NULL, NULL, "amlogic,meson-gxbb-sm");
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
> +	ret = meson_sm_call(data->fw, SM_A1_WATCHDOG_OPS, NULL,
> +			    MESON_SIP_WDT_INIT,
> +			    data->wdt_dev.timeout * 1000, 0, 0, 0);
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
> +		.name = DRV_NAME,
> +		.pm = &meson_sec_wdt_pm_ops,
> +	},
> +};
> +
> +static int __init meson_sec_wdt_init(void)
> +{
> +	int ret;
> +
> +	ret = platform_driver_register(&meson_sec_wdt_driver);
> +	if (ret)
> +		return ret;
> +
> +	platform_device = platform_device_register_simple(DRV_NAME,
> +							  -1, NULL, 0);
> +	if (IS_ERR(platform_device)) {
> +		ret = PTR_ERR(platform_device);
> +		platform_driver_unregister(&meson_sec_wdt_driver);
> +	}
> +
> +	return ret;
> +}
> +
> +static void __exit meson_sec_wdt_exit(void)
> +{
> +	platform_device_unregister(platform_device);
> +	platform_driver_unregister(&meson_sec_wdt_driver);
> +}
> +
> +module_init(meson_sec_wdt_init);
> +module_exit(meson_sec_wdt_exit);
> +

Driver instantiation is wrong. It tries to instantiate itself as soon
as the module is loaded and then it bails out in the probe funmction.
It should be instantiated either through a devicetree node or through
some platform code, but it should not instantiate itself. If there
is no watchdog node, the driver needs to be instantiated from
drivers/firmware/meson/meson_sm.c.

Guenter

> +MODULE_AUTHOR("Xingyu Chen <xingyu.chen@amlogic.com>");
> +MODULE_DESCRIPTION("Amlogic Secure Watchdog Timer Driver");
> +MODULE_LICENSE("Dual MIT/GPL");
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
