Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6F81B53E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 07:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbGwtkgfCWTyP1O4wtAZKCtl5JbtUvGA3fc8Sv9ms8k=; b=r8k6/04j/Pg1aJ
	b9Ydv512ARuPvQB8TQ0TB3KhdVVZW86InSwL+pJUQJ862zg2mRQf1NjefGGMRlNRijgmRm8SwVa90
	uJeN/g62+/QxoYCGuEjApiJj/OW0j2FBT+SJdTv6j+kJl41DbxlkuEW7TmuJhT1tv+XNNRmloUETs
	eT8ZYvCKJEp/KJSJS4TfxgfWBdHWRqep83E/NhLmids7ajf/Ew58vzG2hSReWDUrp7WBq5H1BIBK9
	sJ+qzJ/iXXYSsbYYsHwKol7KnBygvFgnA6UA4B8W9TiN2E0rG19Eir3IDak1+/8I6V5iQhIREr9ps
	1p46BpviJJ8PMCKox4Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRU3x-000132-Hp; Thu, 23 Apr 2020 05:06:13 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRU3m-00010s-Vd; Thu, 23 Apr 2020 05:06:04 +0000
Received: by mail-pl1-x644.google.com with SMTP id c21so1056500plz.4;
 Wed, 22 Apr 2020 22:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WeFOVyHgQszc4mrut2j8PZB7URhErPNSaopI2XK30DY=;
 b=OaUVsruehjLEtOQDCInDr39KOLFbXza3Kr12nLSsUYkbjkHUQBsR2Btjoz6jyXqDQM
 Wdu4s2MtkYt6EveNxcigpD5H8aV+H/kkh8XRnejQRkxT1L/QqO6aGicr/AefNJnK81QJ
 3y5HHZOxXcxVDGfEYdHIl5hM3IPuFvfivdN5eiCdMfPJpvU9IF2yrXMhep/XnJXDstW5
 hSRV/zxZFWCbKVapyIfAQqVxDW0R4S3+RVJTHzP1B5zjikoTyfltd33sWdrqybyzisN6
 sqTzeiuXr0YTOP3wSPK5HYAoKaATbyBwmybCFfK2pndmzHkrZsq/w9CQm18KEzUmoEUW
 xNsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=WeFOVyHgQszc4mrut2j8PZB7URhErPNSaopI2XK30DY=;
 b=JmcspMVXaGwU2r9f+rxq2Z4hwPO+DgIF1ZcxZuqRrQZaAPFJOW3d5z3oT4jUyC1BiN
 M6X3E+Q20b5gBwgtBnJLOdNwhOZ4UPJVBMrnfN8ubgUaBZrneoIKrcBPH3+a/sAJes3l
 lW2akQi0TgMHRoQuNktnarLhAc232hSV2I+/ahTEo9uHL5+nBwLfM6IkqAJ0R4RhMBlo
 AclDK67uFhUWK3EuxQ/dceRsX/B34AS27k0TwtrPRfxiaDTWK5TVN38iciDCk0iN7guf
 HskkfakqsYFV4lhImSeBpOOpmUFN2RMDGpgWkdFkuOql3DJrqcQWnkS/qNv+7uUJIRcB
 h/4Q==
X-Gm-Message-State: AGi0PuZYGiVlcyWL5SAE1ZnqsgkLHyNRD6x2nO7gEctybjxj9ZQ352iz
 W6+lpuE6JnOR22Bo03qMh9Y=
X-Google-Smtp-Source: APiQypKuOKHWV9tNVOE+ASJm0iNs9mWcyvp+gF7Sjo1ycLQZ0uLtZDNe9jOcKA7ZSvAygkCzyklUJg==
X-Received: by 2002:a17:902:ac87:: with SMTP id
 h7mr2035623plr.119.1587618361431; 
 Wed, 22 Apr 2020 22:06:01 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 198sm1319909pfa.87.2020.04.22.22.05.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Apr 2020 22:06:00 -0700 (PDT)
Subject: Re: [PATCH v5 2/2] watchdog: Add new arm_smc_wdt watchdog driver
To: Evan Benn <evanbenn@chromium.org>, LKML <linux-kernel@vger.kernel.org>
References: <20200423044036.234578-1-evanbenn@chromium.org>
 <20200423143945.v5.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <fe0a8db1-2fa2-3ef3-c994-7312c642d413@roeck-us.net>
Date: Wed, 22 Apr 2020 22:05:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200423143945.v5.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_220603_046253_2F06667A 
X-CRM114-Status: GOOD (  29.54  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 xingyu.chen@amlogic.com, Rob Herring <robh@kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 linux-watchdog@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Li Yang <leoyang.li@nxp.com>,
 Olof Johansson <olof@lixom.net>, jwerner@chromium.org,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/22/20 9:40 PM, Evan Benn wrote:
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
Your patch doesn't apply to the mainline kernel, not even with
"patch -p 1". What is your kernel baseline ?

Guenter

> ---
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
>  MAINTAINERS                    |   1 +
>  arch/arm64/configs/defconfig   |   1 +
>  drivers/watchdog/Kconfig       |  13 +++
>  drivers/watchdog/Makefile      |   1 +
>  drivers/watchdog/arm_smc_wdt.c | 189 +++++++++++++++++++++++++++++++++
>  5 files changed, 205 insertions(+)
>  create mode 100644 drivers/watchdog/arm_smc_wdt.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 0f2b39767bfa9..2b782bbff200a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1462,6 +1462,7 @@ M:	Julius Werner <jwerner@chromium.org>
>  R:	Evan Benn <evanbenn@chromium.org>
>  S:	Maintained
>  F:	devicetree/bindings/watchdog/arm-smc-wdt.yaml
> +F:	drivers/watchdog/arm_smc_wdt.c
>  
>  ARM SMMU DRIVERS
>  M:	Will Deacon <will@kernel.org>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 24e534d850454..0619df80f7575 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -513,6 +513,7 @@ CONFIG_UNIPHIER_THERMAL=y
>  CONFIG_WATCHDOG=y
>  CONFIG_ARM_SP805_WATCHDOG=y
>  CONFIG_ARM_SBSA_WATCHDOG=y
> +CONFIG_ARM_SMC_WATCHDOG=y
>  CONFIG_S3C2410_WATCHDOG=y
>  CONFIG_DW_WATCHDOG=y
>  CONFIG_SUNXI_WATCHDOG=m
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 0663c604bd642..c440b576d23bf 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -867,6 +867,19 @@ config DIGICOLOR_WATCHDOG
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called digicolor_wdt.
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
>  config LPC18XX_WATCHDOG
>  	tristate "LPC18xx/43xx Watchdog"
>  	depends on ARCH_LPC18XX || COMPILE_TEST
> diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
> index 6de2e4ceef190..97bed1d3d97cb 100644
> --- a/drivers/watchdog/Makefile
> +++ b/drivers/watchdog/Makefile
> @@ -94,6 +94,7 @@ obj-$(CONFIG_UNIPHIER_WATCHDOG) += uniphier_wdt.o
>  obj-$(CONFIG_RTD119X_WATCHDOG) += rtd119x_wdt.o
>  obj-$(CONFIG_SPRD_WATCHDOG) += sprd_wdt.o
>  obj-$(CONFIG_PM8916_WATCHDOG) += pm8916_wdt.o
> +obj-$(CONFIG_ARM_SMC_WATCHDOG) += arm_smc_wdt.o
>  
>  # X86 (i386 + ia64 + x86_64) Architecture
>  obj-$(CONFIG_ACQUIRE_WDT) += acquirewdt.o
> diff --git a/drivers/watchdog/arm_smc_wdt.c b/drivers/watchdog/arm_smc_wdt.c
> new file mode 100644
> index 0000000000000..7e14909bddda2
> --- /dev/null
> +++ b/drivers/watchdog/arm_smc_wdt.c
> @@ -0,0 +1,189 @@
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
> +	err = of_property_read_u32(pdev->dev.of_node, "arm,smc-id",
> +				   &smc_func_id);
> +	if (err < 0)
> +		return err;
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
