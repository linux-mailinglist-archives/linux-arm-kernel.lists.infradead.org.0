Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BB91EEFF7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 05:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFQGxjnqcOYQepnB08hQyv7a1ilkvZ3e4SGEPMIFze4=; b=kr9ZijJejhDPeq
	1h5GDGxEAm1EPkKlbh2BN5dqFD97NfE0SKAWR9HGJxVNCoFbQrlS0Smupmauvt0dRFSf7vXJmB84S
	4++zS9nXipR8g89IQ9+RHv32g8kkxpFPKuA3pBRLJw7CfIOIafJ+gHC0naBM2+wbJMcprKS4/mmvJ
	R5efEsUa/3YfPfl47Y+PdJ39puMwBxQjNIuIgpaksRMfTARDTXWkcRJcRQqMVYqCri+fAccwg2IGs
	NW2ZeaK1LQpEtY1SwtoPw40ocK2sWdX6DuQNOk2jnolrT1GlduBK9mhBE3Sa7zOFMuo1foFwVPZg+
	iHEQ5ABzx/s4ldkNe3og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh35R-0006AL-8c; Fri, 05 Jun 2020 03:32:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh34m-0005jX-I1; Fri, 05 Jun 2020 03:31:28 +0000
X-UUID: 59927f6b1be94d76a788e74651131520-20200604
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=MHlq0MQzXxzGdzCp+WA3QekEd3SxtT46HLdvc3d72CY=; 
 b=KiRUwyi8GFs77wQMyZGENwImTmg9YtwVdfVcEYU7rSFutzLPn0ERROX81yHQsZsidpYrsigZRxCVxR04wFlHc4WOfoNqtMOTZaVQ2z5Vqj+mRhLWTafdHbbt7M9YSaDLY3iHEgvd4Vq68biSU1vtCQ2ZbS/MwEeC9FkhyPrYAq4=;
X-UUID: 59927f6b1be94d76a788e74651131520-20200604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1200726263; Thu, 04 Jun 2020 19:31:14 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 20:21:15 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 5 Jun 2020 11:21:11 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 5 Jun 2020 11:21:10 +0800
Message-ID: <1591327147.8804.561.camel@mhfsdcap03>
Subject: Re: [V9, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Date: Fri, 5 Jun 2020 11:19:07 +0800
In-Reply-To: <20200604092616.GJ16711@paasikivi.fi.intel.com>
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-3-dongchun.zhu@mediatek.com>
 <1591236845.8804.547.camel@mhfsdcap03>
 <20200604092616.GJ16711@paasikivi.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 28F51B7C61836675CD5E7C0BB31C57102791D8C41924DC04BA6D5AB6E2499ABA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_203124_614473_DCA07B10 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Thu, 2020-06-04 at 12:26 +0300, Sakari Ailus wrote:
> Hi Dongchun,
> 
> On Thu, Jun 04, 2020 at 10:14:05AM +0800, Dongchun Zhu wrote:
> > Hi Tomasz, Sakari, and sirs,
> > 
> > Could anyone help to review this patch?
> > 
> > On Sat, 2020-05-23 at 16:41 +0800, Dongchun Zhu wrote:
> > > Add a V4L2 sub-device driver for OV02A10 image sensor.
> > > 
> > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > ---
> > >  MAINTAINERS                 |    1 +
> > >  drivers/media/i2c/Kconfig   |   13 +
> > >  drivers/media/i2c/Makefile  |    1 +
> > >  drivers/media/i2c/ov02a10.c | 1025 +++++++++++++++++++++++++++++++++++++++++++
> > >  4 files changed, 1040 insertions(+)
> > >  create mode 100644 drivers/media/i2c/ov02a10.c
> > > 
> > 
> > [snip]
> > 
> > > +static int ov02a10_probe(struct i2c_client *client)
> > > +{
> > > +	struct device *dev = &client->dev;
> > > +	struct ov02a10 *ov02a10;
> > > +	unsigned int rotation;
> > > +	unsigned int clock_lane_tx_speed;
> > > +	unsigned int i;
> > > +	int ret;
> > > +
> > > +	ov02a10 = devm_kzalloc(dev, sizeof(*ov02a10), GFP_KERNEL);
> > > +	if (!ov02a10)
> > > +		return -ENOMEM;
> > > +
> > > +	ret = ov02a10_check_hwcfg(dev, ov02a10);
> > > +	if (ret) {
> > > +		dev_err(dev, "failed to check HW configuration: %d", ret);
> > > +		return ret;
> > > +	}
> > > +
> > > +	v4l2_i2c_subdev_init(&ov02a10->subdev, client, &ov02a10_subdev_ops);
> > > +	ov02a10->mipi_clock_tx_speed = OV02A10_MIPI_TX_SPEED_DEFAULT;
> > > +	ov02a10->fmt.code = MEDIA_BUS_FMT_SBGGR10_1X10;
> > > +
> > > +	/* Optional indication of physical rotation of sensor */
> > > +	ret = fwnode_property_read_u32(dev_fwnode(dev), "rotation", &rotation);
> > > +	if (!ret && rotation == 180) {
> > > +		ov02a10->upside_down = true;
> > > +		ov02a10->fmt.code = MEDIA_BUS_FMT_SRGGB10_1X10;
> > > +	}
> > > +
> > > +	/* Optional indication of mipi TX speed */
> > > +	ret = fwnode_property_read_u32(dev_fwnode(dev), "ovti,mipi-tx-speed",
> > > +				       &clock_lane_tx_speed);
> > > +
> > > +	if (!ret)
> > > +		ov02a10->mipi_clock_tx_speed = clock_lane_tx_speed;
> > > +
> > > +	/* Get system clock (eclk) */
> > > +	ov02a10->eclk = devm_clk_get(dev, "eclk");
> > > +	if (IS_ERR(ov02a10->eclk)) {
> > > +		ret = PTR_ERR(ov02a10->eclk);
> > > +		dev_err(dev, "failed to get eclk %d\n", ret);
> > > +		return ret;
> > > +	}
> > > +
> > > +	ret = fwnode_property_read_u32(dev_fwnode(dev), "clock-frequency",
> > > +				       &ov02a10->eclk_freq);
> > > +	if (ret) {
> > > +		dev_err(dev, "failed to get eclk frequency\n");
> > > +		return ret;
> > > +	}
> > > +
> > > +	ret = clk_set_rate(ov02a10->eclk, ov02a10->eclk_freq);
> > > +	if (ret) {
> > > +		dev_err(dev, "failed to set eclk frequency (24MHz)\n");
> > > +		return ret;
> > > +	}
> > > +
> > > +	if (clk_get_rate(ov02a10->eclk) != OV02A10_ECLK_FREQ) {
> > > +		dev_warn(dev, "wrong eclk frequency %d Hz, expected: %d Hz\n",
> > > +			 ov02a10->eclk_freq, OV02A10_ECLK_FREQ);
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	ov02a10->pd_gpio = devm_gpiod_get(dev, "powerdown", GPIOD_OUT_HIGH);
> > > +	if (IS_ERR(ov02a10->pd_gpio)) {
> > > +		ret = PTR_ERR(ov02a10->pd_gpio);
> > > +		dev_err(dev, "failed to get powerdown-gpios %d\n", ret);
> > > +		return ret;
> > > +	}
> > > +
> > > +	ov02a10->n_rst_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> > > +	if (IS_ERR(ov02a10->n_rst_gpio)) {
> > > +		ret = PTR_ERR(ov02a10->n_rst_gpio);
> > > +		dev_err(dev, "failed to get reset-gpios %d\n", ret);
> > > +		return ret;
> > > +	}
> > > +
> > > +	for (i = 0; i < ARRAY_SIZE(ov02a10_supply_names); i++)
> > > +		ov02a10->supplies[i].supply = ov02a10_supply_names[i];
> > > +
> > > +	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ov02a10_supply_names),
> > > +				      ov02a10->supplies);
> > > +	if (ret) {
> > > +		dev_err(dev, "failed to get regulators\n");
> > > +		return ret;
> > > +	}
> > > +
> > > +	mutex_init(&ov02a10->mutex);
> > > +	ov02a10->cur_mode = &supported_modes[0];
> > > +	ret = ov02a10_initialize_controls(ov02a10);
> > > +	if (ret) {
> > > +		dev_err(dev, "failed to initialize controls\n");
> > > +		goto err_destroy_mutex;
> > > +	}
> > > +
> > > +	ov02a10->subdev.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> > > +	ov02a10->subdev.entity.ops = &ov02a10_subdev_entity_ops;
> > > +	ov02a10->subdev.entity.function = MEDIA_ENT_F_CAM_SENSOR;
> > > +	ov02a10->pad.flags = MEDIA_PAD_FL_SOURCE;
> > > +	ret = media_entity_pads_init(&ov02a10->subdev.entity, 1, &ov02a10->pad);
> > > +	if (ret < 0) {
> > > +		dev_err(dev, "failed to init entity pads: %d", ret);
> > > +		goto err_free_handler;
> > > +	}
> > > +
> > > +	pm_runtime_enable(dev);
> > > +	if (!pm_runtime_enabled(dev)) {
> > > +		ret = ov02a10_power_on(dev);
> > > +		if (ret < 0) {
> > > +			dev_err(dev, "failed to power on: %d\n", ret);
> > > +			goto err_free_handler;

This is actually wrong, which should be replaced of "err_clean_entity".

> > > +		}
> > > +	}
> > > +
> > > +	ret = v4l2_async_register_subdev(&ov02a10->subdev);
> > > +	if (ret) {
> > > +		dev_err(dev, "failed to register V4L2 subdev: %d", ret);
> > > +		if (!pm_runtime_enabled(dev))
> > > +			ov02a10_power_off(dev);
> 
> This should be moved to error handling section below.
> 

Fine.
It would be abstracted as "err_async_register" in next release.
Something like:
err_async_register:
	if (!pm_runtime_enabled(dev))
		ov02a10_power_off(dev);
err_clean_entity:
	media_entity_cleanup(&ov02a10->subdev.entity);
...

> > > +		goto err_clean_entity;
> > > +	}
> > 
> > Tomasz, Sakari, is this ok?
> > or coding like this:
> > 
> > ret = v4l2_async_register_subdev(&ov02a10->subdev);
> > if (!pm_runtime_enabled(dev))
> > 	ov02a10_power_off(dev);
> > if (ret) {
> > 	dev_err(dev, "failed to register V4L2 subdev: %d", ret);
> > 	goto err_clean_entity;
> > }
> > 
> > What's your opinions about the change?
> 
> This turns power off if runtime PM is disabled. I'd keep it as-is, as it'd
> require re-implementing what runtime PM is used for now --- and that's not
> a sensor driver's job.
> 
> > 
> > > +
> > > +	return 0;
> > > +
> > > +err_clean_entity:
> > > +	media_entity_cleanup(&ov02a10->subdev.entity);
> > > +err_free_handler:
> > > +	v4l2_ctrl_handler_free(ov02a10->subdev.ctrl_handler);
> > > +err_destroy_mutex:
> > > +	mutex_destroy(&ov02a10->mutex);
> > > +
> > > +	return ret;
> > > +}
> > > +
> > > +static int ov02a10_remove(struct i2c_client *client)
> > > +{
> > > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > > +	struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > > +
> > > +	v4l2_async_unregister_subdev(sd);
> > > +	media_entity_cleanup(&sd->entity);
> > > +	v4l2_ctrl_handler_free(sd->ctrl_handler);
> > > +	pm_runtime_disable(&client->dev);
> > > +	if (!pm_runtime_status_suspended(&client->dev))
> > > +		ov02a10_power_off(&client->dev);
> > > +	pm_runtime_set_suspended(&client->dev);
> > > +	mutex_destroy(&ov02a10->mutex);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static const struct of_device_id ov02a10_of_match[] = {
> > > +	{ .compatible = "ovti,ov02a10" },
> > > +	{}
> > > +};
> > > +MODULE_DEVICE_TABLE(of, ov02a10_of_match);
> > > +
> > > +static struct i2c_driver ov02a10_i2c_driver = {
> > > +	.driver = {
> > > +		.name = "ov02a10",
> > > +		.pm = &ov02a10_pm_ops,
> > > +		.of_match_table = ov02a10_of_match,
> > > +	},
> > > +	.probe_new	= &ov02a10_probe,
> > > +	.remove		= &ov02a10_remove,
> > > +};
> > > +
> > > +module_i2c_driver(ov02a10_i2c_driver);
> > > +
> > > +MODULE_AUTHOR("Dongchun Zhu <dongchun.zhu@mediatek.com>");
> > > +MODULE_DESCRIPTION("OmniVision OV02A10 sensor driver");
> > > +MODULE_LICENSE("GPL v2");
> > > +
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
