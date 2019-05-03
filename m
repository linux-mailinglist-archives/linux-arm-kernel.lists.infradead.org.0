Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297131280E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 08:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gK0FNH92YkJ4jX7hWbHd62Aa0DI8wKabUryTGD9XLlY=; b=dA1q7HqX67ZCFz
	JbAO+0qS0KKgkO52fCP5KGXUxvbR0BU5vxyIiIfgEZJhRFID0CdRxJguwcX82V+ev8BVJOiY1kR2F
	6MV6u9/AVZnI5esLoHmIeobDys1gzfwac3cmhtYqcD9CRj4cDydgPhdtKwOAiXsFqjbWEXpWrkTjY
	JSKEWZkLJ4brN9OXlGeEC4YHD4YQS9rei46EwBsMJl/tRRbC10TdsIutkVyeSpdkRsn8A/tisEczv
	OpLhSSgtvg54Uewva0zxroZUTJYp+7my1prnCceYoZ9yEng9Sqb7ZLYqoLqrBXRIKFBxbcsHNPNM/
	k1je+XKCN0n0ZHB4JGCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMS3i-00029Q-6x; Fri, 03 May 2019 06:52:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMS3b-000293-LM
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 06:52:33 +0000
Received: by mail-pf1-x441.google.com with SMTP id 188so2414964pfd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 23:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sP8K2rwhgioNfprlsl68GS4+W1lr75AnIVu2khwc9zQ=;
 b=uo+h42O9yXPWVWPNllbKRivh7IWoMPi96NvsHVd6/zWjvp5rEex2cMPCl1u8nH5kHF
 5kuF8H8v9bc3tZzptS5uAarSe4v1v2icpCenINxIBMOB9RbHb0X4PKVjYcz5NAZ15tAr
 +5/XICjeM90tBXRA8f2dxIMMBVxLCXmLSh92m2gsBoqv69Xml3kLlZ12zW6A+/ArdSrD
 6RjxKHSUb1CjEsvNGW/aJT7lwvnBaC58+r7pMgKUlnWtwVO4yvOVzC2KC05I00aZndoz
 rueYmwGowgtaC/QLUXa/xmSlRpOYbgl9p45Sg/TYzXTHOFwUcmkEvPAGXCK+9UAP7CEl
 GxUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sP8K2rwhgioNfprlsl68GS4+W1lr75AnIVu2khwc9zQ=;
 b=QHuNanvLrfUE+/XMNJk/nPi4Jrj7Ik3nTyU1m2bfbgMU6c1hxFIbRotnErVc2hR/Af
 gWHfMzBX5K1fvK19JfnuPdRwCfrq6dmgPCM+Recx8LKdfXuArPQm20ZiD2uI2/hessEY
 solHrg2qpBu5V3Ivsp9FqcmlVsxgMBR8F3ptrIfyXHdN+hLoHSP5i0MBYsG6uYz9iZRl
 fdh5H6BWUoeSuMqMN1Pqzog/EmwLrYZLOEizMNozuMiKiwCfQW1ylVAlae/uhp9WWkN0
 ZIylrXvTR0ms6e87V7n64Dd9cx8eavSGeRixD0gjVtmKQUagMffKxEp9eZOzGkVHo9Bm
 PukA==
X-Gm-Message-State: APjAAAUFTFHLsZHKJWx1AcuzjGJRcmPowcRcY5rtmO1K5rwbQL7FVZOp
 zlSOsM1TXxvqYww2MJpyFR6IaA==
X-Google-Smtp-Source: APXvYqwrZbq3iwPcPzTV7fCgCqPQSxKxlJPMKIj7p/fAqcFI8p+JjI3eziskAlBKTLbUtdFd7lx6xw==
X-Received: by 2002:a63:f448:: with SMTP id p8mr8440846pgk.50.1556866350530;
 Thu, 02 May 2019 23:52:30 -0700 (PDT)
Received: from localhost ([171.61.121.242])
 by smtp.gmail.com with ESMTPSA id 14sm1721547pfx.13.2019.05.02.23.52.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 23:52:29 -0700 (PDT)
Date: Fri, 3 May 2019 12:22:27 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 1/3] cpufreq: Add imx-cpufreq-dt driver
Message-ID: <20190503065227.afqgmylbjwhg2mc3@vireshk-i7>
References: <cover.1556836868.git.leonard.crestez@nxp.com>
 <df3a41d8bf57b8dd8f8c17599eeca98d6e43962c.1556836868.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df3a41d8bf57b8dd8f8c17599eeca98d6e43962c.1556836868.git.leonard.crestez@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_235231_705916_1DD7666D 
X-CRM114-Status: GOOD (  26.50  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [171.61.121.242 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02-05-19, 22:44, Leonard Crestez wrote:
> Right now in upstream imx8m cpufreq support just lists a common subset
> of OPPs because the higher ones should only be attempted after checking
> speed grading in fuses.
> 
> Add a small driver which checks speed grading from nvmem cells before
> registering cpufreq-dt.
> 
> This allows unlocking all frequencies for imx8mm and imx8mq.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> 
> ---
>  drivers/cpufreq/Kconfig.arm          | 10 +++
>  drivers/cpufreq/Makefile             |  1 +
>  drivers/cpufreq/cpufreq-dt-platdev.c |  3 +
>  drivers/cpufreq/imx-cpufreq-dt.c     | 99 ++++++++++++++++++++++++++++
>  drivers/soc/imx/soc-imx8.c           |  3 +
>  5 files changed, 116 insertions(+)
>  create mode 100644 drivers/cpufreq/imx-cpufreq-dt.c
> 
> diff --git a/drivers/cpufreq/Kconfig.arm b/drivers/cpufreq/Kconfig.arm
> index 179a1d302f48..f8e40429e290 100644
> --- a/drivers/cpufreq/Kconfig.arm
> +++ b/drivers/cpufreq/Kconfig.arm
> @@ -90,10 +90,20 @@ config ARM_IMX6Q_CPUFREQ
>  	help
>  	  This adds cpufreq driver support for Freescale i.MX6 series SoCs.
>  
>  	  If in doubt, say N.
>  
> +config ARM_IMX_CPUFREQ_DT
> +	tristate "Freescale i.MX8M cpufreq support"
> +	depends on ARCH_MXC && CPUFREQ_DT
> +	default m if (ARCH_MXC && CPUFREQ_DT)

The if () part looks redundant here, why do you need it ?

> +	help
> +	  This adds cpufreq driver support for newer Freescale i.MX series

"newer" is a relative thing, it won't be newer an year or two later. Just drop
it.

> +	  SoCs, based on cpufreq-dt

Full stop (.) missing.

> +
> +	  If in doubt, say N.
> +
>  config ARM_KIRKWOOD_CPUFREQ
>  	def_bool MACH_KIRKWOOD
>  	help
>  	  This adds the CPUFreq driver for Marvell Kirkwood
>  	  SoCs.
> diff --git a/drivers/cpufreq/Makefile b/drivers/cpufreq/Makefile
> index 689b26c6f949..7bcda2273d0c 100644
> --- a/drivers/cpufreq/Makefile
> +++ b/drivers/cpufreq/Makefile
> @@ -54,10 +54,11 @@ obj-$(CONFIG_ARM_ARMADA_8K_CPUFREQ)	+= armada-8k-cpufreq.o
>  obj-$(CONFIG_ARM_BRCMSTB_AVS_CPUFREQ)	+= brcmstb-avs-cpufreq.o
>  obj-$(CONFIG_ACPI_CPPC_CPUFREQ)		+= cppc_cpufreq.o
>  obj-$(CONFIG_ARCH_DAVINCI)		+= davinci-cpufreq.o
>  obj-$(CONFIG_ARM_HIGHBANK_CPUFREQ)	+= highbank-cpufreq.o
>  obj-$(CONFIG_ARM_IMX6Q_CPUFREQ)		+= imx6q-cpufreq.o
> +obj-$(CONFIG_ARM_IMX_CPUFREQ_DT)	+= imx-cpufreq-dt.o
>  obj-$(CONFIG_ARM_KIRKWOOD_CPUFREQ)	+= kirkwood-cpufreq.o
>  obj-$(CONFIG_ARM_MEDIATEK_CPUFREQ)	+= mediatek-cpufreq.o
>  obj-$(CONFIG_MACH_MVEBU_V7)		+= mvebu-cpufreq.o
>  obj-$(CONFIG_ARM_OMAP2PLUS_CPUFREQ)	+= omap-cpufreq.o
>  obj-$(CONFIG_ARM_PXA2xx_CPUFREQ)	+= pxa2xx-cpufreq.o
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index 47729a22c159..19c1aad57e26 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -106,10 +106,13 @@ static const struct of_device_id whitelist[] __initconst = {
>   */
>  static const struct of_device_id blacklist[] __initconst = {
>  	{ .compatible = "calxeda,highbank", },
>  	{ .compatible = "calxeda,ecx-2000", },
>  
> +	{ .compatible = "fsl,imx8mq", },
> +	{ .compatible = "fsl,imx8mm", },
> +
>  	{ .compatible = "marvell,armadaxp", },
>  
>  	{ .compatible = "mediatek,mt2701", },
>  	{ .compatible = "mediatek,mt2712", },
>  	{ .compatible = "mediatek,mt7622", },
> diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
> new file mode 100644
> index 000000000000..9b2ee96c9213
> --- /dev/null
> +++ b/drivers/cpufreq/imx-cpufreq-dt.c
> @@ -0,0 +1,99 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP
> + */
> +
> +#include <linux/cpu.h>
> +#include <linux/err.h>
> +#include <linux/init.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/nvmem-consumer.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_opp.h>
> +#include <linux/slab.h>
> +
> +#define OCOTP_CFG3_SPEED_GRADE_SHIFT	8
> +#define OCOTP_CFG3_SPEED_GRADE_MASK	(0x3 << 8)
> +
> +static const struct of_device_id imx_cpufreq_dt_match_list[] = {
> +	{ .compatible = "fsl,imx8mm" },
> +	{ .compatible = "fsl,imx8mq" },
> +	{}
> +};
> +
> +static const struct of_device_id *imx_cpufreq_dt_match_node(void)
> +{
> +	struct device_node *np;
> +	const struct of_device_id *match;
> +
> +	np = of_find_node_by_path("/");
> +	match = of_match_node(imx_cpufreq_dt_match_list, np);
> +	of_node_put(np);
> +
> +	return match;
> +}
> +
> +/* cpufreq-dt device registered by imx-cpufreq-dt */
> +static struct platform_device *cpufreq_dt_pdev;
> +static struct opp_table *cpufreq_opp_table;
> +
> +static int imx_cpufreq_dt_probe(struct platform_device *pdev)
> +{
> +	struct device *cpu_dev = get_cpu_device(0);
> +	const struct of_device_id *match;
> +	u32 speed_grade;
> +	int ret;
> +
> +	match = imx_cpufreq_dt_match_node();

Just open code it here.

> +	if (!match)
> +		return -ENODEV;
> +
> +	ret = nvmem_cell_read_u32(cpu_dev, "speed_grade", &speed_grade);
> +	if (ret)
> +		return ret;
> +
> +	speed_grade = (speed_grade & OCOTP_CFG3_SPEED_GRADE_MASK) >> OCOTP_CFG3_SPEED_GRADE_SHIFT;
> +	dev_info(&pdev->dev, "cpu speed grade %d\n", speed_grade);
> +	speed_grade = 1 << speed_grade;
> +
> +	cpufreq_opp_table = dev_pm_opp_set_supported_hw(cpu_dev, &speed_grade, 1);
> +	if (IS_ERR(cpufreq_opp_table)) {
> +		ret = PTR_ERR(cpufreq_opp_table);
> +		dev_err(&pdev->dev, "Failed to set supported opp: %d\n", ret);
> +		return ret;
> +	}
> +
> +	cpufreq_dt_pdev = platform_device_register_data(
> +			&pdev->dev, "cpufreq-dt", -1, NULL, 0);
> +	if (IS_ERR(cpufreq_dt_pdev)) {
> +		dev_pm_opp_put_supported_hw(cpufreq_opp_table);
> +		ret = PTR_ERR(cpufreq_dt_pdev);
> +		dev_err(&pdev->dev, "Failed to register cpufreq-dt: %d\n", ret);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int imx_cpufreq_dt_remove(struct platform_device *pdev)
> +{
> +	platform_device_unregister(cpufreq_dt_pdev);
> +	dev_pm_opp_put_supported_hw(cpufreq_opp_table);
> +
> +	return 0;
> +}
> +
> +static struct platform_driver imx_cpufreq_dt_driver = {
> +	.probe = imx_cpufreq_dt_probe,
> +	.remove = imx_cpufreq_dt_remove,
> +	.driver = {
> +		.name = "imx-cpufreq-dt",
> +	},
> +};
> +module_platform_driver(imx_cpufreq_dt_driver);

Why add another virtual device-driver pair here? The only reason why we have
been adding it was to get deferred probe to work which doesn't look like the
case for this driver. Why not do everything from the init() routine ?

> +
> +MODULE_ALIAS("platform:imx-cpufreq-dt");
> +MODULE_DESCRIPTION("Freescale i.MX cpufreq speed grading driver");
> +MODULE_LICENSE("GPL v2");
> diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
> index cd10726e64e4..02988bdfbb73 100644
> --- a/drivers/soc/imx/soc-imx8.c
> +++ b/drivers/soc/imx/soc-imx8.c
> @@ -130,10 +130,13 @@ static int __init imx8_soc_init(void)
>  
>  	soc_dev = soc_device_register(soc_dev_attr);
>  	if (IS_ERR(soc_dev))
>  		goto free_rev;
>  
> +	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
> +		platform_device_register_simple("imx-cpufreq-dt", -1, NULL, 0);
> +
>  	return 0;
>  
>  free_rev:
>  	kfree(soc_dev_attr->revision);
>  free_soc:
> -- 
> 2.17.1
> 

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
