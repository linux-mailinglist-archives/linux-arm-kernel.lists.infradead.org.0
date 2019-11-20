Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B60103CF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 15:08:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bEyCdtO8LDnbN5kP3aGXUE8no+SqOugIAqamTYXDa/A=; b=WGL5IGY4UlhzzHvKwkHA0gJEb
	Hi/JesiAxVmm3BPUtdJF7H2nIJVeomQ4262le2ZPZAmqyrJJc442G8pxLB1dI5m76chaykt8zEjJX
	cCClQQ1obWMUt2ZkCBqgZ5ZP81t3I2kEuOHidMrPy/OKyI4qFsEtosZLpOF+8CuZgMmRrzyRXivDA
	MEK/zz5SMDJ8+aCVNt7YKeJhCKKGLrttcqMtlM4Mxi7kS6CVWuW2LYOBlDeqK3AuOGjAQdhMF++PO
	oz5zUa9vOjma+F89DQ0aAnaEKHBby5aOEDSLkaHqQax5KMUttgD/DLb7R/udFuQupzASNDorjlD/8
	QA7lw49Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQf2-0008WB-9p; Wed, 20 Nov 2019 14:08:48 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQer-0008Vk-Cn
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 14:08:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id 0D8D94E2006;
 Wed, 20 Nov 2019 14:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1574258916; bh=sKXNf7+tf+BHu9LsQrewd8ubqQd3MAlMp6RKQ8vGqME=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=ln5bjmnpH6cgB8T90YllEB3R/25CJbdV/ppU9JD2niV7Iq+SvNdN3iKQ5JGNhGk8o
 NROKXAnyg4CWgbdRtkeYteTryenPCxlN+q4K9wWMM4xIdg/eDXu2RF9b36vzMiaGsP
 XMHOsgIaFvCxigs2U9xmnHV4JnFXVm5mNIaIlWTE=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pS7Fsl0d8JuL; Wed, 20 Nov 2019 14:08:35 +0000 (UTC)
Received: from www.akkea.ca (node.akkea.ca [192.155.83.177])
 by node.akkea.ca (Postfix) with ESMTPSA id 778804E2003;
 Wed, 20 Nov 2019 14:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1574258915; bh=sKXNf7+tf+BHu9LsQrewd8ubqQd3MAlMp6RKQ8vGqME=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=Q74PgIzw5xRN362xel6NtMZ0DbSUmhl31g3br/LrGgWAQgmaYAWMgPJXEuArshe0/
 ZaAXrGSBNQvd/98sLp9TFLrBBoW51R+9Kbua9emoXxom+LdaBj57g2j3z9uN+DNE/v
 uQbB84vuYz0txpZ/BLE5032hD7H3E8fvPNlM9VxQ=
MIME-Version: 1.0
Date: Wed, 20 Nov 2019 06:08:35 -0800
From: Angus Ainslie <angus@akkea.ca>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH RFC v6 2/9] PM / devfreq: Add generic imx bus scaling
 driver
In-Reply-To: <f329e715898a6b9fd0cee707a93fb1e144e31bd4.1573761527.git.leonard.crestez@nxp.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <f329e715898a6b9fd0cee707a93fb1e144e31bd4.1573761527.git.leonard.crestez@nxp.com>
Message-ID: <e311a376e6aec0c380686a7e307d2c07@akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.3.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_060837_482787_5148E1A1 
X-CRM114-Status: GOOD (  21.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?Q?Artur_=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

On 2019-11-14 12:09, Leonard Crestez wrote:
> Add initial support for dynamic frequency switching on pieces of the 
> imx
> interconnect fabric.
> 
> All this driver does is set a clk rate based on an opp table, it does
> not map register areas.
> 

Is this working with mainline ATF or does it still need to be used with 
your modified ATF code ?

Thanks
Angus

> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/Kconfig       |   9 ++
>  drivers/devfreq/Makefile      |   1 +
>  drivers/devfreq/imx-devfreq.c | 150 ++++++++++++++++++++++++++++++++++
>  3 files changed, 160 insertions(+)
>  create mode 100644 drivers/devfreq/imx-devfreq.c
> 
> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
> index 923a6132e741..fef5ce831e90 100644
> --- a/drivers/devfreq/Kconfig
> +++ b/drivers/devfreq/Kconfig
> @@ -98,10 +98,19 @@ config ARM_IMX8M_DDRC_DEVFREQ
>  	select DEVFREQ_GOV_USERSPACE
>  	help
>  	  This adds the DEVFREQ driver for the i.MX8M DDR Controller. It 
> allows
>  	  adjusting DRAM frequency.
> 
> +config ARM_IMX_DEVFREQ
> +	tristate "i.MX Generic DEVFREQ Driver"
> +	depends on ARCH_MXC || COMPILE_TEST
> +	select DEVFREQ_GOV_PASSIVE
> +	select DEVFREQ_GOV_USERSPACE
> +	help
> +	  This adds the generic DEVFREQ driver for i.MX interconnects. It
> +	  allows adjusting NIC/NOC frequency.
> +
>  config ARM_TEGRA_DEVFREQ
>  	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
>  	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
>  		ARCH_TEGRA_132_SOC || ARCH_TEGRA_124_SOC || \
>  		ARCH_TEGRA_210_SOC || \
> diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
> index 3eb4d5e6635c..61d0edee16f7 100644
> --- a/drivers/devfreq/Makefile
> +++ b/drivers/devfreq/Makefile
> @@ -8,10 +8,11 @@ obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+= 
> governor_userspace.o
>  obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
> 
>  # DEVFREQ Drivers
>  obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
>  obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+= imx8m-ddrc.o
> +obj-$(CONFIG_ARM_IMX_DEVFREQ)		+= imx-devfreq.o
>  obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
>  obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra30-devfreq.o
>  obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+= tegra20-devfreq.o
> 
>  # DEVFREQ Event Drivers
> diff --git a/drivers/devfreq/imx-devfreq.c 
> b/drivers/devfreq/imx-devfreq.c
> new file mode 100644
> index 000000000000..620b344e87aa
> --- /dev/null
> +++ b/drivers/devfreq/imx-devfreq.c
> @@ -0,0 +1,150 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/devfreq.h>
> +#include <linux/device.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/pm_opp.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +
> +struct imx_devfreq {
> +	struct devfreq_dev_profile profile;
> +	struct devfreq *devfreq;
> +	struct clk *clk;
> +	struct devfreq_passive_data passive_data;
> +};
> +
> +static int imx_devfreq_target(struct device *dev,
> +			      unsigned long *freq, u32 flags)
> +{
> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
> +	struct dev_pm_opp *new_opp;
> +	unsigned long new_freq;
> +	int ret;
> +
> +	new_opp = devfreq_recommended_opp(dev, freq, flags);
> +	if (IS_ERR(new_opp)) {
> +		ret = PTR_ERR(new_opp);
> +		dev_err(dev, "failed to get recommended opp: %d\n", ret);
> +		return ret;
> +	}
> +	new_freq = dev_pm_opp_get_freq(new_opp);
> +	dev_pm_opp_put(new_opp);
> +
> +	return clk_set_rate(priv->clk, new_freq);
> +}
> +
> +static int imx_devfreq_get_cur_freq(struct device *dev, unsigned long 
> *freq)
> +{
> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
> +
> +	*freq = clk_get_rate(priv->clk);
> +
> +	return 0;
> +}
> +
> +static int imx_devfreq_get_dev_status(struct device *dev,
> +				      struct devfreq_dev_status *stat)
> +{
> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
> +
> +	stat->busy_time = 0;
> +	stat->total_time = 0;
> +	stat->current_frequency = clk_get_rate(priv->clk);
> +
> +	return 0;
> +}
> +
> +static void imx_devfreq_exit(struct device *dev)
> +{
> +	dev_pm_opp_of_remove_table(dev);
> +}
> +
> +static int imx_devfreq_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct imx_devfreq *priv;
> +	const char *gov = DEVFREQ_GOV_USERSPACE;
> +	void *govdata = NULL;
> +	int ret;
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->clk = devm_clk_get(dev, NULL);
> +	if (IS_ERR(priv->clk)) {
> +		ret = PTR_ERR(priv->clk);
> +		dev_err(dev, "failed to fetch clk: %d\n", ret);
> +		return ret;
> +	}
> +	platform_set_drvdata(pdev, priv);
> +
> +	ret = dev_pm_opp_of_add_table(dev);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to get OPP table\n");
> +		return ret;
> +	}
> +
> +	priv->profile.polling_ms = 1000;
> +	priv->profile.target = imx_devfreq_target;
> +	priv->profile.get_dev_status = imx_devfreq_get_dev_status;
> +	priv->profile.exit = imx_devfreq_exit;
> +	priv->profile.get_cur_freq = imx_devfreq_get_cur_freq;
> +	priv->profile.initial_freq = clk_get_rate(priv->clk);
> +
> +	/* Handle passive devfreq parent link */
> +	priv->passive_data.parent = devfreq_get_devfreq_by_phandle(dev, 0);
> +	if (!IS_ERR(priv->passive_data.parent)) {
> +		dev_info(dev, "setup passive link to %s\n",
> +			 dev_name(priv->passive_data.parent->dev.parent));
> +		gov = DEVFREQ_GOV_PASSIVE;
> +		govdata = &priv->passive_data;
> +	} else if (priv->passive_data.parent != ERR_PTR(-ENODEV)) {
> +		// -ENODEV means no parent: not an error.
> +		ret = PTR_ERR(priv->passive_data.parent);
> +		if (ret != -EPROBE_DEFER)
> +			dev_warn(dev, "failed to get initialize passive parent: %d\n",
> +				 ret);
> +		goto err;
> +	}
> +
> +	priv->devfreq = devm_devfreq_add_device(dev, &priv->profile,
> +						gov, govdata);
> +	if (IS_ERR(priv->devfreq)) {
> +		ret = PTR_ERR(priv->devfreq);
> +		dev_err(dev, "failed to add devfreq device: %d\n", ret);
> +		goto err;
> +	}
> +
> +	return 0;
> +
> +err:
> +	dev_pm_opp_of_remove_table(dev);
> +	return ret;
> +}
> +
> +static const struct of_device_id imx_devfreq_of_match[] = {
> +	{ .compatible = "fsl,imx8m-noc", },
> +	{ .compatible = "fsl,imx8m-nic", },
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, imx_devfreq_of_match);
> +
> +static struct platform_driver imx_devfreq_platdrv = {
> +	.probe		= imx_devfreq_probe,
> +	.driver = {
> +		.name	= "imx-devfreq",
> +		.of_match_table = of_match_ptr(imx_devfreq_of_match),
> +	},
> +};
> +module_platform_driver(imx_devfreq_platdrv);
> +
> +MODULE_DESCRIPTION("Generic i.MX bus frequency driver");
> +MODULE_AUTHOR("Leonard Crestez <leonard.crestez@nxp.com>");
> +MODULE_LICENSE("GPL v2");

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
