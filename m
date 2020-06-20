Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0624E202205
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 09:01:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dou+rokL4ezW79FkAGx98um9AGuxxVRFLG8Xr9J9EoE=; b=ezxPJtJrCV6cOf
	auTschc8yWMg5H3bthlVD6HzRBRaw2MUhnC7L3FoZglk1ixeW4JT2lAzDGbCubI6yWnu7cQCGKQeC
	qiN4ZRVWSuZYQMk9MWE0RASnKFXOSqadVq25re8Zvn86FMRX7bETvMj2jLxZtrAi1qjYiuVzqaAfb
	dCyBx8q6vyzMltOOiXQAzNLC5oLfgruWGbkDBo3JHz2htMcC5odfxJOEdZXjFUQ/+oaRphr5WT5PT
	fM9PpI2ZSrPtJMdbZUO4OIshn8Jo4SacSEaXl4YHz0cJMSw2dOAHKivKjruOMeGz5TbPoItE3fos3
	xmDqAzyQL0mzVGWGfOrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmXUv-0003fZ-UY; Sat, 20 Jun 2020 07:01:05 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmXUl-0003eF-QC; Sat, 20 Jun 2020 07:00:57 +0000
X-UUID: acc86e99a99948d899d8c1c3c5b76af9-20200619
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=GOQerDuDZZDolfkbE0aS87YaUPdoD/4rFLApBq5bAw4=; 
 b=BrGsL2HUAaM1YxtrLXADPGxEpyvaEEXzbysFn0FVD9m/bQS5l0yaivf54X9svOMa5xn1Tm13LUmYiMopODze3YE++28YJ/j996ZrH2uWEZ2A4z9giU5w1TQk6zraxi5uEWZBa4Y/NpwIqBJc2SAGU1A+c1ybsIJG4/PQL70Mx4E=;
X-UUID: acc86e99a99948d899d8c1c3c5b76af9-20200619
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2003174216; Fri, 19 Jun 2020 23:00:35 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 20 Jun 2020 00:00:40 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 20 Jun 2020 15:00:38 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 20 Jun 2020 15:00:37 +0800
Message-ID: <1592636284.8804.697.camel@mhfsdcap03>
Subject: Re: [PATCH V8 2/2] media: i2c: dw9768: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Sat, 20 Jun 2020 14:58:04 +0800
In-Reply-To: <20200618184554.GA68039@chromium.org>
References: <20200616125531.31671-1-dongchun.zhu@mediatek.com>
 <20200616125531.31671-3-dongchun.zhu@mediatek.com>
 <20200618184554.GA68039@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: E669BBACD0C8838498D42BD62F02F8C4F0F2CA5202DE503DB6FD38ADB735C7BC2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_000055_860029_FF28E923 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, drinkcat@chromium.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, louis.kuo@mediatek.com, bgolaszewski@baylibre.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 dongchun.zhu@mediatek.com, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Tomasz,

Thanks for the review.

On Thu, 2020-06-18 at 18:45 +0000, Tomasz Figa wrote:
> On Tue, Jun 16, 2020 at 08:55:31PM +0800, Dongchun Zhu wrote:
> > Add a V4L2 sub-device driver for DW9768 voice coil motor,
> > providing control to set the desired focus via IIC serial interface.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  MAINTAINERS                |   1 +
> >  drivers/media/i2c/Kconfig  |  12 +
> >  drivers/media/i2c/Makefile |   1 +
> >  drivers/media/i2c/dw9768.c | 553 +++++++++++++++++++++++++++++++++++++++++++++
> >  4 files changed, 567 insertions(+)
> >  create mode 100644 drivers/media/i2c/dw9768.c
> [snip]
> > +static int dw9768_probe(struct i2c_client *client)
> > +{
> > +	struct device *dev = &client->dev;
> > +	struct dw9768 *dw9768;
> > +	unsigned int i;
> > +	int ret;
> > +
> > +	dw9768 = devm_kzalloc(dev, sizeof(*dw9768), GFP_KERNEL);
> > +	if (!dw9768)
> > +		return -ENOMEM;
> > +
> > +	/* Initialize subdev */
> > +	v4l2_i2c_subdev_init(&dw9768->sd, client, &dw9768_ops);
> > +
> > +	dw9768->aac_mode = DW9768_AAC_MODE_DEFAULT;
> > +	dw9768->aac_timing = DW9768_AAC_TIME_DEFAULT;
> > +	dw9768->clock_presc = DW9768_CLOCK_PRE_SCALE_DEFAULT;
> > +
> > +	/* Optional indication of AAC mode select */
> > +	fwnode_property_read_u32(dev_fwnode(dev), "dongwoon,aac-mode",
> > +				 &dw9768->aac_mode);
> > +
> > +	/* Optional indication of clock pre-scale select */
> > +	fwnode_property_read_u32(dev_fwnode(dev), "dongwoon,clock-presc",
> > +				 &dw9768->clock_presc);
> > +
> > +	/* Optional indication of AAC Timing */
> > +	fwnode_property_read_u32(dev_fwnode(dev), "dongwoon,aac-timing",
> > +				 &dw9768->aac_timing);
> > +
> > +	dw9768->move_delay_us = dw9768_cal_move_delay(dw9768->aac_mode,
> > +						      dw9768->clock_presc,
> > +						      dw9768->aac_timing) / 100;
> 
> nit: Could we make the function return the value in us already? One would
> expect the function to return the value in a standard unit, so this
> division by 100 here is confusing.
> 

Good idea.

> > +
> > +	for (i = 0; i < ARRAY_SIZE(dw9768_supply_names); i++)
> > +		dw9768->supplies[i].supply = dw9768_supply_names[i];
> > +
> > +	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(dw9768_supply_names),
> > +				      dw9768->supplies);
> > +	if (ret) {
> > +		dev_err(dev, "failed to get regulators\n");
> > +		return ret;
> > +	}
> > +
> > +	/* Initialize controls */
> > +	ret = dw9768_init_controls(dw9768);
> > +	if (ret)
> > +		goto err_free_handler;
> > +
> > +	/* Initialize subdev */
> > +	dw9768->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> > +	dw9768->sd.internal_ops = &dw9768_int_ops;
> > +
> > +	ret = media_entity_pads_init(&dw9768->sd.entity, 0, NULL);
> > +	if (ret < 0)
> > +		goto err_free_handler;
> > +
> > +	dw9768->sd.entity.function = MEDIA_ENT_F_LENS;
> > +
> > +	pm_runtime_enable(dev);
> > +	if (!pm_runtime_enabled(dev)) {
> > +		ret = dw9768_runtime_resume(dev);
> > +		if (ret < 0) {
> > +			dev_err(dev, "failed to power on: %d\n", ret);
> > +			goto err_clean_entity;
> > +		}
> > +	}
> > +
> > +	ret = v4l2_async_register_subdev(&dw9768->sd);
> > +	if (ret < 0) {
> > +		dev_err(dev, "failed to register V4L2 subdev: %d", ret);
> > +		goto err_power_off;
> > +	}
> > +
> > +	return 0;
> > +
> > +err_power_off:
> > +	pm_runtime_disable(dev);
> > +	if (!pm_runtime_enabled(dev))
> 
> We just disabled runtime PM in the line above, so this check would be
> always true. Need to call pm_runtime_disable() after this if.
> 

Sorry to make such a mistake.

> > +		dw9768_runtime_suspend(dev);
> > +err_clean_entity:
> > +	media_entity_cleanup(&dw9768->sd.entity);
> > +err_free_handler:
> > +	v4l2_ctrl_handler_free(&dw9768->ctrls);
> > +
> > +	return ret;
> > +}
> > +
> > +static int dw9768_remove(struct i2c_client *client)
> > +{
> > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > +	struct dw9768 *dw9768 = sd_to_dw9768(sd);
> > +
> > +	v4l2_async_unregister_subdev(&dw9768->sd);
> > +	v4l2_ctrl_handler_free(&dw9768->ctrls);
> > +	media_entity_cleanup(&dw9768->sd.entity);
> > +	pm_runtime_disable(&client->dev);
> > +	if (!pm_runtime_suspended(&client->dev))
> 
> Oops, I just realized that my suggestion about the function to use here
> was incorrect. pm_runtime_status_suspended() should be the correct function
> here. Sorry for the confusion.
> 
> This is because we only have 2 cases here:
>  - runtime PM compiled out - the stubs function is used, which returns
>    false, so the condition is true,
>  - runtime PM compiled in - we enabled runtime PM in probe, so here we
>    don't need to consider the enable state.
> 

Uh-huh...
Thanks for the explaining.
It seems OV8856, OV5695 and OV2685 also use the API
'pm_runtime_status_suspended'.

> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
