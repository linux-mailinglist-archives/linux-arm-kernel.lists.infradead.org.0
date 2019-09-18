Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1382B636C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OHPl6An5/tnmOy7DlY2hr8eYXt7UUQby1zQHdaNVyA=; b=CDEpmav1cgvE6O
	G194ZKt3BMoR4JqCFkSYmIzkUfEqrguf5kknMcAMMn0uJfxeIsIaQmi8LbFhu3dbIlepFNFI0ezld
	/1GtxNvZFn2ivhC/l6mCcz/V795+A20QvTJVJ4vXVez56V8z2T1VlqE4B4vNUKqhaHLiZ+/mQTnbS
	Nl/y0Af5gZFZJ4/GEN6Y7fw3TakOVVnR41TluHSlsUGCCnu4tMDDQ0SD0HKGRClPlr3IJsLtMzmMh
	nysI7SlcHie0o97q7eJIR0Uvwg8ub3f+bn/c3lnCm/wcV5ElBw7HfvtMr29/SnIM22C39tnzXRcZK
	IJtUmfTJxGmYvzNOH3nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZFZ-0004Ak-6H; Wed, 18 Sep 2019 12:40:01 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZFF-00047y-IR
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:39:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id v17so2410285wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 05:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=rkEDxPdEl9Iaqh2ExNLmboEh+YYMG69tOVa/FPgt874=;
 b=W8Mbcm+q/BLzyZpONFpQYn+Lvx9aEqdFtcLKiPU3LrB+cD16pcfciX7kd/0bjmQI33
 5Wnj9waO5UMe8YyHPeY3bxN1JMtH5zKx5jqBEZzVGkugyVjN24ySUuRTyQMfQ2OBlAS+
 DhYTG2Bgbp2JD423EMJCK/rsCLt5YxxyXR2mFOdSjEHnhzqtal9K1uVtPdxILjHr1vEG
 rEwnDTyQKvV64frd8xWiSGcTrBk7UN9Oo65DRhzTVP4ADWqfF7EY6NZnC0RJh0i2CYMd
 WukKgVwV41EX1LndYlaAkCBG5DuwoDyKJ069p0ukH7KPsz6F9meh1EwvuNDIeFmqf6Dt
 tUfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=rkEDxPdEl9Iaqh2ExNLmboEh+YYMG69tOVa/FPgt874=;
 b=tjgh/ubTMTjqkchmgnukVKO4yDsYUuAdrE7Zq8V3VfStOj6vsqg7FQKRQu8vwEMbCB
 tv72D1TCZguF4TP6X3SLGT8o7UqXycRZOQHeMggzlZHaP9O9vDr24+F6G1LP/F6bRqjX
 RcDBIhkZQv+y05j9fJ0e0jJtTx7usa7LclEes/i/HmXB6btxCFqvmZusM2+Ozxw2JPSi
 /BjNmRJvi/NNoKJ7IZcFeKgip4gkHXYbbsbx/easUN2ReIOH63YMMHeqOobBb1c5itfh
 QDgCZNqrfF6DxSndqykXKKPKi/zHtbZTBCkATLTvqRwLgFSZNOH5iQysxEgC1kxM1hrf
 L0fA==
X-Gm-Message-State: APjAAAWTYHyIj8LX4pHND8ZTq/soYMJbjcNncx+y/Vt6PYATFq6qS6Xe
 JW2GwyCyMeDJY07rCdcvEXoJX0g88ns3eQ==
X-Google-Smtp-Source: APXvYqzNwqgKrZgEYWkYaBUQgGjKH6qJDUE1rezTzdXX535NLvUqmDDg21g6T9qRUVUwkXDf2nTd8g==
X-Received: by 2002:a1c:ba08:: with SMTP id k8mr2824736wmf.63.1568810379765;
 Wed, 18 Sep 2019 05:39:39 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v2sm4749902wmf.18.2019.09.18.05.39.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Sep 2019 05:39:39 -0700 (PDT)
Subject: Re: [PATCH 3/3] reset: add support for the Meson-A1 SoC Reset
 Controller
To: Xingyu Chen <xingyu.chen@amlogic.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Kevin Hilman <khilman@baylibre.com>
References: <1568808749-1196-1-git-send-email-xingyu.chen@amlogic.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <ab6b5ef5-f251-3122-ad5b-558c65fe319e@baylibre.com>
Date: Wed, 18 Sep 2019 14:39:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568808749-1196-1-git-send-email-xingyu.chen@amlogic.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_053941_609393_D519CBD6 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
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
Cc: Hanjie Lin <hanjie.lin@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/09/2019 14:12, Xingyu Chen wrote:
> The number of RESET registers and offset of RESET_LEVEL register for
> Meson-A1 are different from previous SoCs, In order to describe these
> differences, we introduce the struct meson_reset_param.
> 
> Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> ---
>  drivers/reset/reset-meson.c | 35 ++++++++++++++++++++++++++++-------
>  1 file changed, 28 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/reset/reset-meson.c b/drivers/reset/reset-meson.c
> index 5242e06..d9541c1 100644
> --- a/drivers/reset/reset-meson.c
> +++ b/drivers/reset/reset-meson.c
> @@ -64,12 +64,16 @@
>  #include <linux/types.h>
>  #include <linux/of_device.h>
>  
> -#define REG_COUNT	8
>  #define BITS_PER_REG	32
> -#define LEVEL_OFFSET	0x7c
> +
> +struct meson_reset_param {
> +	int reg_count;
> +	int level_offset;
> +};
>  
>  struct meson_reset {
>  	void __iomem *reg_base;
> +	const struct meson_reset_param *param;
>  	struct reset_controller_dev rcdev;
>  	spinlock_t lock;
>  };
> @@ -95,10 +99,12 @@ static int meson_reset_level(struct reset_controller_dev *rcdev,
>  		container_of(rcdev, struct meson_reset, rcdev);
>  	unsigned int bank = id / BITS_PER_REG;
>  	unsigned int offset = id % BITS_PER_REG;
> -	void __iomem *reg_addr = data->reg_base + LEVEL_OFFSET + (bank << 2);
> +	void __iomem *reg_addr;
>  	unsigned long flags;
>  	u32 reg;
>  
> +	reg_addr = data->reg_base + data->param->level_offset + (bank << 2);
> +
>  	spin_lock_irqsave(&data->lock, flags);
>  
>  	reg = readl(reg_addr);
> @@ -130,10 +136,21 @@ static const struct reset_control_ops meson_reset_ops = {
>  	.deassert	= meson_reset_deassert,
>  };
>  
> +static const struct meson_reset_param meson8b_param = {
> +	.reg_count	= 8,
> +	.level_offset	= 0x7c,
> +};
> +
> +static const struct meson_reset_param meson_a1_param = {
> +	.reg_count	= 3,
> +	.level_offset	= 0x40,
> +};
> +
>  static const struct of_device_id meson_reset_dt_ids[] = {
> -	 { .compatible = "amlogic,meson8b-reset" },
> -	 { .compatible = "amlogic,meson-gxbb-reset" },
> -	 { .compatible = "amlogic,meson-axg-reset" },
> +	 { .compatible = "amlogic,meson8b-reset",    .data = &meson8b_param},
> +	 { .compatible = "amlogic,meson-gxbb-reset", .data = &meson8b_param},
> +	 { .compatible = "amlogic,meson-axg-reset",  .data = &meson8b_param},
> +	 { .compatible = "amlogic,meson-a1-reset",   .data = &meson_a1_param},
>  	 { /* sentinel */ },
>  };
>  
> @@ -151,12 +168,16 @@ static int meson_reset_probe(struct platform_device *pdev)
>  	if (IS_ERR(data->reg_base))
>  		return PTR_ERR(data->reg_base);
>  
> +	data->param = of_device_get_match_data(&pdev->dev);
> +	if (!data->param)
> +		return -ENODEV;
> +
>  	platform_set_drvdata(pdev, data);
>  
>  	spin_lock_init(&data->lock);
>  
>  	data->rcdev.owner = THIS_MODULE;
> -	data->rcdev.nr_resets = REG_COUNT * BITS_PER_REG;
> +	data->rcdev.nr_resets = data->param->reg_count * BITS_PER_REG;
>  	data->rcdev.ops = &meson_reset_ops;
>  	data->rcdev.of_node = pdev->dev.of_node;
>  
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
