Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D52AD654
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 12:07:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTDw2c5cYtsqIqMOvXBFSXubH+QGGC5tAwCV2FuJ7lQ=; b=jg5I4HY9d8z+OO
	pdWEI9K8oxjJmarG81RnufmB+PdlHv9sagy01KtaDdZMf2t5F3hImD8gafrxdbhDK7N+ZXKQlC1H0
	Kl8b0j5SIFNT4K0KxiNqJ2ERK7l63P6296EGjUbLlky4P657FqIFTQV826OueMRh0eWwtXkMAxIoj
	Dlatzh+AGJ8UIYla4Fr0mcLuzbqQNfA3K9tcFVguJr+s8khRtchgrpiANUkn7hDLcm6JAC3F96vkX
	23lyaIX/Vz/mEfhLU4I5EwvNhl/ssjtIaw0wykjcpIRpX3LM4xY1zi30w8sfxMCWlIZ1iyfL+wIFp
	LjFi/P3wdGXsWhgHtkfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7GZQ-0008Rg-UP; Mon, 09 Sep 2019 10:06:52 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7GZF-0008R5-81; Mon, 09 Sep 2019 10:06:43 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 03:06:40 -0700
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="183773601"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 03:06:36 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 34ECF20CEF; Mon,  9 Sep 2019 13:06:34 +0300 (EEST)
Date: Mon, 9 Sep 2019 13:06:34 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V1, 2/2] media: i2c: Add more sensor mode for ov8856 camera
 sensor
Message-ID: <20190909100633.GB5781@paasikivi.fi.intel.com>
References: <20190808092215.5608-1-dongchun.zhu@mediatek.com>
 <20190808092215.5608-3-dongchun.zhu@mediatek.com>
 <20190808135310.GC917@valkosipuli.retiisi.org.uk>
 <1568018775.21623.221.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568018775.21623.221.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_030641_332237_7D2001DF 
X-CRM114-Status: GOOD (  40.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com,
 linux-mediatek@lists.infradead.org, ben.kao@intel.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 Sakari Ailus <sakari.ailus@iki.fi>, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Mon, Sep 09, 2019 at 04:46:15PM +0800, Dongchun Zhu wrote:
> Hi Sakari,
> 
> On Thu, 2019-08-08 at 16:53 +0300, Sakari Ailus wrote:
> > Hi Dongchun,
> > 
> > Thanks for the patch.
> > 
> > On Thu, Aug 08, 2019 at 05:22:15PM +0800, dongchun.zhu@mediatek.com wrote:
> > > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > 
> > > This patch mainly adds two more sensor modes for OV8856 image sensor.
> > > The OV8856 driver currently supports output format: 10-bit Raw,
> > > the resolution of 1632*1224 and 3264*2448, and the bayer order of BGGR.
> > > The hardware version also differs in some OTP regiser,
> > > as well as PLL register setting.
> > > 
> > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > ---
> > >  drivers/media/i2c/ov8856.c | 624 ++++++++++++++++++++++++++++++++++++++++++++-
> > >  1 file changed, 621 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
> > > index cd347d6..e0610b6 100644
> > > --- a/drivers/media/i2c/ov8856.c
> > > +++ b/drivers/media/i2c/ov8856.c
> > > @@ -1,12 +1,15 @@
> > >  // SPDX-License-Identifier: GPL-2.0
> > >  // Copyright (c) 2019 Intel Corporation.
> > >  
> > > +#include <linux/clk.h>
> > >  #include <asm/unaligned.h>
> > >  #include <linux/acpi.h>
> > >  #include <linux/delay.h>
> > > +#include <linux/gpio/consumer.h>
> > >  #include <linux/i2c.h>
> > >  #include <linux/module.h>
> > >  #include <linux/pm_runtime.h>
> > > +#include <linux/regulator/consumer.h>
> > >  #include <media/v4l2-ctrls.h>
> > >  #include <media/v4l2-device.h>
> > >  #include <media/v4l2-fwnode.h>
> > > @@ -19,6 +22,7 @@
> > >  #define OV8856_LINK_FREQ_180MHZ		180000000ULL
> > >  #define OV8856_SCLK			144000000ULL
> > >  #define OV8856_MCLK			19200000
> > > +#define OV8856_XVCLK_FREQ		24000000
> > 
> > The driver currenctly uses, perhaps misleadingly, OV8856_MCLK for this
> > purpose. You could rename the existing MCLK as XVCLK.
> > 
> 
> OV8856_MCLK would be replaced by OV8856_XVCLK in next release.
> 
> > This also means the driver needs to differentiate configurations for 24 and
> > 19,2 MHz which it currently does not do. I think it may make sense to make
> > this a separate patch from the rest.
> > 
> 
> From datasheet, OV8856 could support input clock XVCLK range 6-27MHz.
> But the typical frequency is 24MHz.
> That's the value we now provide.

You'll still need to check for it in the driver, to avoid breaking existing
systems that use another frequency.

...

> > > @@ -566,6 +1018,10 @@ struct ov8856 {
> > >  	struct media_pad pad;
> > >  	struct v4l2_ctrl_handler ctrl_handler;
> > >  
> > > +	struct clk		*xvclk;
> > > +	struct gpio_desc	*reset_gpio;
> > > +	struct regulator_bulk_data supplies[OV8856_NUM_SUPPLIES];
> > > +
> > >  	/* V4L2 Controls */
> > >  	struct v4l2_ctrl *link_freq;
> > >  	struct v4l2_ctrl *pixel_rate;
> > > @@ -576,6 +1032,9 @@ struct ov8856 {
> > >  	/* Current mode */
> > >  	const struct ov8856_mode *cur_mode;
> > >  
> > > +	/* module hardware version */
> > > +	bool is_1B_module;
> > 
> > What other hardware versions are there, and what are the differences?
> > 
> 
> According to OV, there are two MP hardware versions (i.e., 1B and 2A)
> for OV8856.
> There is one difference between 1B and 2A module - which is 0x3614
> register.

Could you document the difference in a comment, and also how the B1 variant
is told apart from the 2A one?

> 
> > > +
> > >  	/* To serialize asynchronus callbacks */
> > >  	struct mutex mutex;
> > >  
> > > @@ -696,6 +1155,24 @@ static int ov8856_test_pattern(struct ov8856 *ov8856, u32 pattern)
> > >  				OV8856_REG_VALUE_08BIT, pattern);
> > >  }
> > >  
> > > +static int ov8856_update_otp_reg(struct ov8856 *ov8856)
> > > +{
> > > +	int ret;
> > > +
> > > +	ret = ov8856_write_reg(ov8856, OV8856_REG_MODE_SELECT,
> > > +			       OV8856_REG_VALUE_08BIT, OV8856_MODE_STREAMING);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	ret = ov8856_write_reg(ov8856, OV8856_OTP_REG_ONE,
> > > +			       OV8856_REG_VALUE_08BIT, OV8856_MODE_STANDBY);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	return ov8856_write_reg(ov8856, OV8856_OTP_REG_TWO,
> > > +				OV8856_REG_VALUE_08BIT, OV8856_MODE_STREAMING);
> > > +}
> > 
> > What does this do?
> > 
> 
> R700f is OTP register, the register value corresponds different hardware
> version.
> Mainly including:
> 01: 2A: EMI improvement
> 02: 1B: remove some mask for cost; initial setting cannot share with 1A

If you're accessing EEPROM here, please tell that.

Do you really need to start streaming to do that? Please add comments to
what do these steps actually achieve.

> 
> To identify sensor chip version, the following steps needs to be done
> before reading out R700f.
> R0100 write 0x01.
> R3d84 write 0x00
> R3d81 write 0x01
> 
> To make more clear, ov8856_update_otp_reg() would be renamed to
> ov8856_check_revision() in next release.

Sounds good to me.

> 
> > > +
> > >  static int ov8856_set_ctrl(struct v4l2_ctrl *ctrl)
> > >  {
> > >  	struct ov8856 *ov8856 = container_of(ctrl->handler,
> > > @@ -825,7 +1302,13 @@ static void ov8856_update_pad_format(const struct ov8856_mode *mode,
> > >  {
> > >  	fmt->width = mode->width;
> > >  	fmt->height = mode->height;
> > > -	fmt->code = MEDIA_BUS_FMT_SGRBG10_1X10;
> > > +
> > > +	/* Bayer Order is determined by image resolution */
> > 
> > Ouch. 
> > 
> > This rather looks like a side effect of vertical cropping. How about
> > either cropping one line above or below, to keep the same Bayer order?
> > 
> > The driver is based on register lists that heavily restricts the
> > possibilities of configuring the sensor. The alternative, should more
> > free-form configuration be enabled, would be to expose the cropping
> > capability to the user --- as well as binning.
> > 
> 
> Oh, this is quite a long story.
> From datasheet, the  Bayer Order should be BGGR, and the whole active
> pixel array should be 3264x2448.
> In fact, I am a little confused about why there exits another image size
> (3280x2464).
> Or maybe this is one old sensor version.
> 
> +Cc: Ben.
> Ben, could help introduce some background at that time?
> 
> 
> > > +	if (fmt->width == 3264 || fmt->width == 1632)
> > > +		fmt->code = MEDIA_BUS_FMT_SBGGR10_1X10;
> > > +	else
> > > +		fmt->code = MEDIA_BUS_FMT_SGRBG10_1X10;
> > > +
> > >  	fmt->field = V4L2_FIELD_NONE;
> > >  }
> > >  
> > > @@ -850,6 +1333,17 @@ static int ov8856_start_streaming(struct ov8856 *ov8856)
> > >  		return ret;
> > >  	}
> > >  
> > > +	/* update R3614 for 1B module */
> > > +	if (ov8856->is_1B_module) {
> > > +		ret = ov8856_write_reg(ov8856, OV8856_CLK_REG,
> > > +				       OV8856_REG_VALUE_08BIT,
> > > +				       OV8856_CLK_REG_1B_VAL);
> > > +		if (ret) {
> > > +			dev_err(&client->dev, "failed to set R3614");
> > > +			return ret;
> > > +		}
> > > +	}
> > > +
> > >  	ret = __v4l2_ctrl_handler_setup(ov8856->sd.ctrl_handler);
> > >  	if (ret)
> > >  		return ret;
> > > @@ -882,6 +1376,8 @@ static int ov8856_set_stream(struct v4l2_subdev *sd, int enable)
> > >  	if (ov8856->streaming == enable)
> > >  		return 0;
> > >  
> > > +	dev_dbg(&client->dev, "hardware version: (%d)\n", ov8856->is_1B_module);
> > > +
> > >  	mutex_lock(&ov8856->mutex);
> > >  	if (enable) {
> > >  		ret = pm_runtime_get_sync(&client->dev);
> > > @@ -908,6 +1404,54 @@ static int ov8856_set_stream(struct v4l2_subdev *sd, int enable)
> > >  	return ret;
> > >  }
> > >  
> > > +/* Calculate the delay in us by clock rate and clock cycles */
> > > +static inline u32 ov8856_cal_delay(u32 cycles)
> > > +{
> > > +	return DIV_ROUND_UP(cycles, OV8856_XVCLK_FREQ / 1000 / 1000);
> > 
> > The frequency is rounded down. As it is used to calculate a delay needed,
> > rounding up should be done for the frequency, too.
> > 
> 
> It seems that OV8856_XVCLK_FREQ / 1000 / 1000 is a rounded-down value.
> But Note that here OV8856_XVCLK_FREQ is 24MHz.
> So OV8856_XVCLK_FREQ / 1000 / 1000 is exactly an integer value.

This breaks already on the frequency already supported by the driver (19,2
MHz).

...

> > > +
> > > +	return 0;
> > > +
> > > +disable_clk:
> > > +	clk_disable_unprepare(ov8856->xvclk);
> > > +
> > > +	return ret;
> > > +}
> > > +
> > > +static void __ov8856_power_off(struct ov8856 *ov8856)
> > > +{
> > > +	clk_disable_unprepare(ov8856->xvclk);
> > > +	gpiod_set_value_cansleep(ov8856->reset_gpio, 1);
> > > +
> > > +	regulator_bulk_disable(OV8856_NUM_SUPPLIES, ov8856->supplies);
> > > +}
> > > +
> > >  static int __maybe_unused ov8856_suspend(struct device *dev)
> > >  {
> > >  	struct i2c_client *client = to_i2c_client(dev);
> > > @@ -915,8 +1459,8 @@ static int __maybe_unused ov8856_suspend(struct device *dev)
> > >  	struct ov8856 *ov8856 = to_ov8856(sd);
> > >  
> > >  	mutex_lock(&ov8856->mutex);
> > > -	if (ov8856->streaming)
> > > -		ov8856_stop_streaming(ov8856);
> > 
> > This seems like an unrelated change.
> > 
> 
> Sorry, there is one concerns.
> For set_stream(0), it seems that pm_runtime_put would be called after
> ov8856_stop_streaming.
> I wonder that whether ov8856_stop_streaming is called twice when device
> suspended.

If you think that's the case, please fix it in a separate patch.

...

> > > +
> > > +	for (i = 0; i < OV8856_NUM_SUPPLIES; i++)
> > > +		ov8856->supplies[i].supply = ov8856_supply_names[i];
> > > +
> > > +	return devm_regulator_bulk_get(&client->dev,
> > > +				       OV8856_NUM_SUPPLIES,
> > > +				       ov8856->supplies);
> > 
> > Remember to put the regulators, too.
> > 
> 
> Thanks for reminder.
> ov8856_power_off would call regulator_bulk_disable.

I missed you were using the devm_ variant. No need to put the regulators
(but disable you'll still need).

-- 
Regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
