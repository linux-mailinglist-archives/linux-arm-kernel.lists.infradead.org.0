Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 061D11FFB92
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 21:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7QdGUYJTOWMqT5XDBlCoQ1O++gOjUioYSXnUguKKHFY=; b=awHLn2gPxNmVU5
	GB0FNru7wO14NGfZqeJe5ShFJLT1ZGv6mSMDV6zlYMCd9C4tNTDdPfax4C0kOvJjiHvVXo6gn8V5I
	EC1NkVSDcITLYRU9nAeX4hT52Mr82texqnA8vZ3QzfdL7mHXZS2eCbhZ+2RNW67Zi21SUWBwKR5CF
	ReDtBqtDQG/yzbT65UCD22fdjgv7x+23diNogfT4BL+TXCKJ9MV391ZLpeSuLOyei/+lhTLcpYBFB
	qBFDiXvTN1rgzHZyBOC2tG4zzSgcIj5KF4H8MN5zLxPqQo0gPtGB1dls+2TpdejGY6dbmdv2jueX6
	6TyCQDhlu3hZhIwnSk5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlzvq-0003eT-Q2; Thu, 18 Jun 2020 19:10:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlzvh-0003dQ-TJ
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 19:10:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id a6so2857530wmm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 12:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/R6+OvZz1Ui/Ew+ADM6r1/2XemZGf5ebcfeNB0iKSqw=;
 b=Xl3+pwsOo3mgOl7QHuL3f6/VF0UUbWo98iffdxLWS9CkkwY9S+VzX0ch7pJuIWKaPI
 g8hsckdhXUtFwpSY49cuMm0G070E4tv/CaJLaaF7nGHCO7nA6l3HGI86wEyYtzWejyNF
 4GE3NirtsgaZaAL02CjDU/nPjkzylIn9BjRRg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/R6+OvZz1Ui/Ew+ADM6r1/2XemZGf5ebcfeNB0iKSqw=;
 b=S2VBlRrPXk72+bSFzXE7I2S91sZ3FfJSvALoziTkrRgpUNs9i142KL/z0WWw0MA6NI
 rMXTMXog6cb8zQb/fFK4fWMOJFkkEmk1iGkSuqWf15FwsWyROjeK3FObX+yKkJ0JEzGV
 9dao+x/QkV1ouvbJpWoy5XK7KhgOBca97EjQQ+K4jGKzSI0NguZBLIOp7LvUN+AzV9DM
 8SSp1T1iRjtAC3QtqqDxcMZk+EP/lUa0z9BHLhUGv9kC8HvyTaX2ygn/zIQyxm4/Vf2R
 0vMFSyZN0Hsv22rr3MToSlE6+KE7OGDbb39UTmsIsDfDF3Uk/fCP7L2nI73U2TUM+IAf
 zxfA==
X-Gm-Message-State: AOAM533BiioNW8b/zcdUejfz9mwbm6jWzS4u7+ydibFCdbwwRn3cjs6O
 9bBTxDtcBjJhbUAK0ztP4iOieA==
X-Google-Smtp-Source: ABdhPJxSbS+R7Qpog7rhrdO1NrPEj7MbxkVtY27yVDONZVpevSGG1jURLAxFrUO7A97WGzYzgARtwA==
X-Received: by 2002:a1c:a74c:: with SMTP id q73mr30726wme.96.1592507428399;
 Thu, 18 Jun 2020 12:10:28 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id u3sm4722137wrw.89.2020.06.18.12.10.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 12:10:27 -0700 (PDT)
Date: Thu, 18 Jun 2020 19:10:26 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [PATCH V10 2/2] media: i2c: ov02a10: Add OV02A10 image sensor
 driver
Message-ID: <20200618191026.GA73379@chromium.org>
References: <20200615122937.18965-1-dongchun.zhu@mediatek.com>
 <20200615122937.18965-3-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615122937.18965-3-dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_121029_969504_27749AE6 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 sakari.ailus@linux.intel.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Mon, Jun 15, 2020 at 08:29:37PM +0800, Dongchun Zhu wrote:
> Add a V4L2 sub-device driver for OV02A10 image sensor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  MAINTAINERS                 |    1 +
>  drivers/media/i2c/Kconfig   |   13 +
>  drivers/media/i2c/Makefile  |    1 +
>  drivers/media/i2c/ov02a10.c | 1042 +++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 1057 insertions(+)
>  create mode 100644 drivers/media/i2c/ov02a10.c
> 

Thank you for the patch. Please see my comments inline.

[snip]
> +static int ov02a10_set_fmt(struct v4l2_subdev *sd,
> +			   struct v4l2_subdev_pad_config *cfg,
> +			   struct v4l2_subdev_format *fmt)
> +{
> +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> +	struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;
> +
> +	mutex_lock(&ov02a10->mutex);
> +
> +	if (ov02a10->streaming) {
> +		mutex_unlock(&ov02a10->mutex);
> +		return -EBUSY;
> +	}
> +
> +	/* Only one sensor mode supported */
> +	mbus_fmt->code = ov02a10->fmt.code;
> +	ov02a10_fill_fmt(ov02a10->cur_mode, mbus_fmt);
> +	ov02a10->fmt = fmt->format;
> +
> +	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY)
> +		*v4l2_subdev_get_try_format(sd, cfg, fmt->pad) = fmt->format;

If fmt->which is V4L2_SUBDEV_FORMAT_TRY, the internal driver state must not
be affected. It also should not depend on whether the sensor is streaming
or not. Basically it should be considered a special "candidate" format,
which isn't programmed to the hardware, but just stored aside.

> +
> +	mutex_unlock(&ov02a10->mutex);
> +
> +	return 0;
> +}
[snip]
> +static int ov02a10_power_on(struct device *dev)
> +{
> +	struct i2c_client *client = to_i2c_client(dev);
> +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> +	int ret;
> +
> +	gpiod_set_value_cansleep(ov02a10->rst_gpio, 0);

As we discussed before, the pin names mean their logical function and the
polarity means the function is active. In this case, we want to _activate_
the _reset_ so it should be 1.

> +	gpiod_set_value_cansleep(ov02a10->pd_gpio, 0);

I believe we don't want to deactivate the powerdown yet. First the clock
and regulator need to be enabled.

> +
> +	ret = clk_prepare_enable(ov02a10->eclk);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to enable eclk\n");
> +		return ret;
> +	}
> +
> +	ret = regulator_bulk_enable(ARRAY_SIZE(ov02a10_supply_names),
> +				    ov02a10->supplies);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to enable regulators\n");
> +		goto disable_clk;
> +	}
> +	usleep_range(5000, 6000);
> +
> +	gpiod_set_value_cansleep(ov02a10->pd_gpio, 1);

Here we want to *deactivate* the powerdown, so the value should be 0.

> +	usleep_range(5000, 6000);
> +
> +	gpiod_set_value_cansleep(ov02a10->rst_gpio, 1);

And here we want to *deactivate* the reset so it should be 0.

> +	usleep_range(5000, 6000);
> +
> +	ret = ov02a10_check_sensor_id(ov02a10);
> +	if (ret)
> +		goto disable_regulator;
> +
> +	return 0;
> +
> +disable_regulator:
> +	regulator_bulk_disable(ARRAY_SIZE(ov02a10_supply_names),
> +			       ov02a10->supplies);
> +disable_clk:
> +	clk_disable_unprepare(ov02a10->eclk);
> +
> +	return ret;
> +}
> +
> +static int ov02a10_power_off(struct device *dev)
> +{
> +	struct i2c_client *client = to_i2c_client(dev);
> +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> +
> +	gpiod_set_value_cansleep(ov02a10->rst_gpio, 0);

We want to *activate* reset here, so it should be 1.

> +	clk_disable_unprepare(ov02a10->eclk);
> +	gpiod_set_value_cansleep(ov02a10->pd_gpio, 0);

We want to *activate* powerdown here, so should be 1 too.

> +	regulator_bulk_disable(ARRAY_SIZE(ov02a10_supply_names),
> +			       ov02a10->supplies);
> +
> +	return 0;
> +}
[snip]
> +static int ov02a10_probe(struct i2c_client *client)
> +{
> +	struct device *dev = &client->dev;
> +	struct ov02a10 *ov02a10;
> +	unsigned int rotation;
> +	unsigned int clock_lane_tx_speed;
> +	unsigned int i;
> +	int ret;
> +
> +	ov02a10 = devm_kzalloc(dev, sizeof(*ov02a10), GFP_KERNEL);
> +	if (!ov02a10)
> +		return -ENOMEM;
> +
> +	ret = ov02a10_check_hwcfg(dev, ov02a10);
> +	if (ret) {
> +		dev_err(dev, "failed to check HW configuration: %d", ret);
> +		return ret;
> +	}
> +
> +	v4l2_i2c_subdev_init(&ov02a10->subdev, client, &ov02a10_subdev_ops);
> +	ov02a10->mipi_clock_tx_speed = OV02A10_MIPI_TX_SPEED_DEFAULT;
> +	ov02a10->fmt.code = MEDIA_BUS_FMT_SBGGR10_1X10;
> +
> +	/* Optional indication of physical rotation of sensor */
> +	ret = fwnode_property_read_u32(dev_fwnode(dev), "rotation", &rotation);
> +	if (!ret && rotation == 180) {
> +		ov02a10->upside_down = true;
> +		ov02a10->fmt.code = MEDIA_BUS_FMT_SRGGB10_1X10;
> +	}
> +
> +	/* Optional indication of mipi TX speed */
> +	ret = fwnode_property_read_u32(dev_fwnode(dev), "ovti,mipi-tx-speed",
> +				       &clock_lane_tx_speed);
> +
> +	if (!ret)
> +		ov02a10->mipi_clock_tx_speed = clock_lane_tx_speed;
> +
> +	/* Get system clock (eclk) */
> +	ov02a10->eclk = devm_clk_get(dev, "eclk");
> +	if (IS_ERR(ov02a10->eclk)) {
> +		ret = PTR_ERR(ov02a10->eclk);
> +		dev_err(dev, "failed to get eclk %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = fwnode_property_read_u32(dev_fwnode(dev), "clock-frequency",
> +				       &ov02a10->eclk_freq);
> +	if (ret) {
> +		dev_err(dev, "failed to get eclk frequency\n");
> +		return ret;
> +	}
> +
> +	ret = clk_set_rate(ov02a10->eclk, ov02a10->eclk_freq);
> +	if (ret) {
> +		dev_err(dev, "failed to set eclk frequency (24MHz)\n");
> +		return ret;
> +	}
> +
> +	if (clk_get_rate(ov02a10->eclk) != OV02A10_ECLK_FREQ) {
> +		dev_warn(dev, "wrong eclk frequency %d Hz, expected: %d Hz\n",
> +			 ov02a10->eclk_freq, OV02A10_ECLK_FREQ);
> +		return -EINVAL;
> +	}
> +
> +	ov02a10->pd_gpio = devm_gpiod_get(dev, "powerdown", GPIOD_OUT_HIGH);
> +	if (IS_ERR(ov02a10->pd_gpio)) {
> +		ret = PTR_ERR(ov02a10->pd_gpio);
> +		dev_err(dev, "failed to get powerdown-gpios %d\n", ret);
> +		return ret;
> +	}
> +
> +	ov02a10->rst_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> +	if (IS_ERR(ov02a10->rst_gpio)) {
> +		ret = PTR_ERR(ov02a10->rst_gpio);
> +		dev_err(dev, "failed to get reset-gpios %d\n", ret);
> +		return ret;
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(ov02a10_supply_names); i++)
> +		ov02a10->supplies[i].supply = ov02a10_supply_names[i];
> +
> +	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ov02a10_supply_names),
> +				      ov02a10->supplies);
> +	if (ret) {
> +		dev_err(dev, "failed to get regulators\n");
> +		return ret;
> +	}
> +
> +	mutex_init(&ov02a10->mutex);
> +	ov02a10->cur_mode = &supported_modes[0];
> +	ret = ov02a10_initialize_controls(ov02a10);
> +	if (ret) {
> +		dev_err(dev, "failed to initialize controls\n");
> +		goto err_destroy_mutex;
> +	}
> +
> +	ov02a10->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> +	ov02a10->subdev.entity.ops = &ov02a10_subdev_entity_ops;
> +	ov02a10->subdev.entity.function = MEDIA_ENT_F_CAM_SENSOR;
> +	ov02a10->pad.flags = MEDIA_PAD_FL_SOURCE;
> +	ret = media_entity_pads_init(&ov02a10->subdev.entity, 1, &ov02a10->pad);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to init entity pads: %d", ret);
> +		goto err_free_handler;
> +	}
> +
> +	pm_runtime_enable(dev);
> +	if (!pm_runtime_enabled(dev)) {
> +		ret = ov02a10_power_on(dev);
> +		if (ret < 0) {
> +			dev_err(dev, "failed to power on: %d\n", ret);
> +			goto err_clean_entity;
> +		}
> +	}
> +
> +	ret = v4l2_async_register_subdev(&ov02a10->subdev);
> +	if (ret) {
> +		dev_err(dev, "failed to register V4L2 subdev: %d", ret);
> +		goto err_power_off;
> +	}
> +
> +	return 0;
> +
> +err_power_off:
> +	pm_runtime_disable(dev);
> +	if (!pm_runtime_enabled(dev))

This would be always true, resulting in unbalanced power off. Moving
pm_runtime_disable() after this if should work better.

> +		ov02a10_power_off(dev);
> +err_clean_entity:
> +	media_entity_cleanup(&ov02a10->subdev.entity);
> +err_free_handler:
> +	v4l2_ctrl_handler_free(ov02a10->subdev.ctrl_handler);
> +err_destroy_mutex:
> +	mutex_destroy(&ov02a10->mutex);
> +
> +	return ret;
> +}
> +
> +static int ov02a10_remove(struct i2c_client *client)
> +{
> +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> +
> +	v4l2_async_unregister_subdev(sd);
> +	media_entity_cleanup(&sd->entity);
> +	v4l2_ctrl_handler_free(sd->ctrl_handler);
> +	pm_runtime_disable(&client->dev);
> +	if (!pm_runtime_suspended(&client->dev))

Sorry, similarly to the dw9768 driver, I made a mistake and suggested the
wrong function. pm_runtime_status_suspended() should be correct here.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
