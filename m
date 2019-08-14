Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0FA8CE9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 10:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9kjuY1LU4xdG9qmjpYbEN1rnJy4dQK/Q2eBPouTvZw=; b=NLIfoJBdVWObZa
	hiHtLCOmwP/TUmRRa2xy8zYmlTL9BECSIlLWA/w1KFkfN0uvN8FFLr8i4gxRtK7Ovmly8hBIRIxE4
	P9d3PvlkrljwTGmX8pgl5Z5aVPcl64Pm/9cmwsjPZYaLBhKkZsJ7EIzJbKrvJ/ss9DGExwLl78MoB
	kjmesb/0UNKXyIGN4y3gTlQmTfmcN0hO87arQauEnDcnNJKXEJ7/k+QLeKWp/zy1EdFRD0uiY/o1w
	3H392Dn3AC5xcKDMk9tgVm9CSVpo5Gi+L+i4pS0W+jBQ1B+oi5i26B7O1szHlBXgncGQCNPjejrVr
	F2P6tCQjuDEhqz2wTjMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxone-0007rT-Pq; Wed, 14 Aug 2019 08:38:30 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxonQ-0007r6-Uq
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 08:38:18 +0000
Received: by mail-wm1-x342.google.com with SMTP id i63so3682764wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 01:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ss3ykB/e733BEBWwIVPUSJTuhl3UWTyezbyVNGjf0SI=;
 b=ltlAGtUzyH1E/WYoIuA6t1M2IYW9GB6+wHg+pt3UbEcSyIMm9pb3pGRW1Ae3yqG4oS
 S4triQ/F5H3FxXdqdmb0vJH9CknjXq85n5nyHbEtoLpo3Ua0dAA6jegPSpx+yDRp0lKy
 qe8G+KWp4kv9XYXxiZNFwLuH2WxKSF9NNExeYJjKzXvSEfDSFNl0VyHQ9SEehpTqJrIa
 7qP2eVA1kQUX3d4uopEnXlj67HQceSPs3oLiE5i2IZWaMGD165T9w5JG/fFwIEqtiJGY
 tYDL9LzCm9CmWYzmFyk68qYLBmRc995t/wAEOmRfyUARzDaZJ6PcZFQOq+XpL4h5q1to
 V7lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ss3ykB/e733BEBWwIVPUSJTuhl3UWTyezbyVNGjf0SI=;
 b=OQ3HLj3CKzXSgNTAMvrnzDjGOqU+ry9YGn/qE592Q3D3gor9xVM7NColmcnVzUHPhH
 rdYR95BZlcGzaHFy/mCmjLjus1eHncNRPb0nFfjoDTrfVcmppdhPYvvFRvpq+RiG7suY
 gtRL5fZ5oCfgQnqWZlKVctlg7WmJUnugAzEo1n3JKt2dQnkbUhTJZiQ3uY4sFR7b77OA
 bfRD4L1ockdF6dy6W6gv7KU8E2qA70Sl5tFEWO2/nk65y82+KNVHmFgavG5H8muVYPTu
 A9/VwFUQRAfmpeevdXuZjezNWSUBjq+zZ8iBslgYW1v7N1cs+NRNrp2vKuBhiHaa6qBk
 N92g==
X-Gm-Message-State: APjAAAXXsy7dpc8zEoFfThAijX2GkyEEwH2oezRYPLfhzCcytOWJtO5L
 J5TRLdqFML1Iy1ULA7oaLI0=
X-Google-Smtp-Source: APXvYqxfBzQeFDvyuR2DGLqjv3kSBQPokkChEo3r8QnrPwWXcv7zOtPSRRB3fWQpU3jEfo1e6gz0QQ==
X-Received: by 2002:a7b:c651:: with SMTP id q17mr6661342wmk.136.1565771874804; 
 Wed, 14 Aug 2019 01:37:54 -0700 (PDT)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net.
 [89.212.178.211])
 by smtp.gmail.com with ESMTPSA id u130sm6528950wmg.28.2019.08.14.01.37.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 01:37:53 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, codekipper@gmail.com
Subject: Re: [linux-sunxi] [PATCH v5 15/15] ASoC: sun4i-i2s: Adjust regmap
 settings
Date: Wed, 14 Aug 2019 10:37:52 +0200
Message-ID: <3741744.8c7tOhJ1tT@jernej-laptop>
In-Reply-To: <20190814060854.26345-16-codekipper@gmail.com>
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-16-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_013816_997568_D4327070 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 lgirdwood@gmail.com, be17068@iperbole.bo.it, wens@csie.org, broonie@kernel.org,
 maxime.ripard@free-electrons.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne sreda, 14. avgust 2019 ob 08:08:54 CEST je codekipper@gmail.com 
napisal(a):
> From: Marcus Cooper <codekipper@gmail.com>
> 
> Bypass the regmap cache when flushing the i2s FIFOs and modify the tables
> to reflect this.
> 
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 31 ++++++++++---------------------
>  1 file changed, 10 insertions(+), 21 deletions(-)
> 
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index d3c8789f70bb..ecfc1ed79379 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -876,9 +876,11 @@ static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai,
> unsigned int fmt) static void sun4i_i2s_start_capture(struct sun4i_i2s
> *i2s)
>  {
>  	/* Flush RX FIFO */
> +	regcache_cache_bypass(i2s->regmap, true);
>  	regmap_update_bits(i2s->regmap, SUN4I_I2S_FIFO_CTRL_REG,
>  			   SUN4I_I2S_FIFO_CTRL_FLUSH_RX,
>  			   SUN4I_I2S_FIFO_CTRL_FLUSH_RX);
> +	regcache_cache_bypass(i2s->regmap, false);

Did you try with regmap_write_bits() instead? This function will 
unconditionally write bits so it's nicer solution, because you don't have to 
use regcache_cache_bypass().

> 
>  	/* Clear RX counter */
>  	regmap_write(i2s->regmap, SUN4I_I2S_RX_CNT_REG, 0);
> @@ -897,9 +899,11 @@ static void sun4i_i2s_start_capture(struct sun4i_i2s
> *i2s) static void sun4i_i2s_start_playback(struct sun4i_i2s *i2s)
>  {
>  	/* Flush TX FIFO */
> +	regcache_cache_bypass(i2s->regmap, true);
>  	regmap_update_bits(i2s->regmap, SUN4I_I2S_FIFO_CTRL_REG,
>  			   SUN4I_I2S_FIFO_CTRL_FLUSH_TX,
>  			   SUN4I_I2S_FIFO_CTRL_FLUSH_TX);
> +	regcache_cache_bypass(i2s->regmap, false);

Ditto.

> 
>  	/* Clear TX counter */
>  	regmap_write(i2s->regmap, SUN4I_I2S_TX_CNT_REG, 0);
> @@ -1053,13 +1057,7 @@ static const struct snd_soc_component_driver
> sun4i_i2s_component = {
> 
>  static bool sun4i_i2s_rd_reg(struct device *dev, unsigned int reg)
>  {
> -	switch (reg) {
> -	case SUN4I_I2S_FIFO_TX_REG:
> -		return false;
> -
> -	default:
> -		return true;
> -	}
> +	return true;

Why did you change this? Manual mentions that SUN4I_I2S_FIFO_TX_REG is write-
only register. Even if it can be read, then it's better to remove whole 
function, which will automatically mean that all registers can be read.


>  }
> 
>  static bool sun4i_i2s_wr_reg(struct device *dev, unsigned int reg)
> @@ -1078,6 +1076,8 @@ static bool sun4i_i2s_volatile_reg(struct device *dev,
> unsigned int reg) {
>  	switch (reg) {
>  	case SUN4I_I2S_FIFO_RX_REG:
> +	case SUN4I_I2S_FIFO_TX_REG:
> +	case SUN4I_I2S_FIFO_STA_REG:
>  	case SUN4I_I2S_INT_STA_REG:
>  	case SUN4I_I2S_RX_CNT_REG:
>  	case SUN4I_I2S_TX_CNT_REG:

SUN4I_I2S_FIFO_CTRL_REG should be put here, because it has two bits which 
returns to 0 immediately after they are set to 1.

Best regards,
Jernej

> @@ -1088,23 +1088,12 @@ static bool sun4i_i2s_volatile_reg(struct device
> *dev, unsigned int reg) }
>  }
> 
> -static bool sun8i_i2s_rd_reg(struct device *dev, unsigned int reg)
> -{
> -	switch (reg) {
> -	case SUN8I_I2S_FIFO_TX_REG:
> -		return false;
> -
> -	default:
> -		return true;
> -	}
> -}
> -
>  static bool sun8i_i2s_volatile_reg(struct device *dev, unsigned int reg)
>  {
>  	if (reg == SUN8I_I2S_INT_STA_REG)
>  		return true;
>  	if (reg == SUN8I_I2S_FIFO_TX_REG)
> -		return false;
> +		return true;
> 
>  	return sun4i_i2s_volatile_reg(dev, reg);
>  }
> @@ -1175,7 +1164,7 @@ static const struct regmap_config
> sun8i_i2s_regmap_config = { .reg_defaults	= sun8i_i2s_reg_defaults,
>  	.num_reg_defaults	= ARRAY_SIZE(sun8i_i2s_reg_defaults),
>  	.writeable_reg	= sun4i_i2s_wr_reg,
> -	.readable_reg	= sun8i_i2s_rd_reg,
> +	.readable_reg	= sun4i_i2s_rd_reg,
>  	.volatile_reg	= sun8i_i2s_volatile_reg,
>  };
> 
> @@ -1188,7 +1177,7 @@ static const struct regmap_config
> sun50i_i2s_regmap_config = { .reg_defaults	= sun50i_i2s_reg_defaults,
>  	.num_reg_defaults	= ARRAY_SIZE(sun50i_i2s_reg_defaults),
>  	.writeable_reg	= sun4i_i2s_wr_reg,
> -	.readable_reg	= sun8i_i2s_rd_reg,
> +	.readable_reg	= sun4i_i2s_rd_reg,
>  	.volatile_reg	= sun8i_i2s_volatile_reg,
>  };





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
