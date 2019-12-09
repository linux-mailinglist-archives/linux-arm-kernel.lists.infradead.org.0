Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95A0116B14
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 11:32:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+oru2u7h6Ue863tlf/K8kUOOeoIhQzj5lL0ogbA20A=; b=oSBUQIs0C7FkIj
	9bIbLlxdRYDJXDses00jLb4VbaaoZZRtPfHr8O5SKIRQDj0jBvglAL3TPtYmh3lmnkcN1hTmiIR34
	h4ksbTvvzYQEnyy9mId3Eo9RdeWdb+Mnf9tKj6FF93mMS9gTM2i4gc1bXPmfnNKXfjhwub583sdkQ
	6NgzO8WtSZzaPh/q0ee6IRSla/DyR6FymLO1kho+OahAeXlLjTXyH6XxxC+5pjHZm/yCiOUnS1Sff
	E8loeCUqOAXDCSlyuRF/xWKtkYDI70sqawBK4wkdFdIxmLSE/B8DLg7ixfYtDUNKXaHmqZIvpNlvn
	1vEy0tUPvh/NX8jBuYEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieGLT-000352-TX; Mon, 09 Dec 2019 10:32:51 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGLJ-000348-Vj
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 10:32:44 +0000
Received: by mail-lf1-x143.google.com with SMTP id y19so10244104lfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 02:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G7UwTWAWkp2oqrD4j/k1LpRCneB2ziZ2/97MpbiTXlA=;
 b=k31vb2KYMFCqD2VAdfcvlnWbJl9ZUE1EKh50PYV8VPnIzdsz2JIYLkLKxZvSRF1SGb
 sClsMgufEiJW1c78xwNyKM3A+DzKardVG4Z8BENTwibsyNgasIEIVnElNtOykb/MboVn
 9auzFBnvwgPOygLpOh95c0YfMzt/Qs4uOPmNbqXa09b0mUnxFrL2+gV4PdQKCYQY0h74
 Gvx17Xjxc0+/f4tNVBa8HriA3a658E8qoMVK1iXahYsUzfyV7FDEn7Zy+JcA0WLO7XUY
 HgP0maApyCAKJhD/fqjMPYxd1DlO2nrm4vZ9XmIWSMJ0tKYZhWisKpHFRyBzUeJ6HWfZ
 eLTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G7UwTWAWkp2oqrD4j/k1LpRCneB2ziZ2/97MpbiTXlA=;
 b=PgPspklGW6Xgb8o/02XuJRiJ5JoLbYOA7uuhedY5SJ41a1CT8RGQLSS8VH+TKhq0OL
 bjC6XsxYAMT+2N5A4kW8lpoycAJ2hLiVltMBmqCEO32WNVGK99nLum0cL1Psw1VC6V5w
 XgwOsTp/qP5A8vft7CFQyllH3rHy3aprCBs3IngNyWVPxljHXcA6+EBKopeX0YzBUCKf
 kSUaYVKZNG0Udwg9lT5PwQ/AXwt/zU+D8k2GCGtTkeJrnH9Qi4hYnN3K+hlS2GLXwz/A
 y80VZg7fl+CpzPrlfgH/WtO3ivc4vXfuVWs1fp6H9OopBsN2h3AMIraL0uodvbuhHGCE
 Th8w==
X-Gm-Message-State: APjAAAXv/LUMkIpbx8N/DzkJ0Z4g+xViS9NwMaCm8mRoYNuo1MTw7lu0
 g7rPv8DYLVdw3B3EwFNShkWHfCQ6hfmP/QTLi3Y=
X-Google-Smtp-Source: APXvYqz7qxUDMmqGnDMBklsrYshcU1ypEFlO0Z7OZGVzgSh8afaeGYOtXuFfEEMV+GlIilkiQu27vo5w3eqkLumG3E4=
X-Received: by 2002:ac2:5a09:: with SMTP id q9mr5464042lfn.71.1575887557890;
 Mon, 09 Dec 2019 02:32:37 -0800 (PST)
MIME-Version: 1.0
References: <20191206094301.76368-1-linus.walleij@linaro.org>
In-Reply-To: <20191206094301.76368-1-linus.walleij@linaro.org>
From: Patrik Jakobsson <patrik.r.jakobsson@gmail.com>
Date: Mon, 9 Dec 2019 11:32:27 +0100
Message-ID: <CAMeQTsZSNpREsP5e+_UFc6nfQ7CqAHOYP+ivsEzX_iMKa0YzVw@mail.gmail.com>
Subject: Re: [PATCH] drm/gma500: Pass GPIO for Intel MID using descriptors
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_023242_051104_697E20D4 
X-CRM114-Status: GOOD (  26.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (patrik.r.jakobsson[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 6, 2019 at 10:43 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
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
>
> Cc: Patrik Jakobsson <patrik.r.jakobsson@gmail.com>
> Cc: Daniel Stone <daniels@collabora.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> If someone can test this on the target platform I'd be
> happy.

Hi Linus, sorry don't have hardware to test with. Medfields are very
rare (or extinct).

This looks ok. I'll let you apply this. Thanks for the cleanup.

Acked-by: Patrik Jakobsson <patrik.r.jakobsson@gmail.com>

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
> +       .dev_id = "i2c_disp_brig",
> +       .table  = {
> +               GPIO_LOOKUP("0000:00:0c.0", -1, "bridge-reset", GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP("0000:00:0c.0", -1, "bl-en", GPIO_ACTIVE_HIGH),
> +               GPIO_LOOKUP("0000:00:0c.0", -1, "vadd", GPIO_ACTIVE_HIGH),
> +               { },
> +       },
> +};
> +
>  /*tc35876x DSI_LVDS bridge chip and panel platform data*/
>  static void *tc35876x_platform_data(void *data)
>  {
> -       static struct tc35876x_platform_data pdata;
> +       struct gpiod_lookup_table *table = &tc35876x_gpio_table;
> +       struct gpiod_lookup *lookup = table->table;
>
> -       /* gpio pins set to -1 will not be used by the driver */
> -       pdata.gpio_bridge_reset = get_gpio_by_name("LCMB_RXEN");
> -       pdata.gpio_panel_bl_en = get_gpio_by_name("6S6P_BL_EN");
> -       pdata.gpio_panel_vadd = get_gpio_by_name("EN_VREG_LCD_V3P3");
> +       lookup[0].chip_hwnum = get_gpio_by_name("LCMB_RXEN");
> +       lookup[1].chip_hwnum = get_gpio_by_name("6S6P_BL_EN");
> +       lookup[2].chip_hwnum = get_gpio_by_name("EN_VREG_LCD_V3P3");
> +       gpiod_add_lookup_table(table);
>
> -       return &pdata;
> +       return NULL;
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
>  #define FLD_MASK(start, end)   (((1 << ((start) - (end) + 1)) - 1) << (end))
>  #define FLD_VAL(val, start, end) (((val) << (end)) & FLD_MASK(start, end))
> @@ -316,27 +321,23 @@ static int tc35876x_regr(struct i2c_client *client, u16 reg, u32 *value)
>
>  void tc35876x_set_bridge_reset_state(struct drm_device *dev, int state)
>  {
> -       struct tc35876x_platform_data *pdata;
> -
>         if (WARN(!tc35876x_client, "%s called before probe", __func__))
>                 return;
>
>         dev_dbg(&tc35876x_client->dev, "%s: state %d\n", __func__, state);
>
> -       pdata = dev_get_platdata(&tc35876x_client->dev);
> -
> -       if (pdata->gpio_bridge_reset == -1)
> +       if (!bridge_reset)
>                 return;
>
>         if (state) {
> -               gpio_set_value_cansleep(pdata->gpio_bridge_reset, 0);
> +               gpiod_set_value_cansleep(bridge_reset, 0);
>                 mdelay(10);
>         } else {
>                 /* Pull MIPI Bridge reset pin to Low */
> -               gpio_set_value_cansleep(pdata->gpio_bridge_reset, 0);
> +               gpiod_set_value_cansleep(bridge_reset, 0);
>                 mdelay(20);
>                 /* Pull MIPI Bridge reset pin to High */
> -               gpio_set_value_cansleep(pdata->gpio_bridge_reset, 1);
> +               gpiod_set_value_cansleep(bridge_reset, 1);
>                 mdelay(40);
>         }
>  }
> @@ -510,25 +511,20 @@ void tc35876x_brightness_control(struct drm_device *dev, int level)
>
>  void tc35876x_toshiba_bridge_panel_off(struct drm_device *dev)
>  {
> -       struct tc35876x_platform_data *pdata;
> -
>         if (WARN(!tc35876x_client, "%s called before probe", __func__))
>                 return;
>
>         dev_dbg(&tc35876x_client->dev, "%s\n", __func__);
>
> -       pdata = dev_get_platdata(&tc35876x_client->dev);
> -
> -       if (pdata->gpio_panel_bl_en != -1)
> -               gpio_set_value_cansleep(pdata->gpio_panel_bl_en, 0);
> +       if (bridge_bl_enable)
> +               gpiod_set_value_cansleep(bridge_bl_enable, 0);
>
> -       if (pdata->gpio_panel_vadd != -1)
> -               gpio_set_value_cansleep(pdata->gpio_panel_vadd, 0);
> +       if (backlight_voltage)
> +               gpiod_set_value_cansleep(backlight_voltage, 0);
>  }
>
>  void tc35876x_toshiba_bridge_panel_on(struct drm_device *dev)
>  {
> -       struct tc35876x_platform_data *pdata;
>         struct drm_psb_private *dev_priv = dev->dev_private;
>
>         if (WARN(!tc35876x_client, "%s called before probe", __func__))
> @@ -536,10 +532,8 @@ void tc35876x_toshiba_bridge_panel_on(struct drm_device *dev)
>
>         dev_dbg(&tc35876x_client->dev, "%s\n", __func__);
>
> -       pdata = dev_get_platdata(&tc35876x_client->dev);
> -
> -       if (pdata->gpio_panel_vadd != -1) {
> -               gpio_set_value_cansleep(pdata->gpio_panel_vadd, 1);
> +       if (backlight_voltage) {
> +               gpiod_set_value_cansleep(backlight_voltage, 1);
>                 msleep(260);
>         }
>
> @@ -571,8 +565,8 @@ void tc35876x_toshiba_bridge_panel_on(struct drm_device *dev)
>                                 "i2c write failed (%d)\n", ret);
>         }
>
> -       if (pdata->gpio_panel_bl_en != -1)
> -               gpio_set_value_cansleep(pdata->gpio_panel_bl_en, 1);
> +       if (bridge_bl_enable)
> +               gpiod_set_value_cansleep(bridge_bl_enable, 1);
>
>         tc35876x_brightness_control(dev, dev_priv->brightness_adjusted);
>  }
> @@ -635,8 +629,6 @@ static int tc35876x_get_panel_info(struct drm_device *dev, int pipe,
>  static int tc35876x_bridge_probe(struct i2c_client *client,
>                                 const struct i2c_device_id *id)
>  {
> -       struct tc35876x_platform_data *pdata;
> -
>         dev_info(&client->dev, "%s\n", __func__);
>
>         if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
> @@ -645,26 +637,23 @@ static int tc35876x_bridge_probe(struct i2c_client *client,
>                 return -ENODEV;
>         }
>
> -       pdata = dev_get_platdata(&client->dev);
> -       if (!pdata) {
> -               dev_err(&client->dev, "%s: no platform data\n", __func__);
> -               return -ENODEV;
> -       }
> +       bridge_reset = devm_gpiod_get_optional(&client->dev, "bridge-reset", GPIOD_OUT_LOW);
> +       if (IS_ERR(bridge_reset))
> +               return PTR_ERR(bridge_reset);
> +       if (bridge_reset)
> +               gpiod_set_consumer_name(bridge_reset, "tc35876x bridge reset");
>
> -       if (pdata->gpio_bridge_reset != -1) {
> -               gpio_request(pdata->gpio_bridge_reset, "tc35876x bridge reset");
> -               gpio_direction_output(pdata->gpio_bridge_reset, 0);
> -       }
> -
> -       if (pdata->gpio_panel_bl_en != -1) {
> -               gpio_request(pdata->gpio_panel_bl_en, "tc35876x panel bl en");
> -               gpio_direction_output(pdata->gpio_panel_bl_en, 0);
> -       }
> +       bridge_bl_enable = devm_gpiod_get_optional(&client->dev, "bl-en", GPIOD_OUT_LOW);
> +       if (IS_ERR(bridge_bl_enable))
> +               return PTR_ERR(bridge_bl_enable);
> +       if (bridge_bl_enable)
> +               gpiod_set_consumer_name(bridge_bl_enable, "tc35876x panel bl en");
>
> -       if (pdata->gpio_panel_vadd != -1) {
> -               gpio_request(pdata->gpio_panel_vadd, "tc35876x panel vadd");
> -               gpio_direction_output(pdata->gpio_panel_vadd, 0);
> -       }
> +       backlight_voltage = devm_gpiod_get_optional(&client->dev, "vadd", GPIOD_OUT_LOW);
> +       if (IS_ERR(backlight_voltage))
> +               return PTR_ERR(backlight_voltage);
> +       if (backlight_voltage)
> +               gpiod_set_consumer_name(backlight_voltage, "tc35876x panel vadd");
>
>         tc35876x_client = client;
>
> @@ -673,19 +662,8 @@ static int tc35876x_bridge_probe(struct i2c_client *client,
>
>  static int tc35876x_bridge_remove(struct i2c_client *client)
>  {
> -       struct tc35876x_platform_data *pdata = dev_get_platdata(&client->dev);
> -
>         dev_dbg(&client->dev, "%s\n", __func__);
>
> -       if (pdata->gpio_bridge_reset != -1)
> -               gpio_free(pdata->gpio_bridge_reset);
> -
> -       if (pdata->gpio_panel_bl_en != -1)
> -               gpio_free(pdata->gpio_panel_bl_en);
> -
> -       if (pdata->gpio_panel_vadd != -1)
> -               gpio_free(pdata->gpio_panel_vadd);
> -
>         tc35876x_client = NULL;
>
>         return 0;
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
> -       int gpio_bridge_reset;
> -       int gpio_panel_bl_en;
> -       int gpio_panel_vadd;
> -};
> -
> -#endif /* _TC35876X_H */
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
