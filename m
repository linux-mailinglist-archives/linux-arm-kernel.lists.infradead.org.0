Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC59E1F0570
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 08:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ddqfm1PaCZ02O0IRp+seaSC02uZsgTWyLLjfPTiHk84=; b=GWacLFdPb8ZCxB
	ILl6csiMlZGU3RWbm/pMIkGPLTrsjIeZGPATfn2yBfmerKajIAtJYYXlM++9zNZ6vJhN+c/qJSomh
	3YpQ12l822TVx2808gDvmoz1XTJQZYMb5C1gxWkFz4M5MirULVJL6EpagKfeUzSd+wo/nk5dKiXly
	r2Kj/4RIiOghFZsfwK+AZ67JyWugj/Gf3m0WnT6CqBv9L0wRrQ/H2sXNAOQoWryu1tGKNEIwsrnxv
	LfG+bYH4Rf0ud/EmIplu/ei1JktNkByUEoqHNTzZKGjlWSYvfIwxsJK8LZxlleiFM8r48oZ0RGyiI
	bFZ7r4csvCGRCVDlMleg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhSRY-0001go-PX; Sat, 06 Jun 2020 06:36:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhSRQ-0001fW-8j; Sat, 06 Jun 2020 06:36:30 +0000
X-UUID: b47471d4add94e56be8d7ab0291f756d-20200605
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=8YaqCRtr6t04Pgcsa7rHWNWRrI7JnwIs3OrBZi9nFCA=; 
 b=n0JtMNETz+ZFxQ/8o87sxPtmLwh5Z/g0mxBt92EmbVV87hyWFBiNWy6EKphePH7b/SlF65NEQ4JEmBU81Kfc+Cw49vuD0jeszGwY4MggTiiuZAo6zvu4xFEAtr9kJW8brTc3ttw8zavr0d1gyd1qtpboHWEa//xgxhfboZCn4fI=;
X-UUID: b47471d4add94e56be8d7ab0291f756d-20200605
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2145508808; Fri, 05 Jun 2020 22:36:31 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 23:26:20 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 6 Jun 2020 14:26:18 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 6 Jun 2020 14:26:17 +0800
Message-ID: <1591424652.8804.603.camel@mhfsdcap03>
Subject: Re: [V7, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Date: Sat, 6 Jun 2020 14:24:12 +0800
In-Reply-To: <20200605121459.GS16711@paasikivi.fi.intel.com>
References: <20200605105412.18813-1-dongchun.zhu@mediatek.com>
 <20200605105412.18813-3-dongchun.zhu@mediatek.com>
 <20200605121459.GS16711@paasikivi.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 360CD1EF4D21478AF26A82D6FCE3FA9A3A1CFBDD2931EBABAF5492227401BB2F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_233628_315196_051E8347 
X-CRM114-Status: GOOD (  15.93  )
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
Cc: mark.rutland@arm.com, drinkcat@chromium.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, tfiga@chromium.org, bgolaszewski@baylibre.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 louis.kuo@mediatek.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

Thanks for the timely review.

On Fri, 2020-06-05 at 15:14 +0300, Sakari Ailus wrote:
> Hi Dongchun,
> 
> Thank you for the update.
> 
> On Fri, Jun 05, 2020 at 06:54:12PM +0800, Dongchun Zhu wrote:
> > Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> > control to set the desired focus via IIC serial interface.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  MAINTAINERS                |   1 +
> >  drivers/media/i2c/Kconfig  |  13 ++
> >  drivers/media/i2c/Makefile |   1 +
> >  drivers/media/i2c/dw9768.c | 566 +++++++++++++++++++++++++++++++++++++++++++++
> >  4 files changed, 581 insertions(+)
> >  create mode 100644 drivers/media/i2c/dw9768.c
> > 

[snip]...

> > +
> > +static int dw9768_probe(struct i2c_client *client)
> > +{
> > +	struct device *dev = &client->dev;
> > +	struct dw9768 *dw9768;
> > +	u32 aac_mode_select;
> > +	u32 aac_timing_select;
> > +	u32 clock_presc_select;
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
> > +	ret = fwnode_property_read_u32(dev_fwnode(dev), "dongwoon,aac-mode",
> > +				       &aac_mode_select);
> > +
> > +	if (!ret)
> > +		dw9768->aac_mode = aac_mode_select;
> > +
> > +	/* Optional indication of clock pre-scale select */
> > +	ret = fwnode_property_read_u32(dev_fwnode(dev), "dongwoon,clock-presc",
> > +				       &clock_presc_select);
> > +
> > +	if (!ret)
> > +		dw9768->clock_presc = clock_presc_select;
> > +
> > +	/* Optional indication of AAC Timing */
> > +	ret = fwnode_property_read_u32(dev_fwnode(dev), "dongwoon,aac-timing",
> > +				       &aac_timing_select);
> > +
> > +	if (!ret)
> > +		dw9768->aac_timing = aac_timing_select;
> 
> You can assign the defaults to the dw9768 struct and use the fwnode
> property API to read the properties into the same fields. No return values
> need to be checked.
> 

Good idea :-)

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
> > +		goto error_async_register;
> > +	}
> > +
> > +	return 0;
> > +
> > +error_async_register:
> > +	if (!pm_runtime_enabled(dev))
> > +		dw9768_runtime_suspend(dev);
> > +err_clean_entity:
> > +	media_entity_cleanup(&dw9768->sd.entity);
> > +err_free_handler:
> > +	v4l2_ctrl_handler_free(&dw9768->ctrls);
> > +
> > +	return ret;
> > +}
> > +

[snip]...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
