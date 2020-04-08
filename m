Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C1A1A246F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 16:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yr5RTFER5k63CWv0pke8DhDjJFuHEJdNWydOaYth/kc=; b=C3eR0Ihv14XskD
	+4R9Tj7tAZcu2M53mrICHEmGJbrm+iA9vBLENmUjz9vB8V8GKK9XqIeGkhNS6hjGZiCKL3g+h2qFc
	ccTHbwngapTES10zOh6MS+mSNtroSZF0EmMR1Ugg0XqAKZTmMEx9qhEO83ZeQcBRtgILwzwqzYRb+
	emC0ZxfqbyFQ8hQj/lJ5XRe60CylojoOrq5yGCNBwG2aMtIXPzqfazUETc88CPsl7C+zI716Qwy2b
	N6o2jc5oJDWMbPa1rq1oFG9+xDlZpf5pMU9cZEJ3s7oIDGxsZZXIJvYpDiBPSLoLdwLkucpHKDkGz
	FusceR3I2dxJM6irV0Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMCB1-0002MW-9s; Wed, 08 Apr 2020 14:59:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCAt-0002Ku-H1
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 14:59:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id d77so196802wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 07:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B+r4gkbc6fM0v/g3mxY/I2uTuzgVN8+Wm0SyCK/MN3k=;
 b=f4/ot8g3Nt/P4fbSusRTOOyNhXcnrbHZHkkbxAay/zEKE48auughz/L5BmQJPGIwWd
 0ZNqS3OjoqgmIUUyRbeNynXnZOpV2gYuJf+k1FiQf5vdUXI+iPT2tEi40glJlrC2+H7A
 ourB/s5Q0vwN+Je4D967XhARBP7aWg/gULoiH5c1ChSkPUYO3eOotczSgdpcX5eQOT38
 W8mgz5rEu4CPHo8abajLnERbLW7zMwGBiSCXCxDg8B1l4MGhPLBJ8El0nhSfaMYm4nGu
 ZzApnqbsGHVkebHkcx1D6rWJTxFJKm/GCQevIde7cXk6a3A8ub+2e7aVo0sgt39AjbY+
 5xJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B+r4gkbc6fM0v/g3mxY/I2uTuzgVN8+Wm0SyCK/MN3k=;
 b=SPYYjoglpmQ3dcS+YPBM4IBH0dTJtyKDJGXvrjHSXZuyNTLRj1eTC+PZ0KfYwnaYn2
 xHCQbshq9nV99YM8mJWR5YM/WwSVt4o+DdQzEcZqwo1TiigDEhz7g1SUl4wY9/jS+mCO
 fTCqbrXoHDW0DbbMS/HGEzXfEVYo28U/AdfQWNk7KIsggAEBaEgU6Rq5a/jB+pvWficH
 8IR9OvRXjfYu2qMx4hrNeXPaCrCJ/RLcyGQMsdTRMjA2S1tc2UidK5I/0VguR/J8nsxW
 FzqOz7sKU/0bo76S3oyKVhJJeVp6AOQNVR/xZtv9CVNquhqNAH9uRa74nvBHagBDAEkB
 tufw==
X-Gm-Message-State: AGi0PuaqjziTaX4xuTo8hO/J76KR8PGcHHgEScPtVVwfAxNk5eK5ty0G
 0x0Bg0RJMY59a6742IHoHQY=
X-Google-Smtp-Source: APiQypKXmz02+BgCPHqwRbMKtHmW16CsFz8JzYLXb8XhuvtG5HoWkyVCRwbBw2sTo+VzSquAPEGVqQ==
X-Received: by 2002:a1c:a913:: with SMTP id s19mr5338458wme.134.1586357969845; 
 Wed, 08 Apr 2020 07:59:29 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net.
 [194.152.20.232])
 by smtp.gmail.com with ESMTPSA id f141sm7297051wmf.3.2020.04.08.07.59.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 07:59:28 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-sunxi@googlegroups.com
Subject: Re: [linux-sunxi] [PATCH] media: cedrus: Implement runtime PM
Date: Wed, 08 Apr 2020 16:59:26 +0200
Message-ID: <4520243.GXAFRqVoOG@jernej-laptop>
In-Reply-To: <20200408010232.48432-1-samuel@sholland.org>
References: <20200408010232.48432-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_075931_564332_36110A98 
X-CRM114-Status: GOOD (  21.09  )
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

Let me test this in LibreELEC with several videos and different SoCs.

Best regards,
Jernej

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
