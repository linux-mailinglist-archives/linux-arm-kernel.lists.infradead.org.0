Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CE4202270
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 09:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WD34lbBKt1Y/R5RfTVBz1srK3287ZVZ89B2KBuK9C48=; b=ikLSDfUYymV1Y+
	8yNyCueQn5d7M+EeRnoV5boJPNT82GSHGUg7k7HZRcbScsjeGYo/WNJ1Ji0+F4TdJg08/Z9PZsG7N
	XMCpq8RRwyDYaX5pT1d4lkKoODnydyLowwhotCqTse3gbi8vtS0HUgb2Kd1mGzKe+gLCjlFWRdvYf
	e++io3mYCHSIcbUSCcfF0d4IaLX9XLZ0SC5X2jge4wbxQICPPX30Wrk1GvWFN/MfAbfj7QAKsXEFM
	lImwQQ4nJIf+28BlrEeouwiKsnAABnIhTCK0bkwzyvtbo//TJnrfbuBTSsDkgMvfGaLln6ZqhbP7f
	Ht85KyTS+oKgL0NiEzJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmYHD-0006J7-5o; Sat, 20 Jun 2020 07:50:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmYH1-0006I0-6y; Sat, 20 Jun 2020 07:50:48 +0000
X-UUID: 58d9ef728c9649bb994f4d7518eca079-20200619
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=AvUptpgaY5vtm69rBameUFdSVkwK1Ir/pAP7NO3YeEs=; 
 b=V2jF7yc/M/93nrwyk6h5aprrrwtHTN+1nsgm9iWGYRuA39aBBJKwVsJ4m29qoYcLLJ3GzfxHC+VgKbLszFPudevWDrxFpp3iPtMdo1DaCexfCtxSQ68myUOAIG4bbHMe/5Q3pe2j2R4KXwe+cxPQVgsvYVUEeQNWKrBHIMD4su0=;
X-UUID: 58d9ef728c9649bb994f4d7518eca079-20200619
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 445264790; Fri, 19 Jun 2020 23:50:35 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 20 Jun 2020 00:50:41 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 20 Jun 2020 15:50:37 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 20 Jun 2020 15:50:36 +0800
Message-ID: <1592639284.8804.712.camel@mhfsdcap03>
Subject: Re: [PATCH V10 2/2] media: i2c: ov02a10: Add OV02A10 image sensor
 driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Sat, 20 Jun 2020 15:48:04 +0800
In-Reply-To: <20200618191026.GA73379@chromium.org>
References: <20200615122937.18965-1-dongchun.zhu@mediatek.com>
 <20200615122937.18965-3-dongchun.zhu@mediatek.com>
 <20200618191026.GA73379@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D0A2657985C53163C7A9874FBB5025819DDEB9B1376F0FCC93D89AEE7E08052F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_005047_264029_D121C276 
X-CRM114-Status: GOOD (  23.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Thanks for the review.

On Thu, 2020-06-18 at 19:10 +0000, Tomasz Figa wrote:
> Hi Dongchun,
> 
> On Mon, Jun 15, 2020 at 08:29:37PM +0800, Dongchun Zhu wrote:
> > Add a V4L2 sub-device driver for OV02A10 image sensor.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  MAINTAINERS                 |    1 +
> >  drivers/media/i2c/Kconfig   |   13 +
> >  drivers/media/i2c/Makefile  |    1 +
> >  drivers/media/i2c/ov02a10.c | 1042 +++++++++++++++++++++++++++++++++++++++++++
> >  4 files changed, 1057 insertions(+)
> >  create mode 100644 drivers/media/i2c/ov02a10.c
> > 
> 
> Thank you for the patch. Please see my comments inline.
> 
> [snip]
> > +static int ov02a10_set_fmt(struct v4l2_subdev *sd,
> > +			   struct v4l2_subdev_pad_config *cfg,
> > +			   struct v4l2_subdev_format *fmt)
> > +{
> > +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > +	struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;
> > +
> > +	mutex_lock(&ov02a10->mutex);
> > +
> > +	if (ov02a10->streaming) {
> > +		mutex_unlock(&ov02a10->mutex);
> > +		return -EBUSY;
> > +	}
> > +
> > +	/* Only one sensor mode supported */
> > +	mbus_fmt->code = ov02a10->fmt.code;
> > +	ov02a10_fill_fmt(ov02a10->cur_mode, mbus_fmt);
> > +	ov02a10->fmt = fmt->format;
> > +
> > +	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY)
> > +		*v4l2_subdev_get_try_format(sd, cfg, fmt->pad) = fmt->format;
> 
> If fmt->which is V4L2_SUBDEV_FORMAT_TRY, the internal driver state must not
> be affected. It also should not depend on whether the sensor is streaming
> or not. Basically it should be considered a special "candidate" format,
> which isn't programmed to the hardware, but just stored aside.
> 

Hmm. Maybe we shall use FORMAT_TRY like this:
struct v4l2_mbus_framefmt *frame_fmt;
...
if (fmt->which == V4L2_SUBDEV_FORMAT_TRY)
	frame_fmt = v4l2_subdev_get_try_format(sd, cfg, 0);
else
	frame_fmt = &ov02a10->fmt;

*frame_fmt = *mbus_fmt;

(Remove 'ov02a10->fmt = fmt->format;' above)

> > +
> > +	mutex_unlock(&ov02a10->mutex);
> > +
> > +	return 0;
> > +}
> [snip]
> > +static int ov02a10_power_on(struct device *dev)
> > +{
> > +	struct i2c_client *client = to_i2c_client(dev);
> > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > +	int ret;
> > +
> > +	gpiod_set_value_cansleep(ov02a10->rst_gpio, 0);
> 
> As we discussed before, the pin names mean their logical function and the
> polarity means the function is active. In this case, we want to _activate_
> the _reset_ so it should be 1.
> 

Yes, you are right.
Sorry that made a mistake about powerdown/reset GPIO polarity settings.
For instance, _reset_ pin shall be active low, not active high.
The following state setting need to update as well.

> > +	gpiod_set_value_cansleep(ov02a10->pd_gpio, 0);
> 
> I believe we don't want to deactivate the powerdown yet. First the clock
> and regulator need to be enabled.
> 

Fixed in next release.

> > +
> > +	ret = clk_prepare_enable(ov02a10->eclk);
> > +	if (ret < 0) {
> > +		dev_err(dev, "failed to enable eclk\n");
> > +		return ret;
> > +	}
> > +
> > +	ret = regulator_bulk_enable(ARRAY_SIZE(ov02a10_supply_names),
> > +				    ov02a10->supplies);
> > +	if (ret < 0) {
> > +		dev_err(dev, "failed to enable regulators\n");
> > +		goto disable_clk;
> > +	}
> > +	usleep_range(5000, 6000);
> > +
> > +	gpiod_set_value_cansleep(ov02a10->pd_gpio, 1);
> 
> Here we want to *deactivate* the powerdown, so the value should be 0.
> 

Fixed in next release.

> > +	usleep_range(5000, 6000);
> > +
> > +	gpiod_set_value_cansleep(ov02a10->rst_gpio, 1);
> 
> And here we want to *deactivate* the reset so it should be 0.
> 

Fixed in next release.

> > +	usleep_range(5000, 6000);
> > +
> > +	ret = ov02a10_check_sensor_id(ov02a10);
> > +	if (ret)
> > +		goto disable_regulator;
> > +
> > +	return 0;
> > +
> > +disable_regulator:
> > +	regulator_bulk_disable(ARRAY_SIZE(ov02a10_supply_names),
> > +			       ov02a10->supplies);
> > +disable_clk:
> > +	clk_disable_unprepare(ov02a10->eclk);
> > +
> > +	return ret;
> > +}
> > +
> > +static int ov02a10_power_off(struct device *dev)
> > +{
> > +	struct i2c_client *client = to_i2c_client(dev);
> > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > +
> > +	gpiod_set_value_cansleep(ov02a10->rst_gpio, 0);
> 
> We want to *activate* reset here, so it should be 1.
> 

Fixed in next release.

> > +	clk_disable_unprepare(ov02a10->eclk);
> > +	gpiod_set_value_cansleep(ov02a10->pd_gpio, 0);
> 
> We want to *activate* powerdown here, so should be 1 too.
> 

Fixed in next release.

> > +	regulator_bulk_disable(ARRAY_SIZE(ov02a10_supply_names),
> > +			       ov02a10->supplies);
> > +
> > +	return 0;
> > +}
> [snip]
> > +static int ov02a10_probe(struct i2c_client *client)
> > +{
> > +	struct device *dev = &client->dev;
> > +	struct ov02a10 *ov02a10;
> > +	unsigned int rotation;
> > +	unsigned int clock_lane_tx_speed;
> > +	unsigned int i;
> > +	int ret;
> > +
> > +	ov02a10 = devm_kzalloc(dev, sizeof(*ov02a10), GFP_KERNEL);
> > +	if (!ov02a10)
> > +		return -ENOMEM;
> > +
> > +	ret = ov02a10_check_hwcfg(dev, ov02a10);
> > +	if (ret) {
> > +		dev_err(dev, "failed to check HW configuration: %d", ret);
> > +		return ret;
> > +	}
> > +
> > +	v4l2_i2c_subdev_init(&ov02a10->subdev, client, &ov02a10_subdev_ops);
> > +	ov02a10->mipi_clock_tx_speed = OV02A10_MIPI_TX_SPEED_DEFAULT;
> > +	ov02a10->fmt.code = MEDIA_BUS_FMT_SBGGR10_1X10;
> > +
> > +	/* Optional indication of physical rotation of sensor */
> > +	ret = fwnode_property_read_u32(dev_fwnode(dev), "rotation", &rotation);
> > +	if (!ret && rotation == 180) {
> > +		ov02a10->upside_down = true;
> > +		ov02a10->fmt.code = MEDIA_BUS_FMT_SRGGB10_1X10;
> > +	}
> > +
> > +	/* Optional indication of mipi TX speed */
> > +	ret = fwnode_property_read_u32(dev_fwnode(dev), "ovti,mipi-tx-speed",
> > +				       &clock_lane_tx_speed);
> > +
> > +	if (!ret)
> > +		ov02a10->mipi_clock_tx_speed = clock_lane_tx_speed;
> > +
> > +	/* Get system clock (eclk) */
> > +	ov02a10->eclk = devm_clk_get(dev, "eclk");
> > +	if (IS_ERR(ov02a10->eclk)) {
> > +		ret = PTR_ERR(ov02a10->eclk);
> > +		dev_err(dev, "failed to get eclk %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	ret = fwnode_property_read_u32(dev_fwnode(dev), "clock-frequency",
> > +				       &ov02a10->eclk_freq);
> > +	if (ret) {
> > +		dev_err(dev, "failed to get eclk frequency\n");
> > +		return ret;
> > +	}
> > +
> > +	ret = clk_set_rate(ov02a10->eclk, ov02a10->eclk_freq);
> > +	if (ret) {
> > +		dev_err(dev, "failed to set eclk frequency (24MHz)\n");
> > +		return ret;
> > +	}
> > +
> > +	if (clk_get_rate(ov02a10->eclk) != OV02A10_ECLK_FREQ) {
> > +		dev_warn(dev, "wrong eclk frequency %d Hz, expected: %d Hz\n",
> > +			 ov02a10->eclk_freq, OV02A10_ECLK_FREQ);
> > +		return -EINVAL;
> > +	}
> > +
> > +	ov02a10->pd_gpio = devm_gpiod_get(dev, "powerdown", GPIOD_OUT_HIGH);
> > +	if (IS_ERR(ov02a10->pd_gpio)) {
> > +		ret = PTR_ERR(ov02a10->pd_gpio);
> > +		dev_err(dev, "failed to get powerdown-gpios %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	ov02a10->rst_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> > +	if (IS_ERR(ov02a10->rst_gpio)) {
> > +		ret = PTR_ERR(ov02a10->rst_gpio);
> > +		dev_err(dev, "failed to get reset-gpios %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	for (i = 0; i < ARRAY_SIZE(ov02a10_supply_names); i++)
> > +		ov02a10->supplies[i].supply = ov02a10_supply_names[i];
> > +
> > +	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ov02a10_supply_names),
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
> > +		goto err_power_off;
> > +	}
> > +
> > +	return 0;
> > +
> > +err_power_off:
> > +	pm_runtime_disable(dev);
> > +	if (!pm_runtime_enabled(dev))
> 
> This would be always true, resulting in unbalanced power off. Moving
> pm_runtime_disable() after this if should work better.
> 

Yes. Fixed in next release.

> > +		ov02a10_power_off(dev);
> > +err_clean_entity:
> > +	media_entity_cleanup(&ov02a10->subdev.entity);
> > +err_free_handler:
> > +	v4l2_ctrl_handler_free(ov02a10->subdev.ctrl_handler);
> > +err_destroy_mutex:
> > +	mutex_destroy(&ov02a10->mutex);
> > +
> > +	return ret;
> > +}
> > +
> > +static int ov02a10_remove(struct i2c_client *client)
> > +{
> > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > +
> > +	v4l2_async_unregister_subdev(sd);
> > +	media_entity_cleanup(&sd->entity);
> > +	v4l2_ctrl_handler_free(sd->ctrl_handler);
> > +	pm_runtime_disable(&client->dev);
> > +	if (!pm_runtime_suspended(&client->dev))
> 
> Sorry, similarly to the dw9768 driver, I made a mistake and suggested the
> wrong function. pm_runtime_status_suspended() should be correct here.
> 

That's OK.
Fixed in next release.

> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
