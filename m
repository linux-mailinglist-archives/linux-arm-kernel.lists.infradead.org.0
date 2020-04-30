Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D2C1BF43E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNMWAP74HiLUiEAiQXVGj6WQiRMxBoGO006JxIJSaL0=; b=AFH5y6i14jTowH
	lLipNGl0Iw9x3Eln0v1KuInI4J55HW0J/B9IIjxhY9dfH86hGCEMwXDjWBfNIvSOqPb2XIi9yREnu
	lc65iLVrCIQGDM0+o6ET5E/ntWHOSDe/+X2FnNw/9SOaK+/FIF1zC1fMHr2vyw7qXDukM8W+Odn2o
	5q4UBzzP3nH6ma7NhKpA9Gd7/ljrbHbQ2DzBh5NOD6t5h64hhIBY+0NIvFO2moVaqyyYdkDAhllYs
	/pFa4R4Qn9cjdrVDT9Zlr02EQai6MtdnIq/LvGtv46oMlhLqreeAo8hYp/OpaCFG4Uaw5ZvHvHJyl
	PQ7cUx/y/JfsGhMsKemw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5bh-0002KD-G3; Thu, 30 Apr 2020 09:35:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5bW-0002In-CI
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 09:35:40 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jU5bM-0002wp-0n; Thu, 30 Apr 2020 11:35:28 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jU5bI-0004mR-EL; Thu, 30 Apr 2020 11:35:24 +0200
Date: Thu, 30 Apr 2020 11:35:24 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v6 2/3] media: ov8856: Add devicetree support
Message-ID: <20200430093524.GB2188@pengutronix.de>
References: <20200429162437.2025699-1-robert.foss@linaro.org>
 <20200429162437.2025699-3-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429162437.2025699-3-robert.foss@linaro.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:11:18 up 68 days, 20:28, 150 users,  load average: 0.84, 1.00,
 0.67
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_023538_577480_2854193D 
X-CRM114-Status: GOOD (  29.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Sakari Ailus <sakari.ailus@iki.fi>, Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

thnakf for the patch but pls keep in mind to do one thing per patch.
IMHO this patch do a lot more. Anyway below are my comment :)

On 20-04-29 18:24, Robert Foss wrote:
> Add match table, enable ov8856_probe() to support
> both ACPI and DT modes.

You are also adding the support for reset-gpios and regualtors. IMHO the
commit message don't belong to the changes you made anymore.

> ACPI and DT modes are primarily distinguished from
> each other by relying on devm_XXX_get_optional()
> will return NULL instead of a reference for the
> desired managed resource.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
> 
> - Changes since v5:
>   * Maxime & Sakari: Replaced clock tolerance check with warning
> 
> - Changes since v4:
>   * Maxime & Sakari: Switch to clock-frequency
> 
> - Changes since v3:
>   * Remove redundant {}-brackets
>   * Compare xvclk_rate to 5% tolerance
>   * Andy: Use dev_fwnode()
>   * Andy: Use %pe instead of %ld + PTR_ERR()
>   * Andy: Invert reset_gpio logic
>   * Andy: Remove dev_dbg() from failing reset_gpio setup
>   * Andy: Use dev_err for logging for failures
>   * Andy: Remove dev_warn from EDEFER/regulator error path
>   * Andy & Sakari: Replaced GPIOD_OUT_XXX with 0/1
>   * Maxime & Sakari: Verify clock frequency from DT
>   * Sakari: Verify the 'xvclk_rate' is set correctly for ACPI/DT devices
>   * Sakari: Remove duplicate ov8856->dev assignment
> 
> - Changes since v2:
>   * Added "struct device *dev" member to struct ov8856
>   * Andy: Switch to optional version of devm_gpiod_get
>   * Andy: Switch to optional version of devm_clk_get
>   * Fabio: Add reset sleep period
>   * Sakari: Unify defines for 19.2Mhz
>   * Sakari: Remove 24Mhz clock, since it isn't needed for supported modes
>   * Sakari: Replace dev_info() with dev_dbg()
>   * Sakari: Switch induction variable type to unsigned
>   * Sakari: Don't wait for reset_gpio when in ACPI mode
>   * Sakari: Pull reset GPIO high on power on failure
>   * Sakari: Add power on/off to resume/suspend
>   * Sakari: Fix indentation
>   * Sakari: Power off during ov8856_remove()
>   * Sakari: Don't sleep during power-on in ACPI mode
>   * Sakari: Switch to getting xvclk from clk_get_rate
> 
> - Changes since v1:
>   * Andy & Sakari: Make XVCLK optional since to not break ACPI
>   * Fabio: Change n_shutdown_gpio name to reset_gpio
>   * Fabio: Invert reset_gpio due to GPIO_ACTIVE_HIGH -> GPIO_ACTIVE_LOW change
>   * Fabio: Remove empty line
>   * Fabio: Remove real error from devm_gpiod_get() failures
>   * Sakari: ARRAY_SIZE() directly instead of through OV8856_NUM_SUPPLIES
>   * Sakari: Use XVCLK rate as provided by DT
> 
>  drivers/media/i2c/ov8856.c | 137 +++++++++++++++++++++++++++++++++----
>  1 file changed, 123 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
> index 8655842af275..4749dc74d5ad 100644
> --- a/drivers/media/i2c/ov8856.c
> +++ b/drivers/media/i2c/ov8856.c
> @@ -3,10 +3,13 @@
>  
>  #include <asm/unaligned.h>
>  #include <linux/acpi.h>
> +#include <linux/clk.h>
>  #include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
>  #include <linux/i2c.h>
>  #include <linux/module.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/regulator/consumer.h>
>  #include <media/v4l2-ctrls.h>
>  #include <media/v4l2-device.h>
>  #include <media/v4l2-fwnode.h>
> @@ -18,7 +21,7 @@
>  #define OV8856_LINK_FREQ_360MHZ		360000000ULL
>  #define OV8856_LINK_FREQ_180MHZ		180000000ULL
>  #define OV8856_SCLK			144000000ULL
> -#define OV8856_MCLK			19200000
> +#define OV8856_XVCLK_19_2		19200000
>  #define OV8856_DATA_LANES		4
>  #define OV8856_RGB_DEPTH		10
>  
> @@ -64,6 +67,12 @@
>  
>  #define to_ov8856(_sd)			container_of(_sd, struct ov8856, sd)
>  
> +static const char * const ov8856_supply_names[] = {
> +	"dovdd",	/* Digital I/O power */
> +	"avdd",		/* Analog power */
> +	"dvdd",		/* Digital core power */
> +};
> +
>  enum {
>  	OV8856_LINK_FREQ_720MBPS,
>  	OV8856_LINK_FREQ_360MBPS,
> @@ -566,6 +575,11 @@ struct ov8856 {
>  	struct media_pad pad;
>  	struct v4l2_ctrl_handler ctrl_handler;
>  
> +	struct device		*dev;
> +	struct clk		*xvclk;
> +	struct gpio_desc	*reset_gpio;
> +	struct regulator_bulk_data supplies[ARRAY_SIZE(ov8856_supply_names)];
> +
>  	/* V4L2 Controls */
>  	struct v4l2_ctrl *link_freq;
>  	struct v4l2_ctrl *pixel_rate;
> @@ -908,6 +922,52 @@ static int ov8856_set_stream(struct v4l2_subdev *sd, int enable)
>  	return ret;
>  }
>  
> +static int __ov8856_power_on(struct ov8856 *ov8856)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> +	int ret;
> +
> +	ret = clk_prepare_enable(ov8856->xvclk);

You're request the clk only in DT case or do I miss something? If so you
have to check if the clk is available.

> +	if (ret < 0) {
> +		dev_err(&client->dev, "failed to enable xvclk\n");
> +		return ret;
> +	}
> +
> +	if (is_acpi_node(dev_fwnode(ov8856->dev)))
> +		return 0;
> +
> +	if (ov8856->reset_gpio) {
> +		gpiod_set_value_cansleep(ov8856->reset_gpio, 1);
> +		usleep_range(1000, 2000);
> +	}
> +
> +	ret = regulator_bulk_enable(ARRAY_SIZE(ov8856_supply_names),
> +				    ov8856->supplies);
> +	if (ret < 0) {
> +		dev_err(&client->dev, "failed to enable regulators\n");
> +		goto disable_clk;
> +	}
> +
> +	gpiod_set_value_cansleep(ov8856->reset_gpio, 0);

You need to check the existance of the gpio here too.

> +	usleep_range(1500, 1800);
> +
> +	return 0;
> +
> +disable_clk:
> +	gpiod_set_value_cansleep(ov8856->reset_gpio, 1);

And here.. pls check the whole patch.

> +	clk_disable_unprepare(ov8856->xvclk);
> +
> +	return ret;
> +}
> +
> +static void __ov8856_power_off(struct ov8856 *ov8856)
> +{
> +	gpiod_set_value_cansleep(ov8856->reset_gpio, 1);
> +	regulator_bulk_disable(ARRAY_SIZE(ov8856_supply_names),
> +			       ov8856->supplies);
> +	clk_disable_unprepare(ov8856->xvclk);

Clk is only availabel in DT use-case.

> +}
> +
>  static int __maybe_unused ov8856_suspend(struct device *dev)
>  {
>  	struct i2c_client *client = to_i2c_client(dev);
> @@ -918,6 +978,7 @@ static int __maybe_unused ov8856_suspend(struct device *dev)
>  	if (ov8856->streaming)
>  		ov8856_stop_streaming(ov8856);
>  
> +	__ov8856_power_off(ov8856);
>  	mutex_unlock(&ov8856->mutex);
>  
>  	return 0;
> @@ -931,6 +992,8 @@ static int __maybe_unused ov8856_resume(struct device *dev)
>  	int ret;
>  
>  	mutex_lock(&ov8856->mutex);
> +
> +	__ov8856_power_on(ov8856);
>  	if (ov8856->streaming) {
>  		ret = ov8856_start_streaming(ov8856);
>  		if (ret) {
> @@ -1092,29 +1155,54 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
>  	return 0;
>  }
>  
> -static int ov8856_check_hwcfg(struct device *dev)
> +static int ov8856_get_hwcfg(struct ov8856 *ov8856)
>  {
> +	struct device *dev = ov8856->dev;
>  	struct fwnode_handle *ep;
>  	struct fwnode_handle *fwnode = dev_fwnode(dev);
>  	struct v4l2_fwnode_endpoint bus_cfg = {
>  		.bus_type = V4L2_MBUS_CSI2_DPHY
>  	};
> -	u32 mclk;
> +	u32 xvclk_rate;
>  	int ret;
>  	unsigned int i, j;
>  
>  	if (!fwnode)
>  		return -ENXIO;
>  
> -	ret = fwnode_property_read_u32(fwnode, "clock-frequency", &mclk);
> +	ret = fwnode_property_read_u32(fwnode, "clock-frequency",
> +		&xvclk_rate);
>  	if (ret)
>  		return ret;
>  
> -	if (mclk != OV8856_MCLK) {
> -		dev_err(dev, "external clock %d is not supported", mclk);
> -		return -EINVAL;
> +	if (!is_acpi_node(fwnode)) {
> +		ov8856->xvclk = devm_clk_get(dev, "xvclk");
> +		if (IS_ERR(ov8856->xvclk)) {
> +			dev_err(dev, "could not get xvclk clock (%pe)\n",
> +					ov8856->xvclk);
> +			return PTR_ERR(ov8856->xvclk);
> +		}
> +
> +		clk_set_rate(ov8856->xvclk, xvclk_rate);
> +		xvclk_rate = clk_get_rate(ov8856->xvclk);
>  	}

Why do we handle the clock only in DT case? Is there a problem with the
clock handling and ACPI?

> +	if (xvclk_rate != OV8856_XVCLK_19_2)
> +		dev_warn(dev, "external clock rate %d is unsupported", xvclk_rate);
> +
> +	ov8856->reset_gpio = devm_gpiod_get_optional(dev, "reset",
> +		GPIOD_OUT_LOW);

Pls align this.

Regards,
  Marco

> +	if (IS_ERR(ov8856->reset_gpio))
> +		return PTR_ERR(ov8856->reset_gpio);
> +
> +	for (i = 0; i < ARRAY_SIZE(ov8856_supply_names); i++)
> +		ov8856->supplies[i].supply = ov8856_supply_names[i];
> +
> +	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ov8856_supply_names),
> +				      ov8856->supplies);
> +	if (ret)
> +		return ret;
> +
>  	ep = fwnode_graph_get_next_endpoint(fwnode, NULL);
>  	if (!ep)
>  		return -ENXIO;
> @@ -1169,6 +1257,8 @@ static int ov8856_remove(struct i2c_client *client)
>  	pm_runtime_disable(&client->dev);
>  	mutex_destroy(&ov8856->mutex);
>  
> +	__ov8856_power_off(ov8856);
> +
>  	return 0;
>  }
>  
> @@ -1177,22 +1267,31 @@ static int ov8856_probe(struct i2c_client *client)
>  	struct ov8856 *ov8856;
>  	int ret;
>  
> -	ret = ov8856_check_hwcfg(&client->dev);
> +	ov8856 = devm_kzalloc(&client->dev, sizeof(*ov8856), GFP_KERNEL);
> +	if (!ov8856)
> +		return -ENOMEM;
> +
> +	ov8856->dev = &client->dev;
> +
> +	ret = ov8856_get_hwcfg(ov8856);
>  	if (ret) {
> -		dev_err(&client->dev, "failed to check HW configuration: %d",
> +		dev_err(&client->dev, "failed to get HW configuration: %d",
>  			ret);
>  		return ret;
>  	}
>  
> -	ov8856 = devm_kzalloc(&client->dev, sizeof(*ov8856), GFP_KERNEL);
> -	if (!ov8856)
> -		return -ENOMEM;
> -
>  	v4l2_i2c_subdev_init(&ov8856->sd, client, &ov8856_subdev_ops);
> +
> +	ret = __ov8856_power_on(ov8856);
> +	if (ret) {
> +		dev_err(&client->dev, "failed to power on\n");
> +		return ret;
> +	}
> +
>  	ret = ov8856_identify_module(ov8856);
>  	if (ret) {
>  		dev_err(&client->dev, "failed to find sensor: %d", ret);
> -		return ret;
> +		goto probe_power_off;
>  	}
>  
>  	mutex_init(&ov8856->mutex);
> @@ -1238,6 +1337,9 @@ static int ov8856_probe(struct i2c_client *client)
>  	v4l2_ctrl_handler_free(ov8856->sd.ctrl_handler);
>  	mutex_destroy(&ov8856->mutex);
>  
> +probe_power_off:
> +	__ov8856_power_off(ov8856);
> +
>  	return ret;
>  }
>  
> @@ -1254,11 +1356,18 @@ static const struct acpi_device_id ov8856_acpi_ids[] = {
>  MODULE_DEVICE_TABLE(acpi, ov8856_acpi_ids);
>  #endif
>  
> +static const struct of_device_id ov8856_of_match[] = {
> +	{ .compatible = "ovti,ov8856" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, ov8856_of_match);
> +
>  static struct i2c_driver ov8856_i2c_driver = {
>  	.driver = {
>  		.name = "ov8856",
>  		.pm = &ov8856_pm_ops,
>  		.acpi_match_table = ACPI_PTR(ov8856_acpi_ids),
> +		.of_match_table = ov8856_of_match,
>  	},
>  	.probe_new = ov8856_probe,
>  	.remove = ov8856_remove,
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
