Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE8DC97F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 07:34:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPwplo/D4r7lntTpsCVomVIzds2lxC5Rmg6JheYysj0=; b=tpa1BHz06ZAKkz
	uekFRz7q8EEIi1OOjuo+U1Y2P5fzURPVM/gLnzgewx4GXODtsS1G19NrVyObcaGdJsvG5H/zGr23+
	cGfXhNlI3i3kKyMFW9cL6yV86BACep5s2p4WNqWkaFzKk4L4NlXOK0A11iRl8ffLnqdvemdYDaqZO
	+Ay/DuqoUOkl/tw1anxzWpAxhBNe7qt7oecrXBOaYTNuTeIwoqEAXeCbksmMuFoIArQpfGtSfneBZ
	I4oAj9UCyKcBffKxh0yNbt3ds2GlOqSZ3qDVO4DHPzaO/N+mFGDtSp9oBXRRpy13Hu4ZtlYfhHNyf
	4Be41x3H5yfjcMT1tqaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFtkT-00055D-KF; Thu, 03 Oct 2019 05:33:57 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFtkL-00054e-3F
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 05:33:51 +0000
Received: by mail-pf1-x441.google.com with SMTP id y72so929506pfb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 22:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mgJjfG29bu62DBy6egYwuZ8IKV00MWcm085XTBxpWxY=;
 b=bmMoh6/PE37dKynK/xJy3yEsHCuHahofA6lSTUYH02NIlJBq+HSGvZMCyqWva5R8hq
 xuf4UYQkR1EZ22FvoBasL/LmzkZ1FyBHOqF/sfcAV3pNfrZEfGOORJg0RSP1k+LhppQD
 4lRotTnsf9NAgptCaNtI3UpSyLZh+hmkv6SsA/xHJuW5AjyLW7qhn72QrEyIkYTXd3Jh
 2v18kgqBK8HBHJtv2zGTVzB0vxHOSaXhjlrfpRvVHAktouM74rY49a9sD/QOxzhrnwOA
 2GLHzC5pdgl63tcAAl5XSaz6a/HfreR2hSYiTuck4HYEWPWPtizOwUkk94eZemQK1YYa
 2ZJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mgJjfG29bu62DBy6egYwuZ8IKV00MWcm085XTBxpWxY=;
 b=R/a5bDlIeFQOs61Om35SFRv00boVkmV6fF2Z0AGxUbCX6mubd3aoS0V8/gwuA7oDj/
 CCP0RwnZ61HTyv0hvhcohkEI/Ygqo/oaxt1lAyx/s+bJ5Ch7vTuSer0PDtMnHLDh8Muw
 Si+DHonr5HuRo864uH637J96l10qe90CaIzxdHQ+MZLr1Kh+xlaOo1nz9KoXc7iCMUnh
 BRk/kPcrO0mcjJZlqxwinITYcd9Mav2NTICNZ7bxO29OZ1slrf1ZixxO3YUB2E18cFXJ
 548sKrAeCdPjygTs5oE61clWXuCNNPg5tiKuVsPOVsERYDdrk6XnsWwqvMPrUJNPVKul
 k4SA==
X-Gm-Message-State: APjAAAXC3JbTdc+E8IkBUCEg33EEl+pa2MlYJnbClfqyyZBwVq8Nno7i
 baigw/6+YXkC54Yrf6JvULxE
X-Google-Smtp-Source: APXvYqwoLr7A0gAhdnWnzgyqBtosFaXIBRkIy1quThBVImv2yuQeO9mgu3fsWeSntPcww5/ayUYZ8Q==
X-Received: by 2002:a62:4d45:: with SMTP id a66mr9131169pfb.24.1570080827680; 
 Wed, 02 Oct 2019 22:33:47 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:801:ac5d:fca3:6f38:70fb:67fc])
 by smtp.gmail.com with ESMTPSA id u5sm1558851pfl.25.2019.10.02.22.33.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Oct 2019 22:33:46 -0700 (PDT)
Date: Thu, 3 Oct 2019 11:03:38 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v3 2/3] media: i2c: Add IMX290 CMOS image sensor driver
Message-ID: <20191003053338.GA7868@Mani-XPS-13-9360>
References: <20190830091943.22646-1-manivannan.sadhasivam@linaro.org>
 <20190830091943.22646-3-manivannan.sadhasivam@linaro.org>
 <20190923092209.GL5525@valkosipuli.retiisi.org.uk>
 <20191001184200.GA7739@Mani-XPS-13-9360>
 <20191002103715.GR896@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002103715.GR896@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_223349_147504_173D434A 
X-CRM114-Status: GOOD (  37.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

On Wed, Oct 02, 2019 at 01:37:15PM +0300, Sakari Ailus wrote:
> Hi Manivannan,
> 
> On Wed, Oct 02, 2019 at 12:12:00AM +0530, Manivannan Sadhasivam wrote:
> > Hi Sakari,
> > 
> > On Mon, Sep 23, 2019 at 12:22:09PM +0300, Sakari Ailus wrote:
> > > Hi Manivannan,
> > > 
> > > On Fri, Aug 30, 2019 at 02:49:42PM +0530, Manivannan Sadhasivam wrote:
> > > > Add driver for Sony IMX290 CMOS image sensor driver. The driver only
> > > > supports I2C interface for programming and MIPI CSI-2 for sensor output.
> > > > 
> > > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > > ---
> > > >  drivers/media/i2c/Kconfig  |  11 +
> > > >  drivers/media/i2c/Makefile |   1 +
> > > >  drivers/media/i2c/imx290.c | 881 +++++++++++++++++++++++++++++++++++++
> > > >  3 files changed, 893 insertions(+)
> > > >  create mode 100644 drivers/media/i2c/imx290.c
> > > > 
> > > > diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
> > > > index 79ce9ec6fc1b..4ebb80b18748 100644
> > > > --- a/drivers/media/i2c/Kconfig
> > > > +++ b/drivers/media/i2c/Kconfig
> > > > @@ -595,6 +595,17 @@ config VIDEO_IMX274
> > > >  	  This is a V4L2 sensor driver for the Sony IMX274
> > > >  	  CMOS image sensor.
> > > >  
> > > > +config VIDEO_IMX290
> > > > +	tristate "Sony IMX290 sensor support"
> > > > +	depends on I2C && VIDEO_V4L2 && VIDEO_V4L2_SUBDEV_API
> > > > +	depends on MEDIA_CAMERA_SUPPORT
> > > 
> > > Please drop this line. It will be redundant very soon.
> > > 
> > 
> > okay.
> > 
> > > > +	help
> > > > +	  This is a Video4Linux2 sensor driver for the Sony
> > > > +	  IMX290 camera sensor.
> > > > +
> > > > +	  To compile this driver as a module, choose M here: the
> > > > +	  module will be called imx290.
> > > > +
> > > >  config VIDEO_IMX319
> > > >  	tristate "Sony IMX319 sensor support"
> > > >  	depends on I2C && VIDEO_V4L2 && VIDEO_V4L2_SUBDEV_API
> > > > diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
> > > > index fd4ea86dedd5..04411ddb4922 100644
> > > > --- a/drivers/media/i2c/Makefile
> > > > +++ b/drivers/media/i2c/Makefile
> > > > @@ -111,6 +111,7 @@ obj-$(CONFIG_VIDEO_TC358743)	+= tc358743.o
> > > >  obj-$(CONFIG_VIDEO_IMX214)	+= imx214.o
> > > >  obj-$(CONFIG_VIDEO_IMX258)	+= imx258.o
> > > >  obj-$(CONFIG_VIDEO_IMX274)	+= imx274.o
> > > > +obj-$(CONFIG_VIDEO_IMX290)	+= imx290.o
> > > >  obj-$(CONFIG_VIDEO_IMX319)	+= imx319.o
> > > >  obj-$(CONFIG_VIDEO_IMX355)	+= imx355.o
> > > >  obj-$(CONFIG_VIDEO_ST_MIPID02) += st-mipid02.o
> > > > diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
> > > > new file mode 100644
> > > > index 000000000000..db5bb0d69eb8
> > > > --- /dev/null
> > > > +++ b/drivers/media/i2c/imx290.c
> > > > @@ -0,0 +1,881 @@
> > > > +// SPDX-License-Identifier: GPL-2.0
> > > > +/*
> > > > + * Sony IMX290 CMOS Image Sensor Driver
> > > > + *
> > > > + * Copyright (C) 2019 FRAMOS GmbH.
> > > > + *
> > > > + * Copyright (C) 2019 Linaro Ltd.
> > > > + * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > > + */
> > > > +
> > > > +#include <linux/clk.h>
> > > > +#include <linux/delay.h>
> > > > +#include <linux/gpio/consumer.h>
> > > > +#include <linux/i2c.h>
> > > > +#include <linux/module.h>
> > > > +#include <linux/pm_runtime.h>
> > > > +#include <linux/regmap.h>
> > > > +#include <linux/regulator/consumer.h>
> > > > +#include <media/media-entity.h>
> > > > +#include <media/v4l2-ctrls.h>
> > > > +#include <media/v4l2-device.h>
> > > > +#include <media/v4l2-fwnode.h>
> > > > +#include <media/v4l2-subdev.h>
> > > > +
> > > > +#define IMX290_STANDBY 0x3000
> > > > +#define IMX290_REGHOLD 0x3001
> > > > +#define IMX290_XMSTA 0x3002
> > > > +#define IMX290_GAIN 0x3014
> > > > +
> > > > +#define IMX290_DEFAULT_LINK_FREQ 445500000
> > > > +
> > > > +static const char * const imx290_supply_name[] = {
> > > > +	"vdda",
> > > > +	"vddd",
> > > > +	"vdddo",
> > > > +};
> > > > +
> > > > +#define IMX290_NUM_SUPPLIES ARRAY_SIZE(imx290_supply_name)
> > > > +
> > > > +struct imx290_regval {
> > > > +	u16 reg;
> > > > +	u8 val;
> > > > +};
> > > > +
> > > > +struct imx290_mode {
> > > > +	u32 width;
> > > > +	u32 height;
> > > > +	u32 pixel_rate;
> > > > +	u32 link_freq_index;
> > > > +
> > > > +	const struct imx290_regval *data;
> > > > +	u32 data_size;
> > > > +};
> > > > +
> > > > +struct imx290 {
> > > > +	struct device *dev;
> > > > +	struct clk *xclk;
> > > > +	struct regmap *regmap;
> > > > +
> > > > +	struct v4l2_subdev sd;
> > > > +	struct v4l2_fwnode_endpoint ep;
> > > > +	struct media_pad pad;
> > > > +	struct v4l2_mbus_framefmt current_format;
> > > > +	const struct imx290_mode *current_mode;
> > > > +
> > > > +	struct regulator_bulk_data supplies[IMX290_NUM_SUPPLIES];
> > > > +	struct gpio_desc *rst_gpio;
> > > > +
> > > > +	struct v4l2_ctrl_handler ctrls;
> > > > +	struct v4l2_ctrl *link_freq;
> > > > +	struct v4l2_ctrl *pixel_rate;
> > > > +
> > > > +	struct mutex lock;
> > > > +};
> > > > +
> > > > +struct imx290_pixfmt {
> > > > +	u32 code;
> > > > +};
> > > > +
> > > > +static const struct imx290_pixfmt imx290_formats[] = {
> > > > +	{ MEDIA_BUS_FMT_SRGGB10_1X10 },
> > > 
> > > You have a single format here. You don't need the entire array, do you?
> > > 
> > > Unless you have plans to add more, that is.
> > > 
> > 
> > Yes, the sensor supports RAW12 format as well and it will be added once
> > this driver is merged.
> 
> Ok. 
> 
> > 
> > > > +};
> > > > +
> > > > +static struct regmap_config imx290_regmap_config = {
> 
> Should this be const, too?
> 

yep

> > > > +	.reg_bits = 16,
> > > > +	.val_bits = 8,
> > > > +	.cache_type = REGCACHE_RBTREE,
> > > > +};
> 
> ...
> 
> > > > +static int imx290_write_buffered_reg(struct imx290 *imx290, u16 address_low,
> > > > +				     u8 nr_regs, u32 value)
> > > > +{
> > > > +	unsigned int i;
> > > > +	int ret;
> > > > +
> > > > +	ret = imx290_write_reg(imx290, IMX290_REGHOLD, 0x01);
> > > > +	if (ret) {
> > > > +		dev_err(imx290->dev, "Error setting hold register\n");
> > > > +		return ret;
> > > > +	}
> > > > +
> > > > +	for (i = 0; i < nr_regs; i++) {
> > > > +		ret = imx290_write_reg(imx290, address_low + i,
> > > > +				       (u8)(value >> (i * 8)));
> > > > +		if (ret) {
> > > > +			dev_err(imx290->dev, "Error writing buffered registers\n");
> > > > +			return ret;
> > > > +		}
> > > > +	}
> > > > +
> > > > +	ret = imx290_write_reg(imx290, IMX290_REGHOLD, 0x00);
> > > > +	if (ret) {
> > > > +		dev_err(imx290->dev, "Error setting hold register\n");
> > > > +		return ret;
> > > > +	}
> > > > +
> > > > +	return ret;
> > > > +}
> > > > +
> > > > +static int imx290_set_gain(struct imx290 *imx290, u32 value)
> > > > +{
> > > > +	int ret;
> > > > +
> > > > +	u32 adjusted_value = (value * 10) / 3;
> > > 
> > > What's the purpose of this? Why not to use the value directly?
> > > 
> > 
> > The gain register accepts the value 10/3 of the actual gain required. Hence,
> > we need to manually do the calculation before updating the value. I can
> > add a comment here to clarify.
> 
> It's better to use the register value directly. Otherwise the granularity
> won't be available to the user space.
> 

The sensor datasheet clearly defines that the 10/3'rd of the expected gain
should be set to this register. So, IMO we should be setting the value as
mentioned in the datasheet. I agree that we are missing the userspace
granularity here but sticking to the device limitation shouldn't be a problem.
As I said, I'll add a comment here to clarify.

> > 
> > > > +
> > > > +	ret = imx290_write_buffered_reg(imx290, IMX290_GAIN, 1, adjusted_value);
> > > > +	if (ret)
> > > > +		dev_err(imx290->dev, "Unable to write gain\n");
> > > > +
> > > > +	return ret;
> > > > +}
> > > > +
> > > > +static int imx290_set_power_on(struct imx290 *imx290)
> > > > +{
> > > > +	int ret;
> > > > +
> > > > +	ret = clk_prepare_enable(imx290->xclk);
> > > 
> > > Please move the code from this function to the runtime PM runtime suspend
> > > callback. The same for imx290_set_power_off().
> > > 
> > 
> > May I know why? I think since this is being used only once, you're suggesting
> > to move to the callback function itself but please see the comment below. I
> > will reuse this function to power on the device during probe.
> 
> Yes, you can call the same function from probe, even if it's used as a
> runtime PM callback.
> 
> There's no need to have a function that acts as a wrapper for calling it
> with a different type of an argument.
> 

You mean directly calling imx290_runtime_resume() from probe is fine?

Thanks,
Mani

> -- 
> Kind regards,
> 
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
