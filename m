Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09282D4FEF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 15:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EnrLvYup4dz6qOVyiUDHgrn+gjZBsDmyc6jQ6VFakEg=; b=GVWxOwN0c5o93f
	wUOigGih4xvCqDf10g55gFWJ0tXfcTBpw3F3i6DqislJK42b2QgKkqWab4FZzQ0zfWpeUPG+3whiA
	/vkmRsD+n6whRalzNCq8rYle1vtyvi143XTkrmCTSwsW8jg0jCAJOpbtuaOB9OMZoKMtFUD376+LL
	NZLUsocTczxc7sHz5Xs4lgdr0bAtTaGEzqSfIcmFwvboatlnA0rhBO3BjHErHjWHhWP1wUhQStkxt
	hkaBsNbdD7jHQEG5PLeYKLAozNXtylp66vpDH8MEAcakHqA8WNNNJnW2cBv+dj5EeYMrGV3uuy6a/
	Q4UQ3WGb4P479drk+MZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJHBe-0005ys-Lh; Sat, 12 Oct 2019 13:11:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJHBW-0005yM-6t
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 13:11:52 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E1672089F;
 Sat, 12 Oct 2019 13:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570885909;
 bh=vxQ6+Huqy7s8tkwv15FgAN1DovHArYHwFrN1EBWWBHM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UfX6az3c8nQT7u2yP1xjFwsqKhfDqG9HLxv2yGh2Fa0YqPh72YtPjSIEQ3AanAE8K
 9DoAfoBYkTUjfOdUxVLbGOVkqsbNmZXwaSXYlvlYJyUR/UJMtzRni775BIR/mYHB/A
 n4mPl7I/e81qcGoIOIHMEMK0V7M7QBk2TFFHc/6c=
Date: Sat, 12 Oct 2019 14:11:44 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] iio: dac: stm32: add power management support
Message-ID: <20191012141144.665f4a50@archlinux>
In-Reply-To: <1570628918-23474-1-git-send-email-fabrice.gasnier@st.com>
References: <1570628918-23474-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_061150_291654_40F4408D 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: lars@metafoo.de, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 9 Oct 2019 15:48:38 +0200
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> Add support for runtime PM & sleep.
> Provide pclk to regmap as registers access doesn't need full power
> (e.g. regulator). Always restore HFSEL when resuming. It may get lost
> depending on low power level that has been achieved.
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
I'm far from an expert on this stuff, but seems correct to me.

Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to poke at it.

Thanks,

Jonathan

> ---
>  drivers/iio/dac/stm32-dac-core.c | 138 ++++++++++++++++++++++++++++++---------
>  drivers/iio/dac/stm32-dac.c      |  94 +++++++++++++++++++++++++-
>  2 files changed, 199 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/iio/dac/stm32-dac-core.c b/drivers/iio/dac/stm32-dac-core.c
> index d0fb312..9e6b4cd 100644
> --- a/drivers/iio/dac/stm32-dac-core.c
> +++ b/drivers/iio/dac/stm32-dac-core.c
> @@ -11,6 +11,7 @@
>  #include <linux/delay.h>
>  #include <linux/module.h>
>  #include <linux/of_platform.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
>  
> @@ -50,6 +51,41 @@ static const struct regmap_config stm32_dac_regmap_cfg = {
>  	.max_register = 0x3fc,
>  };
>  
> +static int stm32_dac_core_hw_start(struct device *dev)
> +{
> +	struct stm32_dac_common *common = dev_get_drvdata(dev);
> +	struct stm32_dac_priv *priv = to_stm32_dac_priv(common);
> +	int ret;
> +
> +	ret = regulator_enable(priv->vref);
> +	if (ret < 0) {
> +		dev_err(dev, "vref enable failed: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = clk_prepare_enable(priv->pclk);
> +	if (ret < 0) {
> +		dev_err(dev, "pclk enable failed: %d\n", ret);
> +		goto err_regulator_disable;
> +	}
> +
> +	return 0;
> +
> +err_regulator_disable:
> +	regulator_disable(priv->vref);
> +
> +	return ret;
> +}
> +
> +static void stm32_dac_core_hw_stop(struct device *dev)
> +{
> +	struct stm32_dac_common *common = dev_get_drvdata(dev);
> +	struct stm32_dac_priv *priv = to_stm32_dac_priv(common);
> +
> +	clk_disable_unprepare(priv->pclk);
> +	regulator_disable(priv->vref);
> +}
> +
>  static int stm32_dac_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -66,6 +102,8 @@ static int stm32_dac_probe(struct platform_device *pdev)
>  	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
>  		return -ENOMEM;
> +	platform_set_drvdata(pdev, &priv->common);
> +
>  	cfg = (const struct stm32_dac_cfg *)
>  		of_match_device(dev->driver->of_match_table, dev)->data;
>  
> @@ -74,11 +112,19 @@ static int stm32_dac_probe(struct platform_device *pdev)
>  	if (IS_ERR(mmio))
>  		return PTR_ERR(mmio);
>  
> -	regmap = devm_regmap_init_mmio(dev, mmio, &stm32_dac_regmap_cfg);
> +	regmap = devm_regmap_init_mmio_clk(dev, "pclk", mmio,
> +					   &stm32_dac_regmap_cfg);
>  	if (IS_ERR(regmap))
>  		return PTR_ERR(regmap);
>  	priv->common.regmap = regmap;
>  
> +	priv->pclk = devm_clk_get(dev, "pclk");
> +	if (IS_ERR(priv->pclk)) {
> +		ret = PTR_ERR(priv->pclk);
> +		dev_err(dev, "pclk get failed\n");
> +		return ret;
> +	}
> +
>  	priv->vref = devm_regulator_get(dev, "vref");
>  	if (IS_ERR(priv->vref)) {
>  		ret = PTR_ERR(priv->vref);
> @@ -86,33 +132,22 @@ static int stm32_dac_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	ret = regulator_enable(priv->vref);
> -	if (ret < 0) {
> -		dev_err(dev, "vref enable failed\n");
> -		return ret;
> -	}
> +	pm_runtime_get_noresume(dev);
> +	pm_runtime_set_active(dev);
> +	pm_runtime_enable(dev);
> +
> +	ret = stm32_dac_core_hw_start(dev);
> +	if (ret)
> +		goto err_pm_stop;
>  
>  	ret = regulator_get_voltage(priv->vref);
>  	if (ret < 0) {
>  		dev_err(dev, "vref get voltage failed, %d\n", ret);
> -		goto err_vref;
> +		goto err_hw_stop;
>  	}
>  	priv->common.vref_mv = ret / 1000;
>  	dev_dbg(dev, "vref+=%dmV\n", priv->common.vref_mv);
>  
> -	priv->pclk = devm_clk_get(dev, "pclk");
> -	if (IS_ERR(priv->pclk)) {
> -		ret = PTR_ERR(priv->pclk);
> -		dev_err(dev, "pclk get failed\n");
> -		goto err_vref;
> -	}
> -
> -	ret = clk_prepare_enable(priv->pclk);
> -	if (ret < 0) {
> -		dev_err(dev, "pclk enable failed\n");
> -		goto err_vref;
> -	}
> -
>  	priv->rst = devm_reset_control_get_exclusive(dev, NULL);
>  	if (!IS_ERR(priv->rst)) {
>  		reset_control_assert(priv->rst);
> @@ -128,39 +163,79 @@ static int stm32_dac_probe(struct platform_device *pdev)
>  					 priv->common.hfsel ?
>  					 STM32H7_DAC_CR_HFSEL : 0);
>  		if (ret)
> -			goto err_pclk;
> +			goto err_hw_stop;
>  	}
>  
> -	platform_set_drvdata(pdev, &priv->common);
>  
>  	ret = of_platform_populate(pdev->dev.of_node, NULL, NULL, dev);
>  	if (ret < 0) {
>  		dev_err(dev, "failed to populate DT children\n");
> -		goto err_pclk;
> +		goto err_hw_stop;
>  	}
>  
> +	pm_runtime_put(dev);
> +
>  	return 0;
>  
> -err_pclk:
> -	clk_disable_unprepare(priv->pclk);
> -err_vref:
> -	regulator_disable(priv->vref);
> +err_hw_stop:
> +	stm32_dac_core_hw_stop(dev);
> +err_pm_stop:
> +	pm_runtime_disable(dev);
> +	pm_runtime_set_suspended(dev);
> +	pm_runtime_put_noidle(dev);
>  
>  	return ret;
>  }
>  
>  static int stm32_dac_remove(struct platform_device *pdev)
>  {
> -	struct stm32_dac_common *common = platform_get_drvdata(pdev);
> +	pm_runtime_get_sync(&pdev->dev);
> +	of_platform_depopulate(&pdev->dev);
> +	stm32_dac_core_hw_stop(&pdev->dev);
> +	pm_runtime_disable(&pdev->dev);
> +	pm_runtime_set_suspended(&pdev->dev);
> +	pm_runtime_put_noidle(&pdev->dev);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused stm32_dac_core_resume(struct device *dev)
> +{
> +	struct stm32_dac_common *common = dev_get_drvdata(dev);
>  	struct stm32_dac_priv *priv = to_stm32_dac_priv(common);
> +	int ret;
>  
> -	of_platform_depopulate(&pdev->dev);
> -	clk_disable_unprepare(priv->pclk);
> -	regulator_disable(priv->vref);
> +	if (priv->common.hfsel) {
> +		/* restore hfsel (maybe lost under low power state) */
> +		ret = regmap_update_bits(priv->common.regmap, STM32_DAC_CR,
> +					 STM32H7_DAC_CR_HFSEL,
> +					 STM32H7_DAC_CR_HFSEL);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return pm_runtime_force_resume(dev);
> +}
> +
> +static int __maybe_unused stm32_dac_core_runtime_suspend(struct device *dev)
> +{
> +	stm32_dac_core_hw_stop(dev);
>  
>  	return 0;
>  }
>  
> +static int __maybe_unused stm32_dac_core_runtime_resume(struct device *dev)
> +{
> +	return stm32_dac_core_hw_start(dev);
> +}
> +
> +static const struct dev_pm_ops stm32_dac_core_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, stm32_dac_core_resume)
> +	SET_RUNTIME_PM_OPS(stm32_dac_core_runtime_suspend,
> +			   stm32_dac_core_runtime_resume,
> +			   NULL)
> +};
> +
>  static const struct stm32_dac_cfg stm32h7_dac_cfg = {
>  	.has_hfsel = true,
>  };
> @@ -182,6 +257,7 @@ static struct platform_driver stm32_dac_driver = {
>  	.driver = {
>  		.name = "stm32-dac-core",
>  		.of_match_table = stm32_dac_of_match,
> +		.pm = &stm32_dac_core_pm_ops,
>  	},
>  };
>  module_platform_driver(stm32_dac_driver);
> diff --git a/drivers/iio/dac/stm32-dac.c b/drivers/iio/dac/stm32-dac.c
> index cce26a3..f22c1d9 100644
> --- a/drivers/iio/dac/stm32-dac.c
> +++ b/drivers/iio/dac/stm32-dac.c
> @@ -13,6 +13,7 @@
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
>  
>  #include "stm32-dac-core.h"
>  
> @@ -20,6 +21,8 @@
>  #define STM32_DAC_CHANNEL_2		2
>  #define STM32_DAC_IS_CHAN_1(ch)		((ch) & STM32_DAC_CHANNEL_1)
>  
> +#define STM32_DAC_AUTO_SUSPEND_DELAY_MS	2000
> +
>  /**
>   * struct stm32_dac - private data of DAC driver
>   * @common:		reference to DAC common data
> @@ -49,15 +52,34 @@ static int stm32_dac_set_enable_state(struct iio_dev *indio_dev, int ch,
>  				      bool enable)
>  {
>  	struct stm32_dac *dac = iio_priv(indio_dev);
> +	struct device *dev = indio_dev->dev.parent;
>  	u32 msk = STM32_DAC_IS_CHAN_1(ch) ? STM32_DAC_CR_EN1 : STM32_DAC_CR_EN2;
>  	u32 en = enable ? msk : 0;
>  	int ret;
>  
> +	/* already enabled / disabled ? */
> +	mutex_lock(&indio_dev->mlock);
> +	ret = stm32_dac_is_enabled(indio_dev, ch);
> +	if (ret < 0 || enable == !!ret) {
> +		mutex_unlock(&indio_dev->mlock);
> +		return ret < 0 ? ret : 0;
> +	}
> +
> +	if (enable) {
> +		ret = pm_runtime_get_sync(dev);
> +		if (ret < 0) {
> +			pm_runtime_put_noidle(dev);
> +			mutex_unlock(&indio_dev->mlock);
> +			return ret;
> +		}
> +	}
> +
>  	ret = regmap_update_bits(dac->common->regmap, STM32_DAC_CR, msk, en);
> +	mutex_unlock(&indio_dev->mlock);
>  	if (ret < 0) {
>  		dev_err(&indio_dev->dev, "%s failed\n", en ?
>  			"Enable" : "Disable");
> -		return ret;
> +		goto err_put_pm;
>  	}
>  
>  	/*
> @@ -68,7 +90,20 @@ static int stm32_dac_set_enable_state(struct iio_dev *indio_dev, int ch,
>  	if (en && dac->common->hfsel)
>  		udelay(1);
>  
> +	if (!enable) {
> +		pm_runtime_mark_last_busy(dev);
> +		pm_runtime_put_autosuspend(dev);
> +	}
> +
>  	return 0;
> +
> +err_put_pm:
> +	if (enable) {
> +		pm_runtime_mark_last_busy(dev);
> +		pm_runtime_put_autosuspend(dev);
> +	}
> +
> +	return ret;
>  }
>  
>  static int stm32_dac_get_value(struct stm32_dac *dac, int channel, int *val)
> @@ -272,6 +307,7 @@ static int stm32_dac_chan_of_init(struct iio_dev *indio_dev)
>  static int stm32_dac_probe(struct platform_device *pdev)
>  {
>  	struct device_node *np = pdev->dev.of_node;
> +	struct device *dev = &pdev->dev;
>  	struct iio_dev *indio_dev;
>  	struct stm32_dac *dac;
>  	int ret;
> @@ -296,9 +332,61 @@ static int stm32_dac_probe(struct platform_device *pdev)
>  	if (ret < 0)
>  		return ret;
>  
> -	return devm_iio_device_register(&pdev->dev, indio_dev);
> +	/* Get stm32-dac-core PM online */
> +	pm_runtime_get_noresume(dev);
> +	pm_runtime_set_active(dev);
> +	pm_runtime_set_autosuspend_delay(dev, STM32_DAC_AUTO_SUSPEND_DELAY_MS);
> +	pm_runtime_use_autosuspend(dev);
> +	pm_runtime_enable(dev);
> +
> +	ret = iio_device_register(indio_dev);
> +	if (ret)
> +		goto err_pm_put;
> +
> +	pm_runtime_mark_last_busy(dev);
> +	pm_runtime_put_autosuspend(dev);
> +
> +	return 0;
> +
> +err_pm_put:
> +	pm_runtime_disable(dev);
> +	pm_runtime_set_suspended(dev);
> +	pm_runtime_put_noidle(dev);
> +
> +	return ret;
>  }
>  
> +static int stm32_dac_remove(struct platform_device *pdev)
> +{
> +	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
> +
> +	pm_runtime_get_sync(&pdev->dev);
> +	iio_device_unregister(indio_dev);
> +	pm_runtime_disable(&pdev->dev);
> +	pm_runtime_set_suspended(&pdev->dev);
> +	pm_runtime_put_noidle(&pdev->dev);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused stm32_dac_suspend(struct device *dev)
> +{
> +	struct iio_dev *indio_dev = dev_get_drvdata(dev);
> +	int channel = indio_dev->channels[0].channel;
> +	int ret;
> +
> +	/* Ensure DAC is disabled before suspend */
> +	ret = stm32_dac_is_enabled(indio_dev, channel);
> +	if (ret)
> +		return ret < 0 ? ret : -EBUSY;
> +
> +	return pm_runtime_force_suspend(dev);
> +}
> +
> +static const struct dev_pm_ops stm32_dac_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(stm32_dac_suspend, pm_runtime_force_resume)
> +};
> +
>  static const struct of_device_id stm32_dac_of_match[] = {
>  	{ .compatible = "st,stm32-dac", },
>  	{},
> @@ -307,9 +395,11 @@ MODULE_DEVICE_TABLE(of, stm32_dac_of_match);
>  
>  static struct platform_driver stm32_dac_driver = {
>  	.probe = stm32_dac_probe,
> +	.remove = stm32_dac_remove,
>  	.driver = {
>  		.name = "stm32-dac",
>  		.of_match_table = stm32_dac_of_match,
> +		.pm = &stm32_dac_pm_ops,
>  	},
>  };
>  module_platform_driver(stm32_dac_driver);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
