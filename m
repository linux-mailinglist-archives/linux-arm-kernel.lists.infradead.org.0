Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E7C1CD960
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 14:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQed1ETKHD60KOu5V40TGs3AdTr2zMNvFy6dXn95iG0=; b=S6KZZ/wFFHKqxu
	vN5oDEgH8JZb5LcRP486OWrkTGGL/o7xL2GXkO/oD3HQCYjs95hVw2/yYOpQDlRt6BF3nr4xZr49d
	KD9D0hA6ZqD1iVjOodSHYBlfbbBrc30EWarBSd1nyjGJJ8ZvpvatpGRNTuLMSFON8NdCdW/1op/FP
	7xPkazngJ3DzXQw+XtTxYJZrnSymdhjGftDi5FzR+L2EHt6czXl1u066xzdxfTsNOsfZcugY6FkOX
	qt7Y72c84mVVzLBXlvByU1unsmfZJ+WIB62TTfpcqkV4oQkEuv0O4m9pBUTt6+N2vkz4i77+ifVNg
	vuAZqilkqkKbl5GTMLBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7E8-0006Vh-Ew; Mon, 11 May 2020 12:08:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7Dx-0006UA-3q; Mon, 11 May 2020 12:07:58 +0000
X-UUID: 5f75d4f11dcc41e5a94868badf489859-20200511
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=vMipxxyx4vvbm6f5PGT2B9rTKQUVPBjJU6zHZu06PhY=; 
 b=nijYdYWKJk1lzibIVt030yqGOvFax/1AxuCU4dnlCz1eTIQp9rhRPGj1G390+fSzgtzOZRF0CuVjULyhUffyV3kbsL6BSV7UdjVL6TBQTZ6WOJMb3/hy65sJWYUIDMmyKrA+0U0DooE3Kpyd1ac9uBkFsdaMoATLZkTNX33QycU=;
X-UUID: 5f75d4f11dcc41e5a94868badf489859-20200511
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 545490689; Mon, 11 May 2020 04:07:50 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 11 May 2020 05:07:51 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Mon, 11 May 2020 20:07:49 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 11 May 2020 20:07:47 +0800
Message-ID: <1589198795.8804.276.camel@mhfsdcap03>
Subject: Re: [V8, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Mon, 11 May 2020 20:06:35 +0800
In-Reply-To: <20200511093308.GF185537@smile.fi.intel.com>
References: <20200509080627.23222-1-dongchun.zhu@mediatek.com>
 <20200509080627.23222-3-dongchun.zhu@mediatek.com>
 <20200511093308.GF185537@smile.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1C8EC2EFA9EA89E9356A83C33519571046D31C38383666B09EF4913B1E4D0A3F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_050757_164799_DF586DE1 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 louis.kuo@mediatek.com, srv_heupstream@mediatek.com, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, tfiga@chromium.org, bgolaszewski@baylibre.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 sakari.ailus@linux.intel.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

Thanks for the kindly review.

On Mon, 2020-05-11 at 12:33 +0300, Andy Shevchenko wrote:
> On Sat, May 09, 2020 at 04:06:27PM +0800, Dongchun Zhu wrote:
> > Add a V4L2 sub-device driver for OV02A10 image sensor.
> 
> ...
> 
> > +#define OV02A10_ID(_msb, _lsb)				((_msb) << 8 | (_lsb))
> 
> How often do you use this macro?
> 

Just once.
I would try to use the macro function directly in next release.

> ...
> 
> > +static int ov02a10_read_smbus(struct ov02a10 *ov02a10, unsigned char reg,
> > +			      unsigned char *val)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&ov02a10->subdev);
> > +	int ret;
> > +
> > +	ret = i2c_smbus_read_byte_data(client, reg);
> 
> > +
> 
> Extra blank line.
> 

Thanks for the carefully reminder.
This error can easily be neglected.
I would remove it in next release.

> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	*val = (unsigned char)ret;
> > +
> > +	return 0;
> > +}
> 
> ...
> 
> > +static int ov02a10_entity_init_cfg(struct v4l2_subdev *sd,
> > +				   struct v4l2_subdev_pad_config *cfg)
> > +{
> > +	struct v4l2_subdev_format fmt = {
> 
> > +		.which = cfg ? V4L2_SUBDEV_FORMAT_TRY
> > +			     : V4L2_SUBDEV_FORMAT_ACTIVE,
> 
> I think it would be fine to have it on one line.
> 

Got it.
Fixed in next release.

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
> 
> ...
> 
> > +	if (!ret) {
> > +		if (rotation == 180) {
> 
> if (a) {
> 	if (b) {
> 		...
> 	}
> }
> 
> ==
> 
> if (a && b) {
> 	...
> }
> 

Thanks for the reminder :-)
Next release would use:
if (!ret && rotation == 180) {
	...
}

> > +			ov02a10->upside_down = true;
> > +			ov02a10->fmt.code = MEDIA_BUS_FMT_SRGGB10_1X10;
> > +		}
> > +	}
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
