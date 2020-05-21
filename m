Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 833401DD79E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 21:51:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHClsCmlw6ZcDKD/1/vGpOyEDfzTDYxoFZ1pG+oq/cU=; b=qp0PUXBTQoagxX
	jzoCERtdlcRZfa4BIwq4iLhp+enWKJV5JntoejUh7HaUBzlIOPJzrYqCDLWQIQ6vBZMpAd7k0USyf
	BTLIwxgW6btd3nIsoTwQhUxH1q3yEkmio1hyO80xm3KHGxOa6XHnwMzX7CT0H4A7dSWyPvdOlesBn
	poxsEGE3Cm1UUgQKN2SnmqEjOjr9zaIKX79qm7qNBCpep897FG/zLETUidyooocGIbBWjfEVqz8IO
	ly9BcEf6zwRHrAkLojWpFazHbPK2mK/uzdIss+B0WYau2er8MpD7JKgv3gLO/cblc8r82+5+OsI5s
	4mLLIiOguDNa0x0ixu7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbrE4-0000Po-Ai; Thu, 21 May 2020 19:51:32 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbrDp-0000OU-0L
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 19:51:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id z72so7651034wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 12:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tXiGWKxcizAmUcdGxFZhb+iX29hlTYX+Cl65ro07vic=;
 b=WlJYgMh2SdntlWU1WmKTcOAUOtNmQQX82qgtvK/ur05z3QNM7ar9ikuGofVXnWdDN2
 Ip0SOpGKW/PABRn2oLdfqaToVDfZIf7yAVkTSZcKhzt2mRSXTiEBjBAAzM2PvSOggdjG
 09Z1GBJekUw4uHrAtRQ24UxLs820MmR7LJ12I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tXiGWKxcizAmUcdGxFZhb+iX29hlTYX+Cl65ro07vic=;
 b=dlyi0/PT0VgFmte+yy/fyW4A6c8rOqoDrERdWudZcxYLM3u+A1L4LDVEuXEg6XpfAc
 L2wAm3CcCVwMBoJuyv29U42DOLdBXOop6gntusZT2PjpvIhLJJV5uoY2d28bL64Gg22A
 rCjhnIOfe44d+kXqeYqiwQREdG04iwRzQCws/uEQOEFtOvOVX6O4iLBbaacu3ecu4Fvj
 U2EYTU1K8YU8EkkRpmAC93NxuYRXbdClizp1MHbOOJjwkaspValqZO4AN2t4HHqSiP7k
 toyfifG+UmDVFYRhDRc6aEKIIaUgghL9/pPvlctVxsqwZGi4mhFk8z+rC/YORNssYzy8
 C6xA==
X-Gm-Message-State: AOAM530xUTALsXcYUapn5iMpUQItrFxzb/F4gMHf8e4xbGIgY1eBzSmo
 TB1NwxGY3WHnR2L4swNTVNphUA==
X-Google-Smtp-Source: ABdhPJyjsZ7hK797EjzOKDGLVownHQy9DW40gXOy+PcukZTeX7rDoXWOyimJaOKk0Tu8BtHYy6tpuQ==
X-Received: by 2002:a1c:5541:: with SMTP id j62mr9574864wmb.64.1590090675360; 
 Thu, 21 May 2020 12:51:15 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id 1sm7775934wmz.13.2020.05.21.12.51.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 12:51:14 -0700 (PDT)
Date: Thu, 21 May 2020 19:51:13 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V6, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
Message-ID: <20200521195113.GC14214@chromium.org>
References: <20200518132731.20855-1-dongchun.zhu@mediatek.com>
 <20200518132731.20855-3-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518132731.20855-3-dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_125117_062887_D79B0703 
X-CRM114-Status: GOOD (  20.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Dongchun, Sakari,

On Mon, May 18, 2020 at 09:27:31PM +0800, Dongchun Zhu wrote:
> Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> control to set the desired focus via IIC serial interface.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  MAINTAINERS                |   1 +
>  drivers/media/i2c/Kconfig  |  13 ++
>  drivers/media/i2c/Makefile |   1 +
>  drivers/media/i2c/dw9768.c | 515 +++++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 530 insertions(+)
>  create mode 100644 drivers/media/i2c/dw9768.c
[snip]
> +/*
> + * DW9768_AAC_PRESC_REG & DW9768_AAC_TIME_REG determine VCM operation time.
> + * If DW9768_AAC_PRESC_REG is 0x41, and DW9768_AAC_TIME_REG is 0x39, VCM mode
> + * would be AAC3, Operation Time would be 0.70xTvib, that is 8.40ms.
> + */
> +#define DW9768_MOVE_DELAY_US			8400
> +#define DW9768_STABLE_TIME_US			20000

These times are only valid with the specific settings mentioned in the
comment. If one sets different settings in DT, the driver would apply
incorrect delays. Rather than hardcoded, they should be computed based
on the configured values.

That said, I wonder if we're not digging too deep now. Sakari, do you
think we could take a step back, remove the optional DT properties and
just support the fixed values for now, so that we can get a basic driver
upstream first without doubling the effort?

> +
> +static const char * const dw9768_supply_names[] = {
> +	"vin",	/* I2C I/O interface power */
> +	"vdd",	/* VCM power */
> +};
> +
> +/* dw9768 device structure */
> +struct dw9768 {
> +	struct regulator_bulk_data supplies[ARRAY_SIZE(dw9768_supply_names)];
> +	struct v4l2_ctrl_handler ctrls;
> +	struct v4l2_ctrl	*focus;
> +	struct v4l2_subdev	sd;
> +
> +	u32			aac_mode;
> +	u32			aac_timing;
> +	u32			clock_dividing_rate;
> +	bool			aac_mode_control_enable;
> +	bool			aact_cnt_select_enable;
> +	bool			clock_dividing_rate_select_enable;

nit: Separate types from names with just 1 space.

> +};
> +
> +static inline struct dw9768 *sd_to_dw9768(struct v4l2_subdev *subdev)
> +{
> +	return container_of(subdev, struct dw9768, sd);
> +}
> +
> +struct regval_list {
> +	u8 reg_num;
> +	u8 value;
> +};
> +
> +static int dw9768_read_smbus(struct dw9768 *dw9768, unsigned char reg,
> +			     unsigned char *val)
> +{
> +	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> +	int ret;
> +
> +	ret = i2c_smbus_read_byte_data(client, reg);
> +
> +	if (ret < 0)
> +		return ret;
> +
> +	*val = (unsigned char)ret;
> +
> +	return 0;
> +}

Why do we need this function? Couldn't we just call
i2c_smbus_read_byte_data() directly?

[snip]
> +static int dw9768_probe(struct i2c_client *client)
> +{
> +	struct device *dev = &client->dev;
> +	struct dw9768 *dw9768;
> +	unsigned int aac_mode_select;
> +	unsigned int aac_timing_select;
> +	unsigned int clock_dividing_rate_select;
> +	unsigned int i;
> +	int ret;
> +
> +	dw9768 = devm_kzalloc(dev, sizeof(*dw9768), GFP_KERNEL);
> +	if (!dw9768)
> +		return -ENOMEM;
> +
> +	v4l2_i2c_subdev_init(&dw9768->sd, client, &dw9768_ops);
> +	dw9768->aac_mode_control_enable = false;
> +	dw9768->aact_cnt_select_enable = false;
> +	dw9768->clock_dividing_rate_select_enable = false;

devm_kzalloc() initializes the memory to zero, so no need to set anything
to false explicitly.

> +
> +	/* Optional indication of AAC mode select */
> +	ret = fwnode_property_read_u32(dev_fwnode(dev), "dongwoon,aac-mode",
> +				       &aac_mode_select);
> +
> +	if (!ret) {
> +		dw9768->aac_mode_control_enable = true;
> +		dw9768->aac_mode = aac_mode_select;

How about making aac_mode a signed int and assigning -1 by
default? Then we don't need two separate fields in the struct.

> +	}
> +
> +	/* Optional indication of VCM internal clock dividing rate select */
> +	ret = fwnode_property_read_u32(dev_fwnode(dev),
> +				       "dongwoon,clock-dividing-rate",
> +				       &clock_dividing_rate_select);
> +
> +	if (!ret) {
> +		dw9768->clock_dividing_rate_select_enable = true;
> +		dw9768->clock_dividing_rate = clock_dividing_rate_select;

Ditto.

> +	}
> +
> +	/* Optional indication of AAC Timing */
> +	ret = fwnode_property_read_u32(dev_fwnode(dev), "dongwoon,aac-timing",
> +				       &aac_timing_select);
> +
> +	if (!ret) {
> +		dw9768->aact_cnt_select_enable = true;
> +		dw9768->aac_timing = aac_timing_select;

Ditto.

> +	}
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
> +	ret = dw9768_init_controls(dw9768);
> +	if (ret)
> +		goto entity_cleanup;
> +
> +	dw9768->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
> +	dw9768->sd.internal_ops = &dw9768_int_ops;
> +
> +	ret = media_entity_pads_init(&dw9768->sd.entity, 0, NULL);
> +	if (ret < 0)
> +		goto entity_cleanup;
> +
> +	dw9768->sd.entity.function = MEDIA_ENT_F_LENS;
> +
> +	pm_runtime_enable(dev);
> +	if (!pm_runtime_enabled(dev)) {
> +		ret = dw9768_runtime_resume(dev);
> +		if (ret < 0) {
> +			dev_err(dev, "failed to power on: %d\n", ret);
> +			goto entity_cleanup;
> +		}
> +	}
> +
> +	ret = v4l2_async_register_subdev(&dw9768->sd);
> +	if (ret < 0)
> +		goto entity_cleanup;
> +
> +	return 0;
> +
> +entity_cleanup:

Need to power off if the code above powered on.

> +	v4l2_ctrl_handler_free(&dw9768->ctrls);
> +	media_entity_cleanup(&dw9768->sd.entity);
> +	return ret;
> +}
> +
> +static int dw9768_remove(struct i2c_client *client)
> +{
> +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> +	struct dw9768 *dw9768 = sd_to_dw9768(sd);
> +
> +	pm_runtime_disable(&client->dev);

First the device must be unregistered from the userspace. Otherwise there
is a race condition that risks the userspace accessing the device while the
deinitialization is happening.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
