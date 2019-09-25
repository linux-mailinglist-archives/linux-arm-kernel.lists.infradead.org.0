Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EBFBE866
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 00:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YSc0knSoHgdLe7Kih1YFqaoc6U/f8ueqOuET8Xe4ICU=; b=mYoScaOzJuAv2i
	9xWKBMN7ZaePaLmI6XwR5czKhLtAW8BSUAeAWSRfQPLak+2CrclDLpjy+Dm09/zFdRhAio0APHwww
	ULpqclPYuOs5aVq22sb+OjWOveTqlfpKAJybLYT93uTqLks6+WvPmsfd8TXjbuO8G5oFKUcSp6vFV
	7ZoP/O2ajigV+8r0Eg1hA+q1J6wf6ztHMmM+eD7ChSoEA7NxfiGAjKKF540VYsSKUCVV3tK9QEhVG
	p03qHv4p8XUXmLX47S5bwwolGCdiEXvtHmuXWgqRg8o4hJewokNP2Oi9xfpujT8L+CcEuwtfomS2w
	K/TKtyxCufjPVyeRE6rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDFyi-0005Vz-RR; Wed, 25 Sep 2019 22:41:44 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDFy5-0005UP-Mi
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 22:41:08 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so433556pfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 15:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=DJZS+2hMW3BHIlvQqQIKWZQ/S9upQg+UWPkKnBDMHaY=;
 b=JB6Q2GHp1ZV70uEzjZQJ/AO6u5nX3s65TPoASr9MkSGdNQyIQ/0WXlmik2tJ5AF0bM
 zMM9MnNksBAQKlIfLF+LrCuJD6Np180fmKkkFjYu1a0RkLWb43TTUkiy58OdSa2U8Z6W
 004LqA6M4DeOJJ+E9vS5afyjUOvm3f7jguC0WgTHJmFwEY62dRZA0QxfucOwWX0eBwPu
 XcMr5uC3GssTrfeE58sdRAc6IJPOVyA+4uWwIAaBRc+d+SAXlrZMRyh9LoNQRZKONnfy
 4sq8BoEiSm4ra4nbgK+mdgZO9QiPd+30urNbhkelZ7Hy3CWDvi9HiEsSu1A2znaLjAGX
 3T/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=DJZS+2hMW3BHIlvQqQIKWZQ/S9upQg+UWPkKnBDMHaY=;
 b=L8RJwZB2PHC8AxZ5NMEbDJoOMBSx/DKz1ylO0FS/isG8/34ykOx5B4SaGC69GPu3hH
 Ji+8GqPU42Ks/6H4sQAbtxKkYJIFk7y/5M3FTyyUz/3zHIm6ScAVH2MiH98wUOh/ZrnX
 SjAnQMCU3xXrt3kaBSsKToEj7kRZ1E20H0PQoUVN/hk5JPN6Ylj6OWQ4kcK27pnkQbwI
 BJuqrxlyuYKu2jYTG8butvBsspsjWnVU6ea1H7/Ikw2CjmTNJilP8yaa1mwHQA16yOSe
 iYBvlWXc9skLBDDMxvObn2wm61r5r+8J6/fNkJayi+PeVptQAenC3ZjpqidKbbIdNfu7
 Q94w==
X-Gm-Message-State: APjAAAWYNO47TFC9qXMFnKNrtPw4N4Oljwo++sM79oZNiL1zDsZ4Z2JQ
 pUQQoQIDYbK0bMZLu1oikWs6VA==
X-Google-Smtp-Source: APXvYqxyMgJ5m1Xh8eUiGWUqSpHwcA3KjJXudlODQh+BYXuGy9MiW1RYEL7P75vrRNRYeQpn2BJWFg==
X-Received: by 2002:a17:90a:fc8c:: with SMTP id
 ci12mr86276pjb.38.1569451263240; 
 Wed, 25 Sep 2019 15:41:03 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id e21sm53200pfd.149.2019.09.25.15.41.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 25 Sep 2019 15:41:02 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Jianxin Pan <jianxin.pan@amlogic.com>, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 2/3] soc: amlogic: Add support for Secure power domains
 controller
In-Reply-To: <1568895064-4116-3-git-send-email-jianxin.pan@amlogic.com>
References: <1568895064-4116-1-git-send-email-jianxin.pan@amlogic.com>
 <1568895064-4116-3-git-send-email-jianxin.pan@amlogic.com>
Date: Wed, 25 Sep 2019 15:41:01 -0700
Message-ID: <7hh850t2wy.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_154105_773848_B294929B 
X-CRM114-Status: GOOD (  24.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Zhiqiang Liang <zhiqiang.liang@amlogic.com>, Rob Herring <robh+dt@kernel.org>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jianxin,

Jianxin Pan <jianxin.pan@amlogic.com> writes:

> Add support for the Amlogic Secure Power controller. In A1/C1 series, power
> control registers are in secure domain, and should be accessed by smc.
>
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> Signed-off-by: Zhiqiang Liang <zhiqiang.liang@amlogic.com>

Thanks for the new power domain driver.

> ---
>  drivers/soc/amlogic/Kconfig             |  13 +++
>  drivers/soc/amlogic/Makefile            |   1 +
>  drivers/soc/amlogic/meson-secure-pwrc.c | 182 ++++++++++++++++++++++++++++++++
>  3 files changed, 196 insertions(+)
>  create mode 100644 drivers/soc/amlogic/meson-secure-pwrc.c
>
> diff --git a/drivers/soc/amlogic/Kconfig b/drivers/soc/amlogic/Kconfig
> index bc2c912..6cb06e7 100644
> --- a/drivers/soc/amlogic/Kconfig
> +++ b/drivers/soc/amlogic/Kconfig
> @@ -48,6 +48,19 @@ config MESON_EE_PM_DOMAINS
>  	  Say yes to expose Amlogic Meson Everything-Else Power Domains as
>  	  Generic Power Domains.
>  
> +config MESON_SECURE_PM_DOMAINS
> +	bool "Amlogic Meson Secure Power Domains driver"
> +	depends on ARCH_MESON || COMPILE_TEST
> +	depends on PM && OF
> +	depends on HAVE_ARM_SMCCC
> +	default ARCH_MESON
> +	select PM_GENERIC_DOMAINS
> +	select PM_GENERIC_DOMAINS_OF
> +	help
> +	  Support for the power controller on Amlogic A1/C1 series.
> +	  Say yes to expose Amlogic Meson Secure Power Domains as Generic
> +	  Power Domains.
> +
>  config MESON_MX_SOCINFO
>  	bool "Amlogic Meson MX SoC Information driver"
>  	depends on ARCH_MESON || COMPILE_TEST
> diff --git a/drivers/soc/amlogic/Makefile b/drivers/soc/amlogic/Makefile
> index de79d044..7b8c5d3 100644
> --- a/drivers/soc/amlogic/Makefile
> +++ b/drivers/soc/amlogic/Makefile
> @@ -5,3 +5,4 @@ obj-$(CONFIG_MESON_GX_SOCINFO) += meson-gx-socinfo.o
>  obj-$(CONFIG_MESON_GX_PM_DOMAINS) += meson-gx-pwrc-vpu.o
>  obj-$(CONFIG_MESON_MX_SOCINFO) += meson-mx-socinfo.o
>  obj-$(CONFIG_MESON_EE_PM_DOMAINS) += meson-ee-pwrc.o
> +obj-$(CONFIG_MESON_SECURE_PM_DOMAINS) += meson-secure-pwrc.o
> diff --git a/drivers/soc/amlogic/meson-secure-pwrc.c b/drivers/soc/amlogic/meson-secure-pwrc.c
> new file mode 100644
> index 00000000..00c7232
> --- /dev/null
> +++ b/drivers/soc/amlogic/meson-secure-pwrc.c
> @@ -0,0 +1,182 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Amlogic, Inc.
> + * Author: Jianxin Pan <jianxin.pan@amlogic.com>
> + */
> +#include <linux/io.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
> +#include <dt-bindings/power/meson-a1-power.h>
> +#include <linux/arm-smccc.h>
> +
> +#define PWRC_ON		1
> +#define PWRC_OFF	0
> +#define SMC_PWRC_SET	0x82000093
> +#define SMC_PWRC_GET	0x82000095
> +
> +struct meson_secure_pwrc_domain {
> +	struct generic_pm_domain base;
> +	unsigned int index;
> +};
> +
> +struct meson_secure_pwrc {
> +	struct meson_secure_pwrc_domain *domains;
> +	struct genpd_onecell_data xlate;
> +};
> +
> +struct meson_secure_pwrc_domain_desc {
> +	unsigned int index;
> +	unsigned int flags;
> +	char *name;
> +	bool (*get_power)(struct meson_secure_pwrc_domain *pwrc_domain);
> +};
> +
> +struct meson_secure_pwrc_domain_data {
> +	unsigned int count;
> +	struct meson_secure_pwrc_domain_desc *domains;
> +};
> +
> +static bool pwrc_secure_get_power(struct meson_secure_pwrc_domain *pwrc_domain)
> +{
> +	struct arm_smccc_res res;
> +
> +	arm_smccc_smc(SMC_PWRC_GET, pwrc_domain->index, 0,
> +		      0, 0, 0, 0, 0, &res);
> +
> +	return res.a0 & 0x1;

Please use a #define with a readable name for this mask.

> +}

What does the return value for this function mean?  Does true mean
"powered off" or "powered on"?

See the rename I just did on the ee-pwrc driver:
https://lore.kernel.org/linux-amlogic/20190925213528.21515-2-khilman@kernel.org/

> +static int meson_secure_pwrc_off(struct generic_pm_domain *domain)
> +{
> +	struct arm_smccc_res res;
> +	struct meson_secure_pwrc_domain *pwrc_domain =
> +		container_of(domain, struct meson_secure_pwrc_domain, base);
> +
> +	arm_smccc_smc(SMC_PWRC_SET, pwrc_domain->index, PWRC_OFF,
> +		      0, 0, 0, 0, 0, &res);
> +
> +	return 0;
> +}
> +
> +static int meson_secure_pwrc_on(struct generic_pm_domain *domain)
> +{
> +	struct arm_smccc_res res;
> +	struct meson_secure_pwrc_domain *pwrc_domain =
> +		container_of(domain, struct meson_secure_pwrc_domain, base);
> +
> +	arm_smccc_smc(SMC_PWRC_SET, pwrc_domain->index, PWRC_ON,
> +		      0, 0, 0, 0, 0, &res);
> +
> +	return 0;
> +}
> +
> +#define SEC_PD(__name, __flag)			\
> +{						\
> +	.name = #__name,			\
> +	.index = PWRC_##__name##_ID,		\
> +	.get_power = pwrc_secure_get_power,	\
> +	.flags = __flag,			\
> +}
> +
> +static struct meson_secure_pwrc_domain_desc a1_pwrc_domains[] = {
> +	SEC_PD(DSPA,	0),
> +	SEC_PD(DSPB,	0),
> +	SEC_PD(UART,	GENPD_FLAG_ALWAYS_ON),

This flag should only be used for domains where there are no linux
drivers.

Rather than using this flag, you need to add a 'power-domain' property
to the uart driver in DT, and then update the meson_uart driver to use
the runtime PM API so that the domain is enabled whenever the UART is in
use.

> +	SEC_PD(DMC,	GENPD_FLAG_ALWAYS_ON),

Please explain the need for ALWAYS_ON.

> +	SEC_PD(I2C,	0),
> +	SEC_PD(PSRAM,	0),
> +	SEC_PD(ACODEC,	0),
> +	SEC_PD(AUDIO,	0),
> +	SEC_PD(OTP,	0),
> +	SEC_PD(DMA,	0),
> +	SEC_PD(SD_EMMC,	0),
> +	SEC_PD(RAMA,	0),
> +	SEC_PD(RAMB,	GENPD_FLAG_ALWAYS_ON),

Please explain the need for ALWAYS_ON.

> +	SEC_PD(IR,	0),
> +	SEC_PD(SPICC,	0),
> +	SEC_PD(SPIFC,	0),
> +	SEC_PD(USB,	0),
> +	SEC_PD(NIC,	GENPD_FLAG_ALWAYS_ON),

Please explain the need for ALWAYS_ON.

> +	SEC_PD(PDMIN,	0),
> +	SEC_PD(RSA,	0),
> +};
> +
> +static int meson_secure_pwrc_probe(struct platform_device *pdev)
> +{
> +	const struct meson_secure_pwrc_domain_data *match;
> +	struct meson_secure_pwrc *pwrc;
> +	int i;
> +
> +	match = of_device_get_match_data(&pdev->dev);
> +	if (!match) {
> +		dev_err(&pdev->dev, "failed to get match data\n");
> +		return -ENODEV;
> +	}
> +
> +	pwrc = devm_kzalloc(&pdev->dev, sizeof(*pwrc), GFP_KERNEL);
> +	if (!pwrc)
> +		return -ENOMEM;
> +
> +	pwrc->xlate.domains = devm_kcalloc(&pdev->dev, match->count,
> +					   sizeof(*pwrc->xlate.domains),
> +					   GFP_KERNEL);
> +	if (!pwrc->xlate.domains)
> +		return -ENOMEM;
> +
> +	pwrc->domains = devm_kcalloc(&pdev->dev, match->count,
> +				     sizeof(*pwrc->domains), GFP_KERNEL);
> +	if (!pwrc->domains)
> +		return -ENOMEM;
> +
> +	pwrc->xlate.num_domains = match->count;
> +	platform_set_drvdata(pdev, pwrc);
> +
> +	for (i = 0 ; i < match->count ; ++i) {
> +		struct meson_secure_pwrc_domain *dom = &pwrc->domains[i];
> +
> +		if (!match->domains[i].index)
> +			continue;
> +
> +		dom->index = match->domains[i].index;
> +		dom->base.name = match->domains[i].name;
> +		dom->base.flags = match->domains[i].flags;
> +		dom->base.power_on = meson_secure_pwrc_on;
> +		dom->base.power_off = meson_secure_pwrc_off;
> +
> +		pm_genpd_init(&dom->base, NULL,
> +			      (match->domains[i].get_power ?
> +			      match->domains[i].get_power(dom) : true));
> +
> +		pwrc->xlate.domains[i] = &dom->base;
> +	}
> +
> +	return of_genpd_add_provider_onecell(pdev->dev.of_node, &pwrc->xlate);
> +}
> +
> +static struct meson_secure_pwrc_domain_data meson_secure_a1_pwrc_data = {
> +	.domains = a1_pwrc_domains,
> +	.count = ARRAY_SIZE(a1_pwrc_domains),
> +};
> +
> +static const struct of_device_id meson_secure_pwrc_match_table[] = {
> +	{
> +		.compatible = "amlogic,meson-a1-pwrc",
> +		.data = &meson_secure_a1_pwrc_data,
> +	},
> +	{ }

as mentioned by Martin, please add the sentinel string here.  Helps for
readability.

> +};
> +
> +static struct platform_driver meson_secure_pwrc_driver = {
> +	.probe = meson_secure_pwrc_probe,
> +	.driver = {
> +		.name		= "meson_secure_pwrc",
> +		.of_match_table	= meson_secure_pwrc_match_table,
> +	},
> +};
> +
> +static int meson_secure_pwrc_init(void)
> +{
> +	return platform_driver_register(&meson_secure_pwrc_driver);
> +}
> +arch_initcall_sync(meson_secure_pwrc_init);

Please use builtin_platform_driver() or explain in detail why the
initcall is needed.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
