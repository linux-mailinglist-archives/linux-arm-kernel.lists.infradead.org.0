Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB161F5C26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 21:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJUgHm9BHfHGhjtA4Yy5jH+0XTwpp98IH3YyrQiqkw8=; b=S86Xkg2fbtN7Zs
	8j9kX85F9AVtWlDFWpOX/AOZYkKc6ns+knS6WOmexF+KYv1IEJX1hJAwDf8yyKe/D9zYNOjTQW7fv
	6GlUan/asNE6UuacHtS0EALWLAsoj4DLHl1oVmDamotomVA04VRcbjpVIBug1CxhKf4Hrdh+6JXPa
	sk2bwxTklkCCCwvmwREPZgLUwMvi0y6pMKb0mwUUSSZq+7VNHYvnOvhaBUKSpwjbPsdk/tscSH425
	kUIYdJZ1qiKuIUpIuYOjP/FLii4AtwEEvgis+9rKQFJTFL3VtwmJB7GFaqtj7va1BMxPrV+TKr+K+
	s95SyxOV7WGQQeqY5FqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj6f3-0002IT-1E; Wed, 10 Jun 2020 19:45:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj6ei-0001mM-6f
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 19:45:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id e1so3663510wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 12:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=w/E0PqZ4JUvsVPhjJCpIt9CihS3XGANL6AWqhjUQMiM=;
 b=GePbnpgV0HFsJk15OEyOs+JIFBYByLXFhcFn9SLwDZxbtzCmuF3HL0aMeBlh4M7rrU
 59HtOEH4vhneOyuuPBg+LZIhJXXxw8E+WDpDdsMq7nSAT18EjeZv0QIAwwciVPGWRJvF
 Vyuf1tcwbaR3DFgeV5GsxW9saxagNMpwvSLm4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=w/E0PqZ4JUvsVPhjJCpIt9CihS3XGANL6AWqhjUQMiM=;
 b=PmZtLwBqdlazosbSOdqAj+LjTd/ZaUgkgC2U1ThSzC6EEcwFFx707/MF5TrkfniFc1
 rmlxyNPEHIQCw2ZSQV313lSU8j3NSRwMT9VSd8bvK26deisPzvMHt6kVD+z70WDbHJZN
 POBWUuDYlXgmsqUXdUBy5ROWXgcLNAiYSDHaZNQIFUrKLcAeaQbVsHDSBv41UhaQd09n
 QBOXgYqJl/0K5rNKO74UWzIugdkMrCgMwiQ/BpBXQ99c5ryDciRB64TWHBv9hOGPMKEj
 C87pLOtN8rJsN6hAw7RtMxAfl6ijP/yeCipWJTXZKrmRgKCjw/YRKm6BjgFU3/ytWPeE
 TEfg==
X-Gm-Message-State: AOAM530xD1O4oPUGfdrDcVYXhy1W48yXZlmoVq/P5rQuwvZiPWzNK5gk
 FaqqGsI+ZLzXWbQaIOBJZYswaQ==
X-Google-Smtp-Source: ABdhPJz56Mg1sFhBY6OHgtYaL4srEb/iLokXny55C/qT/LARZkNQ2vp3NirR+I0nb5Ducr+EwK7hGg==
X-Received: by 2002:adf:c385:: with SMTP id p5mr5534468wrf.409.1591818297823; 
 Wed, 10 Jun 2020 12:44:57 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id u9sm959760wme.16.2020.06.10.12.44.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 12:44:57 -0700 (PDT)
Date: Wed, 10 Jun 2020 19:44:55 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V9, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
Message-ID: <20200610194455.GK201868@chromium.org>
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-3-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200523084103.31276-3-dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_124500_240023_0B912B4F 
X-CRM114-Status: GOOD (  25.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Sat, May 23, 2020 at 04:41:03PM +0800, Dongchun Zhu wrote:
> Add a V4L2 sub-device driver for OV02A10 image sensor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  MAINTAINERS                 |    1 +
>  drivers/media/i2c/Kconfig   |   13 +
>  drivers/media/i2c/Makefile  |    1 +
>  drivers/media/i2c/ov02a10.c | 1025 +++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 1040 insertions(+)
>  create mode 100644 drivers/media/i2c/ov02a10.c
> 

Thank you for the patch. Please see my comments inline.

[snip]
> diff --git a/drivers/media/i2c/ov02a10.c b/drivers/media/i2c/ov02a10.c
> new file mode 100644
> index 0000000..160a0b5
> --- /dev/null
> +++ b/drivers/media/i2c/ov02a10.c
[snip]
> +static const char * const ov02a10_test_pattern_menu[] = {
> +	"Disabled",
> +	"Color Bar",

nit: We should normalize this to one of the standard names. What is the
pattern on this sensor? Is it perhaps "Eight Vertical Colour Bars"?

> +};
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


Don't we need to handle the case when fmt->which is V4L2_SUBDEV_FORMAT_TRY,
which is used for trying the format, but not applying it to the hardware?

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
> +	mutex_unlock(&ov02a10->mutex);
> +
> +	return 0;
> +}
> +
> +static int ov02a10_get_fmt(struct v4l2_subdev *sd,
> +			   struct v4l2_subdev_pad_config *cfg,
> +			   struct v4l2_subdev_format *fmt)
> +{
> +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> +	struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;
> +
> +	mutex_lock(&ov02a10->mutex);
> +
> +	fmt->format = ov02a10->fmt;

Ditto.

> +	mbus_fmt->code = ov02a10->fmt.code;
> +	ov02a10_fill_fmt(ov02a10->cur_mode, mbus_fmt);
> +
> +	mutex_unlock(&ov02a10->mutex);
> +
> +	return 0;
> +}
> +
> +static int ov02a10_enum_mbus_code(struct v4l2_subdev *sd,
> +				  struct v4l2_subdev_pad_config *cfg,
> +				  struct v4l2_subdev_mbus_code_enum *code)
> +{
> +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> +
> +	if (code->index >= ARRAY_SIZE(supported_modes))
> +		return -EINVAL;

Hmm, supported_modes[] doesn't seem to hold the information about mbus
codes. Should this just perhaps be "!= 0"?

> +
> +	code->code = ov02a10->fmt.code;
> +
> +	return 0;
> +}
[snip]
> +static int ov02a10_entity_init_cfg(struct v4l2_subdev *sd,
> +				   struct v4l2_subdev_pad_config *cfg)
> +{
> +	struct v4l2_subdev_format fmt = {
> +		.which = cfg ? V4L2_SUBDEV_FORMAT_TRY : V4L2_SUBDEV_FORMAT_ACTIVE,
> +		.format = {
> +			.width = 1600,
> +			.height = 1200,
> +		}
> +	};
> +
> +	ov02a10_set_fmt(sd, cfg, &fmt);
> +
> +	return 0;
> +}
> +

I'm not familiar with this init_cfg operation and the documentation is very
sparse about it. Sakari, is this a correct implementation?

[snip]
> +static int ov02a10_set_test_pattern(struct ov02a10 *ov02a10, int pattern)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> +	int ret;
> +
> +	ret = i2c_smbus_write_byte_data(client, REG_PAGE_SWITCH, REG_ENABLE);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_TEST_PATTERN,
> +					pattern);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = i2c_smbus_write_byte_data(client, REG_GLOBAL_EFFECTIVE,
> +					REG_ENABLE);
> +	if (ret < 0)
> +		return ret;
> +
> +	return i2c_smbus_write_byte_data(client, REG_SC_CTRL_MODE,
> +					 SC_CTRL_MODE_STREAMING);

Why is this needed? Does writing the test pattern register stop streaming?

[snip]
> +static int ov02a10_initialize_controls(struct ov02a10 *ov02a10)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> +	const struct ov02a10_mode *mode;
> +	struct v4l2_ctrl_handler *handler;
> +	struct v4l2_ctrl *ctrl;
> +	u64 exposure_max;
> +	u32 pixel_rate;
> +	int ret;
> +
> +	handler = &ov02a10->ctrl_handler;
> +	mode = ov02a10->cur_mode;
> +	ret = v4l2_ctrl_handler_init(handler, 7);
> +	if (ret)
> +		return ret;
> +
> +	handler->lock = &ov02a10->mutex;
> +
> +	ctrl = v4l2_ctrl_new_int_menu(handler, NULL, V4L2_CID_LINK_FREQ, 0, 0,
> +				      link_freq_menu_items);
> +	if (ctrl)
> +		ctrl->flags |= V4L2_CTRL_FLAG_READ_ONLY;
> +
> +	pixel_rate = to_pixel_rate(0);
> +	v4l2_ctrl_new_std(handler, NULL, V4L2_CID_PIXEL_RATE, 0, pixel_rate, 1,
> +			  pixel_rate);
> +
> +	exposure_max = mode->vts_def - 4;
> +	ov02a10->exposure = v4l2_ctrl_new_std(handler, &ov02a10_ctrl_ops,
> +					      V4L2_CID_EXPOSURE,
> +					      OV02A10_EXPOSURE_MIN,
> +					      exposure_max,
> +					      OV02A10_EXPOSURE_STEP,
> +					      mode->exp_def);
> +
> +	v4l2_ctrl_new_std(handler, &ov02a10_ctrl_ops,
> +			  V4L2_CID_ANALOGUE_GAIN,
> +			  OV02A10_GAIN_MIN,
> +			  OV02A10_GAIN_MAX,
> +			  OV02A10_GAIN_STEP,
> +			  OV02A10_GAIN_DEFAULT);
> +
> +	v4l2_ctrl_new_std_menu_items(handler, &ov02a10_ctrl_ops,
> +				     V4L2_CID_TEST_PATTERN,
> +				     ARRAY_SIZE(ov02a10_test_pattern_menu) - 1,
> +				     0, 0, ov02a10_test_pattern_menu);
> +

I can see that we're missing some controls here now, VBLANK and HBLANK if I
remember correctly. Even though read-only, some userspace need those to
get information about how the sensor operates.

> +	if (handler->error) {
> +		ret = handler->error;
> +		dev_err(&client->dev, "failed to init controls(%d)\n", ret);
> +		goto err_free_handler;
> +	}
> +
> +	ov02a10->subdev.ctrl_handler = handler;
> +
> +	return 0;
> +
> +err_free_handler:
> +	v4l2_ctrl_handler_free(handler);
> +
> +	return ret;
> +}
[snip]
> +	pm_runtime_enable(dev);
> +	if (!pm_runtime_enabled(dev)) {
> +		ret = ov02a10_power_on(dev);
> +		if (ret < 0) {
> +			dev_err(dev, "failed to power on: %d\n", ret);
> +			goto err_free_handler;
> +		}
> +	}
> +
> +	ret = v4l2_async_register_subdev(&ov02a10->subdev);
> +	if (ret) {
> +		dev_err(dev, "failed to register V4L2 subdev: %d", ret);
> +		if (!pm_runtime_enabled(dev))
> +			ov02a10_power_off(dev);

Please don't mix inline and error-path error handling, as it makes it
difficult to tell if it's correct. Please move this below the appropriate
err label instead.

> +		goto err_clean_entity;
> +	}
> +
> +	return 0;
> +
> +err_clean_entity:

If one calls pm_runtime_enable() in the probe path, one needs to call
pm_runtime_disable() on the error and remove paths.

> +	media_entity_cleanup(&ov02a10->subdev.entity);
> +err_free_handler:
> +	v4l2_ctrl_handler_free(ov02a10->subdev.ctrl_handler);
> +err_destroy_mutex:
> +	mutex_destroy(&ov02a10->mutex);
> +
> +	return ret;
> +}
> +

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
