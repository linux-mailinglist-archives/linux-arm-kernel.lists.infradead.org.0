Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3AF1DE356
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 11:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=isPayLKHgAnDEcfEvtk0orGKPPIXsG/2Hh7Q/NAQFok=; b=EFeb03bKX+qopz
	3IZeIlgzljY4decC7JuIqGMG1w+Jaj3vMXG2ES9IR5YJC9zNZbz9rJuE2QUvALtjDxEL6ecV0JqCa
	q/h4BqQ79AEuiJtirYUideS8vIuZsv37MIaj86l349gUJg2akEaCigO5w1li/ve97Rkfl3EHpByj/
	ydK5S0tQzElI/qXojB/zkLchIOmwdWG0ZKUA4P5DmcvFmrq2YXxsX/Rkla24g2BnCHEWRLf7NBtVl
	y/FTTfU3x1sXHIi5PJ9MW7dRH7+Az5iMs0B4bAor3XtaNhVI/pyggjLjh8KQ+lmOwLuuiF0hNpdiF
	KuR7qLf7+nuAAeynnHVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc487-0004aT-G8; Fri, 22 May 2020 09:38:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc47f-0004M9-FE; Fri, 22 May 2020 09:37:49 +0000
X-UUID: 378d75413cd44fa5a6f6a3187e34db12-20200522
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=hepUThaabfGUaHmDa2AneBNj6YVAHDrku45pJkqhJeQ=; 
 b=dmWushCpg647SzPfU4TDBhnnynHvSymCQQWl8GrvjhLPRZ7ulZUayXryH9l+Ipaa30MJ71ypsFqPoYKa+oFRE/tZHPFh+xJM68UHK4DhHFDo3bkcm7JQafK+wVNBCFjCPxgYA0gFkqkNMpuhb2X+4NZG6KKjmOyg7kmlxr8D994=;
X-UUID: 378d75413cd44fa5a6f6a3187e34db12-20200522
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 513997193; Fri, 22 May 2020 01:37:25 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 22 May 2020 02:27:38 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 22 May 2020 17:27:36 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 22 May 2020 17:27:34 +0800
Message-ID: <1590139561.8804.390.camel@mhfsdcap03>
Subject: Re: [V6, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 22 May 2020 17:26:01 +0800
In-Reply-To: <20200521195113.GC14214@chromium.org>
References: <20200518132731.20855-1-dongchun.zhu@mediatek.com>
 <20200518132731.20855-3-dongchun.zhu@mediatek.com>
 <20200521195113.GC14214@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C375D294F8C3D466CDBF9572F1CDB2C97B12F5CF0762092D09378AB0F1CADBCA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_023747_557658_773EB2C0 
X-CRM114-Status: GOOD (  22.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Tomasz,

Thanks for the review. My replies are as below.

On Thu, 2020-05-21 at 19:51 +0000, Tomasz Figa wrote:
> Hi Dongchun, Sakari,
> 
> On Mon, May 18, 2020 at 09:27:31PM +0800, Dongchun Zhu wrote:
> > Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> > control to set the desired focus via IIC serial interface.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  MAINTAINERS                |   1 +
> >  drivers/media/i2c/Kconfig  |  13 ++
> >  drivers/media/i2c/Makefile |   1 +
> >  drivers/media/i2c/dw9768.c | 515 +++++++++++++++++++++++++++++++++++++++++++++
> >  4 files changed, 530 insertions(+)
> >  create mode 100644 drivers/media/i2c/dw9768.c
> [snip]
> > +/*
> > + * DW9768_AAC_PRESC_REG & DW9768_AAC_TIME_REG determine VCM operation time.
> > + * If DW9768_AAC_PRESC_REG is 0x41, and DW9768_AAC_TIME_REG is 0x39, VCM mode
> > + * would be AAC3, Operation Time would be 0.70xTvib, that is 8.40ms.
> > + */
> > +#define DW9768_MOVE_DELAY_US			8400
> > +#define DW9768_STABLE_TIME_US			20000
> 
> These times are only valid with the specific settings mentioned in the
> comment. If one sets different settings in DT, the driver would apply
> incorrect delays. Rather than hardcoded, they should be computed based
> on the configured values.
> 
> That said, I wonder if we're not digging too deep now. Sakari, do you
> think we could take a step back, remove the optional DT properties and
> just support the fixed values for now, so that we can get a basic driver
> upstream first without doubling the effort?
> 

Thanks for the reminder.
Yes, here DW9768_MOVE_DELAY_US actually represents Operation Time,
which is dependent upon board-specific settings that defined in DT.
For instance, for one given board, if aac-mode is 2, aac-timing is 0x39,
clock-presc is 1, then Operation Time would be 0.70*(6.3ms+57*0.1ms)*1 =
8.4ms.

> > +
> > +static const char * const dw9768_supply_names[] = {
> > +	"vin",	/* I2C I/O interface power */
> > +	"vdd",	/* VCM power */
> > +};
> > +
> > +/* dw9768 device structure */
> > +struct dw9768 {
> > +	struct regulator_bulk_data supplies[ARRAY_SIZE(dw9768_supply_names)];
> > +	struct v4l2_ctrl_handler ctrls;
> > +	struct v4l2_ctrl	*focus;
> > +	struct v4l2_subdev	sd;
> > +
> > +	u32			aac_mode;
> > +	u32			aac_timing;
> > +	u32			clock_dividing_rate;
> > +	bool			aac_mode_control_enable;
> > +	bool			aact_cnt_select_enable;
> > +	bool			clock_dividing_rate_select_enable;
> 
> nit: Separate types from names with just 1 space.
> 

Fixed in next release.

> > +};
> > +
> > +static inline struct dw9768 *sd_to_dw9768(struct v4l2_subdev *subdev)
> > +{
> > +	return container_of(subdev, struct dw9768, sd);
> > +}
> > +
> > +struct regval_list {
> > +	u8 reg_num;
> > +	u8 value;
> > +};
> > +
> > +static int dw9768_read_smbus(struct dw9768 *dw9768, unsigned char reg,
> > +			     unsigned char *val)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> > +	int ret;
> > +
> > +	ret = i2c_smbus_read_byte_data(client, reg);
> > +
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	*val = (unsigned char)ret;
> > +
> > +	return 0;
> > +}
> 
> Why do we need this function? Couldn't we just call
> i2c_smbus_read_byte_data() directly?
> 

Fixed in next release.

> [snip]
> > +static int dw9768_probe(struct i2c_client *client)
> > +{
> > +	struct device *dev = &client->dev;
> > +	struct dw9768 *dw9768;
> > +	unsigned int aac_mode_select;
> > +	unsigned int aac_timing_select;
> > +	unsigned int clock_dividing_rate_select;
> > +	unsigned int i;
> > +	int ret;
> > +
> > +	dw9768 = devm_kzalloc(dev, sizeof(*dw9768), GFP_KERNEL);
> > +	if (!dw9768)
> > +		return -ENOMEM;
> > +
> > +	v4l2_i2c_subdev_init(&dw9768->sd, client, &dw9768_ops);
> > +	dw9768->aac_mode_control_enable = false;
> > +	dw9768->aact_cnt_select_enable = false;
> > +	dw9768->clock_dividing_rate_select_enable = false;
> 
> devm_kzalloc() initializes the memory to zero, so no need to set anything
> to false explicitly.
> 

Thanks for the reminder.
Yes, these parameters shall not be needed to initialized as zeros.

> > +
> > +	/* Optional indication of AAC mode select */
> > +	ret = fwnode_property_read_u32(dev_fwnode(dev), "dongwoon,aac-mode",
> > +				       &aac_mode_select);
> > +
> > +	if (!ret) {
> > +		dw9768->aac_mode_control_enable = true;
> > +		dw9768->aac_mode = aac_mode_select;
> 
> How about making aac_mode a signed int and assigning -1 by
> default? Then we don't need two separate fields in the struct.
> 

Good idea.

> > +	}
> > +
> > +	/* Optional indication of VCM internal clock dividing rate select */
> > +	ret = fwnode_property_read_u32(dev_fwnode(dev),
> > +				       "dongwoon,clock-dividing-rate",
> > +				       &clock_dividing_rate_select);
> > +
> > +	if (!ret) {
> > +		dw9768->clock_dividing_rate_select_enable = true;
> > +		dw9768->clock_dividing_rate = clock_dividing_rate_select;
> 
> Ditto.
> 

Got it.

> > +	}
> > +
> > +	/* Optional indication of AAC Timing */
> > +	ret = fwnode_property_read_u32(dev_fwnode(dev), "dongwoon,aac-timing",
> > +				       &aac_timing_select);
> > +
> > +	if (!ret) {
> > +		dw9768->aact_cnt_select_enable = true;
> > +		dw9768->aac_timing = aac_timing_select;
> 
> Ditto.
> 

Got it.

> > +	}
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
> > +	ret = dw9768_init_controls(dw9768);
> > +	if (ret)
> > +		goto entity_cleanup;
> > +
> > +	dw9768->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> > +	dw9768->sd.internal_ops = &dw9768_int_ops;
> > +
> > +	ret = media_entity_pads_init(&dw9768->sd.entity, 0, NULL);
> > +	if (ret < 0)
> > +		goto entity_cleanup;
> > +
> > +	dw9768->sd.entity.function = MEDIA_ENT_F_LENS;
> > +
> > +	pm_runtime_enable(dev);
> > +	if (!pm_runtime_enabled(dev)) {
> > +		ret = dw9768_runtime_resume(dev);
> > +		if (ret < 0) {
> > +			dev_err(dev, "failed to power on: %d\n", ret);
> > +			goto entity_cleanup;
> > +		}
> > +	}
> > +
> > +	ret = v4l2_async_register_subdev(&dw9768->sd);
> > +	if (ret < 0)
> > +		goto entity_cleanup;
> > +
> > +	return 0;
> > +
> > +entity_cleanup:
> 
> Need to power off if the code above powered on.
> 

Thanks for the reminder.
If there is something wrong with runtime PM, actuator is to be powered
on via dw9768_runtime_resume() API.
When actuator sub-device is powered on completely and async registered
successfully, we shall power off it afterwards.

> > +	v4l2_ctrl_handler_free(&dw9768->ctrls);
> > +	media_entity_cleanup(&dw9768->sd.entity);
> > +	return ret;
> > +}
> > +
> > +static int dw9768_remove(struct i2c_client *client)
> > +{
> > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > +	struct dw9768 *dw9768 = sd_to_dw9768(sd);
> > +
> > +	pm_runtime_disable(&client->dev);
> 
> First the device must be unregistered from the userspace. Otherwise there
> is a race condition that risks the userspace accessing the device while the
> deinitialization is happening.
> 

Fixed in next release by adjusting the sequence of unregistering and
runtime PM disable.

> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
