Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254021EF984
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:44:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HIN6K6faw8ql1KIApeKwwBo/1TF0Ik8CrVWVsdkf8Y=; b=RjnokyS7fh1KMc
	Xc844FyStFPckPF7Rqpopl7fNZrTXaFt1tiQGDl0FQwXqUDm8iQkVZercaGwp1/PPazhYuc7BNWlI
	jC0XCj61cPtYR8bYvw4sUf3fZz/NK/hCS6A4MPNhapzweWBVKyyjYWgSAacchHbkAkc0Xb6alLQBa
	OcZxvjEtynVRUC6LouIPQ6wF/BE3NhBuzIlA4YWfK6qDGkjQX2jIMqFGZgb6i3Bh9JbsCDI0TiZdq
	mNWILTRZrIZLxugq0nZWwROSyOP2WjQ9MuqTVMdd4x8o2GLdOx9g/gnRcezi4Zn8XvdUF42SAwHsT
	8/J25gPdxlcpeghrPimw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCeU-0005bw-9m; Fri, 05 Jun 2020 13:44:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCeK-0005Zw-R7
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:44:46 +0000
Received: by mail-wm1-x342.google.com with SMTP id u26so9136281wmn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 06:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5PQzDDsQmUF7BQ6/0BhotZrc2bmAb1gdhbMGEhMSqcQ=;
 b=YmDuS9PTgLKSaem8HHqKX+hkd3wzt5977OMZX9Vc9GhmUnjYYeI0TuoiNCNU3e367c
 6nrIZoUYknY3zCRVxe84B32wytGoNfzvtiAzirGZHddzuUB8+Sh6PCVWrGHeUcm3qOUf
 jSsJlD1Pp8hS1Wp/44jEvOzdcpHks9/rFgpuA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5PQzDDsQmUF7BQ6/0BhotZrc2bmAb1gdhbMGEhMSqcQ=;
 b=UZkV1+8NnKKK4BaWsnOpi5muFzR/Y3jTTTcvZN8Z+fVYoYIx8GtfHJe0YpC8l9DkVG
 +sf54E5pdSkMwNXb8GI9ELJP8jNvAxanHlRfytHkPK/rGIVpnenO3mFF6mQQi2QRPQa3
 qoaYlGY/VS3uczy3y8hG/jtqXaaoPEWdhtllZ5sCqAsv6FyLDpENm4vSw6FdGwRooldA
 ZLskbjN/RtLOGGtZzXAYtb2zSPQaY8JNzbDnpCfROnefTa8e28lnmURrzhCqXwR/KX54
 RBuFPk6MCqnw/izhiKM0CMnUXChpex4SVHoZ2jdIVqi5JJZv7tUOvkrtwhZBCGE1tcl9
 8zhg==
X-Gm-Message-State: AOAM5316/SjaMvoNvVYfdMRAJHX6/H6RXEUmVvMxm0YPpkkBtaGKrFpb
 /wXPsbtt04drF7Bm6L9fu0kPvw==
X-Google-Smtp-Source: ABdhPJyfc8GxBiu72Fup2m9Lg5jy8H1Blu9IcyRWs6TPDQLtTerzzmJnbgWxh70lB/Kpcv6rAvgsww==
X-Received: by 2002:a1c:7c0e:: with SMTP id x14mr2683360wmc.1.1591364682767;
 Fri, 05 Jun 2020 06:44:42 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id c6sm12429250wro.92.2020.06.05.06.44.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Jun 2020 06:44:42 -0700 (PDT)
Date: Fri, 5 Jun 2020 13:44:40 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V7, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
Message-ID: <20200605134440.GA20379@chromium.org>
References: <20200605105412.18813-1-dongchun.zhu@mediatek.com>
 <20200605105412.18813-3-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605105412.18813-3-dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_064444_916204_D1E60897 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi Dongchun,

On Fri, Jun 05, 2020 at 06:54:12PM +0800, Dongchun Zhu wrote:
> Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> control to set the desired focus via IIC serial interface.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  MAINTAINERS                |   1 +
>  drivers/media/i2c/Kconfig  |  13 ++
>  drivers/media/i2c/Makefile |   1 +
>  drivers/media/i2c/dw9768.c | 566 +++++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 581 insertions(+)
>  create mode 100644 drivers/media/i2c/dw9768.c
> 

Thank you for the patch. Please see my comments inline.

[snip]
> +/*
> + * DW9768 requires waiting time (delay time) of t_OPR after power-up,
> + * or in the case of PD reset taking place.
> + */
> +#define DW9768_T_OPR_US				1000
> +#define DW9768_Tvib_MS_BASE10			(64 - 1)

Kernel macro names are uppercase only.

[snip]
> +	/* Set AAC Timing */
> +	if (dw9768->aac_timing != DW9768_AAC_TIME_DEFAULT) {
> +		ret = i2c_smbus_write_byte_data(client, DW9768_AAC_TIME_REG,
> +						dw9768->aac_timing);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	move_delay_us = dw9768_cal_move_delay(dw9768->aac_mode,
> +					      dw9768->clock_presc,
> +					      dw9768->aac_timing) / 100;

We could calculate this once in probe() and store the ready us value in
the dw9768 struct.

> +
> +	for (val = dw9768->focus->val % DW9768_MOVE_STEPS;
> +	     val <= dw9768->focus->val;
> +	     val += DW9768_MOVE_STEPS) {
> +		ret = dw9768_set_dac(dw9768, val);
> +		if (ret) {
> +			dev_err(&client->dev, "%s I2C failure: %d",
> +				__func__, ret);
> +			return ret;
> +		}
> +		usleep_range(move_delay_us, move_delay_us + 1000);
> +	}
> +
> +	return 0;
> +}
[snip]
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
> +		goto error_async_register;
> +	}
> +
> +	return 0;
> +
> +error_async_register:

The recommendation is to name the labels after the clean-up task that needs
to be done. Should this one be called error_power_off?

> +	if (!pm_runtime_enabled(dev))
> +		dw9768_runtime_suspend(dev);

Shouldn't we also call pm_runtime_disable() here?

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
> +	if (!pm_runtime_status_suspended(&client->dev))

pm_runtime_status_suspended() doesn't consider the runtime PM disable
state. There is also pm_runtime_suspended() and that should be correct
here.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
