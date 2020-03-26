Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEDF193E72
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 12:57:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMkK+Lwvq1g/pv+5DR3y8S6H4q15gfhtSX99j6zclOU=; b=L77lcpD5IW2mDw
	5GgtxmTwiR9EZjcsSRTGldJGWrpx+iraFsMKFvf/927oaAkWJMP8NfZQ13bEUH33B3xwGZyKIo68w
	0AT9Hz5HcppodaIBSmgZbFyzmrxMuW4WynAhTPTJx+wpkHHuiGAidRA7RMgzpfnjwmqCW83fnEqbp
	+u6N224942aQPEPsJIpVpQFZI2pWFmghz/7kWv3DrE3dU3r+XaPTlKP7bv5O0u+AXWNvVk2KLzBxp
	W9bdoI2vjwmOPRnZR/N9utSy623w5UhVaFnKttII7BpKMAKbrjobNHRi5aNcpELsCaGozuNB0SMd1
	7x1VVTEkNeZUPudHDoLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHR8E-0005IM-DY; Thu, 26 Mar 2020 11:57:06 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHR7x-0005I1-Qt
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 11:56:51 +0000
Received: by mail-ot1-x344.google.com with SMTP id g23so5489711otq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 04:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=08y2skilNEOT4bzHTJTKfLYQDttNHHaXwzBrM3l9i0Q=;
 b=dJrM2iNZtLM4xzUOQakfgBH6BrslLPki7yCI/zmRJk81wY3whBCrNIp/Cv2T1KeTyV
 Dipghi72ID6l2DkfHcuD5kCRDJ3AGrQMI9IhEmSuTwDkFtii8SMoTF17vwVCGDL4XeI7
 p+FZFAMs8o8vxi+DUwzHMdRhOvOhlRsHpPtj8zhSJ69Tpsz/tuyMjlTgCdUh2nBTsCbJ
 lKS4FyKi61ZLVQp0Ng0xb+2Zixj6S+jemGJ58hkj7Q/6kHOKeiH8TvRpfjPPaRP7ypCP
 KO9N6EBS6M8kankO8Xzfl6a0HD3gEKAJhkytOe7YSo5CxXmu0XiQEuuCZdSqQKJdLQ1+
 5ynQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=08y2skilNEOT4bzHTJTKfLYQDttNHHaXwzBrM3l9i0Q=;
 b=eRKTrb3ecoFPaEtwWYRObrKP6RahLVCbcC3AfnnF3aNsJ9LyUm9AZAuXBd2iWr9veL
 1W1Y1pYXSoJcvmrRVoAljw9S1C3bTSryWO/aoJO/CwcLeEzTb7cdbIlmI1Aa2Oi07SB4
 XC8RJqPHrgiFoOqPmpfwWcCU0om2/+JLg0r6p0hmOuJ4MQ1lF87webbcuWbvgccs5zFP
 5W9nrh2lNz7ZNub6q3Zt5lz7h64ErpdLNXhA827x9YRBCNeOMDsRt8ZzvCzlw2N1lgGp
 h2izO98OpgmIyCx4doXC8+0g6s1mSMyzEDUHDaqyn7L8h6ym/0MlNuG2+mqiLAEPJM74
 CWQQ==
X-Gm-Message-State: ANhLgQ25l5aEmslqhcLmU5GMwcZDd0pUjJn1cC0LEBlbSmI94pV6S11H
 7KArwB8ChGC1s8Y5rLP40JYPYHOk93DzCL+CeSfbmA==
X-Google-Smtp-Source: ADFU+vtZ951rF9Pe1PQCmPcRvBusAbZvzsIhMkHMSpSrFf3GcmrMJYTcDuOyMXRjXOrOY86o2HZAMZ5iB1cF/I0Vr0o=
X-Received: by 2002:a9d:6c88:: with SMTP id c8mr5616850otr.272.1585223808543; 
 Thu, 26 Mar 2020 04:56:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200313110350.10864-1-robert.foss@linaro.org>
 <20200313110350.10864-3-robert.foss@linaro.org>
 <20200313121746.GC5730@valkosipuli.retiisi.org.uk>
In-Reply-To: <20200313121746.GC5730@valkosipuli.retiisi.org.uk>
From: Robert Foss <robert.foss@linaro.org>
Date: Thu, 26 Mar 2020 12:56:37 +0100
Message-ID: <CAG3jFytpx8_+DKhUVZnUFeMYK82Z1hFWcEnbyD0=4a8p3ojteg@mail.gmail.com>
Subject: Re: [v2 2/3] media: ov8856: Add devicetree support
To: Sakari Ailus <sakari.ailus@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_045649_888773_825869EC 
X-CRM114-Status: GOOD (  31.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Sakari,

On Fri, 13 Mar 2020 at 13:18, Sakari Ailus <sakari.ailus@iki.fi> wrote:
>
> Hi Robert,
>
> On Fri, Mar 13, 2020 at 12:03:49PM +0100, Robert Foss wrote:
> > Add devicetree match table, and enable ov8856_probe()
> > to initialize power, clocks and reset pins.
> >
> > Signed-off-by: Robert Foss <robert.foss@linaro.org>
> > ---
> >
> > - Changes since v1:
> >   * Fabio: Change n_shutdown_gpio name to reset_gpio
> >   * Fabio: Invert reset_gpio due to GPIO_ACTIVE_HIGH -> GPIO_ACTIVE_LOW change
> >   * Fabio: Remove empty line
> >   * Fabio: Remove real error from devm_gpiod_get() failures
> >   * Andy & Sakari: Make XVCLK optional since to not break ACPI
> >   * Sakari: ARRAY_SIZE() directly instead of through OV8856_NUM_SUPPLIES
> >   * Sakari: Use XVCLK rate as provided by DT
> >
> >  drivers/media/i2c/ov8856.c | 109 ++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 107 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
> > index 8655842af275..db61eed223e8 100644
> > --- a/drivers/media/i2c/ov8856.c
> > +++ b/drivers/media/i2c/ov8856.c
> > @@ -3,10 +3,13 @@
> >
> >  #include <asm/unaligned.h>
> >  #include <linux/acpi.h>
> > +#include <linux/clk.h>
> >  #include <linux/delay.h>
> > +#include <linux/gpio/consumer.h>
> >  #include <linux/i2c.h>
> >  #include <linux/module.h>
> >  #include <linux/pm_runtime.h>
> > +#include <linux/regulator/consumer.h>
> >  #include <media/v4l2-ctrls.h>
> >  #include <media/v4l2-device.h>
> >  #include <media/v4l2-fwnode.h>
> > @@ -19,6 +22,8 @@
> >  #define OV8856_LINK_FREQ_180MHZ              180000000ULL
> >  #define OV8856_SCLK                  144000000ULL
> >  #define OV8856_MCLK                  19200000
> > +#define OV8856_XVCLK_19_2            19200000
>
> Please use a single macro to refer to 19,2 MHz clock.

Alright, I'll combine the two into a macro for both.

>
> > +#define OV8856_XVCLK_24                      24000000
>
> This doesn't seem to be needed

As long as we don't set the clock to 24Mhz we don't.
I'm assuming that you're saying that the 24Mhz clock rate isn't needed
for the modes used currently.

Removing this macro in v3.

>
> >  #define OV8856_DATA_LANES            4
> >  #define OV8856_RGB_DEPTH             10
> >
> > @@ -64,6 +69,12 @@
> >
> >  #define to_ov8856(_sd)                       container_of(_sd, struct ov8856, sd)
> >
> > +static const char * const ov8856_supply_names[] = {
> > +     "dovdd",        /* Digital I/O power */
> > +     "avdd",         /* Analog power */
> > +     "dvdd",         /* Digital core power */
> > +};
> > +
> >  enum {
> >       OV8856_LINK_FREQ_720MBPS,
> >       OV8856_LINK_FREQ_360MBPS,
> > @@ -566,6 +577,10 @@ struct ov8856 {
> >       struct media_pad pad;
> >       struct v4l2_ctrl_handler ctrl_handler;
> >
> > +     struct clk              *xvclk;
> > +     struct gpio_desc        *reset_gpio;
> > +     struct regulator_bulk_data supplies[ARRAY_SIZE(ov8856_supply_names)];
> > +
> >       /* V4L2 Controls */
> >       struct v4l2_ctrl *link_freq;
> >       struct v4l2_ctrl *pixel_rate;
> > @@ -908,6 +923,46 @@ static int ov8856_set_stream(struct v4l2_subdev *sd, int enable)
> >       return ret;
> >  }
> >
> > +static int __ov8856_power_on(struct ov8856 *ov8856)
> > +{
> > +     struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> > +     int ret;
> > +
> > +     ret = clk_prepare_enable(ov8856->xvclk);
> > +     if (ret < 0) {
> > +             dev_err(&client->dev, "failed to enable xvclk\n");
> > +             return ret;
> > +     }
> > +
> > +     gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
> > +
> > +     ret = regulator_bulk_enable(ARRAY_SIZE(ov8856_supply_names),
> > +                                 ov8856->supplies);
> > +     if (ret < 0) {
> > +             dev_err(&client->dev, "failed to enable regulators\n");
> > +             goto disable_clk;
> > +     }
> > +
> > +     gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_LOW);
> > +
> > +     usleep_range(1500, 1800);
>
> I think you could omit the delay on ACPI based systems. Or just bail out
> early in that case.

I'll add a check for reset_gpio being NULL, and skip the sleep for that case.

>
> > +
> > +     return 0;
> > +
> > +disable_clk:
>
> How about the GPIO here?

Ack

>
> > +     clk_disable_unprepare(ov8856->xvclk);
> > +
> > +     return ret;
> > +}
> > +
> > +static void __ov8856_power_off(struct ov8856 *ov8856)
> > +{
> > +     gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
> > +     regulator_bulk_disable(ARRAY_SIZE(ov8856_supply_names),
> > +                            ov8856->supplies);
> > +     clk_disable_unprepare(ov8856->xvclk);
> > +}
>
> You'll need to call the two in the driver's suspend and resume functions.

Ack

>
> > +
> >  static int __maybe_unused ov8856_suspend(struct device *dev)
> >  {
> >       struct i2c_client *client = to_i2c_client(dev);
> > @@ -1175,7 +1230,7 @@ static int ov8856_remove(struct i2c_client *client)
> >  static int ov8856_probe(struct i2c_client *client)
> >  {
> >       struct ov8856 *ov8856;
> > -     int ret;
> > +     int i, ret;
>
> unsigned int?

Ack

>
> >
> >       ret = ov8856_check_hwcfg(&client->dev);
> >       if (ret) {
> > @@ -1189,10 +1244,50 @@ static int ov8856_probe(struct i2c_client *client)
> >               return -ENOMEM;
> >
> >       v4l2_i2c_subdev_init(&ov8856->sd, client, &ov8856_subdev_ops);
> > +     ov8856->xvclk = devm_clk_get(&client->dev, "xvclk");
> > +     if (PTR_ERR(ov8856->xvclk) == -ENOENT) {
> > +             dev_info(&client->dev, "xvclk clock not defined, continuing...\n");
>
> How about dev_dbg()?

Ack.

>
> > +             ov8856->xvclk = NULL;
> > +     } else if (IS_ERR(ov8856->xvclk)) {
> > +             dev_err(&client->dev, "could not get xvclk clock (%ld)\n",
> > +                     PTR_ERR(ov8856->xvclk));
> > +             return PTR_ERR(ov8856->xvclk);
> > +     }
> > +
> > +     ret = clk_set_rate(ov8856->xvclk, OV8856_XVCLK_24);
>
> This should either come from platform data, or perhaps it'd be even better
> to get the clock rate and use assigned-clock-rates. I guess that's
> preferred nowadays.

I'm a bit unsure about what this would look like.

Are you thinking something like the way ext_clk is used in smiapp_core.c?
I went ahead and implemented support for retrieving and storing
'clock-rates' during the ov8856_check_hwcfg() call, and then setting
the rate to the configured rate during probing.

>
> > +     if (ret < 0) {
> > +             dev_err(&client->dev, "failed to set xvclk rate (24MHz)\n");
> > +             return ret;
> > +     }
> > +
> > +     ov8856->reset_gpio = devm_gpiod_get(&client->dev, "reset",
> > +                                            GPIOD_OUT_HIGH);
>
> Indentation.

Ack.

>
> What if no gpio is defined?

As per Andys comments, I'll switch to the optional version of devm_gpiod_get().

>
> > +     if (IS_ERR(ov8856->reset_gpio)) {
> > +             dev_err(&client->dev, "failed to get reset-gpios\n");
> > +             return PTR_ERR(ov8856->reset_gpio);
> > +     }
> > +
> > +     for (i = 0; i < ARRAY_SIZE(ov8856_supply_names); i++)
> > +             ov8856->supplies[i].supply = ov8856_supply_names[i];
> > +
> > +     ret = devm_regulator_bulk_get(&client->dev,
> > +                                   ARRAY_SIZE(ov8856_supply_names),
> > +                                   ov8856->supplies);
>
> What happens if there are no regulators?

Like Andy mentioned, we should be alright, since
devm_regulator_bulk_get() creates dummy regulators if one isn't found.

>
> > +     if (ret) {
> > +             dev_warn(&client->dev, "failed to get regulators\n");
> > +             return ret;
> > +     }
> > +
> > +     ret = __ov8856_power_on(ov8856);
> > +     if (ret) {
> > +             dev_warn(&client->dev, "failed to power on\n");
> > +             return ret;
> > +     }
> > +
> >       ret = ov8856_identify_module(ov8856);
> >       if (ret) {
> >               dev_err(&client->dev, "failed to find sensor: %d", ret);
> > -             return ret;
> > +             goto probe_power_off;
> >       }
> >
> >       mutex_init(&ov8856->mutex);
> > @@ -1238,6 +1333,9 @@ static int ov8856_probe(struct i2c_client *client)
> >       v4l2_ctrl_handler_free(ov8856->sd.ctrl_handler);
> >       mutex_destroy(&ov8856->mutex);
> >
> > +probe_power_off:
> > +     __ov8856_power_off(ov8856);
> > +
>
> Also remember to power off the device in remove().
>

Ack

> >       return ret;
> >  }
> >
> > @@ -1254,11 +1352,18 @@ static const struct acpi_device_id ov8856_acpi_ids[] = {
> >  MODULE_DEVICE_TABLE(acpi, ov8856_acpi_ids);
> >  #endif
> >
> > +static const struct of_device_id ov8856_of_match[] = {
> > +     { .compatible = "ovti,ov8856" },
> > +     { /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, ov8856_of_match);
> > +
> >  static struct i2c_driver ov8856_i2c_driver = {
> >       .driver = {
> >               .name = "ov8856",
> >               .pm = &ov8856_pm_ops,
> >               .acpi_match_table = ACPI_PTR(ov8856_acpi_ids),
> > +             .of_match_table = ov8856_of_match,
> >       },
> >       .probe_new = ov8856_probe,
> >       .remove = ov8856_remove,
>
> --
> Regards,
>
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
