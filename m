Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A33135557
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:14:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66Tg3W1snLzSNa4z5UaD1Hpja81/ZhioaWG6lWO6iS0=; b=LoFHWYhFsDkol+
	D/LS766skg4kNogNKMyfM21eq08SnyqfrL7z3sABe6nhcQViTbFfRTatmCNSCYA7WHZju39RdG2iH
	u99HPnsPdHE539yk/9PzoIkvrvFRiP3w8qZvraUa7ywscNxLNBg5GreVZxNv7lxL2q4IoRhJeoVH6
	RscNdTR9ME8gnfHeGVmZIkusmLuOYU6pMrik7kwa9miKe+N0ABUBaxuNmhVGPauir8E7x9m8seXx/
	O955gIjL1Kep/eh2Htjgipk+pBlrvdUUJj+qAABv2ioE16ZyLluUUy03BqB6hBDNFE0Qw5BfJPqRy
	910+UK+bHH+rtfppTxhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTtO-0007RA-RF; Thu, 09 Jan 2020 09:14:14 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTtC-0007OT-2N
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:14:04 +0000
Received: by mail-wr1-x442.google.com with SMTP id d16so6484481wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 01:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iLS78tVSPbq6tpG6+smVU0QZ1I3wWNq5Ss9YZL6AVzY=;
 b=DXLVF5iLprJ3DEwP2caG7/RNJAR7A9fWdSDcAtPKaotyqe9hiJa7yosovyicxBsRGO
 PfarmKKGZs/8mIdvIqBO/Sxnyoj7KsYk9ZBZL73WtnjVItQ86m7N6O57iVtyIecLb7Uo
 iYfqyGXb02YNldQMHixWfPEQ2/8mYLDqzOUOrYl3Gec0r+C7AgYlf0MJHf1CgO0hJ3eb
 HfmR8Og5w9MIMwVd1DXHzhl4wNxMCEFYiOiNxe6Bset9tqbYV+9bxIoePzi7I+IPR/EK
 3MZUacTYl1pZPAYmGHCIwxB003PE1LD6A0OVUyvJJGo9lr/V/NW3nEB3C5zkOp07Rgrp
 mtvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=iLS78tVSPbq6tpG6+smVU0QZ1I3wWNq5Ss9YZL6AVzY=;
 b=jRuimP+xlQJbxZFGB+qN7Zhe0AtiaELgqNxYANhKA1EhFDEdF+1nDhu+BKSsrFDcEO
 KNPth5O25OZP8+OArY0bbZK+RyRfJy0r/LNUFVTqb4zt75R+A+r9ulEqDN1wPLQfeRNZ
 bY39KlFP3AuyazuVro7PDVx9XfxW4HOjgEcSruC5XOdbmk9wWfAbWfOydA4buBsltYOt
 7hreRPgk0LDie6pX+tKJO37p2szJHOg49NGpv/YuW9A2ufKUK01AIoWqv7CIXbNwfiQm
 7wF5VLY32LlTNIC+6unQ+DGEHL8GLreEkHFjaaJRgcZBJRMR7Cl6TUJMYc618wLX3fyf
 CI2Q==
X-Gm-Message-State: APjAAAX7HmDLCUyKfFYgc+tP2On1UaBI2ISoRrn7AHMNYJgBG8KbLypZ
 hazyKdZONXrHvLLtB/xP/5daiQ==
X-Google-Smtp-Source: APXvYqy6O3d54tIw2heMKyh4C8jmsBAPW9bU7NUXO0uRFtGsgGgi9vQoo5Bc1OyDs6WawAuaQQOrEA==
X-Received: by 2002:adf:ec4c:: with SMTP id w12mr9474963wrn.124.1578561239967; 
 Thu, 09 Jan 2020 01:13:59 -0800 (PST)
Received: from [10.1.2.12] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id m21sm2167857wmi.27.2020.01.09.01.13.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jan 2020 01:13:59 -0800 (PST)
Subject: Re: [PATCH v4 4/6] usb: dwc3: Add Amlogic A1 DWC3 glue
To: Hanjie Lin <hanjie.lin@amlogic.com>, Jerome Brunet
 <jbrunet@baylibre.com>, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kevin Hilman <khilman@baylibre.com>
References: <1578537045-23260-1-git-send-email-hanjie.lin@amlogic.com>
 <1578537045-23260-5-git-send-email-hanjie.lin@amlogic.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <c2d45106-f564-668f-e12a-1fe4206429c0@baylibre.com>
Date: Thu, 9 Jan 2020 10:13:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1578537045-23260-5-git-send-email-hanjie.lin@amlogic.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_011402_175468_7CB5D853 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: devicetree@vger.kernel.org, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Liang Yang <liang.yang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jian Hu <jian.hu@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 09/01/2020 03:30, Hanjie Lin wrote:
> Adds support for Amlogic A1 USB Control Glue HW.
> 
> The Amlogic A1 SoC Family embeds 1 USB Controllers:
> - a DWC3 IP configured as Host for USB2 and USB3
> 
> A glue connects the controllers to the USB2 PHY of A1 SoC.
> 
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> ---
>  drivers/usb/dwc3/dwc3-meson-g12a.c | 99 +++++++++++++++++++++++++++-----------
>  1 file changed, 71 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
> index 8a3ec1a..957eda2 100644
> --- a/drivers/usb/dwc3/dwc3-meson-g12a.c
> +++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
> @@ -96,6 +96,11 @@
>  	#define USB_R5_ID_DIG_TH_MASK				GENMASK(15, 8)
>  	#define USB_R5_ID_DIG_CNT_MASK				GENMASK(23, 16)
>  
> +enum meson_soc_id {
> +	MESON_SOC_G12A = 0,
> +	MESON_SOC_A1,
> +};
> +
>  enum {
>  	USB2_HOST_PHY = 0,
>  	USB2_OTG_PHY,
> @@ -107,10 +112,21 @@ static const char *phy_names[PHY_COUNT] = {
>  	"usb2-phy0", "usb2-phy1", "usb3-phy0",
>  };
>  
> +static const struct clk_bulk_data meson_g12a_clocks[] = {
> +	{ .id = NULL },
> +};
> +
> +static const struct clk_bulk_data meson_a1_clocks[] = {
> +	{ .id = "usb_ctrl" },
> +	{ .id = "usb_bus" },
> +	{ .id = "xtal_usb_ctrl" },
> +};
> +
>  struct dwc3_meson_g12a {
>  	struct device		*dev;
>  	struct regmap		*regmap;
> -	struct clk		*clk;
> +	struct clk_bulk_data    *clks;
> +	int num_clks;
>  	struct reset_control	*reset;
>  	struct phy		*phys[PHY_COUNT];
>  	enum usb_dr_mode	otg_mode;
> @@ -120,6 +136,7 @@ struct dwc3_meson_g12a {
>  	struct regulator	*vbus;
>  	struct usb_role_switch_desc switch_desc;
>  	struct usb_role_switch	*role_switch;
> +	int                     soc_id;
>  };
>  
>  static void dwc3_meson_g12a_usb2_set_mode(struct dwc3_meson_g12a *priv,
> @@ -151,7 +168,7 @@ static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv)
>  				   U2P_R0_POWER_ON_RESET,
>  				   U2P_R0_POWER_ON_RESET);
>  
> -		if (i == USB2_OTG_PHY) {
> +		if (priv->otg_mode == USB_DR_MODE_OTG && i == USB2_OTG_PHY) {

I as said on v2, this is wrong, we can/need/must allow switching even if the dr_mode is not USB_DR_MODE_OTG.

Please add a struct used in match data with a simple bool like "otg_switch_support" and use it here and below
instead of using USB_DR_MODE_OTG.

>  			regmap_update_bits(priv->regmap,
>  				U2P_R0 + (U2P_REG_SIZE * i),
>  				U2P_R0_ID_PULLUP | U2P_R0_DRV_VBUS,
> @@ -295,7 +312,7 @@ static int dwc3_meson_g12a_otg_mode_set(struct dwc3_meson_g12a *priv,
>  {
>  	int ret;
>  
> -	if (!priv->phys[USB2_OTG_PHY])
> +	if (priv->otg_mode != USB_DR_MODE_OTG || !priv->phys[USB2_OTG_PHY])

Ditto

>  		return -EINVAL;
>  
>  	if (mode == PHY_MODE_USB_HOST)
> @@ -409,17 +426,32 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>  		priv->vbus = NULL;
>  	}
>  
> -	priv->clk = devm_clk_get(dev, NULL);
> -	if (IS_ERR(priv->clk))
> -		return PTR_ERR(priv->clk);
> +	priv->soc_id = (enum meson_soc_id)of_device_get_match_data(&pdev->dev);
> +
> +	if (priv->soc_id == MESON_SOC_G12A) {
> +		priv->clks = devm_kmemdup(dev, meson_g12a_clocks,
> +					  sizeof(meson_g12a_clocks),
> +					  GFP_KERNEL);
> +		priv->num_clks = ARRAY_SIZE(meson_g12a_clocks);
> +	} else if (priv->soc_id == MESON_SOC_A1) {
> +		priv->clks = devm_kmemdup(dev, meson_a1_clocks,
> +					  sizeof(meson_a1_clocks),
> +					  GFP_KERNEL);
> +		priv->num_clks = ARRAY_SIZE(meson_a1_clocks);
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	if (!priv->clks)
> +		return -ENOMEM;
>  
> -	ret = clk_prepare_enable(priv->clk);
> +	ret = devm_clk_bulk_get(dev, priv->num_clks, priv->clks);
>  	if (ret)
>  		return ret;
>  
> -	devm_add_action_or_reset(dev,
> -				 (void(*)(void *))clk_disable_unprepare,
> -				 priv->clk);
> +	ret = clk_bulk_prepare_enable(priv->num_clks, priv->clks);
> +	if (ret)
> +		return ret;
>  
>  	platform_set_drvdata(pdev, priv);
>  	priv->dev = dev;
> @@ -433,16 +465,16 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>  
>  	ret = reset_control_reset(priv->reset);
>  	if (ret)
> -		return ret;
> +		goto err_disable_clks;
>  
>  	ret = dwc3_meson_g12a_get_phys(priv);
>  	if (ret)
> -		return ret;
> +		goto err_disable_clks;
>  
>  	if (priv->vbus) {
>  		ret = regulator_enable(priv->vbus);
>  		if (ret)
> -			return ret;
> +			goto err_disable_clks;
>  	}
>  
>  	/* Get dr_mode */
> @@ -458,7 +490,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>  						dwc3_meson_g12a_irq_thread,
>  						IRQF_ONESHOT, pdev->name, priv);
>  		if (ret)
> -			return ret;
> +			goto err_disable_clks;
>  	}
>  
>  	dwc3_meson_g12a_usb_init(priv);
> @@ -467,7 +499,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>  	for (i = 0 ; i < PHY_COUNT ; ++i) {
>  		ret = phy_init(priv->phys[i]);
>  		if (ret)
> -			return ret;
> +			goto err_disable_clks;
>  	}
>  
>  	/* Set PHY Power */
> @@ -478,18 +510,17 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>  	}
>  
>  	ret = of_platform_populate(np, NULL, NULL, dev);
> -	if (ret) {
> -		clk_disable_unprepare(priv->clk);
> +	if (ret)
>  		goto err_phys_power;
> -	}
> +
> +	if (priv->otg_mode != USB_DR_MODE_OTG)
> +		goto setup_pm_runtime;
>  
>  	/* Setup OTG mode corresponding to the ID pin */
> -	if (priv->otg_mode == USB_DR_MODE_OTG) {
> -		otg_id = dwc3_meson_g12a_get_id(priv);
> -		if (otg_id != priv->otg_phy_mode) {
> -			if (dwc3_meson_g12a_otg_mode_set(priv, otg_id))
> -				dev_warn(dev, "Failed to switch OTG mode\n");
> -		}
> +	otg_id = dwc3_meson_g12a_get_id(priv);
> +	if (otg_id != priv->otg_phy_mode) {
> +		if (dwc3_meson_g12a_otg_mode_set(priv, otg_id))
> +			dev_warn(dev, "Failed to switch OTG mode\n");
>  	}
>  
>  	/* Setup role switcher */
> @@ -504,6 +535,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>  	if (IS_ERR(priv->role_switch))
>  		dev_warn(dev, "Unable to register Role Switch\n");
>  
> +setup_pm_runtime:

Ditto

>  	pm_runtime_set_active(dev);
>  	pm_runtime_enable(dev);
>  	pm_runtime_get_sync(dev);
> @@ -518,6 +550,9 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>  	for (i = 0 ; i < PHY_COUNT ; ++i)
>  		phy_exit(priv->phys[i]);
>  
> +err_disable_clks:
> +	clk_bulk_disable_unprepare(priv->num_clks, priv->clks);
> +
>  	return ret;
>  }
>  
> @@ -527,7 +562,8 @@ static int dwc3_meson_g12a_remove(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	int i;
>  
> -	usb_role_switch_unregister(priv->role_switch);
> +	if (priv->otg_mode == USB_DR_MODE_OTG)
> +		usb_role_switch_unregister(priv->role_switch);
>  
>  	of_platform_depopulate(dev);
>  
> @@ -547,7 +583,7 @@ static int __maybe_unused dwc3_meson_g12a_runtime_suspend(struct device *dev)
>  {
>  	struct dwc3_meson_g12a	*priv = dev_get_drvdata(dev);
>  
> -	clk_disable(priv->clk);
> +	clk_bulk_disable_unprepare(priv->num_clks, priv->clks);
>  
>  	return 0;
>  }
> @@ -556,7 +592,7 @@ static int __maybe_unused dwc3_meson_g12a_runtime_resume(struct device *dev)
>  {
>  	struct dwc3_meson_g12a	*priv = dev_get_drvdata(dev);
>  
> -	return clk_enable(priv->clk);
> +	return clk_bulk_prepare_enable(priv->num_clks, priv->clks);
>  }
>  
>  static int __maybe_unused dwc3_meson_g12a_suspend(struct device *dev)
> @@ -619,7 +655,14 @@ static const struct dev_pm_ops dwc3_meson_g12a_dev_pm_ops = {
>  };
>  
>  static const struct of_device_id dwc3_meson_g12a_match[] = {
> -	{ .compatible = "amlogic,meson-g12a-usb-ctrl" },
> +	{
> +		.compatible = "amlogic,meson-g12a-usb-ctrl",
> +		.data = (void *)MESON_SOC_G12A,
> +	},
> +	{
> +		.compatible = "amlogic,meson-a1-usb-ctrl",
> +		.data = (void *)MESON_SOC_A1,
> +	},
>  	{ /* Sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, dwc3_meson_g12a_match);
> 

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
