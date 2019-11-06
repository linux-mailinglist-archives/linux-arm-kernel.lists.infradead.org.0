Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60773F1895
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:26:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lolSCpeRLApEkMXs4/6gijSPctqY2Zh/wpmtPFgKw9o=; b=kK7swao6/vlr4R
	jF1pxujKmiE8Jd2LM+P+eF6MlRVy4yqyXkdfYp3iY7vywfxax1beAP+fDfNyQXKY9xOeNhoq2v+Em
	wMm9n40fDdeL7GMxVIHNPM71Iw9WuXcnM+2Zq7pxqW2AH7xsZ41N+8k/D98M19cAgvL+AclEiYzK/
	qMR+hCwKeqy1PmseqzrMRpvyZKMycpOVFV5uxSbKlPcKt4tXtKdj0WcoWpFKhyGMZGojoewStiUY0
	y3wuIcsrl5pIKHUn0FH/T+sZVy05hlJTTtxh83D5K8X/z6wewuSxnZjgahHRoiKpMklHun0HWJbzA
	IvLLnrEpT/sVAMCou5qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSMFr-0000oZ-QN; Wed, 06 Nov 2019 14:25:51 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSMFb-0000hZ-5w; Wed, 06 Nov 2019 14:25:38 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 06:25:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="227499194"
Received: from grand-mobl.ger.corp.intel.com (HELO kekkonen.fi.intel.com)
 ([10.249.41.248])
 by fmsmga004.fm.intel.com with ESMTP; 06 Nov 2019 06:25:29 -0800
Received: by kekkonen.fi.intel.com (Postfix, from userid 1000)
 id 1007721E7B; Wed,  6 Nov 2019 16:22:03 +0200 (EET)
Date: Wed, 6 Nov 2019 16:22:02 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V2, 2/2] media: i2c: Add more sensor modes for ov8856 camera
 sensor
Message-ID: <20191106142202.GC16056@kekkonen.localdomain>
References: <20190910130446.26413-1-dongchun.zhu@mediatek.com>
 <20190910130446.26413-3-dongchun.zhu@mediatek.com>
 <20190913075528.GL5781@paasikivi.fi.intel.com>
 <1572440528.21623.270.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572440528.21623.270.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_062535_277519_C43CE161 
X-CRM114-Status: GOOD (  30.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, drinkcat@chromium.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, shengnan.wang@mediatek.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Wed, Oct 30, 2019 at 09:02:08PM +0800, Dongchun Zhu wrote:

...

> > > @@ -548,6 +986,18 @@ static const struct ov8856_mode supported_modes[] = {
> > >  		.link_freq_index = OV8856_LINK_FREQ_720MBPS,
> > >  	},
> > >  	{
> > > +		.width    = 3264,
> > > +		.height   = 2448,
> > > +		.hts      = 1932,
> > > +		.vts_def  = 2482,
> > > +		.vts_min  = 2482,
> > > +		.reg_list = {
> > > +			.num_of_regs = ARRAY_SIZE(mode_3264x2448_regs),
> > > +			.regs = mode_3264x2448_regs,
> > > +		},
> > > +		.link_freq_index = OV8856_LINK_FREQ_720MBPS,
> > > +	},
> > 
> > How do you guarantee that the modes are only used on the xvclk frequency
> > they're intended for?
> > 
> > I think it'd be best if you added the new modes in a separete patch.
> > 
> 
> In a separate patch?

Yes, please create a new patch that only adds these modes.

...

> > > @@ -696,6 +1170,25 @@ static int ov8856_test_pattern(struct ov8856 *ov8856, u32 pattern)
> > >  				OV8856_REG_VALUE_08BIT, pattern);
> > >  }
> > >  
> > > +static int ov8856_check_revision(struct ov8856 *ov8856)
> > > +{
> > > +	int ret;
> > > +
> > > +	ret = ov8856_write_reg(ov8856, OV8856_REG_MODE_SELECT,
> > > +			       OV8856_REG_VALUE_08BIT, OV8856_MODE_STREAMING);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	ret = ov8856_write_reg(ov8856, OV8856_OTP_MODE_CTRL,
> > > +			       OV8856_REG_VALUE_08BIT, OV8856_OTP_MODE_AUTO);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	return ov8856_write_reg(ov8856, OV8856_OTP_LOAD_CTRL,
> > > +				OV8856_REG_VALUE_08BIT,
> > > +				OV8856_OTP_LOAD_CTRL_ENABLE);
> > 
> > Is it not necessary to disable streaming after reading EEPROM?
> > 
> 
> These registers are provided by OV vendor.
> They need to be initialized before reading sensor revision.

I'd still expect streaming to be stopped once it's started. Most probably
the sensor will still be powered off before streaming is started the next
time, but that may not be the case.

> 
> > > +}
> > > +
> > >  static int ov8856_set_ctrl(struct v4l2_ctrl *ctrl)
> > >  {
> > >  	struct ov8856 *ov8856 = container_of(ctrl->handler,
> > > @@ -825,7 +1318,6 @@ static void ov8856_update_pad_format(const struct ov8856_mode *mode,
> > >  {
> > >  	fmt->width = mode->width;
> > >  	fmt->height = mode->height;
> > > -	fmt->code = MEDIA_BUS_FMT_SGRBG10_1X10;
> > >  	fmt->field = V4L2_FIELD_NONE;
> > >  }
> > >  
> > > @@ -834,6 +1326,7 @@ static int ov8856_start_streaming(struct ov8856 *ov8856)
> > >  	struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> > >  	const struct ov8856_reg_list *reg_list;
> > >  	int link_freq_index, ret;
> > > +	u32 h_size;
> > >  
> > >  	link_freq_index = ov8856->cur_mode->link_freq_index;
> > >  	reg_list = &link_freq_configs[link_freq_index].reg_list;
> > > @@ -850,6 +1343,29 @@ static int ov8856_start_streaming(struct ov8856 *ov8856)
> > >  		return ret;
> > >  	}
> > >  
> > > +	/* Update R3614 if the revision is 1B module */
> > > +	if (ov8856->is_1B_revision) {
> > > +		ret = ov8856_write_reg(ov8856, OV8856_ANAL_MODE_CTRL,
> > > +				       OV8856_REG_VALUE_08BIT,
> > > +				       OV8856_ANAL_1B_VAL);
> > > +		if (ret) {
> > > +			dev_err(&client->dev, "failed to set R3614");
> > > +			return ret;
> > > +		}
> > > +	}
> > > +
> > > +	ret = ov8856_read_reg(ov8856, REG_X_ADDR_START,
> > > +			      OV8856_REG_VALUE_16BIT, &h_size);
> > > +	if (ret) {
> > > +		dev_err(&client->dev, "failed to read out R3614");
> > > +		return ret;
> > > +	}
> > > +
> > > +	if (h_size == X_OUTPUT_FULL_SIZE || h_size == X_OUTPUT_BINNING_SIZE)
> > > +		ov8856->fmt.code = MEDIA_BUS_FMT_SBGGR10_1X10;
> > 
> > I wonder if this condition is right. The pixel order (and thus the media
> > bus code) is determined by cropping (and flipping and mirroring, but
> > they're not supported right now). See e.g. the smiapp driver for an
> > example.
> > 
> > The correct media bus code needs to be available to the user through the
> > regular API at all times, not only after streaming is started.
> > 
> > I'd suggest adding support for other pixel orders in a separate patch.
> > 
> 
> This may need time to think out.
> Is there any recommended regular API?  

Yes. Please see:

<URL:https://hverkuil.home.xs4all.nl/spec/uapi/v4l/dev-subdev.html>

Although that is more or less incompatible with the current driver
behaviour which is simply relying on SUBDEV_S_FMT.

> 
> > > +
> > >  	ret = __v4l2_ctrl_handler_setup(ov8856->sd.ctrl_handler);
> > >  	if (ret)
> > >  		return ret;
> > > @@ -878,6 +1394,7 @@ static int ov8856_set_stream(struct v4l2_subdev *sd, int enable)
> > >  	struct ov8856 *ov8856 = to_ov8856(sd);
> > >  	struct i2c_client *client = v4l2_get_subdevdata(sd);
> > >  	int ret = 0;
> > > +	u32 val;
> > >  
> > >  	if (ov8856->streaming == enable)
> > >  		return 0;
> > > @@ -908,6 +1425,44 @@ static int ov8856_set_stream(struct v4l2_subdev *sd, int enable)
> > >  	return ret;
> > >  }
> > >  
> > > +static int __ov8856_power_on(struct ov8856 *ov8856)
> > > +{
> > > +	struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> > > +	int ret;
> > > +
> > > +	ret = clk_prepare_enable(ov8856->xvclk);
> > > +	if (ret < 0) {
> > > +		dev_err(&client->dev, "failed to enable xvclk\n");
> > > +		return ret;
> > > +	}
> > > +
> > > +	gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, GPIOD_OUT_LOW);
> > > +
> > > +	ret = regulator_bulk_enable(OV8856_NUM_SUPPLIES, ov8856->supplies);
> > > +	if (ret < 0) {
> > > +		dev_err(&client->dev, "failed to enable regulators\n");
> > > +		goto disable_clk;
> > > +	}
> > > +
> > > +	gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, GPIOD_OUT_HIGH);
> > 
> > ..., 1);
> > 
> > > +
> > > +	usleep_range(1400, 1500);
> > > +
> > > +	return 0;
> > > +
> > > +disable_clk:
> > > +	clk_disable_unprepare(ov8856->xvclk);
> > 
> > How about the n_shutdn GPIO?
> > 
> 
> This is power up sequence function.
> When enabling regulators failed, it is required to disable the enabled
> power previously.
> Thus here we need to disable xvclk.
> But for n_shutdn GPIO, it was low state at that time.
> So we don't need to do anything for it.

Ah, right. Please ignore the comment.

> 
> > > +
> > > +	return ret;
> > > +}
> > > +
> > > +static void __ov8856_power_off(struct ov8856 *ov8856)
> > > +{
> > > +	gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, 1);
> > 
> > Why to inactivate xshutdn here (it already was)?

^

> > 
> > > +	regulator_bulk_disable(OV8856_NUM_SUPPLIES, ov8856->supplies);
> > > +	clk_disable_unprepare(ov8856->xvclk);
> > > +}
> > > +
> > >  static int __maybe_unused ov8856_suspend(struct device *dev)
> > >  {
> > >  	struct i2c_client *client = to_i2c_client(dev);
> > > @@ -951,6 +1506,7 @@ static int ov8856_set_format(struct v4l2_subdev *sd,
> > >  			     struct v4l2_subdev_format *fmt)
> > >  {
> > >  	struct ov8856 *ov8856 = to_ov8856(sd);
> > > +	struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;
> > >  	const struct ov8856_mode *mode;
> > >  	s32 vblank_def, h_blank;
> > >  
> > > @@ -960,7 +1516,9 @@ static int ov8856_set_format(struct v4l2_subdev *sd,
> > >  				      fmt->format.height);
> > >  
> > >  	mutex_lock(&ov8856->mutex);
> > > -	ov8856_update_pad_format(mode, &fmt->format);
> > > +	mbus_fmt->code = ov8856->fmt.code;
> > > +	ov8856_update_pad_format(mode, mbus_fmt);
> > > +	ov8856->fmt = fmt->format;
> > >  	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
> > >  		*v4l2_subdev_get_try_format(sd, cfg, fmt->pad) = fmt->format;
> > >  	} else {
> > > @@ -992,13 +1550,17 @@ static int ov8856_get_format(struct v4l2_subdev *sd,
> > >  			     struct v4l2_subdev_format *fmt)
> > >  {
> > >  	struct ov8856 *ov8856 = to_ov8856(sd);
> > > +	struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;
> > >  
> > >  	mutex_lock(&ov8856->mutex);
> > > -	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY)
> > > +	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
> > >  		fmt->format = *v4l2_subdev_get_try_format(&ov8856->sd, cfg,
> > >  							  fmt->pad);
> > > -	else
> > > -		ov8856_update_pad_format(ov8856->cur_mode, &fmt->format);
> > > +	} else {
> > > +		fmt->format = ov8856->fmt;
> > > +		ov8856_update_pad_format(ov8856->cur_mode, mbus_fmt);
> > > +		mbus_fmt->code = ov8856->fmt.code;
> > > +	}
> > >  
> > >  	mutex_unlock(&ov8856->mutex);
> > >  
> > > @@ -1009,11 +1571,12 @@ static int ov8856_enum_mbus_code(struct v4l2_subdev *sd,
> > >  				 struct v4l2_subdev_pad_config *cfg,
> > >  				 struct v4l2_subdev_mbus_code_enum *code)
> > >  {
> > > -	/* Only one bayer order GRBG is supported */
> > > +	struct ov8856 *ov8856 = to_ov8856(sd);
> > > +
> > >  	if (code->index > 0)
> > >  		return -EINVAL;
> > >  
> > > -	code->code = MEDIA_BUS_FMT_SGRBG10_1X10;
> > > +	code->code = ov8856->fmt.code;
> > >  
> > >  	return 0;
> > >  }
> > > @@ -1089,6 +1652,20 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
> > >  		return -ENXIO;
> > >  	}
> > >  
> > > +	/* check sensor hardware revision */
> > > +	ret = ov8856_check_revision(ov8856);
> > > +	if (ret) {
> > > +		dev_err(&client->dev, "failed to check sensor revision");
> > > +		return ret;
> > > +	}
> > > +
> > > +	ret = ov8856_read_reg(ov8856, OV8856_MODULE_REVISION,
> > > +			      OV8856_REG_VALUE_08BIT, &val);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	ov8856->is_1B_revision = (val == OV8856_1B_MODULE) ? 1 : 0;
> > > +
> > >  	return 0;
> > >  }
> > >  
> > > @@ -1107,7 +1684,7 @@ static int ov8856_check_hwcfg(struct device *dev)
> > >  		return -ENXIO;
> > >  
> > >  	fwnode_property_read_u32(fwnode, "clock-frequency", &mclk);
> > > -	if (mclk != OV8856_MCLK) {
> > > +	if (mclk != OV8856_XVCLK) {
> > >  		dev_err(dev, "external clock %d is not supported", mclk);
> > >  		return -EINVAL;
> > >  	}
> > > @@ -1164,6 +1741,9 @@ static int ov8856_remove(struct i2c_client *client)
> > >  	media_entity_cleanup(&sd->entity);
> > >  	v4l2_ctrl_handler_free(sd->ctrl_handler);
> > >  	pm_runtime_disable(&client->dev);
> > > +	if (!pm_runtime_status_suspended(&client->dev))
> > > +		__ov8856_power_off(ov8856);
> > > +	pm_runtime_set_suspended(&client->dev);
> > >  	mutex_destroy(&ov8856->mutex);
> > >  
> > >  	return 0;
> > > @@ -1172,6 +1752,7 @@ static int ov8856_remove(struct i2c_client *client)
> > >  static int ov8856_probe(struct i2c_client *client)
> > >  {
> > >  	struct ov8856 *ov8856;
> > > +	unsigned int i;
> > >  	int ret;
> > >  
> > >  	ret = ov8856_check_hwcfg(&client->dev);
> > > @@ -1186,6 +1767,42 @@ static int ov8856_probe(struct i2c_client *client)
> > >  		return -ENOMEM;
> > >  
> > >  	v4l2_i2c_subdev_init(&ov8856->sd, client, &ov8856_subdev_ops);
> > > +	ov8856->fmt.code = MEDIA_BUS_FMT_SGRBG10_1X10;
> > > +
> > > +	ov8856->xvclk = devm_clk_get(&client->dev, "xvclk");
> > 
> > Does this work on ACPI?
> > 
> > See e.g. the smiapp driver for an example. The same applies to the rest of
> > the chunk.
> 
> For ACPI, this probe should not be executed,
> as DT setting may not have compatible property.

This probe function will be executed on ACPI as well.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
