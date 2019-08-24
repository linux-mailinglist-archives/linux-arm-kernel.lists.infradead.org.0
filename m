Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1581D9BDAF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 14:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGK9TbbgMODH1h8O6hsrjv97j/FeUNWArVzlQLYGjyQ=; b=rGWuF4yJltoHuK
	J3KPSeo0dbX7+dVw015FfNwOukm4bnuzK59Riyw2XupBwd/KVeQLpZaXf9H2TXK+vVggJiPPQ7Vjc
	DWcbmozEAJWusF2g6o45EiLi25EGuwNK1P2kKpSZG5D2nj3uW1qO5D14A6Jk1vVMiZBa/R5IXcNHV
	NmCeLEmZ5nGsLVQiVtdGgViR9hdyO21Hdy5BImb4jcQb7Q39q56X/9YC5jTIAPgAVpx56V4zZ55Iy
	cpKq1n777NZwzoO9oyN92pq0VQSVTXST0NwOiyCfnTYrzQiGp53UTTmr9eE1eMXjFK1SXYwIR30VS
	4wauMu1BwZzfg/ls4WOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1VE8-0006iD-2o; Sat, 24 Aug 2019 12:33:04 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1VDj-0006hO-6r
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 12:32:40 +0000
Received: by mail-wm1-x344.google.com with SMTP id i63so11544201wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 24 Aug 2019 05:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ktd3clal+9Q8WPdZn5LCmY9fuQdnPWX4A+ZgJMUiE8I=;
 b=gO3x0A47cXmFssogdqmmAgitAslpSJ93envk5YYYOjtmRdJg9v7WyxRISnMS0I0wPn
 Tn8IctoBtGQQoytrA4I0lqZvydxZMRIseViPZtq8SmAWqjxiYSQQ6/kMBbInyu/uk521
 qKxb55JAUCF/dgxrSeqYGVwEW2BGy/9fM2lV1ETwzFVBy0nbytOnnCS6PeoTN9isAPJs
 fd1fo/sbrmv4CRm5zTI5QocUjPZ7GKAp379so7OSXO+q1I1pPLBtJPIOG1RIr2ayd6ED
 Dnhg4Ta4EvGc9yNMMVTAS1CmQauUYFSs3rayKVXgMOyWnnfoiAXZ1Qi4DlDl78ww3XwE
 i4JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ktd3clal+9Q8WPdZn5LCmY9fuQdnPWX4A+ZgJMUiE8I=;
 b=gSqwVoJVkKnC/OkH6cJi6j4TcWteoeW31xnasi8sW18OiyWMDEG5WfZqmKR2dl6ouF
 N/a67sT9MTg1+99Xn62R2m/oLcgz8xtUAlaR5H0SLGRqY3foLJdkiXzxxl0VaBsxRBAT
 ajjk83/WOjqlieHvPTCr0hntn2/D9dnZTcFd9F5UEqwBOXhjljqSq/x5fD0kg1e2uVkO
 1xGmFaTijql9tIwGBAIUnRDJVLC3pa29GE4IoZSv0LFHhK30/1IFzeqQIszs0+WKnq0X
 TQbsE8tvH0a4ZIQH3OMdS30qIEJENIcObAkky/yDZZOC0HMarZJQfTvrQV42j8/bqB2C
 Z88w==
X-Gm-Message-State: APjAAAU5eK9myuuD7WFFRAlw3mHlQ5McEviUo/lK/lai89tujbo4VU9p
 Wz0cIgD2HLmP/xWn9brlI1w=
X-Google-Smtp-Source: APXvYqxUMGmDffhilj07WIz41QP9O1qp6PIEePGrT5idlWi6fBJNl+Fmt7Dv7iNOePAomEQpGWejMg==
X-Received: by 2002:a7b:c7c2:: with SMTP id z2mr10383019wmk.33.1566649955525; 
 Sat, 24 Aug 2019 05:32:35 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net.
 [86.58.59.25])
 by smtp.gmail.com with ESMTPSA id a23sm11839565wma.24.2019.08.24.05.32.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 05:32:34 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, megous@megous.com
Subject: Re: [linux-sunxi] [PATCH v2 2/3] rtc: sun6i: Add support for H6 RTC
Date: Sat, 24 Aug 2019 14:32:32 +0200
Message-ID: <10586215.O0B29uHg7A@jernej-laptop>
In-Reply-To: <20190820151934.3860-3-megous@megous.com>
References: <20190820151934.3860-1-megous@megous.com>
 <20190820151934.3860-3-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_053239_279305_A270D8D5 
X-CRM114-Status: GOOD (  25.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne torek, 20. avgust 2019 ob 17:19:33 CEST je megous@megous.com napisal(a):
> From: Ondrej Jirman <megous@megous.com>
> 
> RTC on H6 is mostly the same as on H5 and H3. It has slight differences
> mostly in features that are not yet supported by this driver.
> 
> Some differences are already stated in the comments in existing code.
> One other difference is that H6 has extra bit in LOSC_CTRL_REG, called
> EXT_LOSC_EN to enable/disable external low speed crystal oscillator.
> 
> It also has bit EXT_LOSC_STA in LOSC_AUTO_SWT_STA_REG, to check whether
> external low speed oscillator is working correctly.
> 
> This patch adds support for enabling LOSC when necessary:
> 
> - during reparenting
> - when probing the clock
> 
> H6 also has capacbility to automatically reparent RTC clock from
> external crystal oscillator, to internal RC oscillator, if external
> oscillator fails. This is enabled by default. Disable it during
> probe.
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  drivers/rtc/rtc-sun6i.c | 40 ++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 38 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/rtc/rtc-sun6i.c b/drivers/rtc/rtc-sun6i.c
> index d50ee023b559..b0c3752bed3f 100644
> --- a/drivers/rtc/rtc-sun6i.c
> +++ b/drivers/rtc/rtc-sun6i.c
> @@ -32,9 +32,11 @@
>  /* Control register */
>  #define SUN6I_LOSC_CTRL				0x0000
>  #define SUN6I_LOSC_CTRL_KEY			(0x16aa << 16)
> +#define SUN6I_LOSC_CTRL_AUTO_SWT_BYPASS		BIT(15)

User manual says that above field is bit 14.

Best regards,
Jernej

>  #define SUN6I_LOSC_CTRL_ALM_DHMS_ACC		BIT(9)
>  #define SUN6I_LOSC_CTRL_RTC_HMS_ACC		BIT(8)
>  #define SUN6I_LOSC_CTRL_RTC_YMD_ACC		BIT(7)
> +#define SUN6I_LOSC_CTRL_EXT_LOSC_EN		BIT(4)
>  #define SUN6I_LOSC_CTRL_EXT_OSC			BIT(0)
>  #define SUN6I_LOSC_CTRL_ACC_MASK		GENMASK(9, 7)
> 
> @@ -128,6 +130,8 @@ struct sun6i_rtc_clk_data {
>  	unsigned int has_prescaler : 1;
>  	unsigned int has_out_clk : 1;
>  	unsigned int export_iosc : 1;
> +	unsigned int has_losc_en : 1;
> +	unsigned int has_auto_swt : 1;
>  };
> 
>  struct sun6i_rtc_dev {
> @@ -190,6 +194,10 @@ static int sun6i_rtc_osc_set_parent(struct clk_hw *hw,
> u8 index) val &= ~SUN6I_LOSC_CTRL_EXT_OSC;
>  	val |= SUN6I_LOSC_CTRL_KEY;
>  	val |= index ? SUN6I_LOSC_CTRL_EXT_OSC : 0;
> +	if (rtc->data->has_losc_en) {
> +		val &= ~SUN6I_LOSC_CTRL_EXT_LOSC_EN;
> +		val |= index ? SUN6I_LOSC_CTRL_EXT_LOSC_EN : 0;
> +	}
>  	writel(val, rtc->base + SUN6I_LOSC_CTRL);
>  	spin_unlock_irqrestore(&rtc->lock, flags);
> 
> @@ -215,6 +223,7 @@ static void __init sun6i_rtc_clk_init(struct device_node
> *node, const char *iosc_name = "rtc-int-osc";
>  	const char *clkout_name = "osc32k-out";
>  	const char *parents[2];
> +	u32 reg;
> 
>  	rtc = kzalloc(sizeof(*rtc), GFP_KERNEL);
>  	if (!rtc)
> @@ -235,9 +244,18 @@ static void __init sun6i_rtc_clk_init(struct
> device_node *node, goto err;
>  	}
> 
> +	reg = SUN6I_LOSC_CTRL_KEY;
> +	if (rtc->data->has_auto_swt) {
> +		/* Bypass auto-switch to int osc, on ext losc failure */
> +		reg |= SUN6I_LOSC_CTRL_AUTO_SWT_BYPASS;
> +		writel(reg, rtc->base + SUN6I_LOSC_CTRL);
> +	}
> +
>  	/* Switch to the external, more precise, oscillator */
> -	writel(SUN6I_LOSC_CTRL_KEY | SUN6I_LOSC_CTRL_EXT_OSC,
> -	       rtc->base + SUN6I_LOSC_CTRL);
> +	reg |= SUN6I_LOSC_CTRL_EXT_OSC;
> +	if (rtc->data->has_losc_en)
> +		reg |= SUN6I_LOSC_CTRL_EXT_LOSC_EN;
> +	writel(reg, rtc->base + SUN6I_LOSC_CTRL);
> 
>  	/* Yes, I know, this is ugly. */
>  	sun6i_rtc = rtc;
> @@ -345,6 +363,23 @@ CLK_OF_DECLARE_DRIVER(sun8i_h3_rtc_clk,
> "allwinner,sun8i-h3-rtc", CLK_OF_DECLARE_DRIVER(sun50i_h5_rtc_clk,
> "allwinner,sun50i-h5-rtc", sun8i_h3_rtc_clk_init);
> 
> +static const struct sun6i_rtc_clk_data sun50i_h6_rtc_data = {
> +	.rc_osc_rate = 16000000,
> +	.fixed_prescaler = 32,
> +	.has_prescaler = 1,
> +	.has_out_clk = 1,
> +	.export_iosc = 1,
> +	.has_losc_en = 1,
> +	.has_auto_swt = 1,
> +};
> +
> +static void __init sun50i_h6_rtc_clk_init(struct device_node *node)
> +{
> +	sun6i_rtc_clk_init(node, &sun50i_h6_rtc_data);
> +}
> +CLK_OF_DECLARE_DRIVER(sun50i_h6_rtc_clk, "allwinner,sun50i-h6-rtc",
> +		      sun50i_h6_rtc_clk_init);
> +
>  static const struct sun6i_rtc_clk_data sun8i_v3_rtc_data = {
>  	.rc_osc_rate = 32000,
>  	.has_out_clk = 1,
> @@ -675,6 +710,7 @@ static const struct of_device_id sun6i_rtc_dt_ids[] = {
>  	{ .compatible = "allwinner,sun8i-r40-rtc" },
>  	{ .compatible = "allwinner,sun8i-v3-rtc" },
>  	{ .compatible = "allwinner,sun50i-h5-rtc" },
> +	{ .compatible = "allwinner,sun50i-h6-rtc" },
>  	{ /* sentinel */ },
>  };
>  MODULE_DEVICE_TABLE(of, sun6i_rtc_dt_ids);





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
