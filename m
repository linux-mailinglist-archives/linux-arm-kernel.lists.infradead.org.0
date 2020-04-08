Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D321A21B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/baBrpInEXogHhyek5BmZ+3TRJbu7apxxUZR1i+5taU=; b=Kaax9hfDjpG5qG
	A9IytxlBfxhLVYbC/rZ13fiqxl9T3eUPO8I1a/Ao8eYKB/O0tw1HzbYETDD9i4Q/BBP2GBqSgGnGH
	D9MN6ajn0EpksBmJkUpnEnM5rtcA25W+YsWxOIuQDFGyEM7vjkFG51HZTbsy+CU43Drazew2/BqVz
	kyWK6gQdHFzH2nts+ssOsV9LZuR2RIhZ571h05FNWRJi8rU1gcoYVFTwsGPx0XRM4KOU0BehTLJUB
	2q7l4tRoiDrJEAgWXwqvp789b2S1o2WaiB45nftNgDPZ4+nb9DKm2xYNWSFuhXRLgL24XT4d+wGbz
	/2zCxfWMsyVj4ELFHT0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9hO-0007xm-7T; Wed, 08 Apr 2020 12:20:54 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9hE-0007wb-7B; Wed, 08 Apr 2020 12:20:46 +0000
IronPort-SDR: 81eDbrSa99I9C8mL+KHRMBvrGcW606iAk73pO3P/Qcoq9q3lcFxb5vjZqd+pEwudi0QPx0pTwD
 n7S2KxvmFVjQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 05:20:43 -0700
IronPort-SDR: EsGpVrBICzA9yNIzcqsXym6EkBtvPGS4UmV6Eypp1AhLxdwvFieP3v3RbENjyQF/kaPW5r+tIe
 4ict1+hzKhdg==
X-IronPort-AV: E=Sophos;i="5.72,358,1580803200"; d="scan'208";a="425120463"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 05:20:39 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 45DDC20364; Wed,  8 Apr 2020 15:20:37 +0300 (EEST)
Date: Wed, 8 Apr 2020 15:20:37 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V6, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
Message-ID: <20200408122037.GG5206@paasikivi.fi.intel.com>
References: <20191211112849.16705-1-dongchun.zhu@mediatek.com>
 <20191211112849.16705-3-dongchun.zhu@mediatek.com>
 <20191211143640.GU32742@smile.fi.intel.com>
 <faf3482d4127464195d04a17cae446b7@mtkmbs05n1.mediatek.inc>
 <1586346824.8804.12.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586346824.8804.12.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_052044_306994_72911118 
X-CRM114-Status: GOOD (  24.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 shengnan.wang@mediatek.com, louis.kuo@mediatek.com, sj.huang@mediatek.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Wed, Apr 08, 2020 at 07:53:44PM +0800, Dongchun Zhu wrote:
> Hello Andy,
> 
> Thanks for the review. Sorry for the late reply.
> 
> On Mon, 2019-12-11 at 16:36 +0200, Andy Shevchenko wrote:
> > On Wed, Dec 11, 2019 at 07:28:49PM +0800, Dongchun Zhu wrote:
> > > Add a V4L2 sub-device driver for OV02A10 image sensor. The OV02A10 is
> > > a 1/5" CMOS sensor from Omnivision, asupporting output format: 10-bit Raw.
> > >
> > > This chip has a single MIPI lane interface and use the I2C bus for
> > > control and the CSI-2 bus for data.
> > 
> > ...
> > 
> > > +#define OV02A10_MASK_8_BITS                            0xff
> > 
> > Besides GENMASK() why do you need a definition here? What's the point?
> > 
> 
> Fixed in next release.
> 
> > ...
> > 
> > > +static int ov02a10_entity_init_cfg(struct v4l2_subdev *sd,
> > > +   struct v4l2_subdev_pad_config *cfg) {
> > > +struct v4l2_subdev_format fmt = {
> > > +.which = cfg ? V4L2_SUBDEV_FORMAT_TRY
> > > +     : V4L2_SUBDEV_FORMAT_ACTIVE,
> > > +.format = {
> > > +.width = 1600,
> > 
> > > +.height = 1200
> > 
> > Leave comma here.
> > 
> 
> Fixed in next release.
> 
> > > +}
> > > +};
> > > +
> > > +ov02a10_set_fmt(sd, cfg, &fmt);
> > > +
> > > +return 0;
> > > +}
> > 
> > ...
> > 
> > > +ret = i2c_smbus_write_byte_data(client, OV02A10_REG_GAIN,
> > > +(val & OV02A10_MASK_8_BITS));
> > 
> > Too many parentheses.
> > 
> 
> Fixed in next release.
> 
> > > +if (ret < 0)
> > > +return ret;
> > 
> > ...
> > 
> > > +static int ov02a10_set_vblank(struct ov02a10 *ov02a10, int val) {
> > > +struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > 
> > if you do
> > 
> > int vts = val + ov02a10->cur_mode->height - OV02A10_BASIC_LINE;
> > 
> > you may increase readability below...
> > 
> 
> Thanks for the suggestion.
> It seems better now.
> 
> > > +int ret;
> > > +
> > > +ret = i2c_smbus_write_byte_data(client, REG_PAGE_SWITCH, REG_ENABLE);
> > > +if (ret < 0)
> > > +return ret;
> > > +
> > > +ret = i2c_smbus_write_byte_data(client, OV02A10_REG_VTS_H,
> > > +(((val + ov02a10->cur_mode->height -
> > > +OV02A10_BASIC_LINE) >>
> > > +OV02A10_VTS_SHIFT) &
> > > +OV02A10_MASK_8_BITS));
> > 
> > ret = i2c_smbus_write_byte_data(client, OV02A10_REG_VTS_H,
> > (vts >> OV02A10_VTS_SHIFT) &
> > OV02A10_MASK_8_BITS));
> > 
> > And actually why do you need this mask here? Isn't enough to call
> > 
> > ret = i2c_smbus_write_byte_data(client, OV02A10_REG_VTS_H,
> > vts >> OV02A10_VTS_SHIFT);
> > 
> > here...
> > 
> > 
> 
> Yes. Now we code like this.
> 
> > > +if (ret < 0)
> > > +return ret;
> > > +
> > > +ret = i2c_smbus_write_byte_data(client, OV02A10_REG_VTS_L,
> > > +((val + ov02a10->cur_mode->height -
> > > +OV02A10_BASIC_LINE) &
> > > +OV02A10_MASK_8_BITS));
> > 
> > ...and
> > 
> > ret = i2c_smbus_write_byte_data(client, OV02A10_REG_VTS_L, vts);
> > 
> > here?
> > 
> 
> Yes. Fixed in next release.
> 
> > > +if (ret < 0)
> > > +return ret;
> > > +
> > > +return i2c_smbus_write_byte_data(client, REG_GLOBAL_EFFECTIVE,
> > > + REG_ENABLE);
> > > +}
> > 
> > ...
> > 
> > > +static int ov02a10_check_hwcfg(struct device *dev, struct ov02a10
> > > +*ov02a10) {
> > > +struct fwnode_handle *ep;
> > > +struct fwnode_handle *fwnode = dev_fwnode(dev);
> > > +struct v4l2_fwnode_endpoint bus_cfg = {
> > 
> > > +.bus_type = V4L2_MBUS_CSI2_DPHY
> > 
> > Leave comma here.
> > 
> 
> Fixed in next release.
> 
> > > +};
> > > +unsigned int i, j;
> > > +int ret;
> > 
> > > +if (!fwnode)
> > > +return -ENXIO;
> > 
> > A bit strange error code here.
> > 
> 
> This should be reported as -EINVAL.
> Fixed in next release.
> 
> > > +
> > > +ep = fwnode_graph_get_next_endpoint(fwnode, NULL);
> > > +if (!ep)
> > > +return -ENXIO;
> > > +
> > > +ret = v4l2_fwnode_endpoint_alloc_parse(ep, &bus_cfg);
> > > +fwnode_handle_put(ep);
> > > +if (ret)
> > > +return ret;
> > 
> > > +if (!bus_cfg.nr_of_link_frequencies) {
> > > +dev_err(dev, "no link frequencies defined");
> > > +ret = -EINVAL;
> > > +goto check_hwcfg_error;
> > > +}
> > 
> > I still think it's redundant check, though it's up to maintainers.
> > 
> 
> We still wanna keep this check.
> Keep same as ov2659 and ov8856.
> 
> > > +
> > > +for (i = 0; i < ARRAY_SIZE(link_freq_menu_items); i++) {
> > > +for (j = 0; j < bus_cfg.nr_of_link_frequencies; j++) {
> > > +if (link_freq_menu_items[i] ==
> > > +bus_cfg.link_frequencies[j])
> > > +break;
> > > +}
> > > +
> > > +if (j == bus_cfg.nr_of_link_frequencies) {
> > > +dev_err(dev, "no link frequency %lld supported",
> > > +link_freq_menu_items[i]);
> > > +ret = -EINVAL;
> > > +goto check_hwcfg_error;
> > > +}
> > > +}
> > > +
> > > +check_hwcfg_error:
> > > +v4l2_fwnode_endpoint_free(&bus_cfg);
> > > +
> > > +return ret;
> > > +}
> > 
> > ...
> > 
> > > +static int ov02a10_probe(struct i2c_client *client) {
> > 
> > > +/* Optional indication of physical rotation of sensor */
> > > +ret = fwnode_property_read_u32(dev_fwnode(dev), "rotation",
> > > +&rotation);
> > 
> > > +if (!ret) {
> > 
> > Why not positive conditional?
> > 
> 
> Okay. Fixed in next release.
> 
> > > +ov02a10->upside_down = rotation == 180;
> > > +if (rotation == 180) {
> > > +ov02a10->upside_down = true;
> > > +ov02a10->fmt.code = MEDIA_BUS_FMT_SRGGB10_1X10;
> > > +}
> > > +} else {
> > > +dev_warn(dev, "failed to get rotation\n");
> > > +}
> > > +
> > > +/* Optional indication of mipi TX speed */
> > > +ret = fwnode_property_read_u32(dev_fwnode(dev), "ovti,mipi-tx-speed",
> > > +       &clock_lane_tx_speed);
> > > +
> > 
> > > +if (!ret)
> > 
> > Ditto.
> > 
> 
> As Sakari mentioned earlier, the property "ovti,mipi-tx-speed" is
> optional that shouldn't warn it's missing when ret is 0.
> So we would keep the condition like that, just removing else case.

I don't remember discussing this, but could be because it was quite some
time ago.

It doesn't seem to be documented. What is it for?

> > *********************MEDIATEK Confidential/Internal Use*********************

Is this intentional?

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
