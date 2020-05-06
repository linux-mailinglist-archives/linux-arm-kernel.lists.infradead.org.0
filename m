Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C795C1C6872
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zVJO+/0OUKWfCHkjBXSU2+IdBvPJ/+EBHlYF1mgBK+o=; b=B5V194YYSRqNLEPwy79hWNA1Q
	C30qaZtblZ17ngKErQFjxdgYAJiwMIIOAqG/8zMQpSOXYjFjYIruqYvsl9QedYr9MaY6CJX7GMrY3
	Ycl3NLPbFj0aRkBaM1Ed8FePJMneVKHzNcojZ+FGBIbGltY33pE4VL8s79l980r1Gvp5joiTGCNCc
	KxW2oJ59pGFQ3JjW0cxlkdawYybMqzw49nr8htnM2hLlwbQvbMH4Yd3BLbcfZljbpJ3dukvCokSIb
	LM0xcL5xlQUmm+bITaVWo2t/RxvGzhdJDGGVtmcC+Ql3G7rWz8g937hLsaB/6mXpt9ASCzwgZLWSY
	fXYxbdvbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDRA-0005eE-7V; Wed, 06 May 2020 06:21:44 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDR1-0005ci-32; Wed, 06 May 2020 06:21:36 +0000
Received: from [10.28.39.58] (10.28.39.58) by mail-sz.amlogic.com (10.28.11.5)
 with Microsoft SMTP Server id 15.1.1591.10;
 Wed, 6 May 2020 14:21:20 +0800
Subject: Re: [PATCH v6 2/2] watchdog: Add new arm_smc_wdt watchdog driver
To: Evan Benn <evanbenn@chromium.org>, LKML <linux-kernel@vger.kernel.org>
References: <20200505031331.122781-1-evanbenn@chromium.org>
 <20200505131242.v6.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
From: Xingyu Chen <xingyu.chen@amlogic.com>
Message-ID: <f936886d-6ff6-0213-adb0-f3323037bb13@amlogic.com>
Date: Wed, 6 May 2020 14:21:20 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505131242.v6.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
Content-Language: en-GB
X-Originating-IP: [10.28.39.58]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_232135_160493_1B66BFAA 
X-CRM114-Status: GOOD (  26.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Yonghui Yu <yonghui.yu@amlogic.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>, linux-watchdog@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, Jianxin Pan <jianxin.pan@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Li Yang <leoyang.li@nxp.com>,
 Olof Johansson <olof@lixom.net>, jwerner@chromium.org,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tested on the Meson-A1.

Tested-by: Xingyu Chen<xingyu.chen@amlogic.com>

On 2020/5/5 11:13, Evan Benn wrote:
> From: Julius Werner <jwerner@chromium.org>
> 
> This patch adds a watchdog driver that can be used on ARM systems
> with the appropriate watchdog implemented in Secure Monitor firmware.
> The driver communicates with firmware via a Secure Monitor Call.
> This may be useful for platforms using TrustZone that want
> the Secure Monitor firmware to have the final control over the watchdog.
> 
> This is implemented on mt8173 chromebook devices oak, elm and hana in
> arm trusted firmware file plat/mediatek/mt8173/drivers/wdt/wdt.c.
> 
> Signed-off-by: Julius Werner <jwerner@chromium.org>
> Signed-off-by: Evan Benn <evanbenn@chromium.org>
> 
> ---
> 
> Changes in v6:
> - Use default arm,smc-id value if non provided by dt
> 
> Changes in v5:
> - Make timeleft return 0 on error
> - Use type punning on smc_func_id to save an alloc
> - Change compatible to arm,smc-wdt
> 
> Changes in v4:
> - Get smc-id from of property
> - Return a1 instead of a0 in timeleft
> 
> Changes in v3:
> - Add optional get_timeleft op
> - change name to arm_smc_wdt
> 
> Changes in v2:
> - use watchdog_stop_on_reboot
> - use watchdog_stop_on_unregister
> - use devm_watchdog_register_device
> - remove smcwd_shutdown, smcwd_remove
> - change error codes
> 
>   MAINTAINERS                    |   1 +
>   arch/arm64/configs/defconfig   |   1 +
>   drivers/watchdog/Kconfig       |  13 +++
>   drivers/watchdog/Makefile      |   1 +
>   drivers/watchdog/arm_smc_wdt.c | 188 +++++++++++++++++++++++++++++++++
>   5 files changed, 204 insertions(+)
>   create mode 100644 drivers/watchdog/arm_smc_wdt.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 0f2b39767bfa9..2b782bbff200a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1462,6 +1462,7 @@ M:	Julius Werner <jwerner@chromium.org>
>   R:	Evan Benn <evanbenn@chromium.org>
>   S:	Maintained
>   F:	devicetree/bindings/watchdog/arm-smc-wdt.yaml
> +F:	drivers/watchdog/arm_smc_wdt.c
>   
>   ARM SMMU DRIVERS
>   M:	Will Deacon <will@kernel.org>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 24e534d850454..0619df80f7575 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -513,6 +513,7 @@ CONFIG_UNIPHIER_THERMAL=y
>   CONFIG_WATCHDOG=y
>   CONFIG_ARM_SP805_WATCHDOG=y
>   CONFIG_ARM_SBSA_WATCHDOG=y
> +CONFIG_ARM_SMC_WATCHDOG=y
>   CONFIG_S3C2410_WATCHDOG=y
>   CONFIG_DW_WATCHDOG=y
>   CONFIG_SUNXI_WATCHDOG=m
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 0663c604bd642..c440b576d23bf 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -867,6 +867,19 @@ config DIGICOLOR_WATCHDOG
>   	  To compile this driver as a module, choose M here: the
>   	  module will be called digicolor_wdt.
>   
> +config ARM_SMC_WATCHDOG
> +	tristate "ARM Secure Monitor Call based watchdog support"
> +	depends on ARM || ARM64
> +	depends on OF
> +	depends on HAVE_ARM_SMCCC
> +	select WATCHDOG_CORE
> +	help
> +	  Say Y here to include support for a watchdog timer
> +	  implemented by the EL3 Secure Monitor on ARM platforms.
> +	  Requires firmware support.
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called arm_smc_wdt.
> +
>   config LPC18XX_WATCHDOG
>   	tristate "LPC18xx/43xx Watchdog"
>   	depends on ARCH_LPC18XX || COMPILE_TEST
> diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
> index 6de2e4ceef190..97bed1d3d97cb 100644
> --- a/drivers/watchdog/Makefile
> +++ b/drivers/watchdog/Makefile
> @@ -94,6 +94,7 @@ obj-$(CONFIG_UNIPHIER_WATCHDOG) += uniphier_wdt.o
>   obj-$(CONFIG_RTD119X_WATCHDOG) += rtd119x_wdt.o
>   obj-$(CONFIG_SPRD_WATCHDOG) += sprd_wdt.o
>   obj-$(CONFIG_PM8916_WATCHDOG) += pm8916_wdt.o
> +obj-$(CONFIG_ARM_SMC_WATCHDOG) += arm_smc_wdt.o
>   
>   # X86 (i386 + ia64 + x86_64) Architecture
>   obj-$(CONFIG_ACQUIRE_WDT) += acquirewdt.o
> diff --git a/drivers/watchdog/arm_smc_wdt.c b/drivers/watchdog/arm_smc_wdt.c
> new file mode 100644
> index 0000000000000..8f3d0c3a005fb
> --- /dev/null
> +++ b/drivers/watchdog/arm_smc_wdt.c
> @@ -0,0 +1,188 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * ARM Secure Monitor Call watchdog driver
> + *
> + * Copyright 2020 Google LLC.
> + * Julius Werner <jwerner@chromium.org>
> + * Based on mtk_wdt.c
> + */
> +
> +#include <linux/arm-smccc.h>
> +#include <linux/err.h>
> +#include <linux/module.h>
> +#include <linux/moduleparam.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/types.h>
> +#include <linux/watchdog.h>
> +#include <uapi/linux/psci.h>
> +
> +#define DRV_NAME		"arm_smc_wdt"
> +#define DRV_VERSION		"1.0"
> +
> +enum smcwd_call {
> +	SMCWD_INIT		= 0,
> +	SMCWD_SET_TIMEOUT	= 1,
> +	SMCWD_ENABLE		= 2,
> +	SMCWD_PET		= 3,
> +	SMCWD_GET_TIMELEFT	= 4,
> +};
> +
> +static bool nowayout = WATCHDOG_NOWAYOUT;
> +static unsigned int timeout;
> +
> +static int smcwd_call(struct watchdog_device *wdd, enum smcwd_call call,
> +		      unsigned long arg, struct arm_smccc_res *res)
> +{
> +	struct arm_smccc_res local_res;
> +
> +	if (!res)
> +		res = &local_res;
> +
> +	arm_smccc_smc((u32)(uintptr_t)watchdog_get_drvdata(wdd), call, arg, 0,
> +		      0, 0, 0, 0, res);
> +
> +	if (res->a0 == PSCI_RET_NOT_SUPPORTED)
> +		return -ENODEV;
> +	if (res->a0 == PSCI_RET_INVALID_PARAMS)
> +		return -EINVAL;
> +	if (res->a0 != PSCI_RET_SUCCESS)
> +		return -EIO;
> +	return 0;
> +}
> +
> +static int smcwd_ping(struct watchdog_device *wdd)
> +{
> +	return smcwd_call(wdd, SMCWD_PET, 0, NULL);
> +}
> +
> +static unsigned int smcwd_get_timeleft(struct watchdog_device *wdd)
> +{
> +	struct arm_smccc_res res;
> +
> +	smcwd_call(wdd, SMCWD_GET_TIMELEFT, 0, &res);
> +	if (res.a0)
> +		return 0;
> +	return res.a1;
> +}
> +
> +static int smcwd_set_timeout(struct watchdog_device *wdd, unsigned int timeout)
> +{
> +	int res;
> +
> +	res = smcwd_call(wdd, SMCWD_SET_TIMEOUT, timeout, NULL);
> +	if (!res)
> +		wdd->timeout = timeout;
> +	return res;
> +}
> +
> +static int smcwd_stop(struct watchdog_device *wdd)
> +{
> +	return smcwd_call(wdd, SMCWD_ENABLE, 0, NULL);
> +}
> +
> +static int smcwd_start(struct watchdog_device *wdd)
> +{
> +	return smcwd_call(wdd, SMCWD_ENABLE, 1, NULL);
> +}
> +
> +static const struct watchdog_info smcwd_info = {
> +	.identity	= DRV_NAME,
> +	.options	= WDIOF_SETTIMEOUT |
> +			  WDIOF_KEEPALIVEPING |
> +			  WDIOF_MAGICCLOSE,
> +};
> +
> +static const struct watchdog_ops smcwd_ops = {
> +	.start		= smcwd_start,
> +	.stop		= smcwd_stop,
> +	.ping		= smcwd_ping,
> +	.set_timeout	= smcwd_set_timeout,
> +};
> +
> +static const struct watchdog_ops smcwd_timeleft_ops = {
> +	.start		= smcwd_start,
> +	.stop		= smcwd_stop,
> +	.ping		= smcwd_ping,
> +	.set_timeout	= smcwd_set_timeout,
> +	.get_timeleft	= smcwd_get_timeleft,
> +};
> +
> +static int smcwd_probe(struct platform_device *pdev)
> +{
> +	struct watchdog_device *wdd;
> +	int err;
> +	struct arm_smccc_res res;
> +	u32 smc_func_id;
> +
> +	wdd = devm_kzalloc(&pdev->dev, sizeof(*wdd), GFP_KERNEL);
> +	if (!wdd)
> +		return -ENOMEM;
> +	platform_set_drvdata(pdev, wdd);
> +
> +	if (of_property_read_u32(pdev->dev.of_node, "arm,smc-id",
> +				 &smc_func_id))
> +		smc_func_id = 0x82003D06;
> +	watchdog_set_drvdata(wdd, (void *)(uintptr_t)smc_func_id);
> +
> +	err = smcwd_call(wdd, SMCWD_INIT, 0, &res);
> +	if (err < 0)
> +		return err;
> +
> +	wdd->info = &smcwd_info;
> +	/* get_timeleft is optional */
> +	if (smcwd_call(wdd, SMCWD_GET_TIMELEFT, 0, NULL))
> +		wdd->ops = &smcwd_ops;
> +	else
> +		wdd->ops = &smcwd_timeleft_ops;
> +	wdd->timeout = res.a2;
> +	wdd->max_timeout = res.a2;
> +	wdd->min_timeout = res.a1;
> +	wdd->parent = &pdev->dev;
> +
> +	watchdog_stop_on_reboot(wdd);
> +	watchdog_stop_on_unregister(wdd);
> +	watchdog_set_nowayout(wdd, nowayout);
> +	watchdog_init_timeout(wdd, timeout, &pdev->dev);
> +	err = smcwd_set_timeout(wdd, wdd->timeout);
> +	if (err)
> +		return err;
> +
> +	err = devm_watchdog_register_device(&pdev->dev, wdd);
> +	if (err)
> +		return err;
> +
> +	dev_info(&pdev->dev,
> +		 "Watchdog registered (timeout=%d sec, nowayout=%d)\n",
> +		 wdd->timeout, nowayout);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id smcwd_dt_ids[] = {
> +	{ .compatible = "arm,smc-wdt" },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, smcwd_dt_ids);
> +
> +static struct platform_driver smcwd_driver = {
> +	.probe		= smcwd_probe,
> +	.driver		= {
> +		.name		= DRV_NAME,
> +		.of_match_table	= smcwd_dt_ids,
> +	},
> +};
> +
> +module_platform_driver(smcwd_driver);
> +
> +module_param(timeout, uint, 0);
> +MODULE_PARM_DESC(timeout, "Watchdog heartbeat in seconds");
> +
> +module_param(nowayout, bool, 0);
> +MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
> +			__MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
> +
> +MODULE_LICENSE("GPL");
> +MODULE_AUTHOR("Julius Werner <jwerner@chromium.org>");
> +MODULE_DESCRIPTION("ARM Secure Monitor Call Watchdog Driver");
> +MODULE_VERSION(DRV_VERSION);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
