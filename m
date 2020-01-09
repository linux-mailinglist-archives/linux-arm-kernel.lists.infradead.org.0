Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 109FB13587A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 12:51:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/FzF396AAgoWebCEtygGRanf7opkitrUwbYlzP+eg0=; b=gEWJ1Mvx6KZQNX
	qH/UWb9tD/V46pjhUC/QhDxCY586QNANfTV/GPYZiqHGcy7eIuU7K2/5k/LfPG8hr6IPdmcx0vgQW
	afIaDuDIcGSePEmHy3u+ip5qaQ4qWIuhkbFulD1Sl8J70wxRfm+9o+N8SOUwQUzgWiKmGm8rBHd+P
	IPGBurC0tWvTyq9qgsYR2nWCb5JiDQkMFqADOOeO/rREiS7qk1Qg9erbavllI1vT3y/A3tVK1Mp/3
	NARfCmKdVfgS1Huh9iV5BpfEKn2Zj6ehpxp4+GbWIbHLOntd8axnmUj0IlKrta6Syxs8/HKst3ppv
	ZderECSHZddAjjEv8IRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipWLb-000050-Sg; Thu, 09 Jan 2020 11:51:31 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipWLS-0008VF-5U; Thu, 09 Jan 2020 11:51:24 +0000
Received: from [10.18.38.198] (10.18.38.198) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Thu, 9 Jan
 2020 19:51:42 +0800
Subject: Re: [PATCH v4 4/6] usb: dwc3: Add Amlogic A1 DWC3 glue
To: Neil Armstrong <narmstrong@baylibre.com>, Jerome Brunet
 <jbrunet@baylibre.com>, Rob Herring <robh@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Kevin Hilman <khilman@baylibre.com>
References: <1578537045-23260-1-git-send-email-hanjie.lin@amlogic.com>
 <1578537045-23260-5-git-send-email-hanjie.lin@amlogic.com>
 <c2d45106-f564-668f-e12a-1fe4206429c0@baylibre.com>
From: Hanjie Lin <hanjie.lin@amlogic.com>
Message-ID: <26becb35-3418-0ea3-a7ab-53b4a9b06b7c@amlogic.com>
Date: Thu, 9 Jan 2020 19:51:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <c2d45106-f564-668f-e12a-1fe4206429c0@baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.18.38.198]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_035122_208469_822D2880 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Liang Yang <liang.yang@amlogic.com>, Jian Hu <jian.hu@amlogic.com>,
 linux-arm-kernel@lists.infradead.org, Qiufang Dai <qiufang.dai@amlogic.com>,
 linux-amlogic@lists.infradead.org, Carlo Caione <carlo@caione.org>,
 Xingyu Chen <xingyu.chen@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/1/9 17:13, Neil Armstrong wrote:
> Hi,
> 
> On 09/01/2020 03:30, Hanjie Lin wrote:
>> Adds support for Amlogic A1 USB Control Glue HW.
>>
>> The Amlogic A1 SoC Family embeds 1 USB Controllers:
>> - a DWC3 IP configured as Host for USB2 and USB3
>>
>> A glue connects the controllers to the USB2 PHY of A1 SoC.
>>
>> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
>> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
>> ---
>>  drivers/usb/dwc3/dwc3-meson-g12a.c | 99 +++++++++++++++++++++++++++-----------
>>  1 file changed, 71 insertions(+), 28 deletions(-)
>>
>> diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
>> index 8a3ec1a..957eda2 100644
>> --- a/drivers/usb/dwc3/dwc3-meson-g12a.c
>> +++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
>> @@ -96,6 +96,11 @@
>>  	#define USB_R5_ID_DIG_TH_MASK				GENMASK(15, 8)
>>  	#define USB_R5_ID_DIG_CNT_MASK				GENMASK(23, 16)
>>  
>> +enum meson_soc_id {
>> +	MESON_SOC_G12A = 0,
>> +	MESON_SOC_A1,
>> +};
>> +
>>  enum {
>>  	USB2_HOST_PHY = 0,
>>  	USB2_OTG_PHY,
>> @@ -107,10 +112,21 @@ static const char *phy_names[PHY_COUNT] = {
>>  	"usb2-phy0", "usb2-phy1", "usb3-phy0",
>>  };
>>  
>> +static const struct clk_bulk_data meson_g12a_clocks[] = {
>> +	{ .id = NULL },
>> +};
>> +
>> +static const struct clk_bulk_data meson_a1_clocks[] = {
>> +	{ .id = "usb_ctrl" },
>> +	{ .id = "usb_bus" },
>> +	{ .id = "xtal_usb_ctrl" },
>> +};
>> +
>>  struct dwc3_meson_g12a {
>>  	struct device		*dev;
>>  	struct regmap		*regmap;
>> -	struct clk		*clk;
>> +	struct clk_bulk_data    *clks;
>> +	int num_clks;
>>  	struct reset_control	*reset;
>>  	struct phy		*phys[PHY_COUNT];
>>  	enum usb_dr_mode	otg_mode;
>> @@ -120,6 +136,7 @@ struct dwc3_meson_g12a {
>>  	struct regulator	*vbus;
>>  	struct usb_role_switch_desc switch_desc;
>>  	struct usb_role_switch	*role_switch;
>> +	int                     soc_id;
>>  };
>>  
>>  static void dwc3_meson_g12a_usb2_set_mode(struct dwc3_meson_g12a *priv,
>> @@ -151,7 +168,7 @@ static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv)
>>  				   U2P_R0_POWER_ON_RESET,
>>  				   U2P_R0_POWER_ON_RESET);
>>  
>> -		if (i == USB2_OTG_PHY) {
>> +		if (priv->otg_mode == USB_DR_MODE_OTG && i == USB2_OTG_PHY) {
> 
> I as said on v2, this is wrong, we can/need/must allow switching even if the dr_mode is not USB_DR_MODE_OTG.
> 
> Please add a struct used in match data with a simple bool like "otg_switch_support" and use it here and below
> instead of using USB_DR_MODE_OTG.
> 
Hi neil, 

Right, I thought only otg dr_mode(from dts) can allow switching by mistake.

I will add a drvdata struct includes both otg_switch_supported and clock info for each SoC comaptible in next version.

Thanks,
Hanjie

>>  			regmap_update_bits(priv->regmap,
>>  				U2P_R0 + (U2P_REG_SIZE * i),
>>  				U2P_R0_ID_PULLUP | U2P_R0_DRV_VBUS,
>> @@ -295,7 +312,7 @@ static int dwc3_meson_g12a_otg_mode_set(struct dwc3_meson_g12a *priv,
>>  {
>>  	int ret;
>>  
>> -	if (!priv->phys[USB2_OTG_PHY])
>> +	if (priv->otg_mode != USB_DR_MODE_OTG || !priv->phys[USB2_OTG_PHY])
> 
> Ditto
> 
>>  		return -EINVAL;
>>  
>>  	if (mode == PHY_MODE_USB_HOST)
>> @@ -409,17 +426,32 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>>  		priv->vbus = NULL;
>>  	}
>>  
>> -	priv->clk = devm_clk_get(dev, NULL);
>> -	if (IS_ERR(priv->clk))
>> -		return PTR_ERR(priv->clk);
>> +	priv->soc_id = (enum meson_soc_id)of_device_get_match_data(&pdev->dev);
>> +
>> +	if (priv->soc_id == MESON_SOC_G12A) {
>> +		priv->clks = devm_kmemdup(dev, meson_g12a_clocks,
>> +					  sizeof(meson_g12a_clocks),
>> +					  GFP_KERNEL);
>> +		priv->num_clks = ARRAY_SIZE(meson_g12a_clocks);
>> +	} else if (priv->soc_id == MESON_SOC_A1) {
>> +		priv->clks = devm_kmemdup(dev, meson_a1_clocks,
>> +					  sizeof(meson_a1_clocks),
>> +					  GFP_KERNEL);
>> +		priv->num_clks = ARRAY_SIZE(meson_a1_clocks);
>> +	} else {
>> +		return -EINVAL;
>> +	}
>> +
>> +	if (!priv->clks)
>> +		return -ENOMEM;
>>  
>> -	ret = clk_prepare_enable(priv->clk);
>> +	ret = devm_clk_bulk_get(dev, priv->num_clks, priv->clks);
>>  	if (ret)
>>  		return ret;
>>  
>> -	devm_add_action_or_reset(dev,
>> -				 (void(*)(void *))clk_disable_unprepare,
>> -				 priv->clk);
>> +	ret = clk_bulk_prepare_enable(priv->num_clks, priv->clks);
>> +	if (ret)
>> +		return ret;
>>  
>>  	platform_set_drvdata(pdev, priv);
>>  	priv->dev = dev;
>> @@ -433,16 +465,16 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>>  
>>  	ret = reset_control_reset(priv->reset);
>>  	if (ret)
>> -		return ret;
>> +		goto err_disable_clks;
>>  
>>  	ret = dwc3_meson_g12a_get_phys(priv);
>>  	if (ret)
>> -		return ret;
>> +		goto err_disable_clks;
>>  
>>  	if (priv->vbus) {
>>  		ret = regulator_enable(priv->vbus);
>>  		if (ret)
>> -			return ret;
>> +			goto err_disable_clks;
>>  	}
>>  
>>  	/* Get dr_mode */
>> @@ -458,7 +490,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>>  						dwc3_meson_g12a_irq_thread,
>>  						IRQF_ONESHOT, pdev->name, priv);
>>  		if (ret)
>> -			return ret;
>> +			goto err_disable_clks;
>>  	}
>>  
>>  	dwc3_meson_g12a_usb_init(priv);
>> @@ -467,7 +499,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>>  	for (i = 0 ; i < PHY_COUNT ; ++i) {
>>  		ret = phy_init(priv->phys[i]);
>>  		if (ret)
>> -			return ret;
>> +			goto err_disable_clks;
>>  	}
>>  
>>  	/* Set PHY Power */
>> @@ -478,18 +510,17 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>>  	}
>>  
>>  	ret = of_platform_populate(np, NULL, NULL, dev);
>> -	if (ret) {
>> -		clk_disable_unprepare(priv->clk);
>> +	if (ret)
>>  		goto err_phys_power;
>> -	}
>> +
>> +	if (priv->otg_mode != USB_DR_MODE_OTG)
>> +		goto setup_pm_runtime;
>>  
>>  	/* Setup OTG mode corresponding to the ID pin */
>> -	if (priv->otg_mode == USB_DR_MODE_OTG) {
>> -		otg_id = dwc3_meson_g12a_get_id(priv);
>> -		if (otg_id != priv->otg_phy_mode) {
>> -			if (dwc3_meson_g12a_otg_mode_set(priv, otg_id))
>> -				dev_warn(dev, "Failed to switch OTG mode\n");
>> -		}
>> +	otg_id = dwc3_meson_g12a_get_id(priv);
>> +	if (otg_id != priv->otg_phy_mode) {
>> +		if (dwc3_meson_g12a_otg_mode_set(priv, otg_id))
>> +			dev_warn(dev, "Failed to switch OTG mode\n");
>>  	}
>>  
>>  	/* Setup role switcher */
>> @@ -504,6 +535,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>>  	if (IS_ERR(priv->role_switch))
>>  		dev_warn(dev, "Unable to register Role Switch\n");
>>  
>> +setup_pm_runtime:
> 
> Ditto
> 
>>  	pm_runtime_set_active(dev);
>>  	pm_runtime_enable(dev);
>>  	pm_runtime_get_sync(dev);
>> @@ -518,6 +550,9 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>>  	for (i = 0 ; i < PHY_COUNT ; ++i)
>>  		phy_exit(priv->phys[i]);
>>  
>> +err_disable_clks:
>> +	clk_bulk_disable_unprepare(priv->num_clks, priv->clks);
>> +
>>  	return ret;
>>  }
>>  
>> @@ -527,7 +562,8 @@ static int dwc3_meson_g12a_remove(struct platform_device *pdev)
>>  	struct device *dev = &pdev->dev;
>>  	int i;
>>  
>> -	usb_role_switch_unregister(priv->role_switch);
>> +	if (priv->otg_mode == USB_DR_MODE_OTG)
>> +		usb_role_switch_unregister(priv->role_switch);
>>  
>>  	of_platform_depopulate(dev);
>>  
>> @@ -547,7 +583,7 @@ static int __maybe_unused dwc3_meson_g12a_runtime_suspend(struct device *dev)
>>  {
>>  	struct dwc3_meson_g12a	*priv = dev_get_drvdata(dev);
>>  
>> -	clk_disable(priv->clk);
>> +	clk_bulk_disable_unprepare(priv->num_clks, priv->clks);
>>  
>>  	return 0;
>>  }
>> @@ -556,7 +592,7 @@ static int __maybe_unused dwc3_meson_g12a_runtime_resume(struct device *dev)
>>  {
>>  	struct dwc3_meson_g12a	*priv = dev_get_drvdata(dev);
>>  
>> -	return clk_enable(priv->clk);
>> +	return clk_bulk_prepare_enable(priv->num_clks, priv->clks);
>>  }
>>  
>>  static int __maybe_unused dwc3_meson_g12a_suspend(struct device *dev)
>> @@ -619,7 +655,14 @@ static const struct dev_pm_ops dwc3_meson_g12a_dev_pm_ops = {
>>  };
>>  
>>  static const struct of_device_id dwc3_meson_g12a_match[] = {
>> -	{ .compatible = "amlogic,meson-g12a-usb-ctrl" },
>> +	{
>> +		.compatible = "amlogic,meson-g12a-usb-ctrl",
>> +		.data = (void *)MESON_SOC_G12A,
>> +	},
>> +	{
>> +		.compatible = "amlogic,meson-a1-usb-ctrl",
>> +		.data = (void *)MESON_SOC_A1,
>> +	},
>>  	{ /* Sentinel */ }
>>  };
>>  MODULE_DEVICE_TABLE(of, dwc3_meson_g12a_match);
>>
> 
> Neil
> 
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
