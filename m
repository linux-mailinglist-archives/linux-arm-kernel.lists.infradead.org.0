Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 413C91F64FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 11:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUHzaLadpbur9JaGA2U6ciQrICxSTfWF8TRZPfR+QJA=; b=JFWsVnTfFG48Z8
	D7JBWYdlZVF2wi49Z841kl461cJfUtZMWW4BX/WdZMt8+xtDVRceC+Kvnu+O4QqmN2oiadW3dFEXD
	oBKnHzc3wJBIwXBoKCbBP1ik5jWniqJ6hxbwbcVm0zFE2Qr3Pm989rmYlh1y8N5BCuCRNhQW4sLPy
	NrF+Yv57oU/2oZBvOIO2qLpeqbiDx2NcPomocAQVSwZjSLubN1MDjc7inH8DlDboNzB7h3K1PgnMK
	uVR4EqEeZpDHSzm3Aw/bSLay3TWZMd6tHMQRxw/8UpU/wwgyH6G3ObZb7w8xJ3iLUpHiLtLyC3K7g
	dAY54hVNtfQKhxCEciMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjJuA-0000w6-OG; Thu, 11 Jun 2020 09:53:50 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjJu2-0000vZ-0R; Thu, 11 Jun 2020 09:53:43 +0000
IronPort-SDR: vYBF0hofZllJusvBxak3IZDA+s0GDz7+AlLW7z4baV/T2cEZSMvB51wXgP0DYW6IjzXx24C6U4
 hGQgvFw4hYJA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 02:53:41 -0700
IronPort-SDR: dHCsEc4njPF+kHjdOEWILszXP2QQ+HFtapoZFzJIsrkp1puF+YHOe0YdbiUqnorzm8NusR4716
 26t59K7DO3yA==
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="350138738"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 02:53:35 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 6E06720680; Thu, 11 Jun 2020 12:53:33 +0300 (EEST)
Date: Thu, 11 Jun 2020 12:53:33 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [V9, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
Message-ID: <20200611095333.GK16711@paasikivi.fi.intel.com>
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-3-dongchun.zhu@mediatek.com>
 <20200610194455.GK201868@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610194455.GK201868@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_025342_092740_A165DFB2 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 shengnan.wang@mediatek.com, bgolaszewski@baylibre.com, sj.huang@mediatek.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, louis.kuo@mediatek.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

On Wed, Jun 10, 2020 at 07:44:55PM +0000, Tomasz Figa wrote:
> Hi Dongchun,
> 
> On Sat, May 23, 2020 at 04:41:03PM +0800, Dongchun Zhu wrote:
> > Add a V4L2 sub-device driver for OV02A10 image sensor.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  MAINTAINERS                 |    1 +
> >  drivers/media/i2c/Kconfig   |   13 +
> >  drivers/media/i2c/Makefile  |    1 +
> >  drivers/media/i2c/ov02a10.c | 1025 +++++++++++++++++++++++++++++++++++++++++++
> >  4 files changed, 1040 insertions(+)
> >  create mode 100644 drivers/media/i2c/ov02a10.c
> > 
> 
> Thank you for the patch. Please see my comments inline.
> 
> [snip]
> > diff --git a/drivers/media/i2c/ov02a10.c b/drivers/media/i2c/ov02a10.c
> > new file mode 100644
> > index 0000000..160a0b5
> > --- /dev/null
> > +++ b/drivers/media/i2c/ov02a10.c
> [snip]
> > +static const char * const ov02a10_test_pattern_menu[] = {
> > +	"Disabled",
> > +	"Color Bar",
> 
> nit: We should normalize this to one of the standard names. What is the
> pattern on this sensor? Is it perhaps "Eight Vertical Colour Bars"?
> 
> > +};
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
> 
> 
> Don't we need to handle the case when fmt->which is V4L2_SUBDEV_FORMAT_TRY,
> which is used for trying the format, but not applying it to the hardware?

Yes.

> 
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
> > +	mutex_unlock(&ov02a10->mutex);
> > +
> > +	return 0;
> > +}
> > +
> > +static int ov02a10_get_fmt(struct v4l2_subdev *sd,
> > +			   struct v4l2_subdev_pad_config *cfg,
> > +			   struct v4l2_subdev_format *fmt)
> > +{
> > +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > +	struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;
> > +
> > +	mutex_lock(&ov02a10->mutex);
> > +
> > +	fmt->format = ov02a10->fmt;
> 
> Ditto.
> 
> > +	mbus_fmt->code = ov02a10->fmt.code;
> > +	ov02a10_fill_fmt(ov02a10->cur_mode, mbus_fmt);
> > +
> > +	mutex_unlock(&ov02a10->mutex);
> > +
> > +	return 0;
> > +}
> > +
> > +static int ov02a10_enum_mbus_code(struct v4l2_subdev *sd,
> > +				  struct v4l2_subdev_pad_config *cfg,
> > +				  struct v4l2_subdev_mbus_code_enum *code)
> > +{
> > +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > +
> > +	if (code->index >= ARRAY_SIZE(supported_modes))
> > +		return -EINVAL;
> 
> Hmm, supported_modes[] doesn't seem to hold the information about mbus
> codes. Should this just perhaps be "!= 0"?
> 
> > +
> > +	code->code = ov02a10->fmt.code;
> > +
> > +	return 0;
> > +}
> [snip]
> > +static int ov02a10_entity_init_cfg(struct v4l2_subdev *sd,
> > +				   struct v4l2_subdev_pad_config *cfg)
> > +{
> > +	struct v4l2_subdev_format fmt = {
> > +		.which = cfg ? V4L2_SUBDEV_FORMAT_TRY : V4L2_SUBDEV_FORMAT_ACTIVE,
> > +		.format = {
> > +			.width = 1600,
> > +			.height = 1200,
> > +		}
> > +	};
> > +
> > +	ov02a10_set_fmt(sd, cfg, &fmt);
> > +
> > +	return 0;
> > +}
> > +
> 
> I'm not familiar with this init_cfg operation and the documentation is very
> sparse about it. Sakari, is this a correct implementation?

The purpose is to initialise a pad configuration (format and selection
rectangles) to the device defaults. As there seem to be no selection
rectangles, this seems fine to me.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
