Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68150125E23
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:51:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2eDQAQRs+shZLGCAa0PrBsFrrOGgVxaRue8FwFT1ik=; b=DZFkRHNNWAaVwU
	fQX/iH/W755yhfdmsJqGPbhka6KWRJfKFUgyspgT/AJTXtiFdZIUo2wCpoD6Byh+kKL33rI1RpH4D
	HQ6sGCvBy8DjqEyLgJPZKq+xaNyc4DcRj/LA/5nyFESgjyUiiSJSle05bgdhEgMDtb5W8Mkgaa65y
	z1WEU7pp5BaZA2XPmRRtmoYlWF7JxNx/Nbnl8wDl+u182seTAgCG5eVMXLQqI+dAo82AunvCrjezY
	yOaw/GA01H/Gjbwei97ASyC0TwBtNdgXJRLvQNxQ0QZTIY/J9p4S79NdTo6j48QL3hz8wVTMcDAc9
	tk7w9vviwpOXsx+eZ0Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihsSg-0004oQ-As; Thu, 19 Dec 2019 09:51:14 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihsSV-0004n7-Dq; Thu, 19 Dec 2019 09:51:04 +0000
Received: from [10.18.38.198] (10.18.38.198) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Thu, 19 Dec
 2019 17:51:38 +0800
Subject: Re: [PATCH v2 4/6] usb: dwc3: Add Amlogic A1 DWC3 glue
To: Neil Armstrong <narmstrong@baylibre.com>, Jerome Brunet
 <jbrunet@baylibre.com>, Rob Herring <robh@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Felipe Balbi <felipe.balbi@linux.intel.com>,
 Kevin Hilman <khilman@baylibre.com>
References: <1576636944-196192-1-git-send-email-hanjie.lin@amlogic.com>
 <1576636944-196192-5-git-send-email-hanjie.lin@amlogic.com>
 <d381f59c-1c28-d281-3218-f47df9f1e757@baylibre.com>
From: Hanjie Lin <hanjie.lin@amlogic.com>
Message-ID: <a0922e0f-7783-433a-8e88-6f9260b2227d@amlogic.com>
Date: Thu, 19 Dec 2019 17:51:37 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <d381f59c-1c28-d281-3218-f47df9f1e757@baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.18.38.198]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_015103_465249_35B0F0CF 
X-CRM114-Status: GOOD (  19.36  )
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
 Liang Yang <liang.yang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jian Hu <jian.hu@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/12/18 21:23, Neil Armstrong wrote:
> Hi,
> 
> On 18/12/2019 03:42, Hanjie Lin wrote:
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
>>  drivers/usb/dwc3/dwc3-meson-g12a.c | 69 +++++++++++++++++++++++++++-----------
>>  1 file changed, 49 insertions(+), 20 deletions(-)
>>
>> diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
>> index 8a3ec1a..3817daf 100644
>> --- a/drivers/usb/dwc3/dwc3-meson-g12a.c
>> +++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
>> @@ -107,10 +107,22 @@ static const char *phy_names[PHY_COUNT] = {
>>  	"usb2-phy0", "usb2-phy1", "usb3-phy0",
>>  };
>>  
>> +static const struct clk_bulk_data meson_g12a_clocks[] = {
>> +	{ .id = NULL},
>> +};
>> +
>> +static const struct clk_bulk_data meson_a1_clocks[] = {
>> +	{ .id = "usb_ctrl"},
>> +	{ .id = "usb_bus"},
>> +	{ .id = "xtal_usb_phy"},
>> +	{ .id = "xtal_usb_ctrl"},
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
>> @@ -151,7 +163,7 @@ static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv)
>>  				   U2P_R0_POWER_ON_RESET,
>>  				   U2P_R0_POWER_ON_RESET);
>>  
>> -		if (i == USB2_OTG_PHY) {
>> +		if (i == USB2_OTG_PHY && priv->otg_mode != USB_DR_MODE_HOST) {
> 
> This is wrong for G12A, please use something else to exclude PULLUPP/VBUS to be updated on A1.
> 

Yes, it's a mistake.
I will try to fix it in next version.

>>  			regmap_update_bits(priv->regmap,
>>  				U2P_R0 + (U2P_REG_SIZE * i),
>>  				U2P_R0_ID_PULLUP | U2P_R0_DRV_VBUS,
>> @@ -295,7 +307,7 @@ static int dwc3_meson_g12a_otg_mode_set(struct dwc3_meson_g12a *priv,
>>  {
>>  	int ret;
>>  
>> -	if (!priv->phys[USB2_OTG_PHY])
>> +	if (!priv->phys[USB2_OTG_PHY] || priv->otg_mode == USB_DR_MODE_HOST)
> 
> Same, this is wrong on G12A since a Host port can be switched to device, use something
> else to disable this for A1, like setting a "otg_supported" flag into the match data,
> and using it in dwc3_meson_g12a_usb2_init(), avoiding registering usb_role_switch, the
> IRQ and updating the priv->otg_mode in probe().
> 

Yes, thanks.

>>  		return -EINVAL;
>>  
>>  	if (mode == PHY_MODE_USB_HOST)
>> @@ -409,17 +421,32 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>>  		priv->vbus = NULL;
>>  	}
>>  
>> -	priv->clk = devm_clk_get(dev, NULL);
>> -	if (IS_ERR(priv->clk))
>> -		return PTR_ERR(priv->clk);
>> +	priv->dev = dev;
>> +
>> +	if (of_device_is_compatible(np, "amlogic,meson-g12a-usb-ctrl")) {
>> +		priv->clks = devm_kmemdup(dev, meson_g12a_clocks,
>> +					  sizeof(meson_g12a_clocks),
>> +					  GFP_KERNEL);
>> +		priv->num_clks = ARRAY_SIZE(meson_g12a_clocks);
>> +	} else if (of_device_is_compatible(np, "amlogic,meson-a1-usb-ctrl")) {
>> +		priv->clks = devm_kmemdup(dev, meson_a1_clocks,
>> +					  sizeof(meson_a1_clocks),
>> +					  GFP_KERNEL);
>> +		priv->num_clks = ARRAY_SIZE(meson_a1_clocks);
>> +	} else {
>> +		return -EINVAL;
>> +	}
> 
> Like the PHY driver, please use of_device_get_match_data() and a match data for each compatible instead.
> 

OK.

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
>> @@ -433,16 +460,16 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
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
>> @@ -458,7 +485,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>>  						dwc3_meson_g12a_irq_thread,
>>  						IRQF_ONESHOT, pdev->name, priv);
>>  		if (ret)
>> -			return ret;
>> +			goto err_disable_clks;
>>  	}
>>  
>>  	dwc3_meson_g12a_usb_init(priv);
>> @@ -467,7 +494,7 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>>  	for (i = 0 ; i < PHY_COUNT ; ++i) {
>>  		ret = phy_init(priv->phys[i]);
>>  		if (ret)
>> -			return ret;
>> +			goto err_disable_clks;
>>  	}
>>  
>>  	/* Set PHY Power */
>> @@ -478,10 +505,8 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>>  	}
>>  
>>  	ret = of_platform_populate(np, NULL, NULL, dev);
>> -	if (ret) {
>> -		clk_disable_unprepare(priv->clk);
>> +	if (ret)
>>  		goto err_phys_power;
>> -	}
>>  
>>  	/* Setup OTG mode corresponding to the ID pin */
>>  	if (priv->otg_mode == USB_DR_MODE_OTG) {
>> @@ -518,6 +543,9 @@ static int dwc3_meson_g12a_probe(struct platform_device *pdev)
>>  	for (i = 0 ; i < PHY_COUNT ; ++i)
>>  		phy_exit(priv->phys[i]);
>>  
>> +err_disable_clks:
>> +	clk_bulk_disable_unprepare(priv->num_clks, priv->clks);
>> +
>>  	return ret;
>>  }
>>  
>> @@ -547,7 +575,7 @@ static int __maybe_unused dwc3_meson_g12a_runtime_suspend(struct device *dev)
>>  {
>>  	struct dwc3_meson_g12a	*priv = dev_get_drvdata(dev);
>>  
>> -	clk_disable(priv->clk);
>> +	clk_bulk_disable_unprepare(priv->num_clks, priv->clks);
>>  
>>  	return 0;
>>  }
>> @@ -556,7 +584,7 @@ static int __maybe_unused dwc3_meson_g12a_runtime_resume(struct device *dev)
>>  {
>>  	struct dwc3_meson_g12a	*priv = dev_get_drvdata(dev);
>>  
>> -	return clk_enable(priv->clk);
>> +	return clk_bulk_prepare_enable(priv->num_clks, priv->clks);
>>  }
>>  
>>  static int __maybe_unused dwc3_meson_g12a_suspend(struct device *dev)
>> @@ -620,6 +648,7 @@ static const struct dev_pm_ops dwc3_meson_g12a_dev_pm_ops = {
>>  
>>  static const struct of_device_id dwc3_meson_g12a_match[] = {
>>  	{ .compatible = "amlogic,meson-g12a-usb-ctrl" },
>> +	{ .compatible = "amlogic,meson-a1-usb-ctrl" },
>>  	{ /* Sentinel */ }
>>  };
>>  MODULE_DEVICE_TABLE(of, dwc3_meson_g12a_match);
>>
> 
> 
> Thanks,
> Neil
> 
> .
>

Thanks,
Hanjie.Lin
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
