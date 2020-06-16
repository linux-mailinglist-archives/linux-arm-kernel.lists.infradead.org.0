Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBCB1FA7E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 06:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDhDbffzGZ5auFnzbuz7/1pxl84Lqr+FKKLF745sOo0=; b=O3S4bHhGvld0Mz
	/hPETjmSxOoys5k4NsfGwoUiXNYzHQIoK8jFpM3i8pzc1PrpA4psp003Q1BxseotZ5Di6axltqRjN
	03sCprdzEbGSCHJaAETnJdxEGFznAMfYVkEY9ZFsnR7plKl8TCHPT7HMuB8c5NnPPNSoZmkDzx5ce
	rGWDedwkXM6cVYDHaqV7YmZuExg6fH7h3Sgac+QJajQR0uDWlUnixZEG5ExxzBIgPmR4t9SGaHh7B
	EUpwRV14FTpUj29sXysYhQqrln5RvGs4eEmlbQkZ83Qp9NdXrtazmzvaiv5Yzu6lOlSI7NsgBse2G
	6g5Qwzh2mF/klHQbsUmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl3S5-0001G1-CG; Tue, 16 Jun 2020 04:44:01 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl3Ru-0001Fg-0v
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 04:43:51 +0000
Received: by mail-io1-f68.google.com with SMTP id w18so414585iom.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 21:43:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LmzMHIvmvF58EZXJmekpQXD5nDdYxi6HKu1Pmlrtz+M=;
 b=psiVMsoBA2lLzSdOgb9SVtcsG7hiauU2usRvx6mDEwPVQWAOhMtbx4aE1UPUe1dwrm
 gu6Y1OCLYghC7ZU9ZPpaiCVPcTNeUnjz9LDCkDWXq4of1s427TM4VT7aBWKYj2wiZy2X
 UpbgL1yWshim3ukmn7UVNqsjS5W6wpto+j9jk5ul8oBjAfBBoxv2uYnVe6KChVoJWOVX
 NNXywohWr0WOCk+Rn+O3ASuRz5Wary1OqbaOjeyLTwOU6o7gbzTgjM77buoxofStbM9V
 KqoNIUfRWC0PzkpTRh6SRvwo4ut3pClesMofqnL0fUxbo+RvieqnnweOWd62oK86oZaJ
 fBCw==
X-Gm-Message-State: AOAM532ljL9jk2K6fc8PAGyqwdiGEb9L3PP7JvAopxQfUotkENGzjIKF
 hcxE0FSS8pFKheUGclLYfGrsG4D5LaM=
X-Google-Smtp-Source: ABdhPJztXkJFcZT+mRv8x6WbAlQ2+knDwMSuXZBCslzSxlJCr1fZCeslAJy3cbCICzu0QKi5U0suaQ==
X-Received: by 2002:a6b:8dd5:: with SMTP id p204mr864149iod.33.1592282628930; 
 Mon, 15 Jun 2020 21:43:48 -0700 (PDT)
Received: from localhost ([2601:647:5b00:1161:a4cc:eef9:fbc0:2781])
 by smtp.gmail.com with ESMTPSA id r17sm9235940ilc.33.2020.06.15.21.43.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 21:43:48 -0700 (PDT)
Date: Mon, 15 Jun 2020 21:43:47 -0700
From: Moritz Fischer <mdf@kernel.org>
To: Luca Ceresoli <luca@lucaceresoli.net>
Subject: Re: [PATCH 5/5] fpga manager: xilinx-spi: check INIT_B pin during
 write_init
Message-ID: <20200616044347.GB46300@epycbox.lan>
References: <20200611211144.9421-1-luca@lucaceresoli.net>
 <20200611211144.9421-5-luca@lucaceresoli.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611211144.9421-5-luca@lucaceresoli.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_214350_066389_14519E6B 
X-CRM114-Status: GOOD (  22.71  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [moritz.fischer.private[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-fpga@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Moritz Fischer <mdf@kernel.org>,
 Anatolij Gustschin <agust@denx.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Luca,

On Thu, Jun 11, 2020 at 11:11:44PM +0200, Luca Ceresoli wrote:
> The INIT_B reports the status during startup and after the end of the
> programming process. However the current driver completely ignores it.
> 
> Check the pin status during startup to make sure programming is never
> started too early and also to detect any hardware issues in the FPGA
> connection.
> 
> This is optional for backward compatibility. If INIT_B is not passed by
> device tree, just fallback to the old udelays.
> 
> Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
> ---
>  drivers/fpga/xilinx-spi.c | 54 ++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 53 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/fpga/xilinx-spi.c b/drivers/fpga/xilinx-spi.c
> index 799ae04301be..2710a15ed16b 100644
> --- a/drivers/fpga/xilinx-spi.c
> +++ b/drivers/fpga/xilinx-spi.c
> @@ -23,6 +23,7 @@
>  struct xilinx_spi_conf {
>  	struct spi_device *spi;
>  	struct gpio_desc *prog_b;
> +	struct gpio_desc *init_b;
>  	struct gpio_desc *done;
>  };
>  
> @@ -36,11 +37,44 @@ static enum fpga_mgr_states xilinx_spi_state(struct fpga_manager *mgr)
>  	return FPGA_MGR_STATE_UNKNOWN;
>  }
>  
> +/**
> + * wait_for_init_b - wait for the INIT_B pin to have a given state, or wait
> + * a given delay if the pin is unavailable
> + *
> + * @mgr        The FPGA manager object
> + * @value      Value INIT_B to wait for (1 = asserted = low)
> + * @act_udelay Delay to wait if the INIT_B pin is not available
> + *
> + * Returns 0 when the pin reached the given state or -ETIMEDOUT if too much
> + * time passed waiting for that. If there is no INIT_B, always return 0.
> + */
> +static int wait_for_init_b(struct fpga_manager *mgr, int value,
> +			   unsigned long backup_udelay)
> +{
> +	struct xilinx_spi_conf *conf = mgr->priv;
> +	unsigned long timeout = jiffies + msecs_to_jiffies(1000);
> +
> +	if (conf->init_b) {
> +		while (time_before(jiffies, timeout)) {
> +			/* dump_state(conf, "wait for init_d .."); */
> +			if (gpiod_get_value(conf->init_b) == value)
> +				return 0;
> +			usleep_range(100, 400);
> +		}
> +		return -ETIMEDOUT;
> +	}
> +
> +	udelay(backup_udelay);
> +
> +	return 0;
> +}
> +
>  static int xilinx_spi_write_init(struct fpga_manager *mgr,
>  				 struct fpga_image_info *info,
>  				 const char *buf, size_t count)
>  {
>  	struct xilinx_spi_conf *conf = mgr->priv;
> +	int err;
>  
>  	if (info->flags & FPGA_MGR_PARTIAL_RECONFIG) {
>  		dev_err(&mgr->dev, "Partial reconfiguration not supported.\n");
> @@ -49,10 +83,21 @@ static int xilinx_spi_write_init(struct fpga_manager *mgr,
>  
>  	gpiod_set_value(conf->prog_b, 1);
>  
> -	udelay(1); /* min is 500 ns */
> +	err = wait_for_init_b(mgr, 1, 1); /* min is 500 ns */
> +	if (err) {
> +		dev_err(&mgr->dev, "INIT_B pin did not go low\n");
> +		gpiod_set_value(conf->prog_b, 0);
> +		return err;
> +	}
>  
>  	gpiod_set_value(conf->prog_b, 0);
>  
> +	err = wait_for_init_b(mgr, 0, 0);
> +	if (err) {
> +		dev_err(&mgr->dev, "INIT_B pin did not go high\n");
> +		return err;
> +	}
> +
>  	if (gpiod_get_value(conf->done)) {
>  		dev_err(&mgr->dev, "Unexpected DONE pin state...\n");
>  		return -EIO;
> @@ -154,6 +199,13 @@ static int xilinx_spi_probe(struct spi_device *spi)
>  		return PTR_ERR(conf->prog_b);
>  	}
>  
> +	conf->init_b = devm_gpiod_get_optional(&spi->dev, "init_b", GPIOD_IN);
> +	if (IS_ERR(conf->init_b)) {
> +		dev_err(&spi->dev, "Failed to get INIT_B gpio: %ld\n",
> +			PTR_ERR(conf->init_b));
> +		return PTR_ERR(conf->init_b);
> +	}
> +
>  	conf->done = devm_gpiod_get(&spi->dev, "done", GPIOD_IN);
>  	if (IS_ERR(conf->done)) {
>  		dev_err(&spi->dev, "Failed to get DONE gpio: %ld\n",
> -- 
> 2.27.0
> 

Series looks good, will apply to for-next.

Thanks,
Moritz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
