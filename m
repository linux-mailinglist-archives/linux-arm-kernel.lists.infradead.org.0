Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 085FB1F7604
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 11:34:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWfHEEuOaKhxUKEpjN0oABm/1mUWMctOPVwnJnych4g=; b=dToYLNF4kg01t5
	aZVFB+IStF4Z6Qy3eQvBPDmojCZto3xTE4u3+VOOglRCqdqcLEVVAGcywnfXnZRlkDTZyCay9Pp1y
	SiOWd1ZloNDmfg1a9F2zwipICiC1jlV3QoguC2tfRyOXvOuFwmMZ03pKDDV9/xlrGwW0tbOY9izdS
	SiXTwe0PE5DnvfOFws66/pyQVjzEvNxwRAtjWpLksJO5JNRds0vyyDf9yqvMokwL7YlIdagNyzq1/
	pvNrT+bicQw9lmTeBKz9rQXap6cciQe9ofZIaYvO9cNdehRWZqSWtl6e9NNQVRZHm9J31Oxfy5dNE
	KP33h/iskMFhuSuXnVqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjg4Q-0001O3-U3; Fri, 12 Jun 2020 09:33:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjg4D-0001MA-Rm; Fri, 12 Jun 2020 09:33:44 +0000
X-UUID: bf7654826a42439ca762d7cbd3071dbf-20200612
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=BaLcuqfyqtgeka1QHj6hfdc3DlQV6DK0+EkHYH3N9E4=; 
 b=gOwIYaHePzXcPux/R9Q9VBLs8dw4CX5n6FAPbwrcuzFvAVLoPCEOpJZN82SkEv1aVe4VyninPOFcF7O64hGq6R24ZcYl8DL0hKBaozEJ8jMa6pSioLHGMU1YIrUrh5/5mcQ9P+mY2cNEfIzXklAu4dxgNt/Fm0SDPVYF5Cl25jU=;
X-UUID: bf7654826a42439ca762d7cbd3071dbf-20200612
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1382197401; Fri, 12 Jun 2020 01:33:25 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 12 Jun 2020 02:33:28 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 12 Jun 2020 17:33:24 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 12 Jun 2020 17:33:22 +0800
Message-ID: <1591954266.8804.646.camel@mhfsdcap03>
Subject: Re: [V8, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 12 Jun 2020 17:31:06 +0800
In-Reply-To: <20200610183600.GI201868@chromium.org>
References: <20200509080627.23222-1-dongchun.zhu@mediatek.com>
 <20200509080627.23222-3-dongchun.zhu@mediatek.com>
 <20200521193204.GA14214@chromium.org>
 <1590209415.8804.431.camel@mhfsdcap03>
 <20200610183600.GI201868@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D560A70DAB39B39E17459FE12DB960DD38080384D408DDDBB17C727BB4A53AF72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_023343_061881_8969D04A 
X-CRM114-Status: GOOD (  29.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, 2020-06-10 at 18:36 +0000, Tomasz Figa wrote:
> On Sat, May 23, 2020 at 12:50:15PM +0800, Dongchun Zhu wrote:
> > Hi Tomasz,
> > 
> > Thanks for the review. My replies are as below.
> > 
> > On Thu, 2020-05-21 at 19:32 +0000, Tomasz Figa wrote:
> > > Hi Dongchun,
> > > 
> > > On Sat, May 09, 2020 at 04:06:27PM +0800, Dongchun Zhu wrote:
> [snip]
> > > > +{
> > > > +	struct i2c_client *client = to_i2c_client(dev);
> > > > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > > > +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > > > +	int ret;
> > > > +
> > > > +	gpiod_set_value_cansleep(ov02a10->n_rst_gpio, 0);
> > > > +	gpiod_set_value_cansleep(ov02a10->pd_gpio, 0);
> > > > +
> > > > +	ret = clk_prepare_enable(ov02a10->eclk);
> > > > +	if (ret < 0) {
> > > > +		dev_err(dev, "failed to enable eclk\n");
> > > > +		return ret;
> > > > +	}
> > > > +
> > > > +	ret = regulator_bulk_enable(OV02A10_NUM_SUPPLIES, ov02a10->supplies);
> > > > +	if (ret < 0) {
> > > > +		dev_err(dev, "failed to enable regulators\n");
> > > > +		goto disable_clk;
> > > > +	}
> > > > +	usleep_range(5000, 6000);
> > > > +
> > > > +	gpiod_set_value_cansleep(ov02a10->pd_gpio, 1);
> > > 
> > > This is a "powerdown" GPIO. It must be set to 0 if the sensor is to be
> > > powered on.
> > > 
> > 
> > The value set by gpiod_set_value_cansleep() API actually depends upon
> > GPIO polarity defined in DT.
> > Since I set GPIO_ACTIVE_LOW to powerdown,
> > gpiod_set_value_cansleep(gpio_desc, value) would set !value to
> > gpio_desc.
> > Thus here powerdown would be low-state when sensor is powered on.
> > For GPIO polarity, I also post a comment to the binding patch.
> >
> 
> That's true. However, this makes the driver really confusing. If someone
> reads this code and compares with the datasheet, it looks incorrect,
> because in the datasheet the powerdown GPIO needs to be configured low
> for the sensor to operate.
> 
> I'd recommend defining the binding in a way that makes it clear in the driver code
> that it implementes the power sequencing as per the datasheet.
> 

Uh-huh...
But it all depends on how we look at the powerdown GPIO.
Or where should we define the active low or active high, the driver or
DT?

My initial idea is using DT GPIO polarity to describe sensor active
polarity according to the datasheet.
As an active low shutdown signal is equivalent to an active high enable
signal.

> [snip]
> > > > +/*
> > > > + * ov02a10_set_exposure - Function called when setting exposure time
> > > > + * @priv: Pointer to device structure
> > > > + * @val: Variable for exposure time, in the unit of micro-second
> > > > + *
> > > > + * Set exposure time based on input value.
> > > > + *
> > > > + * Return: 0 on success
> > > > + */
> > > > +static int ov02a10_set_exposure(struct ov02a10 *ov02a10, int val)
> > > > +{
> > > > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > > > +	int ret;
> > > > +
> > > > +	ret = i2c_smbus_write_byte_data(client, REG_PAGE_SWITCH, REG_ENABLE);
> > > > +	if (ret < 0)
> > > > +		return ret;
> > > 
> > > How does this page switch work? According to the documentation I have, the
> > > register allows selecting between a few different pages. However, there
> > > should be two page pointers - one for the AP and the other for the sensor,
> > > so that when the AP is programming page X, the sensor can have consistent
> > > settings from page Y. But here we only set one register and always with
> > > page 1.
> > > 
> > 
> > Thanks for the carefully observation.
> > The style or requirement of register setting here is suggested by OV
> > vendor.
> > From hardware signal behavior and effect-test, this setting should be
> > right.
> > But for your concern, we can also dig into it with OV.
> > Let's have time to talk with OV.
> > 
> > > > +
> > > > +	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_EXPOSURE_H,
> > > > +					val >> OV02A10_EXP_SHIFT);
> > > > +	if (ret < 0)
> > > > +		return ret;
> > > > +
> > > > +	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_EXPOSURE_L, val);
> > > > +	if (ret < 0)
> > > > +		return ret;
> > > > +
> > > > +	return i2c_smbus_write_byte_data(client, REG_GLOBAL_EFFECTIVE,
> > > > +					 REG_ENABLE);
> > > 
> > > This patch defines REG_GLOBAL_EFFECTIVE to 0x01. I don't see such register
> > > mentioned in the documentation.
> > > 
> > 
> > There may be several editions of sensor documentation.
> > From OV, 0x01 is one register shall be updated to keep
> > exposure/gain/test pattern... register settings effective.
> >
> 
> Okay, let's try to get some explanation of this offline.
> 

Fine.

> > > > +}
> > > > +
> > > > +static int ov02a10_set_gain(struct ov02a10 *ov02a10, int val)
> > > > +{
> > > > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > > > +	int ret;
> > > > +
> > > > +	ret = i2c_smbus_write_byte_data(client, REG_PAGE_SWITCH, REG_ENABLE);
> > > > +	if (ret < 0)
> > > > +		return ret;
> > > > +
> > > > +	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_GAIN, val);
> > > > +	if (ret < 0)
> > > > +		return ret;
> > > > +
> > > > +	return i2c_smbus_write_byte_data(client, REG_GLOBAL_EFFECTIVE,
> > > > +					 REG_ENABLE);
> > > > +}
> > > > +
> > > > +static int ov02a10_set_vblank(struct ov02a10 *ov02a10, int val)
> > > > +{
> > > > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > > > +	u32 vts = val + ov02a10->cur_mode->height - OV02A10_BASIC_LINE;
> > > > +	int ret;
> > > > +
> > > > +	ret = i2c_smbus_write_byte_data(client, REG_PAGE_SWITCH, REG_ENABLE);
> > > > +	if (ret < 0)
> > > > +		return ret;
> > > > +
> > > > +	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_VTS_H,
> > > > +					vts >> OV02A10_VTS_SHIFT);
> > > > +	if (ret < 0)
> > > > +		return ret;
> > > > +
> > > > +	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_VTS_L, vts);
> > > > +	if (ret < 0)
> > > > +		return ret;
> > > > +
> > > > +	return i2c_smbus_write_byte_data(client, REG_GLOBAL_EFFECTIVE,
> > > > +					 REG_ENABLE);
> > > > +}
> > > > +
> > > > +static int ov02a10_set_test_pattern(struct ov02a10 *ov02a10, int pattern)
> > > > +{
> > > > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > > > +	int ret;
> > > > +
> > > > +	if (pattern)
> > > > +		pattern = OV02A10_TEST_PATTERN_ENABLE;
> > > 
> > > Is this necessary? Our control can be 0 for disabled and 1 for color bars.
> > > The latter is the same as the above macro.
> > > 
> > 
> > Yes. It looks redundant here.
> > Fixed in next release.
> > 
> > > [snip]
> > > > +static int ov02a10_initialize_controls(struct ov02a10 *ov02a10)
> > > > +{
> > > > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > > > +	const struct ov02a10_mode *mode;
> > > > +	struct v4l2_ctrl_handler *handler;
> > > > +	struct v4l2_ctrl *ctrl;
> > > > +	u64 exposure_max;
> > > > +	u32 pixel_rate, h_blank;
> > > > +	int ret;
> > > > +
> > > > +	handler = &ov02a10->ctrl_handler;
> > > > +	mode = ov02a10->cur_mode;
> > > > +	ret = v4l2_ctrl_handler_init(handler, 7);
> > > > +	if (ret)
> > > > +		return ret;
> > > > +
> > > > +	handler->lock = &ov02a10->mutex;
> > > > +
> > > > +	ctrl = v4l2_ctrl_new_int_menu(handler, NULL, V4L2_CID_LINK_FREQ, 0, 0,
> > > > +				      link_freq_menu_items);
> > > > +	if (ctrl)
> > > > +		ctrl->flags |= V4L2_CTRL_FLAG_READ_ONLY;
> > > > +
> > > > +	pixel_rate = to_pixel_rate(0);
> > > > +	v4l2_ctrl_new_std(handler, NULL, V4L2_CID_PIXEL_RATE, 0, pixel_rate, 1,
> > > > +			  pixel_rate);
> > > > +
> > > > +	h_blank = mode->hts_def - mode->width;
> > > > +	ov02a10->hblank = v4l2_ctrl_new_std(handler, NULL, V4L2_CID_HBLANK,
> > > > +					    h_blank, h_blank, 1, h_blank);
> > > > +	if (ov02a10->hblank)
> > > > +		ov02a10->hblank->flags |= V4L2_CTRL_FLAG_READ_ONLY;
> > > > +
> > > 
> > > Do we need to hold a pointer to this control? We don't seem to ever access
> > > it anywhere else in the driver.
> > > 
> > 
> > No.
> > These lines would be removed in next release.
> > 
> > > > +	ov02a10->vblank = v4l2_ctrl_new_std(handler, &ov02a10_ctrl_ops,
> > > > +					    V4L2_CID_VBLANK, mode->vts_def -
> > > > +					    mode->height,
> > > > +					    OV02A10_VTS_MAX - mode->height, 1,
> > > > +					    mode->vts_def - mode->height);
> > > > +
> > > 
> > > Ditto.
> > > 
> > 
> > These lines would be removed in next release.
> > 

Sorry that I made a mistake.
Here we need to reserve V4L2_CID_VBLANK control.

> > > > +	exposure_max = mode->vts_def - 4;
> > > > +	ov02a10->exposure = v4l2_ctrl_new_std(handler, &ov02a10_ctrl_ops,
> > > > +					      V4L2_CID_EXPOSURE,
> > > > +					      OV02A10_EXPOSURE_MIN,
> > > > +					      exposure_max,
> > > > +					      OV02A10_EXPOSURE_STEP,
> > > > +					      mode->exp_def);
> > > > +
> > > > +	ov02a10->anal_gain = v4l2_ctrl_new_std(handler, &ov02a10_ctrl_ops,
> > > > +					       V4L2_CID_ANALOGUE_GAIN,
> > > > +					       OV02A10_GAIN_MIN,
> > > > +					       OV02A10_GAIN_MAX,
> > > > +					       OV02A10_GAIN_STEP,
> > > > +					       OV02A10_GAIN_DEFAULT);
> > > 
> > > Ditto.
> > > 
> > 
> > Fields: exposure and anal_gain would be removed in next release.
> > But v4l2_ctrl_new_std remains, as user may set exp/gain. 
> > 
> 
> I don't mean removing the controls, but just not storing the returned
> pointers inside driver data.
> 

Got it : -) 

> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
