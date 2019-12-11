Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B5C11ADA9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:39:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1tewsNCROWlE5D9XabwEt7lJbIYhFIDteTazAt382I=; b=QWmACTgVN20VvP
	KqZrCfk0eVBpu0p3Favqhg0FbNh52B2ghtdQvyZQ1Cahg9NQC9YsXPO8aTlwZL2BojmwSOk9syQqb
	2qiYyVKzr60ZvOm4Y1kVv7hod16X4CAuIOmnjqCK2ZIPixFw1rM44r+GUWyEXU+RTrPM0PWmjU8o/
	kitYdhvRa3xm9seIkWdEbLvE+kKaodLl3JC060QlS3Yy2bp3zqARHvsSFoVzd0+OmaOLGMH/MT5lS
	nOG+W6LJ8IYWtUl6BJMbaehQSU9c3UKQhu9mbn96WGvZoEdBEyLuuQqvHf6V/Hqyh2mcll8sOODS/
	7mAEjzlqMl7+1gHEJRzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if38h-00063u-Lq; Wed, 11 Dec 2019 14:38:55 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if38Z-0005hG-1B; Wed, 11 Dec 2019 14:38:48 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 06:36:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="220476305"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga001.fm.intel.com with ESMTP; 11 Dec 2019 06:36:41 -0800
Received: from andy by smile with local (Exim 4.93-RC7)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1if36W-0000CJ-VS; Wed, 11 Dec 2019 16:36:40 +0200
Date: Wed, 11 Dec 2019 16:36:40 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V6, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
Message-ID: <20191211143640.GU32742@smile.fi.intel.com>
References: <20191211112849.16705-1-dongchun.zhu@mediatek.com>
 <20191211112849.16705-3-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211112849.16705-3-dongchun.zhu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_063847_089456_88486AFE 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 07:28:49PM +0800, Dongchun Zhu wrote:
> Add a V4L2 sub-device driver for OV02A10 image sensor. The OV02A10 is a
> 1/5" CMOS sensor from Omnivision, asupporting output format: 10-bit Raw.
> 
> This chip has a single MIPI lane interface and use the I2C bus for
> control and the CSI-2 bus for data.

...

> +#define OV02A10_MASK_8_BITS                            0xff

Besides GENMASK() why do you need a definition here? What's the point?

...

> +static int ov02a10_entity_init_cfg(struct v4l2_subdev *sd,
> +				   struct v4l2_subdev_pad_config *cfg)
> +{
> +	struct v4l2_subdev_format fmt = {
> +		.which = cfg ? V4L2_SUBDEV_FORMAT_TRY
> +			     : V4L2_SUBDEV_FORMAT_ACTIVE,
> +		.format = {
> +			.width = 1600,

> +			.height = 1200

Leave comma here.

> +		}
> +	};
> +
> +	ov02a10_set_fmt(sd, cfg, &fmt);
> +
> +	return 0;
> +}

...

> +	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_GAIN,
> +					(val & OV02A10_MASK_8_BITS));

Too many parentheses.

> +	if (ret < 0)
> +		return ret;

...

> +static int ov02a10_set_vblank(struct ov02a10 *ov02a10, int val)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);

if you do

	int vts = val + ov02a10->cur_mode->height - OV02A10_BASIC_LINE;

you may increase readability below...

> +	int ret;
> +
> +	ret = i2c_smbus_write_byte_data(client, REG_PAGE_SWITCH, REG_ENABLE);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_VTS_H,
> +					(((val + ov02a10->cur_mode->height -
> +					OV02A10_BASIC_LINE) >>
> +					OV02A10_VTS_SHIFT) &
> +					OV02A10_MASK_8_BITS));

	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_VTS_H,
					(vts >> OV02A10_VTS_SHIFT) &
					OV02A10_MASK_8_BITS));

And actually why do you need this mask here? Isn't enough to call

	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_VTS_H,
					vts >> OV02A10_VTS_SHIFT);

here...


> +	if (ret < 0)
> +		return ret;
> +
> +	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_VTS_L,
> +					((val + ov02a10->cur_mode->height -
> +					OV02A10_BASIC_LINE) &
> +					OV02A10_MASK_8_BITS));

...and

	ret = i2c_smbus_write_byte_data(client, OV02A10_REG_VTS_L, vts);

here?

> +	if (ret < 0)
> +		return ret;
> +
> +	return i2c_smbus_write_byte_data(client, REG_GLOBAL_EFFECTIVE,
> +					 REG_ENABLE);
> +}

...

> +static int ov02a10_check_hwcfg(struct device *dev, struct ov02a10 *ov02a10)
> +{
> +	struct fwnode_handle *ep;
> +	struct fwnode_handle *fwnode = dev_fwnode(dev);
> +	struct v4l2_fwnode_endpoint bus_cfg = {

> +		.bus_type = V4L2_MBUS_CSI2_DPHY

Leave comma here.

> +	};
> +	unsigned int i, j;
> +	int ret;

> +	if (!fwnode)
> +		return -ENXIO;

A bit strange error code here.

> +
> +	ep = fwnode_graph_get_next_endpoint(fwnode, NULL);
> +	if (!ep)
> +		return -ENXIO;
> +
> +	ret = v4l2_fwnode_endpoint_alloc_parse(ep, &bus_cfg);
> +	fwnode_handle_put(ep);
> +	if (ret)
> +		return ret;

> +	if (!bus_cfg.nr_of_link_frequencies) {
> +		dev_err(dev, "no link frequencies defined");
> +		ret = -EINVAL;
> +		goto check_hwcfg_error;
> +	}

I still think it's redundant check, though it's up to maintainers.

> +
> +	for (i = 0; i < ARRAY_SIZE(link_freq_menu_items); i++) {
> +		for (j = 0; j < bus_cfg.nr_of_link_frequencies; j++) {
> +			if (link_freq_menu_items[i] ==
> +				bus_cfg.link_frequencies[j])
> +				break;
> +		}
> +
> +		if (j == bus_cfg.nr_of_link_frequencies) {
> +			dev_err(dev, "no link frequency %lld supported",
> +				link_freq_menu_items[i]);
> +			ret = -EINVAL;
> +			goto check_hwcfg_error;
> +		}
> +	}
> +
> +check_hwcfg_error:
> +	v4l2_fwnode_endpoint_free(&bus_cfg);
> +
> +	return ret;
> +}

...

> +static int ov02a10_probe(struct i2c_client *client)
> +{

> +	/* Optional indication of physical rotation of sensor */
> +	ret = fwnode_property_read_u32(dev_fwnode(dev), "rotation", &rotation);

> +	if (!ret) {

Why not positive conditional?

> +		ov02a10->upside_down = rotation == 180;
> +		if (rotation == 180) {
> +			ov02a10->upside_down = true;
> +			ov02a10->fmt.code = MEDIA_BUS_FMT_SRGGB10_1X10;
> +		}
> +	} else {
> +		dev_warn(dev, "failed to get rotation\n");
> +	}
> +
> +	/* Optional indication of mipi TX speed */
> +	ret = fwnode_property_read_u32(dev_fwnode(dev), "ovti,mipi-tx-speed",
> +				       &clock_lane_tx_speed);
> +

> +	if (!ret)

Ditto.

> +		ov02a10->mipi_clock_tx_speed = clock_lane_tx_speed;
> +	else
> +		dev_warn(dev, "failed to get mipi tx speed, using default...\n");
> +

> +	return ret;
> +}

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
