Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 720A511A5E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 09:33:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7ipy4RHMeBTnuSfcBSPEkPCBhuwNs5NRohOTsChLrc=; b=r4A3X4WZJIIMAF
	cKG0EhOHlBRvO39egydkazT9l88G1haYCBj/cr5uJLLiCPOX+6cTYIOd6afBLNem9MuNqbpprD3hQ
	ptoTzJgZTJdNNLtIg9jNSRbppm/85k+rpz/0lul+o3p2509G02aYRkAkFc/PSUktPiDrEwM4rhdzD
	S9Aq1VsphE31J28i8bTQ4LGwx8oTRHvwN7uDlwVDH4aito7PYwAYG2qMYW0wNiybBrti9fDj6D9q7
	ZBaZbxM63vDFkZsBYlt04OBWv68w2GnpAJUSUutSobl+BvpA1Bj+cj15mirzk+bou1OnjUrctJqRK
	G4O8NbUWQfCSGqEfR9oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iexQa-0000O1-1T; Wed, 11 Dec 2019 08:33:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexQO-0000Mv-WA; Wed, 11 Dec 2019 08:32:50 +0000
X-UUID: 089c20e5fc5d42c080e9d58bcc877486-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=YeTQWafGgn0rALH8sk+SzzKiaMxlA8NFVXXzs8C0bs8=; 
 b=HI5i9SIj9Rzh11JlrwAsQcRhLhOCbEjNEscrFfYyX2Mv530aYtuz2f2XeSpfEWKt6AWFo7FuNqkPI+2P4IJP1VDcivbVktG8KyFmWrvRf0d/aULqjv0egjvE9vDjPaAAjGZc+M6oh94UT+FeuSZol7bpmicjRLcgBVc+oelOTng=;
X-UUID: 089c20e5fc5d42c080e9d58bcc877486-20191211
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 754507078; Wed, 11 Dec 2019 00:32:44 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 00:32:58 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 11 Dec 2019 16:32:28 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 11 Dec 2019 16:32:48 +0800
Message-ID: <1576053159.15495.6.camel@mhfsdcap03>
Subject: Re: [V5, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Wed, 11 Dec 2019 16:32:39 +0800
In-Reply-To: <20191104122609.GI32742@smile.fi.intel.com>
References: <20191104105713.24311-1-dongchun.zhu@mediatek.com>
 <20191104105713.24311-3-dongchun.zhu@mediatek.com>
 <20191104122609.GI32742@smile.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3D6876AAE8218129BD3B244B65C93E1919CC423CA42655E27ED3A8CFAC4869B52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_003249_047889_71B546BE 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Andy,

On Mon, 2019-11-04 at 14:26 +0200, Andy Shevchenko wrote:
> On Mon, Nov 04, 2019 at 06:57:13PM +0800, Dongchun Zhu wrote:
> > Add a V4L2 sub-device driver for OV02A10 image sensor.
> > The OV02A10 is a 1/5" CMOS sensor from Omnivision, supporting
> > output format: 10-bit RAW.
> > 
> > This chip has a single MIPI lane interface and use the I2C bus
> > for control and the CSI-2 bus for data.
> 
> > +/* Bit[7] clock HS mode enable
> > + * 0: Clock continue
> > + * 1: Clock HS
> > + * Bit[6:2] HS VOD adjust
> > + * Bit[1:0] P VHI adjust
> > + */
> > +#define REG_HS_MODE_BLC					0x9d
> > +
> > +#define CLOCK_HS_MODE_ENABLE				BIT(7)
> 
> > +#define CLOCK_HS_VOD_ADJUST	(BIT(6) | BIT(5) | BIT(4) | BIT(3) | BIT(2))
> 
> GENMASK()

Fixed in next release.

> 
> > +#define OV02A10_MASK_8_BITS				0xff
> 
> GENMASK()

Fixed in next release.

> 
> > +#define OV02A10_LINK_FREQ_390MHZ			390000000ULL
> 
> Can't we publish HZ_PER_MHZ for wider use (currently in phy-stm32-usbphyc.c and
> hid-sensor-attributes.c) and use here something like (390 * HZ_PER_MHZ)?
> 
> > +#define OV02A10_ECLK_FREQ				24000000
> 
> Ditto.

Fixed in next release.

> 
> > +static const s64 link_freq_menu_items[] = {
> 
> > +	OV02A10_LINK_FREQ_390MHZ
> 
> Better to keep comma here.

Fixed in next release.

> 
> > +};
> 
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > +	int ret;
> > +
> > +	ret = i2c_smbus_read_byte_data(client, reg);
> > +	if (ret >= 0) {
> > +		*val = (unsigned char)ret;
> > +		ret = 0;
> > +	}
> 
> Why not to use classical pattern
> 
> 	if (ret < 0)
> 		return ret;
> 	...
> 	return 0;
> 
> ?
> 

Many thanks for reminder. Fixed in next release.

> > +
> > +	return ret;
> > +}
> 
> > +static int ov02a10_mod_reg(struct ov02a10 *ov02a10, u8 reg, u8 mask, u8 val)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > +	u8 readval;
> > +	int ret;
> > +
> > +	ret = ov02a10_read_smbus(ov02a10, reg, &readval);
> > +	if (ret)
> > +		return ret;
> > +
> 
> > +	readval &= ~mask;
> > +	val &= mask;
> > +	val |= readval;
> 
> Why not to use classical pattern
> 	val = (readval & ~mask) | (val & mask);
> ?
> 

Thanks for reminder. Fixed in next release.

> > +
> > +	return i2c_smbus_write_byte_data(client, reg, val);
> > +}
> 
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > +	u16 id;
> 
> > +	u8 pid = 0;
> > +	u8 ver = 0;
> 
> Useless assignments.
> 

Fixed in next release.

> > +	int ret;
> > +
> > +	/* Check sensor revision */
> > +	ret = ov02a10_read_smbus(ov02a10, OV02A10_REG_CHIP_ID_H, &pid);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = ov02a10_read_smbus(ov02a10, OV02A10_REG_CHIP_ID_L, &ver);
> > +	if (ret)
> > +		return ret;
> > +
> > +	id = OV02A10_ID(pid, ver);
> > +	if (id != CHIP_ID) {
> > +		dev_err(&client->dev, "Unexpected sensor id(%04x)\n", id);
> > +		return -EINVAL;
> > +	}
> > +
> > +	dev_dbg(&client->dev, "Detected OV%04X sensor\n", id);
> > +
> > +	return 0;
> > +}
> 
> > +	int ret = 0;
> 
> Useless assignment...
> 

Fixed in next release.

> > +
> > +	dev_dbg(&client->dev, "ov02a10 s_stream (%d)\n", on);
> > +	mutex_lock(&ov02a10->mutex);
> > +
> > +	if (ov02a10->streaming == on)
> > +		goto unlock_and_return;
> > +
> > +	if (on) {
> > +		ret = pm_runtime_get_sync(&client->dev);
> > +		if (ret < 0) {
> > +			pm_runtime_put_noidle(&client->dev);
> > +			goto unlock_and_return;
> > +		}
> > +
> > +		ret = __ov02a10_start_stream(ov02a10);
> > +		if (ret) {
> > +			__ov02a10_stop_stream(ov02a10);
> > +			ov02a10->streaming = !on;
> > +			goto err_rpm_put;
> > +		}
> > +	} else {
> > +		__ov02a10_stop_stream(ov02a10);
> > +		pm_runtime_put(&client->dev);
> > +	}
> > +
> > +	ov02a10->streaming = on;
> > +	mutex_unlock(&ov02a10->mutex);
> > +
> 
> > +	return ret;
> 
> ...simple use
> 	return 0;
> here.
> 

Fixed in next release.

> > +
> > +err_rpm_put:
> > +	pm_runtime_put(&client->dev);
> > +unlock_and_return:
> > +	mutex_unlock(&ov02a10->mutex);
> > +
> > +	return ret;
> > +}
> 
> > +static int ov02a10_set_ctrl(struct v4l2_ctrl *ctrl)
> > +{
> > +	struct ov02a10 *ov02a10 = container_of(ctrl->handler,
> > +					       struct ov02a10, ctrl_handler);
> > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > +	s64 max_expo;
> 
> > +	int ret = 0;
> 
> Wouldn't be better to have this under `default` case below?
> 

Fixed in next release.

> > +
> > +	/* Propagate change of current control to all related controls */
> > +	if (ctrl->id == V4L2_CID_VBLANK) {
> > +		/* Update max exposure while meeting expected vblanking */
> > +		max_expo = ov02a10->cur_mode->height + ctrl->val -
> > +			   OV02A10_EXPOSURE_MAX_MARGIN;
> > +		__v4l2_ctrl_modify_range(ov02a10->exposure,
> > +					 ov02a10->exposure->minimum, max_expo,
> > +					 ov02a10->exposure->step,
> > +					 ov02a10->exposure->default_value);
> > +	}
> > +
> > +	/* V4L2 controls values will be applied only when power is already up */
> > +	if (!pm_runtime_get_if_in_use(&client->dev))
> > +		return 0;
> > +
> > +	switch (ctrl->id) {
> > +	case V4L2_CID_EXPOSURE:
> > +		ret = ov02a10_set_exposure(ov02a10, ctrl->val);
> > +		break;
> > +	case V4L2_CID_ANALOGUE_GAIN:
> > +		ret = ov02a10_set_gain(ov02a10, ctrl->val);
> > +		break;
> > +	case V4L2_CID_VBLANK:
> > +		ret = ov02a10_set_vblank(ov02a10, ctrl->val);
> > +		break;
> > +	case V4L2_CID_TEST_PATTERN:
> > +		ret = ov02a10_set_test_pattern(ov02a10, ctrl->val);
> > +		break;
> > +	};
> > +
> > +	pm_runtime_put(&client->dev);
> > +
> > +	return ret;
> > +}
> 
> > +{
> > +	struct fwnode_handle *ep;
> > +	struct fwnode_handle *fwnode = dev_fwnode(dev);
> > +	struct v4l2_fwnode_endpoint bus_cfg = {
> > +		.bus_type = V4L2_MBUS_CSI2_DPHY
> > +	};
> > +	unsigned int i, j;
> > +	int ret;
> > +
> 
> I would rather expect fwnode assignment here to understand immediately from
> where it has been derived. Though it's up to maintainers.
> 

This would be remained, as many other drivers keep the same style.

> > +	if (!fwnode)
> > +		return -ENXIO;
> > +
> > +	ep = fwnode_graph_get_next_endpoint(fwnode, NULL);
> > +	if (!ep)
> > +		return -ENXIO;
> > +
> > +	ret = v4l2_fwnode_endpoint_alloc_parse(ep, &bus_cfg);
> > +	fwnode_handle_put(ep);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* Optional indication of mipi clock lane mode */
> > +	if (bus_cfg.bus.mipi_csi2.flags & V4L2_MBUS_CSI2_NONCONTINUOUS_CLOCK)
> > +		ov02a10->mipi_clock_hs_mode_enable = true;
> > +
> 
> > +	if (!bus_cfg.nr_of_link_frequencies) {
> > +		dev_err(dev, "no link frequencies defined");
> > +		ret = -EINVAL;
> > +		goto check_hwcfg_error;
> > +	}
> 
> This is redundant check. You have done the similar below when comparing j to
> nr_of_link_frequencies.
> 

bus_cfg.nr_of_link_frequencies should be checked first before using it.
For instance, OV8856 uses the same check style.

> > +
> > +	for (i = 0; i < ARRAY_SIZE(link_freq_menu_items); i++) {
> > +		for (j = 0; j < bus_cfg.nr_of_link_frequencies; j++) {
> > +			if (link_freq_menu_items[i] ==
> > +				bus_cfg.link_frequencies[j])
> > +				break;
> > +		}
> > +
> > +		if (j == bus_cfg.nr_of_link_frequencies) {
> > +			dev_err(dev, "no link frequency %lld supported",
> > +				link_freq_menu_items[i]);
> > +			ret = -EINVAL;
> > +			goto check_hwcfg_error;
> > +		}
> > +	}
> > +
> > +check_hwcfg_error:
> > +	v4l2_fwnode_endpoint_free(&bus_cfg);
> > +
> > +	return ret;
> > +}
> 
> > +static int ov02a10_probe(struct i2c_client *client)
> > +{
> 
> 
> > +	/* Optional indication of physical rotation of sensor */
> > +	ret = fwnode_property_read_u32(dev_fwnode(dev), "rotation",
> > +				       &rotation);
> 
> It's perfectly one line.
> 

Fixed in next release.

> > +	if (!ret) {
> 
> I would rather do two things here:
> 1/ use the similar pattern as below with messaging
> 	if (!ret) {
> 		...
> 	} else {
> 		dev_dbg(...);
> 	}
> 2/ Actually use positive conditionals
> 	if (ret) {
> 		...
> 	} else {
> 		...
> 	}
> 

Fixed in next release.

> > +		switch (rotation) {
> > +		case 180:
> > +			ov02a10->upside_down = true;
> > +			ov02a10->fmt.code = MEDIA_BUS_FMT_SRGGB10_1X10;
> > +			break;
> > +		case 0:
> > +			break;
> > +		default:
> > +			dev_warn(dev, "%u degrees rotation is not supported, ignoring...\n",
> > +				 rotation);
> > +		}
> > +	}
> > +
> > +	/* Optional indication of HS VOD adjust */
> > +	ret = fwnode_property_read_u32(dev_fwnode(dev),
> > +				       "ovti,hs-vod-adjust",
> > +				       &hs_vod_adjust_cnt);
> > +	if (!ret)
> > +		ov02a10->mipi_clock_hs_vod_adjust_cnt = hs_vod_adjust_cnt;
> > +	else
> > +		dev_warn(dev, "failed to get hs vod adjust, using default\n");
> > +
> > +	/* Optional indication of mipi tx speed */
> > +	ret = fwnode_property_read_u32(dev_fwnode(dev),
> > +				       "ovti,mipi-tx-speed",
> > +				       &clock_lane_tx_speed);
> > +
> > +	if (!ret)
> > +		ov02a10->mipi_clock_tx_speed = clock_lane_tx_speed;
> > +	else
> > +		dev_warn(dev, "failed to get mipi tx speed, using default\n");
> 
> > +	/* Get system clock (eclk) */
> > +	ov02a10->eclk = devm_clk_get(dev, "eclk");
> > +	if (IS_ERR(ov02a10->eclk)) {
> > +		dev_err(dev, "failed to get eclk\n");
> 
> > +		return -EINVAL;
> 
> Why shadow error code?
> 

Okay. Fixed in next release.

> > +	}
> 
> > +	ov02a10->pd_gpio = devm_gpiod_get(dev, "powerdown", GPIOD_OUT_HIGH);
> > +	if (IS_ERR(ov02a10->pd_gpio)) {
> > +		dev_err(dev, "failed to get powerdown-gpios\n");
> 
> > +		return -EINVAL;
> 
> Ditto.
> 

Fixed in next release.

> > +	}
> 
> > +	ov02a10->n_rst_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> > +	if (IS_ERR(ov02a10->n_rst_gpio)) {
> > +		dev_err(dev, "failed to get reset-gpios\n");
> 
> > +		return -EINVAL;
> 
> Ditto.
> 

Fixed in next release.

> > +	}
> 
> > +}
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
