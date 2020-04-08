Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0021A26A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 18:01:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwQO//nZ3AzeZhEd6l9my0w2zLoPIhp7umdrsIR1D4A=; b=NDmzvjbv3iCayU
	YMd5iojgrmhOGenNE4rh8liL6RyXwnk6dhFCm8QrSv0lPVCQQanU2ic5Ji1i0tGMrH9ZStrN8g2wH
	woldjsDeyYc3chdUwVBN+bMZ41xC/RuFx7RsSVfC2wBJiz8WNf8l89PcCwTb0z5PWpbBK1FY/iYeF
	yzGo8HBh7RBa3I8K/mHcgn7GNoly6PaqP4HrKqtUuAoFebZ3xPFYjPoq9oqWD7hLKcXUmZYYY7DA3
	n7WGjFsorLOmRIzXC6n/kisbc+wdDSfNLUdZaszydQAkFYD73KLKz/xrj4KiUsTRdWcbVMJf4t7AJ
	jtWAvrwRhYOExaDVC7Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMD95-0002Af-OI; Wed, 08 Apr 2020 16:01:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMD8w-00029k-L5
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 16:01:36 +0000
Received: by mail-wm1-x341.google.com with SMTP id r26so521312wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 09:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bgRhZIyjaVy0rMlyDmDPKPQZBxgejQwqSwvwFypmTfA=;
 b=JEyQtK99j+UriBHHASh8TnZWjN8v8kiJjVj9Do6axLln+OFxq9PsE6X6IkUnd1Ever
 GNba5apz6MboLaOAAoHLrUQdJFgH/ojvUDzkdMmpqcLx/nwSzp6u0vuvdKanxUs5G+eB
 3tJs6wEqPx3G6I+d+M4OrQrMSavtMuRYRmQBLdn4q6T8Ox7KTefvIlf2keECoN4uvuC1
 eCsz3hdygGwzwhe61k9PjJMOZwTFmWOry+tHZAp3Akomgz1EnDAlFyy1nfuguyYHHBk+
 3fQhoCoGBZ9I3jXirmisplPyfXZQZLBZRFzBCIeYjVSlTGsKQ94DvdPY5LdAE5DXTu1y
 Vu1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bgRhZIyjaVy0rMlyDmDPKPQZBxgejQwqSwvwFypmTfA=;
 b=cTsnD/+ncRyVAzcVcYwEZ4w68UjL/0sBpNmzUzYx/7hkGiVuOtuWkrLmQsiQmJdDVU
 NgFADzwvFmMTjgWZASeWhgAr5tHdAUji7XWm0gL5/LGWP9nyOwhfPdL+G+mZQCGdsGwM
 pjoxgoQH17i3MzxSpjmhVRKuzNkKvZIEJZeQyqOAHmPfYE/79i04PdcyhtjYkZQyxMUv
 EUAGOFTWaADCQ8Uhs02ya6hbaihzn/2zq/RZt0P4VRMGbdcUpvJ9A/JBQukj50p9jH7S
 u5FKlPUE7Pu8pY+2SW84swSKWFYIktRvLelxtrF9BwVKyUzuUnJ5fYEUXfBdTeYvUIL1
 QetA==
X-Gm-Message-State: AGi0PuY9xY0QuDTlUcuaEUGDnk1kOFcP/bw8aogTV5iHAqxXACwT5VDl
 Pb4JQyVbU/PFqHzceG5r65M=
X-Google-Smtp-Source: APiQypI8UbQqGHvMaGEQhmGM18tVLZa+uil7fC2onY+Tbr5QgyJ/Rl4imNFkVAlxAZmbFwyS+92AsQ==
X-Received: by 2002:a1c:9e08:: with SMTP id h8mr5107318wme.183.1586361692602; 
 Wed, 08 Apr 2020 09:01:32 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net.
 [194.152.20.232])
 by smtp.gmail.com with ESMTPSA id t2sm18055177wrs.7.2020.04.08.09.01.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 09:01:23 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-sunxi@googlegroups.com
Subject: Re: [linux-sunxi] [PATCH] media: cedrus: Implement runtime PM
Date: Wed, 08 Apr 2020 18:01:15 +0200
Message-ID: <9673642.nUPlyArG6x@jernej-laptop>
In-Reply-To: <20200408010232.48432-1-samuel@sholland.org>
References: <20200408010232.48432-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_090134_689133_A4453FFF 
X-CRM114-Status: GOOD (  25.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jernej.skrabec[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-sunxi@googlegroups.com, samuel@sholland.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Samuel!

Dne sreda, 08. april 2020 ob 03:02:32 CEST je Samuel Holland napisal(a):
> This allows the VE clocks and PLL_VE to be disabled most of the time.
> 
> Since the device is stateless, each frame gets a separate runtime PM
> reference. Enable autosuspend so the PM callbacks are not run before and
> after every frame.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
> 
> I tested this with v4l2-request-test. I don't have the setup to do
> anything more complicated at the moment.
> 
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus.c   |   7 ++
>  .../staging/media/sunxi/cedrus/cedrus_hw.c    | 115 ++++++++++++------
>  .../staging/media/sunxi/cedrus/cedrus_hw.h    |   3 +
>  3 files changed, 88 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c
> b/drivers/staging/media/sunxi/cedrus/cedrus.c index
> 3fad5edccd17..9aa1fc8a6c26 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
> @@ -16,6 +16,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> +#include <linux/pm.h>
> 
>  #include <media/v4l2-device.h>
>  #include <media/v4l2-ioctl.h>
> @@ -474,6 +475,11 @@ static int cedrus_remove(struct platform_device *pdev)
>  	return 0;
>  }
> 
> +static const struct dev_pm_ops cedrus_dev_pm_ops = {
> +	SET_RUNTIME_PM_OPS(cedrus_hw_suspend,
> +			   cedrus_hw_resume, NULL)
> +};
> +
>  static const struct cedrus_variant sun4i_a10_cedrus_variant = {
>  	.mod_rate	= 320000000,
>  };
> @@ -559,6 +565,7 @@ static struct platform_driver cedrus_driver = {
>  	.driver		= {
>  		.name		= CEDRUS_NAME,
>  		.of_match_table	= of_match_ptr(cedrus_dt_match),
> +		.pm		= &cedrus_dev_pm_ops,
>  	},
>  };
>  module_platform_driver(cedrus_driver);
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c index
> daf5f244f93b..b84814d5afe4 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> @@ -19,6 +19,7 @@
>  #include <linux/dma-mapping.h>
>  #include <linux/interrupt.h>
>  #include <linux/clk.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
>  #include <linux/reset.h>
>  #include <linux/soc/sunxi/sunxi_sram.h>
> @@ -63,6 +64,8 @@ int cedrus_engine_enable(struct cedrus_ctx *ctx, enum
> cedrus_codec codec) if (ctx->src_fmt.width > 2048)
>  		reg |= VE_MODE_PIC_WIDTH_MORE_2048;
> 
> +	pm_runtime_get_sync(ctx->dev->dev);
> +
>  	cedrus_write(ctx->dev, VE_MODE, reg);
> 
>  	return 0;
> @@ -71,6 +74,9 @@ int cedrus_engine_enable(struct cedrus_ctx *ctx, enum
> cedrus_codec codec) void cedrus_engine_disable(struct cedrus_dev *dev)
>  {
>  	cedrus_write(dev, VE_MODE, VE_MODE_DISABLED);
> +
> +	pm_runtime_mark_last_busy(dev->dev);
> +	pm_runtime_put_autosuspend(dev->dev);
>  }
> 
>  void cedrus_dst_format_set(struct cedrus_dev *dev,
> @@ -134,12 +140,72 @@ static irqreturn_t cedrus_irq(int irq, void *data)
>  	else
>  		state = VB2_BUF_STATE_DONE;
> 
> +	cedrus_engine_disable(dev);
> +
>  	v4l2_m2m_buf_done_and_job_finish(ctx->dev->m2m_dev, ctx-
>fh.m2m_ctx,
>  					 state);
> 
>  	return IRQ_HANDLED;
>  }
> 
> +int cedrus_hw_resume(struct device *d)
> +{
> +	struct cedrus_dev *dev = dev_get_drvdata(d);
> +	int ret;
> +
> +	ret = clk_prepare_enable(dev->ahb_clk);
> +	if (ret) {
> +		dev_err(dev->dev, "Failed to enable AHB clock\n");
> +
> +		return ret;
> +	}
> +
> +	ret = clk_prepare_enable(dev->mod_clk);
> +	if (ret) {
> +		dev_err(dev->dev, "Failed to enable MOD clock\n");
> +
> +		goto err_ahb_clk;
> +	}
> +
> +	ret = clk_prepare_enable(dev->ram_clk);
> +	if (ret) {
> +		dev_err(dev->dev, "Failed to enable RAM clock\n");
> +
> +		goto err_mod_clk;
> +	}
> +
> +	ret = reset_control_reset(dev->rstc);
> +	if (ret) {
> +		dev_err(dev->dev, "Failed to apply reset\n");
> +
> +		goto err_ram_clk;
> +	}

Reset above causes problem. When format is set in cedrus_s_fmt_vid_cap() a 
function is called, which sets few registers in HW. Of course, there is no 
guarantee that someone will start decoding immediately after capture format is 
set. So, if the driver puts VPU to sleep in the mean time, reset will clear 
those registers and decoded video will be in different format than expected. It 
could be even argued that registers should not be set in that function and 
that this is design issue or bug in driver.

Anyway, I made a runtime PM support long time ago, but never do anything 
besides running few tests:
https://github.com/jernejsk/linux-1/commit/
d245b7fa2a26e519ff675a255c45230575a4a848

It takes a bit different approach. Power is enabled in start streaming and 
disabled in stop streaming. This is simpler approach and doesn't need 
autosuspend functionality. I also moved call to a function which sets format 
in HW registers to start streaming handler, so it's guaranteed to be set at 
the beginning.

Note that some registers are only set in start streaming handler. With your 
approach, if first frame is submitted too late, asserting and de-asserting 
reset line could reset those registers.

Best regards,
Jernej

> +
> +	return 0;
> +
> +err_ram_clk:
> +	clk_disable_unprepare(dev->ram_clk);
> +err_mod_clk:
> +	clk_disable_unprepare(dev->mod_clk);
> +err_ahb_clk:
> +	clk_disable_unprepare(dev->ahb_clk);
> +
> +	return ret;
> +}
> +
> +int cedrus_hw_suspend(struct device *d)
> +{
> +	struct cedrus_dev *dev = dev_get_drvdata(d);
> +
> +	reset_control_assert(dev->rstc);
> +
> +	clk_disable_unprepare(dev->ram_clk);
> +	clk_disable_unprepare(dev->mod_clk);
> +	clk_disable_unprepare(dev->ahb_clk);
> +
> +	return 0;
> +}
> +
>  int cedrus_hw_probe(struct cedrus_dev *dev)
>  {
>  	const struct cedrus_variant *variant;
> @@ -236,42 +302,19 @@ int cedrus_hw_probe(struct cedrus_dev *dev)
>  		goto err_sram;
>  	}
> 
> -	ret = clk_prepare_enable(dev->ahb_clk);
> -	if (ret) {
> -		dev_err(dev->dev, "Failed to enable AHB clock\n");
> -
> -		goto err_sram;
> -	}
> -
> -	ret = clk_prepare_enable(dev->mod_clk);
> -	if (ret) {
> -		dev_err(dev->dev, "Failed to enable MOD clock\n");
> -
> -		goto err_ahb_clk;
> -	}
> -
> -	ret = clk_prepare_enable(dev->ram_clk);
> -	if (ret) {
> -		dev_err(dev->dev, "Failed to enable RAM clock\n");
> -
> -		goto err_mod_clk;
> -	}
> -
> -	ret = reset_control_reset(dev->rstc);
> -	if (ret) {
> -		dev_err(dev->dev, "Failed to apply reset\n");
> -
> -		goto err_ram_clk;
> +	pm_runtime_set_autosuspend_delay(dev->dev, 1000);
> +	pm_runtime_use_autosuspend(dev->dev);
> +	pm_runtime_enable(dev->dev);
> +	if (!pm_runtime_enabled(dev->dev)) {
> +		ret = cedrus_hw_resume(dev->dev);
> +		if (ret)
> +			goto err_pm;
>  	}
> 
>  	return 0;
> 
> -err_ram_clk:
> -	clk_disable_unprepare(dev->ram_clk);
> -err_mod_clk:
> -	clk_disable_unprepare(dev->mod_clk);
> -err_ahb_clk:
> -	clk_disable_unprepare(dev->ahb_clk);
> +err_pm:
> +	pm_runtime_disable(dev->dev);
>  err_sram:
>  	sunxi_sram_release(dev->dev);
>  err_mem:
> @@ -282,11 +325,9 @@ int cedrus_hw_probe(struct cedrus_dev *dev)
> 
>  void cedrus_hw_remove(struct cedrus_dev *dev)
>  {
> -	reset_control_assert(dev->rstc);
> -
> -	clk_disable_unprepare(dev->ram_clk);
> -	clk_disable_unprepare(dev->mod_clk);
> -	clk_disable_unprepare(dev->ahb_clk);
> +	pm_runtime_disable(dev->dev);
> +	if (!pm_runtime_status_suspended(dev->dev))
> +		cedrus_hw_suspend(dev->dev);
> 
>  	sunxi_sram_release(dev->dev);
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
> b/drivers/staging/media/sunxi/cedrus/cedrus_hw.h index
> 604ff932fbf5..17822b470a1e 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
> @@ -22,6 +22,9 @@ void cedrus_engine_disable(struct cedrus_dev *dev);
>  void cedrus_dst_format_set(struct cedrus_dev *dev,
>  			   struct v4l2_pix_format *fmt);
> 
> +int cedrus_hw_resume(struct device *dev);
> +int cedrus_hw_suspend(struct device *dev);
> +
>  int cedrus_hw_probe(struct cedrus_dev *dev);
>  void cedrus_hw_remove(struct cedrus_dev *dev);





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
