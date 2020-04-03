Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA0D19E180
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 01:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKkP9EoWxOJDwYrqSDbRnxc84JaaJiROra0YBT4moFE=; b=fG2et37moBUAXx
	wMXdyf4FUK8poG5EWUWZcvY6mqIFMEZ6aPbBFx9bcbaw6QsqNxAf855ew/bJZDipUL1n/9yTCahLs
	xBQyA5P2GBlNKQL1cIZqBUZ6b20wIEheacQcXrlTQvd+yAikJWHosaBHuNK0+W/SXl6mUjeJ7p5XG
	iySTXNn7elZ1dJPIEIzRjx+LyFFdYIROJy4jNJN41oWWSRUMU32q6pNipGfPyTDl6CAVTb22ffStE
	j9rx1zEE1/LY6xbdatU4x/Lw+jyHp+DQl9GCEEurAKlTLhXxwu6iK0Nzx+ThE6fJgfFh7dpcz1GDz
	euBLfQqCAsaXbup8ePcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKVpa-0002EL-9P; Fri, 03 Apr 2020 23:34:34 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKVpT-0002Dg-PF
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 23:34:29 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 10943634C89;
 Sat,  4 Apr 2020 02:33:29 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jKVoV-0001k0-W7; Sat, 04 Apr 2020 02:33:28 +0300
Date: Sat, 4 Apr 2020 02:33:27 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v3 2/3] media: ov8856: Add devicetree support
Message-ID: <20200403233327.GB6127@valkosipuli.retiisi.org.uk>
References: <20200331133346.372517-1-robert.foss@linaro.org>
 <20200331133346.372517-3-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331133346.372517-3-robert.foss@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_163428_179334_04A8014E 
X-CRM114-Status: GOOD (  25.40  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On Tue, Mar 31, 2020 at 03:33:45PM +0200, Robert Foss wrote:
> Add devicetree match table, and enable ov8856_probe()
> to initialize power, clocks and reset pins.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
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
>  drivers/media/i2c/ov8856.c | 141 ++++++++++++++++++++++++++++++++-----
>  1 file changed, 125 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
> index 8655842af275..260aaf332631 100644
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
> +	if (ret < 0) {
> +		dev_err(&client->dev, "failed to enable xvclk\n");
> +		return ret;
> +	}
> +
> +	if (is_acpi_node(ov8856->dev->fwnode))
> +		return 0;
> +
> +	if (ov8856->reset_gpio) {
> +		gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
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
> +	gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_LOW);
> +	usleep_range(1500, 1800);
> +
> +	return 0;
> +
> +disable_clk:
> +	gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
> +	clk_disable_unprepare(ov8856->xvclk);
> +
> +	return ret;
> +}
> +
> +static void __ov8856_power_off(struct ov8856 *ov8856)
> +{
> +	gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
> +	regulator_bulk_disable(ARRAY_SIZE(ov8856_supply_names),
> +			       ov8856->supplies);
> +	clk_disable_unprepare(ov8856->xvclk);
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
> @@ -1092,27 +1155,52 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
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
> +	unsigned long xvclk_rate;
>  	int ret;
>  	unsigned int i, j;
>  
>  	if (!fwnode)
>  		return -ENXIO;
>  
> -	ret = fwnode_property_read_u32(fwnode, "clock-frequency", &mclk);
> -	if (ret)
> -		return ret;

You'll still need to continue reading the clock-frequency property on ACPI
systems, and assume that frequency (as you won't have the clock object).

> +	ov8856->xvclk = devm_clk_get_optional(dev, "xvclk");
> +	if (IS_ERR(ov8856->xvclk)) {
> +		dev_err(dev, "could not get xvclk clock (%ld)\n",
> +			PTR_ERR(ov8856->xvclk));
> +		return PTR_ERR(ov8856->xvclk);
> +	}
>  
> -	if (mclk != OV8856_MCLK) {
> -		dev_err(dev, "external clock %d is not supported", mclk);
> -		return -EINVAL;
> +	if (ov8856->xvclk) {
> +		xvclk_rate = clk_get_rate(ov8856->xvclk);
> +		if (xvclk_rate != OV8856_XVCLK_19_2) {
> +			dev_err(dev, "external clock %lu is not supported",
> +				xvclk_rate);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	ov8856->reset_gpio = devm_gpiod_get_optional(dev, "reset",
> +		GPIOD_OUT_HIGH);
> +	if (IS_ERR(ov8856->reset_gpio)) {
> +		dev_dbg(dev, "failed to get reset-gpio\n");
> +		return PTR_ERR(ov8856->reset_gpio);
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(ov8856_supply_names); i++)
> +		ov8856->supplies[i].supply = ov8856_supply_names[i];
> +
> +	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ov8856_supply_names),
> +				      ov8856->supplies);
> +	if (ret) {
> +		dev_warn(dev, "failed to get regulators\n");
> +		return ret;
>  	}
>  
>  	ep = fwnode_graph_get_next_endpoint(fwnode, NULL);
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
> +	ov8856->dev = &client->dev;
> +
> +	ov8856->dev = &client->dev;

What happened here? :-)

I think this patch is starting to look quite reasonable.

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
> +		dev_warn(&client->dev, "failed to power on\n");
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

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
