Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B911BDA6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 13:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=En2/4nlBWI9C+rUYizv7CjbSFhtB4jNFF/1Gcb3UfZk=; b=sHUsvuYqDROmAR
	sPDW1AzARM+QRsOFlGQkIrlrj+NAaR6oatfm9BPtGBDbWgssAkS+IpuISG39yuSjxA/NiXuCnzgVV
	3dyUASQTtJNQGG3ieI2SRX/aKTa4QsiN29wpG3P3008ZBl0h9V/maP/O6V0GI2oWV9rt7xrYUQfPM
	32xUG+0uE8QLf2tns11ycpDmbEIEzi3Guauzpm5UT3iH6DsbXggyHMUG3wsHH0twuAfhtEOXqUyQI
	5DzjvwQwjkxqjdCV5xgEGmJYQ6SmDgNnaXsqscZkjnUPEJ/GqEYymPg8R9heSd4O6aHTGxqoNKqT/
	X09gwcd1x7WeUerXsO0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTkek-0005jK-S4; Wed, 29 Apr 2020 11:13:34 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTkeZ-0005ii-So
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 11:13:25 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 80288634C8F;
 Wed, 29 Apr 2020 14:13:07 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jTkeJ-0000JO-AB; Wed, 29 Apr 2020 14:13:07 +0300
Date: Wed, 29 Apr 2020 14:13:07 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v5 v5 2/3] media: ov8856: Add devicetree support
Message-ID: <20200429111307.GA867@valkosipuli.retiisi.org.uk>
References: <20200428180718.1609826-1-robert.foss@linaro.org>
 <20200428180718.1609826-2-robert.foss@linaro.org>
 <20200429090012.vhhwatojkncjquwd@gilmour.lan>
 <CAG3jFyvcgqi_rm-Enf3gTyHowbgX6iBe3coDPu91p9EBTxS2XA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG3jFyvcgqi_rm-Enf3gTyHowbgX6iBe3coDPu91p9EBTxS2XA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_041324_288920_85B3176A 
X-CRM114-Status: GOOD (  27.44  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 <devicetree@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marco Felsch <m.felsch@pengutronix.de>, Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert, Maxime,

On Wed, Apr 29, 2020 at 12:19:38PM +0200, Robert Foss wrote:
> On Wed, 29 Apr 2020 at 11:00, Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > Hi,
> >
> > On Tue, Apr 28, 2020 at 08:07:17PM +0200, Robert Foss wrote:
> > > Add match table, enable ov8856_probe() to support
> > > both ACPI and DT modes.
> > >
> > > ACPI and DT modes are primarily distinguished from
> > > each other by relying on devm_XXX_get_optional()
> > > will return NULL instead of a reference for the
> > > desired managed resource.
> > >
> > > Signed-off-by: Robert Foss <robert.foss@linaro.org>
> > > ---
> > >
> > > - Changes since v4:
> > >   * Maxime & Sakari: Switch to clock-frequency
> > >
> > > - Changes since v3:
> > >   * Remove redundant {}-brackets
> > >   * Compare xvclk_rate to 5% tolerance
> > >   * Andy: Use dev_fwnode()
> > >   * Andy: Use %pe instead of %ld + PTR_ERR()
> > >   * Andy: Invert reset_gpio logic
> > >   * Andy: Remove dev_dbg() from failing reset_gpio setup
> > >   * Andy: Use dev_err for logging for failures
> > >   * Andy: Remove dev_warn from EDEFER/regulator error path
> > >   * Andy & Sakari: Replaced GPIOD_OUT_XXX with 0/1
> > >   * Maxime & Sakari: Verify clock frequency from DT
> > >   * Sakari: Verify the 'xvclk_rate' is set correctly for ACPI/DT devices
> > >   * Sakari: Remove duplicate ov8856->dev assignment
> > >
> > > - Changes since v2:
> > >   * Added "struct device *dev" member to struct ov8856
> > >   * Andy: Switch to optional version of devm_gpiod_get
> > >   * Andy: Switch to optional version of devm_clk_get
> > >   * Fabio: Add reset sleep period
> > >   * Sakari: Unify defines for 19.2Mhz
> > >   * Sakari: Remove 24Mhz clock, since it isn't needed for supported modes
> > >   * Sakari: Replace dev_info() with dev_dbg()
> > >   * Sakari: Switch induction variable type to unsigned
> > >   * Sakari: Don't wait for reset_gpio when in ACPI mode
> > >   * Sakari: Pull reset GPIO high on power on failure
> > >   * Sakari: Add power on/off to resume/suspend
> > >   * Sakari: Fix indentation
> > >   * Sakari: Power off during ov8856_remove()
> > >   * Sakari: Don't sleep during power-on in ACPI mode
> > >   * Sakari: Switch to getting xvclk from clk_get_rate
> > >
> > > - Changes since v1:
> > >   * Andy & Sakari: Make XVCLK optional since to not break ACPI
> > >   * Fabio: Change n_shutdown_gpio name to reset_gpio
> > >   * Fabio: Invert reset_gpio due to GPIO_ACTIVE_HIGH -> GPIO_ACTIVE_LOW change
> > >   * Fabio: Remove empty line
> > >   * Fabio: Remove real error from devm_gpiod_get() failures
> > >   * Sakari: ARRAY_SIZE() directly instead of through OV8856_NUM_SUPPLIES
> > >   * Sakari: Use XVCLK rate as provided by DT
> > >
> > >  drivers/media/i2c/ov8856.c | 139 +++++++++++++++++++++++++++++++++----
> > >  1 file changed, 126 insertions(+), 13 deletions(-)
> > >
> > > diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
> > > index 8655842af275..48b02b8d205f 100644
> > > --- a/drivers/media/i2c/ov8856.c
> > > +++ b/drivers/media/i2c/ov8856.c
> > > @@ -3,10 +3,13 @@
> > >
> > >  #include <asm/unaligned.h>
> > >  #include <linux/acpi.h>
> > > +#include <linux/clk.h>
> > >  #include <linux/delay.h>
> > > +#include <linux/gpio/consumer.h>
> > >  #include <linux/i2c.h>
> > >  #include <linux/module.h>
> > >  #include <linux/pm_runtime.h>
> > > +#include <linux/regulator/consumer.h>
> > >  #include <media/v4l2-ctrls.h>
> > >  #include <media/v4l2-device.h>
> > >  #include <media/v4l2-fwnode.h>
> > > @@ -18,7 +21,7 @@
> > >  #define OV8856_LINK_FREQ_360MHZ              360000000ULL
> > >  #define OV8856_LINK_FREQ_180MHZ              180000000ULL
> > >  #define OV8856_SCLK                  144000000ULL
> > > -#define OV8856_MCLK                  19200000
> > > +#define OV8856_XVCLK_19_2            19200000
> > >  #define OV8856_DATA_LANES            4
> > >  #define OV8856_RGB_DEPTH             10
> > >
> > > @@ -64,6 +67,12 @@
> > >
> > >  #define to_ov8856(_sd)                       container_of(_sd, struct ov8856, sd)
> > >
> > > +static const char * const ov8856_supply_names[] = {
> > > +     "dovdd",        /* Digital I/O power */
> > > +     "avdd",         /* Analog power */
> > > +     "dvdd",         /* Digital core power */
> > > +};
> > > +
> > >  enum {
> > >       OV8856_LINK_FREQ_720MBPS,
> > >       OV8856_LINK_FREQ_360MBPS,
> > > @@ -566,6 +575,11 @@ struct ov8856 {
> > >       struct media_pad pad;
> > >       struct v4l2_ctrl_handler ctrl_handler;
> > >
> > > +     struct device           *dev;
> > > +     struct clk              *xvclk;
> > > +     struct gpio_desc        *reset_gpio;
> > > +     struct regulator_bulk_data supplies[ARRAY_SIZE(ov8856_supply_names)];
> > > +
> > >       /* V4L2 Controls */
> > >       struct v4l2_ctrl *link_freq;
> > >       struct v4l2_ctrl *pixel_rate;
> > > @@ -908,6 +922,52 @@ static int ov8856_set_stream(struct v4l2_subdev *sd, int enable)
> > >       return ret;
> > >  }
> > >
> > > +static int __ov8856_power_on(struct ov8856 *ov8856)
> > > +{
> > > +     struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> > > +     int ret;
> > > +
> > > +     ret = clk_prepare_enable(ov8856->xvclk);
> > > +     if (ret < 0) {
> > > +             dev_err(&client->dev, "failed to enable xvclk\n");
> > > +             return ret;
> > > +     }
> > > +
> > > +     if (is_acpi_node(dev_fwnode(ov8856->dev)))
> > > +             return 0;
> > > +
> > > +     if (ov8856->reset_gpio) {
> > > +             gpiod_set_value_cansleep(ov8856->reset_gpio, 1);
> > > +             usleep_range(1000, 2000);
> > > +     }
> > > +
> > > +     ret = regulator_bulk_enable(ARRAY_SIZE(ov8856_supply_names),
> > > +                                 ov8856->supplies);
> > > +     if (ret < 0) {
> > > +             dev_err(&client->dev, "failed to enable regulators\n");
> > > +             goto disable_clk;
> > > +     }
> > > +
> > > +     gpiod_set_value_cansleep(ov8856->reset_gpio, 0);
> > > +     usleep_range(1500, 1800);
> > > +
> > > +     return 0;
> > > +
> > > +disable_clk:
> > > +     gpiod_set_value_cansleep(ov8856->reset_gpio, 1);
> > > +     clk_disable_unprepare(ov8856->xvclk);
> > > +
> > > +     return ret;
> > > +}
> > > +
> > > +static void __ov8856_power_off(struct ov8856 *ov8856)
> > > +{
> > > +     gpiod_set_value_cansleep(ov8856->reset_gpio, 1);
> > > +     regulator_bulk_disable(ARRAY_SIZE(ov8856_supply_names),
> > > +                            ov8856->supplies);
> > > +     clk_disable_unprepare(ov8856->xvclk);
> > > +}
> > > +
> > >  static int __maybe_unused ov8856_suspend(struct device *dev)
> > >  {
> > >       struct i2c_client *client = to_i2c_client(dev);
> > > @@ -918,6 +978,7 @@ static int __maybe_unused ov8856_suspend(struct device *dev)
> > >       if (ov8856->streaming)
> > >               ov8856_stop_streaming(ov8856);
> > >
> > > +     __ov8856_power_off(ov8856);
> > >       mutex_unlock(&ov8856->mutex);
> > >
> > >       return 0;
> > > @@ -931,6 +992,8 @@ static int __maybe_unused ov8856_resume(struct device *dev)
> > >       int ret;
> > >
> > >       mutex_lock(&ov8856->mutex);
> > > +
> > > +     __ov8856_power_on(ov8856);
> > >       if (ov8856->streaming) {
> > >               ret = ov8856_start_streaming(ov8856);
> > >               if (ret) {
> > > @@ -1092,29 +1155,58 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
> > >       return 0;
> > >  }
> > >
> > > -static int ov8856_check_hwcfg(struct device *dev)
> > > +static int ov8856_get_hwcfg(struct ov8856 *ov8856)
> > >  {
> > > +     struct device *dev = ov8856->dev;
> > >       struct fwnode_handle *ep;
> > >       struct fwnode_handle *fwnode = dev_fwnode(dev);
> > >       struct v4l2_fwnode_endpoint bus_cfg = {
> > >               .bus_type = V4L2_MBUS_CSI2_DPHY
> > >       };
> > > -     u32 mclk;
> > > +     u32 xvclk_rate;
> > >       int ret;
> > >       unsigned int i, j;
> > >
> > >       if (!fwnode)
> > >               return -ENXIO;
> > >
> > > -     ret = fwnode_property_read_u32(fwnode, "clock-frequency", &mclk);
> > > +     ret = fwnode_property_read_u32(fwnode, "clock-frequency",
> > > +             &xvclk_rate);
> > >       if (ret)
> > >               return ret;
> > >
> > > -     if (mclk != OV8856_MCLK) {
> > > -             dev_err(dev, "external clock %d is not supported", mclk);
> > > +     if (!is_acpi_node(fwnode)) {
> > > +             ov8856->xvclk = devm_clk_get(dev, "xvclk");
> > > +             if (IS_ERR(ov8856->xvclk)) {
> > > +                     dev_err(dev, "could not get xvclk clock (%pe)\n",
> > > +                                     ov8856->xvclk);
> > > +                     return PTR_ERR(ov8856->xvclk);
> > > +             }
> > > +
> > > +             clk_set_rate(ov8856->xvclk, xvclk_rate);
> > > +             xvclk_rate = clk_get_rate(ov8856->xvclk);
> > > +     }
> > > +
> > > +     /* external clock must be 19.2MHz, allow 5% tolerance */
> >
> > Where is that 5% tolerance coming from? Experimentations, datasheets, something
> > that looks good enough? Either way, this should be in the comment.
> 
> I don't have access to the full datasheet unfortunately. A 24Mhz rate
> is as far as I understand it supported and required for higher
> bandwidth count modes.
> It was suggested to me that adding a tolerance is the best practice,
> the ov5645 driver uses a 1% tolerance, which may be more appropriate.

The frequency should really be exact. Sometimes what happens is, however,
that a register list based driver does not have the register lists for a
frequency that is available on a given system. That's why some drivers have
allowed some difference to the intended frequency.

That 5 % seems like a random value, just like any other number that differs
from the exact frequency would be.

I'd issue a warning if the frequency differs from what was intended, but
still proceed with probe. This way we can make sure the difference is noted
while boards that cannot provide the exact frequency supported by the
driver can still function.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
