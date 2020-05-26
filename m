Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7311E1E22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 11:14:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sqy2uGEgfT+iTQUCTHHu5KAPIziaXKZo+qo3KWTVTOA=; b=qx+MzFt+TvfOxYdesRsOy/Tji
	969n1IO9PHu6GfeJZb1dRxO+Y2Mvjyp5sMLapQY8o855zLDdmaJLl4r1PRt+57kOSddoc4Pj0UCT1
	zLIuFLtalu+bn/VIwRvyphU/gyC9oRTYdnrSqR2TyOR+j02suXDl9zGUsx/XNO4o58xNInXY/pSs5
	YENxJbJ2sG75X3issv915QD6KQUZwIYk+7IW0HYkkKf3pF5Ryi3w1qsLUwCcSt6sszbs3ayk/ladL
	dxhuIZf5Rj6aDu9zAUU6JbD1VU+GZ6P8ldeeZsWwKXOF161lwvWgbG9+cdjsoYoZS7eobiCw35DO5
	lQbbXJxOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdVfe-0003Zw-7r; Tue, 26 May 2020 09:14:50 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdVfU-0003Yq-Oc
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 09:14:42 +0000
Received: by mail-lj1-x244.google.com with SMTP id l15so23234511lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 02:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wDpcErkal5SPfudsc5cgWQ3ocOLDqUOpPvJl+FkKN44=;
 b=EazX/CYZBaGX8Yr6ub8iBMNVM2dn3Y/B5jAaBqoETV4cTuSqZqVkD//4nvswiPyj1t
 UUS202llKuOQeORKYqUT8R6DhW4awooS1E+UgmwnCWUADHx3xhzm9o3xB1LS0cVo4lPp
 yWjId7UDf3HXO++u9iURNvXcfdPMCTv/4xUhH/wFG0jjWdO01vMNdh1D7hzkj0Ylp0uB
 t2ZnNHOtbhHvUYfCLOrMECQsmb7jXIpQbuYAzrIS6EB+jtluse/+fsbNm8wdkPQfrsSI
 FGCx2GUxP6iYKm1NL19/GdxZO7HrxIwd+aYWEcvyoCRu3mliv7ln3jV3qymObOxV9O+T
 tP9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wDpcErkal5SPfudsc5cgWQ3ocOLDqUOpPvJl+FkKN44=;
 b=UM9aY9Zn6FGEdTnI2B803yADkDUFhP9n89WCM/Vj2JKFBC354PnFgASdhci3N3R1dZ
 ctx3B+Jo8RT3I7p0H12OqioAp3SAiMltEQY3ktstAQ3oQqLs3hEhT2wYOGUbDxWQRPIw
 YBixjizVOkR3FHMkwZClsfwxW7fesaODIp2q7gPMqUsZ8xcWuO8gxIlvX4nhg4Q1kuD9
 Z0H7gOzhyhWKzE/xehZvx2W643FlvoV/ljsao7KW3PUHpYHkeMeUI8k0F+pbifkGQpxp
 VwdLIkpbAj6XmCYj9n/yg8uQlNd2+s6FxeQRkMVL+p7AcnieBA/c8K0dHD8BvAF26Qnw
 ZfKg==
X-Gm-Message-State: AOAM533dcuFLkPpYg0MvgB/ZCVO+ZsFAj1adUdGE/aGRMMGBxxCa8wDE
 IdaZZzzQaRbD4Og5J+7Q7Er1GQ==
X-Google-Smtp-Source: ABdhPJxmpweaiSxR2yScFuc9xi6JmdZQe3VEixE3Vhl3SsA2zEQcu+NxkMAlb26OejuKvVyb7zXaHA==
X-Received: by 2002:a05:651c:1ad:: with SMTP id
 c13mr132250ljn.135.1590484477414; 
 Tue, 26 May 2020 02:14:37 -0700 (PDT)
Received: from [192.168.118.216] (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.gmail.com with ESMTPSA id l2sm4546578ljg.124.2020.05.26.02.14.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 May 2020 02:14:36 -0700 (PDT)
Subject: Re: [PATCH v3 04/10] media: i2c: imx290: Add support for 2 data lanes
To: Sakari Ailus <sakari.ailus@iki.fi>
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
 <20200524192505.20682-5-andrey.konovalov@linaro.org>
 <20200526090127.GG8214@valkosipuli.retiisi.org.uk>
From: Andrey Konovalov <andrey.konovalov@linaro.org>
Message-ID: <d68dda83-2911-be57-c5b9-b482fe1fa0ca@linaro.org>
Date: Tue, 26 May 2020 12:14:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200526090127.GG8214@valkosipuli.retiisi.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_021440_811934_9CE7E6FF 
X-CRM114-Status: GOOD (  26.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 manivannan.sadhasivam@linaro.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

Thank you for the review

On 26.05.2020 12:01, Sakari Ailus wrote:
> Hi Andrey,
> 
> On Sun, May 24, 2020 at 10:24:59PM +0300, Andrey Konovalov wrote:
>> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>>
>> The IMX290 sensor can output frames with 2/4 CSI2 data lanes. This commit
>> adds support for 2 lane mode in addition to the 4 lane and also
>> configuring the data lane settings in the driver based on system
>> configuration.
>>
>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
>> ---
>>   drivers/media/i2c/imx290.c | 133 ++++++++++++++++++++++++++++++++++---
>>   1 file changed, 124 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
>> index 7b1de1f0c8b7..a361c9ac8bd5 100644
>> --- a/drivers/media/i2c/imx290.c
>> +++ b/drivers/media/i2c/imx290.c
>> @@ -25,7 +25,18 @@
>>   #define IMX290_STANDBY 0x3000
>>   #define IMX290_REGHOLD 0x3001
>>   #define IMX290_XMSTA 0x3002
>> +#define IMX290_FR_FDG_SEL 0x3009
>>   #define IMX290_GAIN 0x3014
>> +#define IMX290_HMAX_LOW 0x301c
>> +#define IMX290_HMAX_HIGH 0x301d
>> +#define IMX290_PHY_LANE_NUM 0x3407
>> +#define IMX290_CSI_LANE_MODE 0x3443
>> +
>> +/* HMAX fields */
>> +#define IMX290_HMAX_2_1920 0x1130
>> +#define IMX290_HMAX_4_1920 0x0898
>> +#define IMX290_HMAX_2_720 0x19C8
>> +#define IMX290_HMAX_4_720 0x0CE4
>>   
>>   #define IMX290_DEFAULT_LINK_FREQ 445500000
>>   
>> @@ -56,6 +67,7 @@ struct imx290 {
>>   	struct device *dev;
>>   	struct clk *xclk;
>>   	struct regmap *regmap;
>> +	u8 nlanes;
>>   
>>   	struct v4l2_subdev sd;
>>   	struct v4l2_fwnode_endpoint ep;
>> @@ -89,14 +101,11 @@ static const struct regmap_config imx290_regmap_config = {
>>   
>>   static const struct imx290_regval imx290_global_init_settings[] = {
>>   	{ 0x3007, 0x00 },
>> -	{ 0x3009, 0x00 },
>>   	{ 0x3018, 0x65 },
>>   	{ 0x3019, 0x04 },
>>   	{ 0x301a, 0x00 },
>> -	{ 0x3443, 0x03 },
>>   	{ 0x3444, 0x20 },
>>   	{ 0x3445, 0x25 },
>> -	{ 0x3407, 0x03 },
>>   	{ 0x303a, 0x0c },
>>   	{ 0x3040, 0x00 },
>>   	{ 0x3041, 0x00 },
>> @@ -169,7 +178,6 @@ static const struct imx290_regval imx290_1080p_settings[] = {
>>   	{ 0x3164, 0x1a },
>>   	{ 0x3480, 0x49 },
>>   	/* data rate settings */
>> -	{ 0x3009, 0x01 },
>>   	{ 0x3405, 0x10 },
>>   	{ 0x3446, 0x57 },
>>   	{ 0x3447, 0x00 },
>> @@ -187,8 +195,6 @@ static const struct imx290_regval imx290_1080p_settings[] = {
>>   	{ 0x3453, 0x00 },
>>   	{ 0x3454, 0x17 },
>>   	{ 0x3455, 0x00 },
>> -	{ 0x301c, 0x98 },
>> -	{ 0x301d, 0x08 },
>>   };
>>   
>>   static const struct imx290_regval imx290_720p_settings[] = {
>> @@ -210,7 +216,6 @@ static const struct imx290_regval imx290_720p_settings[] = {
>>   	{ 0x3164, 0x1a },
>>   	{ 0x3480, 0x49 },
>>   	/* data rate settings */
>> -	{ 0x3009, 0x01 },
>>   	{ 0x3405, 0x10 },
>>   	{ 0x3446, 0x4f },
>>   	{ 0x3447, 0x00 },
>> @@ -228,8 +233,6 @@ static const struct imx290_regval imx290_720p_settings[] = {
>>   	{ 0x3453, 0x00 },
>>   	{ 0x3454, 0x17 },
>>   	{ 0x3455, 0x00 },
>> -	{ 0x301c, 0xe4 },
>> -	{ 0x301d, 0x0c },
>>   };
>>   
>>   static const struct imx290_regval imx290_10bit_settings[] = {
>> @@ -522,6 +525,25 @@ static int imx290_write_current_format(struct imx290 *imx290,
>>   	return 0;
>>   }
>>   
>> +static int imx290_set_hmax(struct imx290 *imx290, u32 val)
>> +{
>> +	int ret;
>> +
>> +	ret = imx290_write_reg(imx290, IMX290_HMAX_LOW, (val & 0xff));
>> +	if (ret) {
>> +		dev_err(imx290->dev, "Error setting HMAX register\n");
>> +		return ret;
>> +	}
>> +
>> +	ret = imx290_write_reg(imx290, IMX290_HMAX_HIGH, ((val >> 8) & 0xff));
>> +	if (ret) {
>> +		dev_err(imx290->dev, "Error setting HMAX register\n");
>> +		return ret;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>>   /* Start streaming */
>>   static int imx290_start_streaming(struct imx290 *imx290)
>>   {
>> @@ -551,6 +573,40 @@ static int imx290_start_streaming(struct imx290 *imx290)
>>   		return ret;
>>   	}
>>   
>> +	switch (imx290->nlanes) {
>> +	case 2:
>> +		if (imx290->current_mode->width == 1920) {
>> +			ret = imx290_set_hmax(imx290, IMX290_HMAX_2_1920);
>> +			if (ret < 0)
>> +				return ret;
>> +		} else {
>> +			ret = imx290_set_hmax(imx290, IMX290_HMAX_2_720);
>> +			if (ret < 0)
>> +				return ret;
>> +		}
>> +
>> +		break;
>> +	case 4:
>> +		if (imx290->current_mode->width == 1920) {
>> +			ret = imx290_set_hmax(imx290, IMX290_HMAX_4_1920);
>> +			if (ret < 0)
>> +				return ret;
>> +		} else {
>> +			ret = imx290_set_hmax(imx290, IMX290_HMAX_4_720);
>> +			if (ret < 0)
>> +				return ret;
> 
> I think it'd be nicer to put this where the mode definitions are, to avoid
> scattering the configuration around the driver.

Would it be OK if I move this inside imx290_write_current_format()?

>> +		}
>> +
>> +		break;
>> +	default:
>> +		/*
>> +		 * We should never hit this since the data lane count is
>> +		 * validated in probe itself
>> +		 */
>> +		dev_err(imx290->dev, "Lane configuration not supported\n");
>> +		return -EINVAL;
>> +	}
>> +
>>   	/* Apply customized values from user */
>>   	ret = v4l2_ctrl_handler_setup(imx290->sd.ctrl_handler);
>>   	if (ret) {
>> @@ -607,6 +663,49 @@ static int imx290_get_regulators(struct device *dev, struct imx290 *imx290)
>>   				       imx290->supplies);
>>   }
>>   
>> +static int imx290_set_data_lanes(struct imx290 *imx290)
>> +{
>> +	int ret = 0, laneval, frsel;
>> +
>> +	switch (imx290->nlanes) {
>> +	case 2:
>> +		laneval = 0x01;
>> +		frsel = 0x02;
>> +		break;
>> +	case 4:
>> +		laneval = 0x03;
>> +		frsel = 0x01;
>> +		break;
>> +	default:
>> +		/*
>> +		 * We should never hit this since the data lane count is
>> +		 * validated in probe itself
>> +		 */
>> +		dev_err(imx290->dev, "Lane configuration not supported\n");
>> +		ret = -EINVAL;
>> +		goto exit;
>> +	}
>> +
>> +	ret = imx290_write_reg(imx290, IMX290_PHY_LANE_NUM, laneval);
>> +	if (ret) {
>> +		dev_err(imx290->dev, "Error setting Physical Lane number register\n");
>> +		goto exit;
>> +	}
>> +
>> +	ret = imx290_write_reg(imx290, IMX290_CSI_LANE_MODE, laneval);
>> +	if (ret) {
>> +		dev_err(imx290->dev, "Error setting CSI Lane mode register\n");
>> +		goto exit;
>> +	}
>> +
>> +	ret = imx290_write_reg(imx290, IMX290_FR_FDG_SEL, frsel);
>> +	if (ret)
>> +		dev_err(imx290->dev, "Error setting FR/FDG SEL register\n");
>> +
>> +exit:
>> +	return ret;
>> +}
>> +
>>   static int imx290_power_on(struct device *dev)
>>   {
>>   	struct i2c_client *client = to_i2c_client(dev);
>> @@ -631,6 +730,9 @@ static int imx290_power_on(struct device *dev)
>>   	gpiod_set_value_cansleep(imx290->rst_gpio, 0);
>>   	usleep_range(30000, 31000);
>>   
>> +	/* Set data lane count */
>> +	imx290_set_data_lanes(imx290);
>> +
>>   	return 0;
>>   }
>>   
>> @@ -703,6 +805,16 @@ static int imx290_probe(struct i2c_client *client)
>>   		goto free_err;
>>   	}
>>   
>> +	/* Get number of data lanes */
> 
> While at it, could you set the PHY type in the V4L2 fwnode endpoint before
> parsing the data using v4l2_fwnode_endpoint_alloc_parse()?

This is currently done in "[PATCH v3 10/10] media: i2c: imx290: set bus_type
before calling v4l2_fwnode_endpoint_alloc_parse()" (along with some more
clean-ups for the probe()). I can merge the PHY type in the V4L2 fwnode endpoint
change into this patch.

Thanks,
Andrey

>> +	imx290->nlanes = imx290->ep.bus.mipi_csi2.num_data_lanes;
>> +	if (imx290->nlanes != 2 && imx290->nlanes != 4) {
>> +		dev_err(dev, "Invalid data lanes: %d\n", imx290->nlanes);
>> +		ret = -EINVAL;
>> +		goto free_err;
>> +	}
>> +
>> +	dev_dbg(dev, "Using %u data lanes\n", imx290->nlanes);
>> +
>>   	if (!imx290->ep.nr_of_link_frequencies) {
>>   		dev_err(dev, "link-frequency property not found in DT\n");
>>   		ret = -EINVAL;
>> @@ -823,6 +935,9 @@ static int imx290_probe(struct i2c_client *client)
>>   		goto free_entity;
>>   	}
>>   
>> +	/* Set data lane count */
>> +	imx290_set_data_lanes(imx290);
>> +
>>   	pm_runtime_set_active(dev);
>>   	pm_runtime_enable(dev);
>>   	pm_runtime_idle(dev);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
