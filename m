Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D37116159
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Dec 2019 11:21:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lehY0ymh+lSJqAIlhI82j1uR943t4VSkg3ffAvjacNg=; b=HceekI4Vl2q/7S
	ZUrDBaXSDL7V59LI6ZZ3EksW39aFoQjc8Cph8uGllG6OJs119TuTzodZrvHhvM3YNXwpYXltIzKu+
	xuDHvm1jDa1uzUgYmCTztpcsmHzS/Z1mrUbJz98tq0FI9tmcSzdOgSyOqfbPAs8bBK+IiCziN9eXF
	Q+IWWPd1f/kwdm+VbtmlGHHVtThc1FZsAUhZpS+LpogJSaFT/ugjx0lY31pJJJYQ83D0l285DPLx0
	RkbvScDSK5GsyTHAU0/KWTUA4Ed9tOrpVqlTLhTe+0HbghsiMDnvPvm0fKGJY6CBuZ5ywQjoxBPC6
	3ADjwFfUfpQh6Kz1DAeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idtgb-0004sw-AN; Sun, 08 Dec 2019 10:21:09 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idtgT-0004sW-24
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Dec 2019 10:21:03 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Dec 2019 02:20:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,291,1571727600"; d="scan'208";a="412468139"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga005.fm.intel.com with ESMTP; 08 Dec 2019 02:20:36 -0800
Received: from andy by smile with local (Exim 4.93-RC5)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1idtg3-0007xc-Q4; Sun, 08 Dec 2019 12:20:35 +0200
Date: Sun, 8 Dec 2019 12:20:35 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] drm/gma500: Pass GPIO for Intel MID using descriptors
Message-ID: <20191208102035.GD32742@smile.fi.intel.com>
References: <20191206094301.76368-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206094301.76368-1-linus.walleij@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_022101_115664_C02038E0 
X-CRM114-Status: GOOD (  26.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Daniel Stone <daniels@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 dri-devel@lists.freedesktop.org, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 10:43:01AM +0100, Linus Walleij wrote:
> The GMA500 driver is using the legacy GPIO API to fetch
> three optional display control GPIO lines from the SFI
> description used by the Medfield platform.
> 
> Switch this over to use GPIO descriptors and delete the
> custom platform data.
> 
> We create three new static locals in the tc35876x bridge
> code but it is hardly any worse than the I2C client static
> local already there: I tried first to move it to the DRM
> driver state container but there are workarounds for
> probe order in the code so I just stayed off it, as the
> result is unpredictable.
> 
> People wanting to do a more throrugh and proper cleanup
> of the GMA500 driver can work on top of this, I can't
> solve much more since I don't have access to the hardware,
> I can only attempt to tidy up my GPIO corner.

What a nice clean up!
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

> 
> Cc: Patrik Jakobsson <patrik.r.jakobsson@gmail.com>
> Cc: Daniel Stone <daniels@collabora.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> If someone can test this on the target platform I'd be
> happy.
> ---
>  .../intel-mid/device_libs/platform_tc35876x.c | 26 ++++--
>  drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c    | 88 +++++++------------
>  include/linux/platform_data/tc35876x.h        | 11 ---
>  3 files changed, 51 insertions(+), 74 deletions(-)
>  delete mode 100644 include/linux/platform_data/tc35876x.h
> 
> diff --git a/arch/x86/platform/intel-mid/device_libs/platform_tc35876x.c b/arch/x86/platform/intel-mid/device_libs/platform_tc35876x.c
> index 44d1f884c3d3..139738bbdd36 100644
> --- a/arch/x86/platform/intel-mid/device_libs/platform_tc35876x.c
> +++ b/arch/x86/platform/intel-mid/device_libs/platform_tc35876x.c
> @@ -6,21 +6,31 @@
>   * Author: Sathyanarayanan Kuppuswamy <sathyanarayanan.kuppuswamy@intel.com>
>   */
>  
> -#include <linux/gpio.h>
> -#include <linux/platform_data/tc35876x.h>
> +#include <linux/gpio/machine.h>
>  #include <asm/intel-mid.h>
>  
> +static struct gpiod_lookup_table tc35876x_gpio_table = {
> +	.dev_id	= "i2c_disp_brig",
> +	.table	= {
> +		GPIO_LOOKUP("0000:00:0c.0", -1, "bridge-reset", GPIO_ACTIVE_HIGH),
> +		GPIO_LOOKUP("0000:00:0c.0", -1, "bl-en", GPIO_ACTIVE_HIGH),
> +		GPIO_LOOKUP("0000:00:0c.0", -1, "vadd", GPIO_ACTIVE_HIGH),
> +		{ },
> +	},
> +};
> +
>  /*tc35876x DSI_LVDS bridge chip and panel platform data*/
>  static void *tc35876x_platform_data(void *data)
>  {
> -	static struct tc35876x_platform_data pdata;
> +	struct gpiod_lookup_table *table = &tc35876x_gpio_table;
> +	struct gpiod_lookup *lookup = table->table;
>  
> -	/* gpio pins set to -1 will not be used by the driver */
> -	pdata.gpio_bridge_reset = get_gpio_by_name("LCMB_RXEN");
> -	pdata.gpio_panel_bl_en = get_gpio_by_name("6S6P_BL_EN");
> -	pdata.gpio_panel_vadd = get_gpio_by_name("EN_VREG_LCD_V3P3");
> +	lookup[0].chip_hwnum = get_gpio_by_name("LCMB_RXEN");
> +	lookup[1].chip_hwnum = get_gpio_by_name("6S6P_BL_EN");
> +	lookup[2].chip_hwnum = get_gpio_by_name("EN_VREG_LCD_V3P3");
> +	gpiod_add_lookup_table(table);
>  
> -	return &pdata;
> +	return NULL;
>  }
>  
>  static const struct devs_id tc35876x_dev_id __initconst = {
> diff --git a/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c b/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c
> index 7de3ce637c7f..9e8224456ea2 100644
> --- a/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c
> +++ b/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c
> @@ -25,7 +25,7 @@
>  #include <linux/delay.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
> -#include <linux/platform_data/tc35876x.h>
> +#include <linux/gpio/consumer.h>
>  
>  #include <asm/intel_scu_ipc.h>
>  
> @@ -36,6 +36,11 @@
>  
>  static struct i2c_client *tc35876x_client;
>  static struct i2c_client *cmi_lcd_i2c_client;
> +/* Panel GPIOs */
> +static struct gpio_desc *bridge_reset;
> +static struct gpio_desc *bridge_bl_enable;
> +static struct gpio_desc *backlight_voltage;
> +
>  
>  #define FLD_MASK(start, end)	(((1 << ((start) - (end) + 1)) - 1) << (end))
>  #define FLD_VAL(val, start, end) (((val) << (end)) & FLD_MASK(start, end))
> @@ -316,27 +321,23 @@ static int tc35876x_regr(struct i2c_client *client, u16 reg, u32 *value)
>  
>  void tc35876x_set_bridge_reset_state(struct drm_device *dev, int state)
>  {
> -	struct tc35876x_platform_data *pdata;
> -
>  	if (WARN(!tc35876x_client, "%s called before probe", __func__))
>  		return;
>  
>  	dev_dbg(&tc35876x_client->dev, "%s: state %d\n", __func__, state);
>  
> -	pdata = dev_get_platdata(&tc35876x_client->dev);
> -
> -	if (pdata->gpio_bridge_reset == -1)
> +	if (!bridge_reset)
>  		return;
>  
>  	if (state) {
> -		gpio_set_value_cansleep(pdata->gpio_bridge_reset, 0);
> +		gpiod_set_value_cansleep(bridge_reset, 0);
>  		mdelay(10);
>  	} else {
>  		/* Pull MIPI Bridge reset pin to Low */
> -		gpio_set_value_cansleep(pdata->gpio_bridge_reset, 0);
> +		gpiod_set_value_cansleep(bridge_reset, 0);
>  		mdelay(20);
>  		/* Pull MIPI Bridge reset pin to High */
> -		gpio_set_value_cansleep(pdata->gpio_bridge_reset, 1);
> +		gpiod_set_value_cansleep(bridge_reset, 1);
>  		mdelay(40);
>  	}
>  }
> @@ -510,25 +511,20 @@ void tc35876x_brightness_control(struct drm_device *dev, int level)
>  
>  void tc35876x_toshiba_bridge_panel_off(struct drm_device *dev)
>  {
> -	struct tc35876x_platform_data *pdata;
> -
>  	if (WARN(!tc35876x_client, "%s called before probe", __func__))
>  		return;
>  
>  	dev_dbg(&tc35876x_client->dev, "%s\n", __func__);
>  
> -	pdata = dev_get_platdata(&tc35876x_client->dev);
> -
> -	if (pdata->gpio_panel_bl_en != -1)
> -		gpio_set_value_cansleep(pdata->gpio_panel_bl_en, 0);
> +	if (bridge_bl_enable)
> +		gpiod_set_value_cansleep(bridge_bl_enable, 0);
>  
> -	if (pdata->gpio_panel_vadd != -1)
> -		gpio_set_value_cansleep(pdata->gpio_panel_vadd, 0);
> +	if (backlight_voltage)
> +		gpiod_set_value_cansleep(backlight_voltage, 0);
>  }
>  
>  void tc35876x_toshiba_bridge_panel_on(struct drm_device *dev)
>  {
> -	struct tc35876x_platform_data *pdata;
>  	struct drm_psb_private *dev_priv = dev->dev_private;
>  
>  	if (WARN(!tc35876x_client, "%s called before probe", __func__))
> @@ -536,10 +532,8 @@ void tc35876x_toshiba_bridge_panel_on(struct drm_device *dev)
>  
>  	dev_dbg(&tc35876x_client->dev, "%s\n", __func__);
>  
> -	pdata = dev_get_platdata(&tc35876x_client->dev);
> -
> -	if (pdata->gpio_panel_vadd != -1) {
> -		gpio_set_value_cansleep(pdata->gpio_panel_vadd, 1);
> +	if (backlight_voltage) {
> +		gpiod_set_value_cansleep(backlight_voltage, 1);
>  		msleep(260);
>  	}
>  
> @@ -571,8 +565,8 @@ void tc35876x_toshiba_bridge_panel_on(struct drm_device *dev)
>  				"i2c write failed (%d)\n", ret);
>  	}
>  
> -	if (pdata->gpio_panel_bl_en != -1)
> -		gpio_set_value_cansleep(pdata->gpio_panel_bl_en, 1);
> +	if (bridge_bl_enable)
> +		gpiod_set_value_cansleep(bridge_bl_enable, 1);
>  
>  	tc35876x_brightness_control(dev, dev_priv->brightness_adjusted);
>  }
> @@ -635,8 +629,6 @@ static int tc35876x_get_panel_info(struct drm_device *dev, int pipe,
>  static int tc35876x_bridge_probe(struct i2c_client *client,
>  				const struct i2c_device_id *id)
>  {
> -	struct tc35876x_platform_data *pdata;
> -
>  	dev_info(&client->dev, "%s\n", __func__);
>  
>  	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
> @@ -645,26 +637,23 @@ static int tc35876x_bridge_probe(struct i2c_client *client,
>  		return -ENODEV;
>  	}
>  
> -	pdata = dev_get_platdata(&client->dev);
> -	if (!pdata) {
> -		dev_err(&client->dev, "%s: no platform data\n", __func__);
> -		return -ENODEV;
> -	}
> +	bridge_reset = devm_gpiod_get_optional(&client->dev, "bridge-reset", GPIOD_OUT_LOW);
> +	if (IS_ERR(bridge_reset))
> +		return PTR_ERR(bridge_reset);
> +	if (bridge_reset)
> +		gpiod_set_consumer_name(bridge_reset, "tc35876x bridge reset");
>  
> -	if (pdata->gpio_bridge_reset != -1) {
> -		gpio_request(pdata->gpio_bridge_reset, "tc35876x bridge reset");
> -		gpio_direction_output(pdata->gpio_bridge_reset, 0);
> -	}
> -
> -	if (pdata->gpio_panel_bl_en != -1) {
> -		gpio_request(pdata->gpio_panel_bl_en, "tc35876x panel bl en");
> -		gpio_direction_output(pdata->gpio_panel_bl_en, 0);
> -	}
> +	bridge_bl_enable = devm_gpiod_get_optional(&client->dev, "bl-en", GPIOD_OUT_LOW);
> +	if (IS_ERR(bridge_bl_enable))
> +		return PTR_ERR(bridge_bl_enable);
> +	if (bridge_bl_enable)
> +		gpiod_set_consumer_name(bridge_bl_enable, "tc35876x panel bl en");
>  
> -	if (pdata->gpio_panel_vadd != -1) {
> -		gpio_request(pdata->gpio_panel_vadd, "tc35876x panel vadd");
> -		gpio_direction_output(pdata->gpio_panel_vadd, 0);
> -	}
> +	backlight_voltage = devm_gpiod_get_optional(&client->dev, "vadd", GPIOD_OUT_LOW);
> +	if (IS_ERR(backlight_voltage))
> +		return PTR_ERR(backlight_voltage);
> +	if (backlight_voltage)
> +		gpiod_set_consumer_name(backlight_voltage, "tc35876x panel vadd");
>  
>  	tc35876x_client = client;
>  
> @@ -673,19 +662,8 @@ static int tc35876x_bridge_probe(struct i2c_client *client,
>  
>  static int tc35876x_bridge_remove(struct i2c_client *client)
>  {
> -	struct tc35876x_platform_data *pdata = dev_get_platdata(&client->dev);
> -
>  	dev_dbg(&client->dev, "%s\n", __func__);
>  
> -	if (pdata->gpio_bridge_reset != -1)
> -		gpio_free(pdata->gpio_bridge_reset);
> -
> -	if (pdata->gpio_panel_bl_en != -1)
> -		gpio_free(pdata->gpio_panel_bl_en);
> -
> -	if (pdata->gpio_panel_vadd != -1)
> -		gpio_free(pdata->gpio_panel_vadd);
> -
>  	tc35876x_client = NULL;
>  
>  	return 0;
> diff --git a/include/linux/platform_data/tc35876x.h b/include/linux/platform_data/tc35876x.h
> deleted file mode 100644
> index cd6a51c71e7e..000000000000
> --- a/include/linux/platform_data/tc35876x.h
> +++ /dev/null
> @@ -1,11 +0,0 @@
> -
> -#ifndef _TC35876X_H
> -#define _TC35876X_H
> -
> -struct tc35876x_platform_data {
> -	int gpio_bridge_reset;
> -	int gpio_panel_bl_en;
> -	int gpio_panel_vadd;
> -};
> -
> -#endif /* _TC35876X_H */
> -- 
> 2.23.0
> 

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
