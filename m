Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D39811DF4E4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 07:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJlsR7QEx2zouz5SaPNjA6erMk3kaj7f5eQLeJgQwRQ=; b=ST6qzSGMFxz9Ei
	09aYoz2TL/QpTTqTCnx0+NVC5ereUOfsOQoaNXtzIrTgMZZnFfRBZjesDxjxR0WNAabVybdIBJMgX
	dvnR3H88nLiSH5pJPonUigMezZPy55S2i6SwWqZBxngI4loane/ZEA3UhryLyg825f3CPLNhxFI3m
	ttWKEOop68+j2wus+4ARu/2ZWNp7ec8jGHjYKQVC8z8sTWL9R0FIEJNjvBtd5BEPcpp1+kaKQvy8H
	5JBRSC0G2sCr5pFYqEEAHc3kjI0jO1bQxfGaxFA60T7C+CTl9rxPlcgqENaw1A3qNo0UZ1SR0bqvE
	yVvMhzRESs5+/1SIUaqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcMIa-0005gl-7s; Sat, 23 May 2020 05:02:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcMIO-0005fc-GX; Sat, 23 May 2020 05:02:07 +0000
X-UUID: f3b41726dbbd4c5880702c6f1618f044-20200522
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=dnTm8HUmypyj5j0I+htnf2ClWM82adsQJc7IwlsKpmY=; 
 b=VARCN4/wz6J8GQRZ0BiYMbSkf+XPK/1vClBEZ9+g3VDG6+/yFonjaxAI8ptE4cD4isexIQNUyyn0g5ePdzPlbuca/52ViUiD7HxpiS4NPKtruUiJCMh+zXNPdraKwRGAHsgxoBkHrZJjbr9RKTwTATPgUxRuFLsm9uP5evTOPf8=;
X-UUID: f3b41726dbbd4c5880702c6f1618f044-20200522
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1841490374; Fri, 22 May 2020 21:01:57 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 22 May 2020 21:51:55 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 23 May 2020 12:51:52 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 23 May 2020 12:51:52 +0800
Message-ID: <1590209415.8804.431.camel@mhfsdcap03>
Subject: Re: [V8, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Sat, 23 May 2020 12:50:15 +0800
In-Reply-To: <20200521193204.GA14214@chromium.org>
References: <20200509080627.23222-1-dongchun.zhu@mediatek.com>
 <20200509080627.23222-3-dongchun.zhu@mediatek.com>
 <20200521193204.GA14214@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9A86533426CDD4D676F6555BAB3271DB8156DEA8DF906B43C0B17F3476DEA68B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_220204_567781_71C0355F 
X-CRM114-Status: GOOD (  29.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, drinkcat@chromium.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, louis.kuo@mediatek.com, bgolaszewski@baylibre.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 dongchun.zhu@mediatek.com, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

Thanks for the review. My replies are as below.

On Thu, 2020-05-21 at 19:32 +0000, Tomasz Figa wrote:
> Hi Dongchun,
> 
> On Sat, May 09, 2020 at 04:06:27PM +0800, Dongchun Zhu wrote:
> > Add a V4L2 sub-device driver for OV02A10 image sensor.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  MAINTAINERS                 |    1 +
> >  drivers/media/i2c/Kconfig   |   13 +
> >  drivers/media/i2c/Makefile  |    1 +
> >  drivers/media/i2c/ov02a10.c | 1094 +++++++++++++++++++++++++++++++++++++++++++
> >  4 files changed, 1109 insertions(+)
> >  create mode 100644 drivers/media/i2c/ov02a10.c
> > 
> 
> Thank you for the patch. Please see my comments inline.
> 
> [snip]
> > +struct ov02a10 {
> > +	u32			eclk_freq;
> > +	u32                     mipi_clock_tx_speed;
> > +
> > +	struct clk		*eclk;
> > +	struct gpio_desc	*pd_gpio;
> > +	struct gpio_desc	*n_rst_gpio;
> > +	struct regulator_bulk_data supplies[OV02A10_NUM_SUPPLIES];
> > +
> > +	bool			streaming;
> > +	bool			upside_down;
> > +	bool			mipi_clock_tx_speed_select_enable;
> > +	bool			mipi_clock_hs_mode_enable;
> > +
> > +	/*
> > +	 * Serialize control access, get/set format, get selection
> > +	 * and start streaming.
> > +	 */
> > +	struct mutex		mutex;
> > +	struct v4l2_subdev	subdev;
> > +	struct media_pad	pad;
> > +	struct v4l2_ctrl	*anal_gain;
> > +	struct v4l2_ctrl	*exposure;
> > +	struct v4l2_ctrl	*hblank;
> > +	struct v4l2_ctrl	*vblank;
> > +	struct v4l2_ctrl	*test_pattern;
> > +	struct v4l2_mbus_framefmt	fmt;
> 
> nit: Remove the tabs between types and names and use single spaces. As you
> can see above, even tabs don't guarantee equal alignment. And they actually
> make adding fields more difficult, because if a longer field is added, the
> alignment breaks.
> 

Thanks for sharing the rule of adding new fields.
Fixed in next release.

> [snip]
> > +static int ov02a10_read_smbus(struct ov02a10 *ov02a10, unsigned char reg,
> > +			      unsigned char *val)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > +	int ret;
> > +
> > +	ret = i2c_smbus_read_byte_data(client, reg);
> > +
> 
> nit: Unnecessary blank line.
> 

Sorry for the carelessness.
Fixed in next release.

> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	*val = (unsigned char)ret;
> > +
> > +	return 0;
> > +}
> [snip]
> > +static int __maybe_unused ov02a10_power_on(struct device *dev)
> 
> How is it possible that this function may be unused? If this driver allows
> disabling runtime PM, then there is still a need to configure the clock,
> regulator and GPIO. If not, there shouldn't be a case where this function
> is unused.
> 

Thanks for the reminder.
Modifier __maybe_unused would be removed in next release.

> > +{
> > +	struct i2c_client *client = to_i2c_client(dev);
> > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > +	int ret;
> > +
> > +	gpiod_set_value_cansleep(ov02a10->n_rst_gpio, 0);
> > +	gpiod_set_value_cansleep(ov02a10->pd_gpio, 0);
> > +
> > +	ret = clk_prepare_enable(ov02a10->eclk);
> > +	if (ret < 0) {
> > +		dev_err(dev, "failed to enable eclk\n");
> > +		return ret;
> > +	}
> > +
> > +	ret = regulator_bulk_enable(OV02A10_NUM_SUPPLIES, ov02a10->supplies);
> > +	if (ret < 0) {
> > +		dev_err(dev, "failed to enable regulators\n");
> > +		goto disable_clk;
> > +	}
> > +	usleep_range(5000, 6000);
> > +
> > +	gpiod_set_value_cansleep(ov02a10->pd_gpio, 1);
> 
> This is a "powerdown" GPIO. It must be set to 0 if the sensor is to be
> powered on.
> 

The value set by gpiod_set_value_cansleep() API actually depends upon
GPIO polarity defined in DT.
Since I set GPIO_ACTIVE_LOW to powerdown,
gpiod_set_value_cansleep(gpio_desc, value) would set !value to
gpio_desc.
Thus here powerdown would be low-state when sensor is powered on.
For GPIO polarity, I also post a comment to the binding patch.

> > +	usleep_range(5000, 6000);
> > +
> > +	gpiod_set_value_cansleep(ov02a10->n_rst_gpio, 1);
> > +	usleep_range(5000, 6000);
> > +
> > +	ret = ov02a10_check_sensor_id(ov02a10);
> > +	if (ret)
> > +		goto disable_regulator;
> > +
> > +	return 0;
> > +
> > +disable_regulator:
> > +	regulator_bulk_disable(OV02A10_NUM_SUPPLIES, ov02a10->supplies);
> > +disable_clk:
> > +	clk_disable_unprepare(ov02a10->eclk);
> > +
> > +	return ret;
> > +}
> > +
> > +static int __maybe_unused ov02a10_power_off(struct device *dev)
> > +{
> > +	struct i2c_client *client = to_i2c_client(dev);
> > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > +
> > +	gpiod_set_value_cansleep(ov02a10->n_rst_gpio, 0);
> > +	clk_disable_unprepare(ov02a10->eclk);
> > +	gpiod_set_value_cansleep(ov02a10->pd_gpio, 0);
> 
> Similar comment as above. To power off the sensor, the "powerdown" GPIO
> needs to be active, i.e. 1.
> 

Similar setting.
It depends upon GPIO polarity.

> [snip]
> > +/*
> > + * ov02a10_set_exposure - Function called when setting exposure time
> > + * @priv: Pointer to device structure
> > + * @val: Variable for exposure time, in the unit of micro-second
> > + *
> > + * Set exposure time based on input value.
> > + *
> > + * Return: 0 on success
> > + */
> > +static int ov02a10_set_exposure(struct ov02a10 *ov02a10, int val)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > +	int ret;
> > +
> > +	ret = i2c_smbus_write_byte_data(client, REG_PAGE_SWITCH, REG_ENABLE);
> > +	if (ret < 0)
> > +		return ret;
> 
> How does this page switch work? According to the documentation I have, the
> register allows selecting between a few different pages. However, there
> should be two page pointers - one for the AP and the other for the sensor,
> so that when the AP is programming page X, the sensor can have consistent
> settings from page Y. But here we only set one register and always with
> page 1.
> 

Thanks for the carefully observation.
The style or requirement of register setting here is suggested by OV
vendor.
From hardware signal behavior and effect-test, this setting should be
right.
But for your concern, we can also dig into it with OV.
Let's have time to talk with OV.

> > +
> > +	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_EXPOSURE_H,
> > +					val >> OV02A10_EXP_SHIFT);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_EXPOSURE_L, val);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	return i2c_smbus_write_byte_data(client, REG_GLOBAL_EFFECTIVE,
> > +					 REG_ENABLE);
> 
> This patch defines REG_GLOBAL_EFFECTIVE to 0x01. I don't see such register
> mentioned in the documentation.
> 

There may be several editions of sensor documentation.
From OV, 0x01 is one register shall be updated to keep
exposure/gain/test pattern... register settings effective.

> > +}
> > +
> > +static int ov02a10_set_gain(struct ov02a10 *ov02a10, int val)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > +	int ret;
> > +
> > +	ret = i2c_smbus_write_byte_data(client, REG_PAGE_SWITCH, REG_ENABLE);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_GAIN, val);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	return i2c_smbus_write_byte_data(client, REG_GLOBAL_EFFECTIVE,
> > +					 REG_ENABLE);
> > +}
> > +
> > +static int ov02a10_set_vblank(struct ov02a10 *ov02a10, int val)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > +	u32 vts = val + ov02a10->cur_mode->height - OV02A10_BASIC_LINE;
> > +	int ret;
> > +
> > +	ret = i2c_smbus_write_byte_data(client, REG_PAGE_SWITCH, REG_ENABLE);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_VTS_H,
> > +					vts >> OV02A10_VTS_SHIFT);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_VTS_L, vts);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	return i2c_smbus_write_byte_data(client, REG_GLOBAL_EFFECTIVE,
> > +					 REG_ENABLE);
> > +}
> > +
> > +static int ov02a10_set_test_pattern(struct ov02a10 *ov02a10, int pattern)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > +	int ret;
> > +
> > +	if (pattern)
> > +		pattern = OV02A10_TEST_PATTERN_ENABLE;
> 
> Is this necessary? Our control can be 0 for disabled and 1 for color bars.
> The latter is the same as the above macro.
> 

Yes. It looks redundant here.
Fixed in next release.

> [snip]
> > +static int ov02a10_initialize_controls(struct ov02a10 *ov02a10)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > +	const struct ov02a10_mode *mode;
> > +	struct v4l2_ctrl_handler *handler;
> > +	struct v4l2_ctrl *ctrl;
> > +	u64 exposure_max;
> > +	u32 pixel_rate, h_blank;
> > +	int ret;
> > +
> > +	handler = &ov02a10->ctrl_handler;
> > +	mode = ov02a10->cur_mode;
> > +	ret = v4l2_ctrl_handler_init(handler, 7);
> > +	if (ret)
> > +		return ret;
> > +
> > +	handler->lock = &ov02a10->mutex;
> > +
> > +	ctrl = v4l2_ctrl_new_int_menu(handler, NULL, V4L2_CID_LINK_FREQ, 0, 0,
> > +				      link_freq_menu_items);
> > +	if (ctrl)
> > +		ctrl->flags |= V4L2_CTRL_FLAG_READ_ONLY;
> > +
> > +	pixel_rate = to_pixel_rate(0);
> > +	v4l2_ctrl_new_std(handler, NULL, V4L2_CID_PIXEL_RATE, 0, pixel_rate, 1,
> > +			  pixel_rate);
> > +
> > +	h_blank = mode->hts_def - mode->width;
> > +	ov02a10->hblank = v4l2_ctrl_new_std(handler, NULL, V4L2_CID_HBLANK,
> > +					    h_blank, h_blank, 1, h_blank);
> > +	if (ov02a10->hblank)
> > +		ov02a10->hblank->flags |= V4L2_CTRL_FLAG_READ_ONLY;
> > +
> 
> Do we need to hold a pointer to this control? We don't seem to ever access
> it anywhere else in the driver.
> 

No.
These lines would be removed in next release.

> > +	ov02a10->vblank = v4l2_ctrl_new_std(handler, &ov02a10_ctrl_ops,
> > +					    V4L2_CID_VBLANK, mode->vts_def -
> > +					    mode->height,
> > +					    OV02A10_VTS_MAX - mode->height, 1,
> > +					    mode->vts_def - mode->height);
> > +
> 
> Ditto.
> 

These lines would be removed in next release.

> > +	exposure_max = mode->vts_def - 4;
> > +	ov02a10->exposure = v4l2_ctrl_new_std(handler, &ov02a10_ctrl_ops,
> > +					      V4L2_CID_EXPOSURE,
> > +					      OV02A10_EXPOSURE_MIN,
> > +					      exposure_max,
> > +					      OV02A10_EXPOSURE_STEP,
> > +					      mode->exp_def);
> > +
> > +	ov02a10->anal_gain = v4l2_ctrl_new_std(handler, &ov02a10_ctrl_ops,
> > +					       V4L2_CID_ANALOGUE_GAIN,
> > +					       OV02A10_GAIN_MIN,
> > +					       OV02A10_GAIN_MAX,
> > +					       OV02A10_GAIN_STEP,
> > +					       OV02A10_GAIN_DEFAULT);
> 
> Ditto.
> 

Fields: exposure and anal_gain would be removed in next release.
But v4l2_ctrl_new_std remains, as user may set exp/gain. 

> > +
> > +	ov02a10->test_pattern =
> > +		v4l2_ctrl_new_std_menu_items(handler, &ov02a10_ctrl_ops,
> > +					     V4L2_CID_TEST_PATTERN,
> > +					     ARRAY_SIZE(ov02a10_test_pattern_menu) -
> > +					     1, 0, 0,
> > +					     ov02a10_test_pattern_menu);
> 
> Ditto.
> 

Fields: test_pattern would be removed in next release.
But v4l2_ctrl_new_std_menu_items remains.

> [snip]
> > +	ov02a10->pd_gpio = devm_gpiod_get(dev, "powerdown", GPIOD_OUT_HIGH);
> > +	if (IS_ERR(ov02a10->pd_gpio)) {
> > +		ret = PTR_ERR(ov02a10->pd_gpio);
> > +		dev_err(dev, "failed to get powerdown-gpios %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	ov02a10->n_rst_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> 
> I've asked a question about the right convention to define active low pins,
> but I don't remember seeing an answer. We need to clarify this to avoid
> confusion. Especially since the current binding documentation doesn't
> mention anything about the sensor being active low. Let me also post a
> comment to the binding patch.
> 

It depends upon GPIO polarity, however, which may not be emphasized in
current DT version.

> > +	if (IS_ERR(ov02a10->n_rst_gpio)) {
> > +		ret = PTR_ERR(ov02a10->n_rst_gpio);
> > +		dev_err(dev, "failed to get reset-gpios %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	for (i = 0; i < OV02A10_NUM_SUPPLIES; i++)
> > +		ov02a10->supplies[i].supply = ov02a10_supply_names[i];
> > +
> > +	ret = devm_regulator_bulk_get(dev, OV02A10_NUM_SUPPLIES,
> > +				      ov02a10->supplies);
> > +	if (ret) {
> > +		dev_err(dev, "failed to get regulators\n");
> > +		return ret;
> > +	}
> > +
> > +	mutex_init(&ov02a10->mutex);
> > +	ov02a10->cur_mode = &supported_modes[0];
> > +	ret = ov02a10_initialize_controls(ov02a10);
> > +	if (ret) {
> > +		dev_err(dev, "failed to initialize controls\n");
> > +		goto err_destroy_mutex;
> > +	}
> > +
> > +	ov02a10->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> > +	ov02a10->subdev.entity.ops = &ov02a10_subdev_entity_ops;
> > +	ov02a10->subdev.entity.function = MEDIA_ENT_F_CAM_SENSOR;
> > +	ov02a10->pad.flags = MEDIA_PAD_FL_SOURCE;
> > +	ret = media_entity_pads_init(&ov02a10->subdev.entity, 1, &ov02a10->pad);
> > +	if (ret < 0) {
> > +		dev_err(dev, "failed to init entity pads: %d", ret);
> > +		goto err_free_handler;
> > +	}
> > +
> > +	pm_runtime_enable(dev);
> > +	if (!pm_runtime_enabled(dev)) {
> > +		ret = ov02a10_power_on(dev);
> > +		if (ret < 0) {
> > +			dev_err(dev, "failed to power on: %d\n", ret);
> > +			goto err_clean_entity;
> > +		}
> > +	}
> > +
> > +	ret = v4l2_async_register_subdev(&ov02a10->subdev);
> > +	if (ret) {
> > +		dev_err(dev, "failed to register V4L2 subdev: %d", ret);
> > +		goto err_clean_entity;
> > +	}
> > +
> > +	return 0;
> > +
> > +err_clean_entity:
> 
> Need to power off if !pm_runtime_enabled().
> 

Thanks for the reminder.
Fixed in next release by adding power off into err_clean_entity.

> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
