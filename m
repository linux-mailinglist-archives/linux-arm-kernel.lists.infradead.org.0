Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCC197732
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 12:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOhOONVerrOtTdQES/jRl3x5OBk2e9M42L7nmJVoN0g=; b=nWE84apBU8Lksi
	/M3c2sAq3KyHlIlf4NnFpClS7129S4c0ttq3aO72wHmHZlqKpF9dHn2IELbTn9Xjhl2N+0sM1dZwa
	IJ7S8xBXjyQEU/FsF8STyQ8lpA+kCuxitx0MhE18yjmrgbEa2HGde72WSvlCV4MYYU0SvJ8bUW3jY
	hAFJkx1PrWeWT1ogXyZ+cYDhzqdS/xsP6AM4qtk36qu8j2b4ZtAc94XuanLqU2AYys9ljHd7XD8MM
	ed6NGX96tUIxNzaRASQ41iEPgIr5Z7t4l/CEumnNRb94p+RUhaJNdbH3iLhSaGfvTJc3Gc+9aLx7u
	JrGKliW3CE/9726XGGqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0NtS-00030y-S4; Wed, 21 Aug 2019 10:31:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Nt8-0002yw-1K
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 10:30:48 +0000
Received: by mail-pg1-x541.google.com with SMTP id e11so1071694pga.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 03:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4BoYE73X4eVrqWZ/maIgmlAQ+tjISv3kS+ixOgnHRT8=;
 b=Rp3FdoPcFeEiPx/DsLzN7zQC0d3tk1bOfPoL0VpPiiiHryPa1Ox1xK/P+7siaLEBsn
 SCWT5mNzxabTiMEoH3peGW+mrD8//D+QyfVRJzQqHEX2AoyOZDLmTCX5tLtjbqpspqn7
 am6uK/SL+MX61wEQJmR1o8ELfk2cmNGqMEpd0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4BoYE73X4eVrqWZ/maIgmlAQ+tjISv3kS+ixOgnHRT8=;
 b=soOsCaw8FndsxiWxe+mvWGD3ooWli2gYQWvcsCn7Mgz8GSAta9/x3pd4Et8r6g7mRK
 RQ0W+64N00Ba2uMxYFtMD59nB4s7Wg9lCO/ettaybTfXtZGIIu1XpM/AqBWyD6d+Gnli
 9IFRAy+MXuBdVySlmZXD6CYjuVa+GY3F/NAyu0yuZPHY+hVR27QKe/4wWbKCdofYhzqm
 jB0c0nJjzu9Bs09UNVYTeDfDHMUov3SVhFwQhlcqirnhxN94g5jz0Zy9tKY4fg8VEbH6
 Ah9gR+Ybumi/8ErDvP//bw0v4j+L3+FJ928Dg1syF3Tl9nQmPeLI4B23R4CIfajl/7AL
 yOIQ==
X-Gm-Message-State: APjAAAXIi8aVAEnKkRxXbM24vDEJ5OyDu0Q8H/bT1xr8NNxRyAtNkoAF
 yTLvhnw/PRYweQZP2Mm4eTSpLw==
X-Google-Smtp-Source: APXvYqzAgymStE1nB9xOzKHFL5CDvw+8F1GwTeaTqZHuEVOO1cEaQEdHPleS1aQvRKitG7fWd0A5Kg==
X-Received: by 2002:a65:47c1:: with SMTP id f1mr28212186pgs.169.1566383444767; 
 Wed, 21 Aug 2019 03:30:44 -0700 (PDT)
Received: from chromium.org ([2401:fa00:4:4:6d27:f13:a0fa:d4b6])
 by smtp.gmail.com with ESMTPSA id 136sm34803218pfz.123.2019.08.21.03.30.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 03:30:43 -0700 (PDT)
Date: Wed, 21 Aug 2019 19:30:38 +0900
From: Tomasz Figa <tfiga@chromium.org>
To: dongchun.zhu@mediatek.com
Subject: Re: [V3, 2/2] media: i2c: Add Omnivision OV02A10 camera sensor driver
Message-ID: <20190821103038.GA148543@chromium.org>
References: <20190819034331.13098-1-dongchun.zhu@mediatek.com>
 <20190819034331.13098-3-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819034331.13098-3-dongchun.zhu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_033046_120785_9611E8CB 
X-CRM114-Status: GOOD (  32.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Mon, Aug 19, 2019 at 11:43:31AM +0800, dongchun.zhu@mediatek.com wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> 
> This patch adds a V4L2 sub-device driver for OV02A10 image sensor.
> The OV02A10 is a 1/5" CMOS sensor from Omnivision,
> which supports output format: 10-bit Raw.
> The OV02A10 has a single MIPI lane interface and use the I2C bus
> for control and the CSI-2 bus for data.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  MAINTAINERS                 |    1 +
>  drivers/media/i2c/Kconfig   |   11 +
>  drivers/media/i2c/Makefile  |    1 +
>  drivers/media/i2c/ov02a10.c | 1018 +++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 1031 insertions(+)
>  create mode 100644 drivers/media/i2c/ov02a10.c
> 

Thanks for the patch! Please see my comments inline.

[snip]

> +#define CHIP_ID                                         0x2509
> +#define OV02A10_REG_CHIP_ID_H                           0x02
> +#define OV02A10_REG_CHIP_ID_L                           0x03
> +#define OV02A10_ID(_msb, _lsb)                          ((_msb) << 8 | (_lsb))
> +
> +/* Bit[1] vertical upside down */
> +/* Bit[0] horizontal mirror */
> +#define REG_MIRROR_FLIP_CONTROL                         0x3f
> +
> +/* Orientation */
> +#define REG_CONFIG_MIRROR_FLIP		                0x03
> +
> +#define REG_PAGE_SWITCH                                 0xfd
> +#define REG_GLOBAL_EFFECTIVE                            0x01
> +#define REG_ENABLE                                      BIT(0)
> +
> +#define REG_SC_CTRL_MODE                                0xac
> +#define SC_CTRL_MODE_STANDBY                            0x00
> +#define SC_CTRL_MODE_STREAMING                          0x01
> +
> +#define OV02A10_REG_EXPOSURE_H                          0x03
> +#define OV02A10_REG_EXPOSURE_L                          0x04
> +#define	OV02A10_EXPOSURE_MIN                            4
> +#define	OV02A10_EXPOSURE_STEP                           1
> +
> +#define OV02A10_REG_VTS_H                               0x05
> +#define OV02A10_REG_VTS_L                               0x06
> +#define OV02A10_VTS_MAX                                 0x209f
> +#define OV02A10_VTS_MIN                                 0x04cf
> +#define OV02A10_BASIC_LINE				1224
> +
> +#define OV02A10_REG_GAIN                                0x24
> +#define OV02A10_GAIN_MIN                                0x10
> +#define OV02A10_GAIN_MAX                                0xf8
> +#define OV02A10_GAIN_STEP                               0x01
> +#define OV02A10_GAIN_DEFAULT                            0x40
> +
> +#define REG_NULL                                        0xff
> +
> +#define OV02A10_LANES                                   1
> +#define OV02A10_BITS_PER_SAMPLE                         10
> +

I think there is something wrong with the indentation in the code above.
Please use tabs wherever possible.

[snip]

> +
> +#define to_ov02a10(sd) container_of(sd, struct ov02a10, subdev)

Please use a static inline function for added compile-time type checks.

> +
> +static inline void msleep_range(unsigned int delay_base)
> +{
> +	usleep_range(delay_base * 1000, delay_base * 1000 + 500);
> +}

Why not just use msleep()?

> +
> +/* MIPI color bar enable output */
> +static const struct regval ov02a10_test_pattern_enable_regs[] = {
> +	{0xfd, 0x01},
> +	{0x0d, 0x00},
> +	{0xb6, 0x01},
> +	{0x01, 0x01},
> +	{0xfd, 0x01},
> +	{0xac, 0x01},
> +	{REG_NULL, 0x00}
> +};
> +
> +/* MIPI color bar disable output */
> +static const struct regval ov02a10_test_pattern_disable_regs[] = {
> +	{0xfd, 0x01},
> +	{0x0d, 0x00},
> +	{0xb6, 0x00},
> +	{0x01, 0x01},
> +	{0xfd, 0x01},
> +	{0xac, 0x01},
> +	{REG_NULL, 0x00}
> +};

Hmm, only the register 0xb6 seems to here. Could we just set it directly,
without these arrays?

> +
> +/*
> + * xvclk 24Mhz

This seems to assume 24MHz, but the driver allows a range in probe. Is that
correct?

[snip]]

> +/* Write a register */
> +static int ov02a10_write_reg(struct ov02a10 *ov02a10, u8 addr, u8 val)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> +	u8 buf[2] = {addr, val};
> +	int ret;
> +
> +	ret = i2c_master_send(client, buf, 2);
> +
> +	if (ret != 2) {
> +		dev_err(&client->dev, "%s: error: reg=%x, val=%x\n",
> +			__func__, addr, val);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}

Could this be replaced with i2c_smbus_write_byte_data()?

> +
> +static int ov02a10_write_array(struct ov02a10 *ov02a10,
> +			       const struct regval *regs)
> +{
> +	u32 i;
> +	int ret;
> +
> +	for (i = 0; regs[i].addr != REG_NULL; i++) {
> +		ret = ov02a10_write_reg(ov02a10, regs[i].addr, regs[i].val);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +/* Read a register */
> +static int ov02a10_read_reg(struct ov02a10 *ov02a10, u8 reg, u8 *val)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> +	u8 data = reg;
> +	struct i2c_msg msg = {
> +		.addr	= client->addr,
> +		.flags	= 0,
> +		.len	= 1,
> +		.buf	= &data,
> +	};
> +	int ret;
> +
> +	ret = i2c_transfer(client->adapter, &msg, 1);
> +	if (ret < 0)
> +		goto err_wr;
> +
> +	msg.flags = I2C_M_RD;
> +	ret = i2c_transfer(client->adapter, &msg, 1);
> +	if (ret < 0)
> +		goto err_rd;

Could we just have 2 messages in an array and just call i2c_transfer() once
for both write and read?

Or actually it sounds like the i2c_smbus_read_byte_data() helper could work
here.

> +
> +	*val = data;
> +	return 0;
> +
> +err_rd:
> +	dev_err(&client->dev, "i2c_transfer --I2C_M_RD failed\n");
> +err_wr:
> +	dev_err(&client->dev, "read error: reg=0x%02x: %d\n", reg, ret);
> +	return ret;
> +}
> +
> +static void ov02a10_fill_fmt(const struct ov02a10_mode *mode,
> +			     struct v4l2_mbus_framefmt *fmt)
> +{
> +	fmt->width = mode->width;
> +	fmt->height = mode->height;
> +	fmt->field = V4L2_FIELD_NONE;
> +}
> +
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
> +	if (code->index >= ARRAY_SIZE(supported_modes) || !(code->index))

Hmm, ARRAY_SIZE(supported_modes) is 1 and we don't allow code->index to be
0 either. Is there a code->index value that wouldn't return an error here?

> +		return -EINVAL;
> +
> +	code->code = ov02a10->fmt.code;
> +
> +	return 0;
> +}
> +
> +static int ov02a10_enum_frame_sizes(struct v4l2_subdev *sd,
> +				    struct v4l2_subdev_pad_config *cfg,
> +				    struct v4l2_subdev_frame_size_enum *fse)
> +{
> +	if (fse->index >= ARRAY_SIZE(supported_modes) || !(fse->index))

Same here.

> +		return -EINVAL;
> +
> +	fse->min_width  = supported_modes[fse->index].width;
> +	fse->max_width  = supported_modes[fse->index].width;
> +	fse->max_height = supported_modes[fse->index].height;
> +	fse->min_height = supported_modes[fse->index].height;
> +
> +	return 0;
> +}
> +
> +static int __ov02a10_power_on(struct ov02a10 *ov02a10)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> +	struct device *dev = &client->dev;
> +	int ret;
> +
> +	ret = clk_prepare_enable(ov02a10->xvclk);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to enable xvclk\n");
> +		return ret;
> +	}

Is it really correct to enable the clock before the regulators?

According to the datasheet, it should be:
 - PD pin HIGH,
 - nRST pin LOW,
 - DVDDIO and AVDD28 power up and stabilize,
 - clock enabled,
 - min 5 ms delay,
 - PD pin LOW,
 - min 4 ms delay,
 - nRST pin HIGH,
 - min 5 ms delay,
 - I2C interface ready.

> +
> +	/* Note: set 0 is high, set 1 is low */

Why is that? If there is some inverter on the way that should be handled
outside of this driver. (GPIO DT bindings have flags for this purpose.

If the pins are nRESET and nPOWERDOWN in the hardware datasheet, we should
call them like this in the driver too (+/- the lowercase and underscore
convention).

According to the datasheet, the reset pin is called RST and inverted, so we should
call it n_rst, but the powerdown signal, called PD, is not inverted, so pd
would be the right name.

> +	gpiod_set_value_cansleep(ov02a10->reset_gpio, 1);
> +	gpiod_set_value_cansleep(ov02a10->powerdown_gpio, 0);
> +
> +	ret = regulator_bulk_enable(OV02A10_NUM_SUPPLIES, ov02a10->supplies);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to enable regulators\n");
> +		goto disable_clk;
> +	}
> +	msleep_range(7);
> +
> +	gpiod_set_value_cansleep(ov02a10->powerdown_gpio, 1);
> +	msleep_range(10);
> +
> +	gpiod_set_value_cansleep(ov02a10->reset_gpio, 0);
> +	msleep_range(10);
> +
> +	return 0;
> +
> +disable_clk:
> +	clk_disable_unprepare(ov02a10->xvclk);
> +
> +	return ret;
> +}
> +
> +static void __ov02a10_power_off(struct ov02a10 *ov02a10)
> +{
> +	clk_disable_unprepare(ov02a10->xvclk);
> +	gpiod_set_value_cansleep(ov02a10->reset_gpio, 1);
> +	gpiod_set_value_cansleep(ov02a10->powerdown_gpio, 1);
> +	regulator_bulk_disable(OV02A10_NUM_SUPPLIES, ov02a10->supplies);

This also doesn't seem to match my datasheet. The sequence there is:
 - nRST goes LOW,
 - clock stops,
 - PD goes HIGH,
 - regulators are powerd down.

> +}
> +
> +static int __ov02a10_start_stream(struct ov02a10 *ov02a10)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> +	int ret;
> +
> +	/* Apply default values of current mode */
> +	ret = ov02a10_write_array(ov02a10, ov02a10->cur_mode->reg_list);
> +	if (ret)
> +		return ret;
> +
> +	/* Apply customized values from user */
> +	ret = __v4l2_ctrl_handler_setup(ov02a10->subdev.ctrl_handler);
> +	if (ret)
> +		return ret;
> +
> +	/* Set orientation to 180 degree */
> +	if (ov02a10->upside_down) {
> +		ret = ov02a10_write_reg(ov02a10, REG_MIRROR_FLIP_CONTROL,
> +					REG_CONFIG_MIRROR_FLIP);
> +		if (ret) {
> +			dev_err(&client->dev, "%s failed to set orientation\n",
> +				__func__);
> +			return ret;
> +		}
> +		ret = ov02a10_write_reg(ov02a10, REG_GLOBAL_EFFECTIVE,
> +					REG_ENABLE);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	/* Set stream on register */
> +	return ov02a10_write_reg(ov02a10,
> +				 REG_SC_CTRL_MODE, SC_CTRL_MODE_STREAMING);
> +}
> +
> +static int __ov02a10_stop_stream(struct ov02a10 *ov02a10)
> +{
> +	return ov02a10_write_reg(ov02a10,
> +				 REG_SC_CTRL_MODE, SC_CTRL_MODE_STANDBY);
> +}
> +
> +static int ov02a10_entity_init_cfg(struct v4l2_subdev *subdev,
> +				   struct v4l2_subdev_pad_config *cfg)
> +{
> +	struct v4l2_subdev_format fmt = { 0 };
> +
> +	fmt.which = cfg ? V4L2_SUBDEV_FORMAT_TRY : V4L2_SUBDEV_FORMAT_ACTIVE;
> +	fmt.format.width = 1600;
> +	fmt.format.height = 1200;

Where do these values come from? Should we have some macros for them?

> +
> +	ov02a10_set_fmt(subdev, cfg, &fmt);
> +
> +	return 0;
> +}
> +
> +static int ov02a10_s_stream(struct v4l2_subdev *sd, int on)
> +{
> +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> +	int ret = 0;
> +
> +	mutex_lock(&ov02a10->mutex);
> +
> +	if (ov02a10->streaming == on)
> +		goto unlock_and_return;
> +
> +	if (on) {
> +		ret = pm_runtime_get_sync(&client->dev);
> +		if (ret < 0) {
> +			pm_runtime_put_noidle(&client->dev);
> +			goto unlock_and_return;
> +		}
> +
> +		ret = __ov02a10_start_stream(ov02a10);
> +		if (ret) {
> +			__ov02a10_stop_stream(ov02a10);
> +			ov02a10->streaming = !on;
> +			goto err_rpm_put;
> +		}
> +	} else {
> +		__ov02a10_stop_stream(ov02a10);
> +		pm_runtime_put(&client->dev);
> +	}
> +
> +	ov02a10->streaming = on;
> +	mutex_unlock(&ov02a10->mutex);
> +
> +	return ret;
> +
> +err_rpm_put:
> +	pm_runtime_put(&client->dev);
> +unlock_and_return:
> +	mutex_unlock(&ov02a10->mutex);
> +
> +	return ret;
> +}
> +
> +static int ov02a10_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
> +{
> +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> +	struct v4l2_mbus_framefmt *try_fmt = v4l2_subdev_get_try_format(sd,
> +									fh->pad,
> +									0);

Please separate the initialization from the declaration, because there
isn't just enough space on this line anymore.

> +
> +	mutex_lock(&ov02a10->mutex);
> +	/* Initialize try_fmt */
> +	try_fmt->code = ov02a10->fmt.code;
> +	ov02a10_fill_fmt(&supported_modes[0], try_fmt);
> +
> +	mutex_unlock(&ov02a10->mutex);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused ov02a10_runtime_resume(struct device *dev)
> +{
> +	struct i2c_client *client = to_i2c_client(dev);
> +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> +
> +	return __ov02a10_power_on(ov02a10);
> +}
> +
> +static int __maybe_unused ov02a10_runtime_suspend(struct device *dev)
> +{
> +	struct i2c_client *client = to_i2c_client(dev);
> +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> +
> +	__ov02a10_power_off(ov02a10);
> +
> +	return 0;
> +}
> +
> +static const struct dev_pm_ops ov02a10_pm_ops = {
> +	SET_RUNTIME_PM_OPS(ov02a10_runtime_suspend,
> +			   ov02a10_runtime_resume, NULL)

Don't we need to implement and provide system PM ops too?

> +};
> +
> +static int ov02a10_set_test_pattern(struct ov02a10 *ov02a10, s32 value)
> +{
> +	if (value)
> +		return ov02a10_write_array(ov02a10,
> +					   ov02a10_test_pattern_enable_regs);
> +
> +	return ov02a10_write_array(ov02a10,
> +		ov02a10_test_pattern_disable_regs);
> +}
> +
> +static int ov02a10_set_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +	struct ov02a10 *ov02a10 = container_of(ctrl->handler,
> +					     struct ov02a10, ctrl_handler);
> +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> +	s64 max_expo;
> +	int ret;
> +
> +	/* Propagate change of current control to all related controls */
> +	if (ctrl->id == V4L2_CID_VBLANK) {
> +		/* Update max exposure while meeting expected vblanking */
> +		max_expo = ov02a10->cur_mode->height + ctrl->val - 4;
> +		__v4l2_ctrl_modify_range(ov02a10->exposure,
> +					 ov02a10->exposure->minimum, max_expo,
> +					 ov02a10->exposure->step,
> +					 ov02a10->exposure->default_value);
> +	}
> +
> +	/* V4L2 controls values will be applied only when power is already up */
> +	if (!pm_runtime_get_if_in_use(&client->dev))
> +		return 0;
> +
> +	switch (ctrl->id) {
> +	case V4L2_CID_EXPOSURE:
> +		ret = ov02a10_write_reg(ov02a10, REG_PAGE_SWITCH, REG_ENABLE);
> +		if (ret < 0)
> +			return ret;
> +		ret = ov02a10_write_reg(ov02a10, OV02A10_REG_EXPOSURE_H,
> +					((ctrl->val >> 8) & 0xFF));
> +		if (!ret) {
> +			ret = ov02a10_write_reg(ov02a10, OV02A10_REG_EXPOSURE_L,
> +						(ctrl->val & 0xFF));
> +			if (ret < 0)
> +				return ret;
> +		}
> +		ret = ov02a10_write_reg(ov02a10, REG_GLOBAL_EFFECTIVE,
> +					REG_ENABLE);
> +		if (ret < 0)
> +			return ret;
> +		break;
> +	case V4L2_CID_ANALOGUE_GAIN:
> +		ret = ov02a10_write_reg(ov02a10, REG_PAGE_SWITCH, REG_ENABLE);
> +		if (ret < 0)
> +			return ret;
> +		ret = ov02a10_write_reg(ov02a10, OV02A10_REG_GAIN,
> +					(ctrl->val & 0xFF));
> +		if (ret < 0)
> +			return ret;
> +		ret = ov02a10_write_reg(ov02a10, REG_GLOBAL_EFFECTIVE,
> +					REG_ENABLE);
> +		if (ret < 0)
> +			return ret;
> +		break;
> +	case V4L2_CID_VBLANK:
> +		ret = ov02a10_write_reg(ov02a10, REG_PAGE_SWITCH, REG_ENABLE);
> +		if (ret < 0)
> +			return ret;
> +		ret = ov02a10_write_reg(ov02a10, OV02A10_REG_VTS_H,
> +					(((ctrl->val +
> +					ov02a10->cur_mode->height -
> +					OV02A10_BASIC_LINE) >> 8)
> +					& 0xFF));
> +		if (!ret) {
> +			ret = ov02a10_write_reg(ov02a10, OV02A10_REG_VTS_L,
> +						((ctrl->val +
> +						ov02a10->cur_mode->height -
> +						OV02A10_BASIC_LINE) & 0xFF));
> +			if (ret < 0)
> +				return ret;
> +		}
> +		ret = ov02a10_write_reg(ov02a10, REG_GLOBAL_EFFECTIVE,
> +					REG_ENABLE);
> +		if (ret < 0)
> +			return ret;
> +		break;
> +	case V4L2_CID_TEST_PATTERN:
> +		ret = ov02a10_set_test_pattern(ov02a10, ctrl->val);
> +		if (ret < 0)
> +			return ret;
> +		break;
> +	default:
> +		dev_warn(&client->dev, "%s Unhandled id:0x%x, val:0x%x\n",
> +			 __func__, ctrl->id, ctrl->val);
> +		ret = -EINVAL;
> +		break;

We shouldn't need to handle this, as the control framework wouldn't call us
with a control that we didn't register explicitly.

> +	};
> +
> +	pm_runtime_put(&client->dev);
> +
> +	return ret;
> +}
> +
> +static const struct v4l2_subdev_video_ops ov02a10_video_ops = {
> +	.s_stream = ov02a10_s_stream,
> +};
> +
> +static const struct v4l2_subdev_pad_ops ov02a10_pad_ops = {
> +	.init_cfg = ov02a10_entity_init_cfg,
> +	.enum_mbus_code = ov02a10_enum_mbus_code,
> +	.enum_frame_size = ov02a10_enum_frame_sizes,
> +	.get_fmt = ov02a10_get_fmt,
> +	.set_fmt = ov02a10_set_fmt,
> +};
> +
> +static const struct v4l2_subdev_ops ov02a10_subdev_ops = {
> +	.video	= &ov02a10_video_ops,
> +	.pad	= &ov02a10_pad_ops,
> +};
> +
> +static const struct media_entity_operations ov02a10_subdev_entity_ops = {
> +	.link_validate = v4l2_subdev_link_validate,
> +};
> +
> +static const struct v4l2_subdev_internal_ops ov02a10_internal_ops = {
> +	.open = ov02a10_open,
> +};
> +
> +static const struct v4l2_ctrl_ops ov02a10_ctrl_ops = {
> +	.s_ctrl = ov02a10_set_ctrl,
> +};
> +
> +static int ov02a10_initialize_controls(struct ov02a10 *ov02a10)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> +	const struct ov02a10_mode *mode;
> +	struct v4l2_ctrl_handler *handler;
> +	struct v4l2_ctrl *ctrl;
> +	u64 exposure_max;
> +	u32 pixel_rate, h_blank;
> +	int ret;
> +
> +	handler = &ov02a10->ctrl_handler;
> +	mode = ov02a10->cur_mode;
> +	ret = v4l2_ctrl_handler_init(handler, 10);

I can see 6 controls registered below.

> +	if (ret)
> +		return ret;
> +	handler->lock = &ov02a10->mutex;
> +
> +	ctrl = v4l2_ctrl_new_int_menu(handler, NULL, V4L2_CID_LINK_FREQ,
> +				      0, 0, link_freq_menu_items);
> +	if (ctrl)
> +		ctrl->flags |= V4L2_CTRL_FLAG_READ_ONLY;
> +
> +	pixel_rate = (link_freq_menu_items[0] * 2 * OV02A10_LANES) /
> +		     OV02A10_BITS_PER_SAMPLE;
> +	v4l2_ctrl_new_std(handler, NULL, V4L2_CID_PIXEL_RATE,
> +			  0, pixel_rate, 1, pixel_rate);
> +
> +	h_blank = mode->hts_def - mode->width;
> +	ov02a10->hblank = v4l2_ctrl_new_std(handler, NULL, V4L2_CID_HBLANK,
> +					    h_blank, h_blank, 1, h_blank);
> +	if (ov02a10->hblank)
> +		ov02a10->hblank->flags |= V4L2_CTRL_FLAG_READ_ONLY;
> +
> +	ov02a10->vblank = v4l2_ctrl_new_std(handler, &ov02a10_ctrl_ops,
> +					    V4L2_CID_VBLANK, mode->vts_def -
> +					    mode->height,
> +					    OV02A10_VTS_MAX - mode->height, 1,
> +					    mode->vts_def - mode->height);
> +
> +	exposure_max = mode->vts_def - 4;
> +	ov02a10->exposure = v4l2_ctrl_new_std(handler, &ov02a10_ctrl_ops,
> +					      V4L2_CID_EXPOSURE,
> +					      OV02A10_EXPOSURE_MIN,
> +					      exposure_max,
> +					      OV02A10_EXPOSURE_STEP,
> +					      mode->exp_def);
> +
> +	ov02a10->anal_gain = v4l2_ctrl_new_std(handler, &ov02a10_ctrl_ops,
> +					       V4L2_CID_ANALOGUE_GAIN,
> +					       OV02A10_GAIN_MIN,
> +					       OV02A10_GAIN_MAX,
> +					       OV02A10_GAIN_STEP,
> +					       OV02A10_GAIN_DEFAULT);
> +
> +	ov02a10->test_pattern =
> +	   v4l2_ctrl_new_std_menu_items(handler,
> +					&ov02a10_ctrl_ops,
> +					V4L2_CID_TEST_PATTERN,
> +					ARRAY_SIZE(ov02a10_test_pattern_menu) -
> +					1, 0, 0, ov02a10_test_pattern_menu);
> +
> +	if (handler->error) {
> +		ret = handler->error;
> +		dev_err(&client->dev,
> +			"Failed to init controls(%d)\n", ret);
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
> +
> +static int ov02a10_check_sensor_id(struct ov02a10 *ov02a10)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> +	u16 id;
> +	u8 pid = 0;
> +	u8 ver = 0;
> +	int ret;
> +
> +	/* Check sensor revision */
> +	ret = ov02a10_read_reg(ov02a10, OV02A10_REG_CHIP_ID_H, &pid);
> +	if (ret)
> +		return ret;
> +
> +	ret = ov02a10_read_reg(ov02a10, OV02A10_REG_CHIP_ID_L, &ver);
> +	if (ret)
> +		return ret;
> +
> +	id = OV02A10_ID(pid, ver);
> +	if (id != CHIP_ID) {
> +		dev_err(&client->dev, "Unexpected sensor id(%04x)\n", id);
> +		return ret;
> +	}
> +
> +	dev_info(&client->dev, "Detected OV%04X sensor\n", id);
> +
> +	return 0;
> +}
> +
> +static int ov02a10_configure_regulators(struct ov02a10 *ov02a10)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> +	unsigned int i;
> +
> +	for (i = 0; i < OV02A10_NUM_SUPPLIES; i++)
> +		ov02a10->supplies[i].supply = ov02a10_supply_names[i];
> +
> +	return devm_regulator_bulk_get(&client->dev,
> +				       OV02A10_NUM_SUPPLIES,
> +				       ov02a10->supplies);
> +}

I think we can just have this directly inside probe.

> +
> +static int ov02a10_probe(struct i2c_client *client)
> +{
> +	struct device *dev = &client->dev;
> +	struct ov02a10 *ov02a10;
> +	u32 rotation;
> +	u32 xclk_freq;
> +	int ret;
> +
> +	ov02a10 = devm_kzalloc(dev, sizeof(*ov02a10), GFP_KERNEL);
> +	if (!ov02a10)
> +		return -ENOMEM;
> +
> +	v4l2_i2c_subdev_init(&ov02a10->subdev, client, &ov02a10_subdev_ops);
> +	ov02a10->fmt.code = MEDIA_BUS_FMT_SBGGR10_1X10;
> +
> +	/* Optional indication of physical rotation of sensor */
> +	ret = fwnode_property_read_u32(dev_fwnode(dev), "rotation",
> +				       &rotation);
> +	if (!ret) {
> +		switch (rotation) {
> +		case 180:
> +			ov02a10->upside_down = true;
> +			ov02a10->fmt.code = MEDIA_BUS_FMT_SRGGB10_1X10;
> +			break;
> +		case 0:
> +			break;
> +		default:
> +			dev_warn(dev, "%u degrees rotation is not supported, ignoring...\n",
> +				 rotation);
> +		}
> +	}
> +
> +	/* Get system clock (xvclk) */
> +	ov02a10->xvclk = devm_clk_get(dev, "xvclk");
> +	if (IS_ERR(ov02a10->xvclk)) {
> +		dev_err(dev, "Failed to get xvclk\n");
> +		return -EINVAL;
> +	}

Hmm, it's called eclk in my datasheet.

> +
> +	ret = of_property_read_u32(dev->of_node, "clock-frequency", &xclk_freq);
> +	if (ret) {
> +		dev_err(dev, "Failed to get xclk frequency\n");
> +		return ret;
> +	}
> +
> +	/* External clock must be 24MHz, allow 1% tolerance */
> +	if (xclk_freq < 23760000 || xclk_freq > 24240000) {

How do we support a range of frequencies? I don't see the driver calculate
any register values based on this frequency. Are you sure that the register
arrays don't assume one specific frequency?

> +		dev_err(dev, "external clock frequency %u is not supported\n",
> +			xclk_freq);
> +		return -EINVAL;
> +	}
> +	dev_dbg(dev, "external clock frequency %u\n", xclk_freq);
> +
> +	ret = clk_set_rate(ov02a10->xvclk, xclk_freq);
> +	if (ret) {
> +		dev_err(dev, "Failed to set xvclk frequency (24MHz)\n");
> +		return ret;
> +	}
> +
> +	ov02a10->powerdown_gpio = devm_gpiod_get(dev, "powerdown",
> +						 GPIOD_OUT_LOW);

Hmm, shouldn't this be HIGH? At least the datasheet has it so for the
powered down state.

> +	if (IS_ERR(ov02a10->powerdown_gpio)) {
> +		dev_err(dev, "Failed to get powerdown-gpios\n");
> +		return -EINVAL;
> +	}
> +
> +	ov02a10->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);

Also LOW here, similarly to the above.

> +	if (IS_ERR(ov02a10->reset_gpio)) {
> +		dev_err(dev, "Failed to get reset-gpios\n");
> +		return -EINVAL;
> +	}
> +
> +	ret = ov02a10_configure_regulators(ov02a10);
> +	if (ret) {
> +		dev_err(dev, "Failed to get power regulators\n");
> +		return ret;
> +	}
> +
> +	mutex_init(&ov02a10->mutex);
> +	ov02a10->cur_mode = &supported_modes[0];
> +	ret = ov02a10_initialize_controls(ov02a10);
> +	if (ret) {
> +		dev_err(dev, "Failed to initialize controls\n");
> +		goto err_destroy_mutex;
> +	}
> +
> +	ret = __ov02a10_power_on(ov02a10);
> +	if (ret)
> +		goto err_free_handler;
> +
> +	ret = ov02a10_check_sensor_id(ov02a10);
> +	if (ret)
> +		goto err_power_off;
> +
> +	ov02a10->subdev.internal_ops = &ov02a10_internal_ops;
> +	ov02a10->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> +	ov02a10->subdev.entity.ops = &ov02a10_subdev_entity_ops;
> +	ov02a10->subdev.entity.function = MEDIA_ENT_F_CAM_SENSOR;
> +	ov02a10->pad.flags = MEDIA_PAD_FL_SOURCE;
> +	ret = media_entity_pads_init(&ov02a10->subdev.entity, 1, &ov02a10->pad);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to init entity pads: %d", ret);
> +		goto err_power_off;
> +	}
> +
> +	ret = v4l2_async_register_subdev(&ov02a10->subdev);
> +	if (ret) {
> +		dev_err(dev, "failed to register V4L2 subdev: %d",
> +			ret);
> +		goto err_clean_entity;
> +	}
> +
> +	pm_runtime_set_active(dev);
> +	pm_runtime_enable(dev);
> +	pm_runtime_idle(dev);
> +
> +	dev_info(dev, "ov02a10 probe --\n");

Please remove this.

> +	return 0;
> +
> +err_clean_entity:
> +	media_entity_cleanup(&ov02a10->subdev.entity);
> +err_power_off:
> +	__ov02a10_power_off(ov02a10);
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
> +	if (!pm_runtime_status_suspended(&client->dev))
> +		__ov02a10_power_off(ov02a10);
> +	pm_runtime_set_suspended(&client->dev);
> +	mutex_destroy(&ov02a10->mutex);
> +
> +	return 0;
> +}
> +
> +#if IS_ENABLED(CONFIG_OF)
> +static const struct of_device_id ov02a10_of_match[] = {
> +	{ .compatible = "ovti,ov02a10" },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, ov02a10_of_match);
> +#endif
> +
> +static struct i2c_driver ov02a10_i2c_driver = {
> +	.driver = {
> +		.name = "ov02a10",
> +		.pm = &ov02a10_pm_ops,
> +		.of_match_table = ov02a10_of_match,

Please use of_match_ptr() wrapper.

Best regards,
Tomasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
