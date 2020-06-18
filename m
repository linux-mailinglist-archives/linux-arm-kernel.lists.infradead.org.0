Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD201FFB42
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 20:46:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1/hOzexpsqv4qUvaIh5AyXldIWaNhhPpy6sydM1wXM=; b=cCBUY6fJ7iZH9H
	5zTwf/1dfVpqXYETiBdIGoD5mZP52B4tVPold3sHHyfS15h+OjWG80bcIhZHxhMxfQRHpFDjUVUPJ
	AuFHl3sRo9CsDEDFQRZAGMkZ38nr9CalH7bcRn6S5iSkwydHDi6vpYE/h/K+qVWNDyBtJNsPVO8cn
	0yMwZ68F7TBEJTv9Qsu1c1TZ6N53ln+xHWu5iF0uCeuSE3qqXYXMqmP4lf6iEqvTgMUSbhdnSbJm0
	fh38Q3sdL9pxPF/E3C8KajVMKWDRRVi7BNoqLqSvTOhYmCA8oCHDK/2vt6FweX0/KWBn1yW+ivIN9
	afXcbCNOnKhpWHIouSBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlzYB-0006cD-RF; Thu, 18 Jun 2020 18:46:11 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlzXy-0006ap-L9
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 18:46:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id t194so6758396wmt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 11:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=om0q/0j+ZqIugQgaYYIuFIhrC2pXMmtAQ/IXYYyteLk=;
 b=P4LNQCpxRN8jCvdEjmGgNPLfQuIQ7KZuO5ExMbN7DTYZY2tsLbyMP2q0l0gYkSlD9u
 +p7svDC5EcuBVpD4M+r6rNupo6F/0dqcAa+2krVJTOePsmpmT+TF8f6R9Rupnvgk39Bv
 QlUvHpOz3JGN+Cm5foXSAvGMv59wReg1IuLMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=om0q/0j+ZqIugQgaYYIuFIhrC2pXMmtAQ/IXYYyteLk=;
 b=bthabebTguOv20XtKN78qWLYzh6fgKqA2jjbQFSssR3tLBsHuqfDM65WidyWb9dyvs
 Dwl4XAF9Tut6jCYYWwmg6B+d3AbB6Sx4WaSiOPSmpBe+12VuezYuadZN9Gg4mpnWIUPd
 W2dLbBX8u3IBD8BgV0OGqOKEyhEy2AhJ2rZs9GBTe6qbs0rTmXBZiuay6vpy3w0/niis
 GAkUdN+tBict/lZ+oIBl9e785/CM9iKFtCHLBfTCJ1KU7Xgk+PpuCZK61D6YC6wRLMkP
 Ke0al9poTWr2VSmIOlNz3Spern+ltHc/YLOa7aED6Ye2fq647TpjyUQS0RnSzWeRlGbn
 qkEw==
X-Gm-Message-State: AOAM5335aTSlDx8GyQGX9FAcfKkDNoSEPnu+vfGe9MoPsf2L8FeD+Npl
 I8BQ9BrNd8o9Um2Wk/LSLIyV6g==
X-Google-Smtp-Source: ABdhPJxsKDOMgOezBCKzn3QqTjUHEzvRe1U6V8whyLVhKxoQ3O7dQu/6dQjOFtvoke2We8fHAwb8Xw==
X-Received: by 2002:a1c:f301:: with SMTP id q1mr5480382wmq.110.1592505957214; 
 Thu, 18 Jun 2020 11:45:57 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id g18sm4511520wme.17.2020.06.18.11.45.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 11:45:56 -0700 (PDT)
Date: Thu, 18 Jun 2020 18:45:54 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [PATCH V8 2/2] media: i2c: dw9768: Add DW9768 VCM driver
Message-ID: <20200618184554.GA68039@chromium.org>
References: <20200616125531.31671-1-dongchun.zhu@mediatek.com>
 <20200616125531.31671-3-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616125531.31671-3-dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_114558_720116_BDF83780 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 sakari.ailus@linux.intel.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 08:55:31PM +0800, Dongchun Zhu wrote:
> Add a V4L2 sub-device driver for DW9768 voice coil motor,
> providing control to set the desired focus via IIC serial interface.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  MAINTAINERS                |   1 +
>  drivers/media/i2c/Kconfig  |  12 +
>  drivers/media/i2c/Makefile |   1 +
>  drivers/media/i2c/dw9768.c | 553 +++++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 567 insertions(+)
>  create mode 100644 drivers/media/i2c/dw9768.c
[snip]
> +static int dw9768_probe(struct i2c_client *client)
> +{
> +	struct device *dev = &client->dev;
> +	struct dw9768 *dw9768;
> +	unsigned int i;
> +	int ret;
> +
> +	dw9768 = devm_kzalloc(dev, sizeof(*dw9768), GFP_KERNEL);
> +	if (!dw9768)
> +		return -ENOMEM;
> +
> +	/* Initialize subdev */
> +	v4l2_i2c_subdev_init(&dw9768->sd, client, &dw9768_ops);
> +
> +	dw9768->aac_mode = DW9768_AAC_MODE_DEFAULT;
> +	dw9768->aac_timing = DW9768_AAC_TIME_DEFAULT;
> +	dw9768->clock_presc = DW9768_CLOCK_PRE_SCALE_DEFAULT;
> +
> +	/* Optional indication of AAC mode select */
> +	fwnode_property_read_u32(dev_fwnode(dev), "dongwoon,aac-mode",
> +				 &dw9768->aac_mode);
> +
> +	/* Optional indication of clock pre-scale select */
> +	fwnode_property_read_u32(dev_fwnode(dev), "dongwoon,clock-presc",
> +				 &dw9768->clock_presc);
> +
> +	/* Optional indication of AAC Timing */
> +	fwnode_property_read_u32(dev_fwnode(dev), "dongwoon,aac-timing",
> +				 &dw9768->aac_timing);
> +
> +	dw9768->move_delay_us = dw9768_cal_move_delay(dw9768->aac_mode,
> +						      dw9768->clock_presc,
> +						      dw9768->aac_timing) / 100;

nit: Could we make the function return the value in us already? One would
expect the function to return the value in a standard unit, so this
division by 100 here is confusing.

> +
> +	for (i = 0; i < ARRAY_SIZE(dw9768_supply_names); i++)
> +		dw9768->supplies[i].supply = dw9768_supply_names[i];
> +
> +	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(dw9768_supply_names),
> +				      dw9768->supplies);
> +	if (ret) {
> +		dev_err(dev, "failed to get regulators\n");
> +		return ret;
> +	}
> +
> +	/* Initialize controls */
> +	ret = dw9768_init_controls(dw9768);
> +	if (ret)
> +		goto err_free_handler;
> +
> +	/* Initialize subdev */
> +	dw9768->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> +	dw9768->sd.internal_ops = &dw9768_int_ops;
> +
> +	ret = media_entity_pads_init(&dw9768->sd.entity, 0, NULL);
> +	if (ret < 0)
> +		goto err_free_handler;
> +
> +	dw9768->sd.entity.function = MEDIA_ENT_F_LENS;
> +
> +	pm_runtime_enable(dev);
> +	if (!pm_runtime_enabled(dev)) {
> +		ret = dw9768_runtime_resume(dev);
> +		if (ret < 0) {
> +			dev_err(dev, "failed to power on: %d\n", ret);
> +			goto err_clean_entity;
> +		}
> +	}
> +
> +	ret = v4l2_async_register_subdev(&dw9768->sd);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to register V4L2 subdev: %d", ret);
> +		goto err_power_off;
> +	}
> +
> +	return 0;
> +
> +err_power_off:
> +	pm_runtime_disable(dev);
> +	if (!pm_runtime_enabled(dev))

We just disabled runtime PM in the line above, so this check would be
always true. Need to call pm_runtime_disable() after this if.

> +		dw9768_runtime_suspend(dev);
> +err_clean_entity:
> +	media_entity_cleanup(&dw9768->sd.entity);
> +err_free_handler:
> +	v4l2_ctrl_handler_free(&dw9768->ctrls);
> +
> +	return ret;
> +}
> +
> +static int dw9768_remove(struct i2c_client *client)
> +{
> +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> +	struct dw9768 *dw9768 = sd_to_dw9768(sd);
> +
> +	v4l2_async_unregister_subdev(&dw9768->sd);
> +	v4l2_ctrl_handler_free(&dw9768->ctrls);
> +	media_entity_cleanup(&dw9768->sd.entity);
> +	pm_runtime_disable(&client->dev);
> +	if (!pm_runtime_suspended(&client->dev))

Oops, I just realized that my suggestion about the function to use here
was incorrect. pm_runtime_status_suspended() should be the correct function
here. Sorry for the confusion.

This is because we only have 2 cases here:
 - runtime PM compiled out - the stubs function is used, which returns
   false, so the condition is true,
 - runtime PM compiled in - we enabled runtime PM in probe, so here we
   don't need to consider the enable state.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
