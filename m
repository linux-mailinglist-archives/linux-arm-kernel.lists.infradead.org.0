Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5EA1F0556
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 08:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjp7fAY+O7QQjxzjTzclYcHVziZlK5KP0ZNWkrpJjJg=; b=MukMrzzhSCd3zR
	k0YoSe+Ivbd2/MXMMA2YWpTFOJqipX9FQ8fbWEpjy/aJo7tw7tCGJBfcMP4lTw5JMYbUSlUGfLlG3
	NrE+Jt/0pgyHnzPSJSHAOGYw4iaRaPXcjWPSh8RYAQOV7OAVcAsJ2qeS7zeCqUHt/4XUerQGCDNeK
	Txf6n/7LwAFO1mroZT7bFEQYp9sF26Y8rqnUtWPxPcbe8OdOuWkEhenkdKRr8hJJKxKLtRhIeXZB/
	xmQkCXtv2go+AoOoH/UyZwIGrPas9NhA2VeBxVaPt8lCWY0xFcjsYdc0a3TMWQlla+LKspkmN8Js2
	GJEawEHRup5JeQjCX5mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhSDM-0001gF-I6; Sat, 06 Jun 2020 06:21:56 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhSDD-0001er-Mh; Sat, 06 Jun 2020 06:21:50 +0000
X-UUID: 94b25c41c9a240c591d9d875185ef265-20200605
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=RAIUVuLYgVuH/CCeUhIwCgt+EzgNoHQKrfHndQk9RvY=; 
 b=d8vF+8q3RA1y7ZPvnWi0P0LncAXT02q4+IoYIgo58GNQ5xhxz5ny1cPoIW1kJpqDojkACkM6A6qdQqSxD/MXW4nXuK907NuT/eYOHRJxAdeuPke3/9L5JE2AmZR5ToZjtROknc3Es4/2pP2tSlOuCEytggIV7zx5liNuzJx3DlE=;
X-UUID: 94b25c41c9a240c591d9d875185ef265-20200605
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1559792181; Fri, 05 Jun 2020 22:21:40 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 23:21:32 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 6 Jun 2020 14:21:20 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 6 Jun 2020 14:21:23 +0800
Message-ID: <1591424358.8804.599.camel@mhfsdcap03>
Subject: Re: [V7, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Sat, 6 Jun 2020 14:19:18 +0800
In-Reply-To: <20200605124643.GG2428291@smile.fi.intel.com>
References: <20200605105412.18813-1-dongchun.zhu@mediatek.com>
 <20200605105412.18813-3-dongchun.zhu@mediatek.com>
 <20200605124643.GG2428291@smile.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 935CFC8C3612F8EF46331B0CFDC7ACBCD9C86D19164ACD1A99FF20AA7B28C4202000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_232147_749508_270471E3 
X-CRM114-Status: GOOD (  20.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 dongchun.zhu@mediatek.com, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

Thanks for the review. My replies are as below.

On Fri, 2020-06-05 at 15:46 +0300, Andy Shevchenko wrote:
> On Fri, Jun 05, 2020 at 06:54:12PM +0800, Dongchun Zhu wrote:
> > Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> > control to set the desired focus via IIC serial interface.
> 
> ...
> 
> > +config VIDEO_DW9768
> > +	tristate "DW9768 lens voice coil support"
> > +	depends on I2C && VIDEO_V4L2
> 
> No compile test?
> 

Sorry?
Kconfig here is based on the current media tree master branch.
It is also what the other similar drivers from Dongwoon do. 

> > +	depends on PM
> 
> This is very strange dependency for ordinary driver.
> 

Thanks for the reminder.
This would be removed in next release.
As dw9768_runtime_resume/suspend would be called if runtime PM is
disabled.

> > +	select MEDIA_CONTROLLER
> > +	select VIDEO_V4L2_SUBDEV_API
> > +	select V4L2_FWNODE
> 
> ...
> 
> > +/*
> > + * DW9768 requires waiting time (delay time) of t_OPR after power-up,
> > + * or in the case of PD reset taking place.
> > + */
> > +#define DW9768_T_OPR_US				1000
> > +#define DW9768_Tvib_MS_BASE10			(64 - 1)
> > +#define DW9768_AAC_MODE_DEFAULT			2
> 
> > +#define DW9768_AAC_TIME_DEFAULT			0x20
> 
> Hex? Why not decimal?
> 

There is one optional property 'dongwoon,aac-timing' defined in DT.
I don't know whether you have noticed that.

'DW9768_AAC_TIME_DEFAULT' is the value set to AACT[5:0] register.
I thought the Hex unit should be proper as it is directly written to the
Hex register.

> > +#define DW9768_CLOCK_PRE_SCALE_DEFAULT		1
> 
> ...
> 
> > +static int dw9768_mod_reg(struct dw9768 *dw9768, u8 reg, u8 mask, u8 val)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> > +	int ret;
> > +
> > +	ret = i2c_smbus_read_byte_data(client, reg);
> > +	if (ret < 0)
> > +		return ret;
> > +
> 
> > +	val = ((unsigned char)ret & ~mask) | (val & mask);
> 
> This cast is weird.
> 

Thanks for the review, but this cast is using classical pattern from
your suggestion on OV02A10 v5:
https://patchwork.linuxtv.org/patch/59788/

So I wonder whether it is still required to be refined currently.
Or what would it be supposed to do for the cast?

> > +
> > +	return i2c_smbus_write_byte_data(client, reg, val);
> > +}
> 
> ...
> 
> > +			dev_err(&client->dev, "%s I2C failure: %d",
> > +				__func__, ret);
> 
> One line?
> 

Splitting the sentence into two lines or not should both be okay.
Of course, I could put them in one line in next release.

> ...
> 
> > +static int dw9768_release(struct dw9768 *dw9768)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> > +	u32 move_delay_us = dw9768_cal_move_delay(dw9768->aac_mode,
> > +						  dw9768->clock_presc,
> > +						  dw9768->aac_timing) / 100;
> > +	int ret, val;
> > +
> > +	val = round_down(dw9768->focus->val, DW9768_MOVE_STEPS);
> > +	for ( ; val >= 0; val -= DW9768_MOVE_STEPS) {
> > +		ret = dw9768_set_dac(dw9768, val);
> > +		if (ret) {
> > +			dev_err(&client->dev, "I2C write fail: %d", ret);
> > +			return ret;
> > +		}
> > +		usleep_range(move_delay_us, move_delay_us + 1000);
> > +	}
> 
> 
> It will look more naturally in the multiplier kind of value.
> 
> 	unsigned int steps = DIV_ROUND_UP(...);
> 
> 	while (steps--) {
> 		...(..., steps * ..._MOVE_STEPS);
> 		...
> 	}
> 
> but double check arithmetics.
> 

The current coding style is actually updated with reference to your
previous comments on DW9768 v3:
https://patchwork.linuxtv.org/patch/61856/

> > +	return 0;
> > +}
> 
> 
> Also it seems we need to have writex_poll_timeout() implementation (see
> iopoll.h).
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
