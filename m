Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B9D137AB7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 01:38:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ritSvzPutgJuHxkHIZ/81Mz81RaUB5usEuXoiyNwyM8=; b=DdvNmQx87iWZjq
	dXmcP3lQ2Lxk3DUw9Ho7Q9kC6BQId1AyKjB4VoPcxVqqIlTB6yaQQGgcyzS+RjeyBV1SFUj5PyfDL
	L/V6untg3/rgsDA+EkHw8zyuCv7Gq+mjzkI/m8XEac36TmTdoglbaNCHcHyYT4sAdm/yGmB7LnLKL
	Fz+JfaFqrWmfzfrUtjwBdgQDuG1pmFYwjnYD8td09Knwr6bJu1jjPuI/girxqUSD21wqJrl6S9eeD
	YZ0icovDDA+R57GSoa/wtfWX3LrsGAPypxWLdryNShoML0CGJ1CzcS9qN6joljHMJcw7N4XRJEKq9
	zvWzL8/zIkSrz5IVI/1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq4nJ-0000h0-G9; Sat, 11 Jan 2020 00:38:25 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq4mt-0000R3-NJ
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 00:38:01 +0000
Received: by mail-ed1-x541.google.com with SMTP id j17so3233231edp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 16:37:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fbwpp0M4v1byAZiU/BGu8FaK5TmPEA+B5cpzgIatva8=;
 b=WTmpCcWpJKa47drqgTVETI2TgxWES3uUJImCSg3Gq1bXitP0fHic3C9ycZzPF5zAYT
 KpFplbco1NGzJL8DqhUrqryMg2pD6BiaV71l+PPvE/aHygoviGC1i+6GPzbhnVHGt7ib
 /1osn0VraJX65Uniwt5T6U9exEtZyZNQzE6l8C1b1XQu3idnPMo47pUUyKc48dd7HTgX
 3j84MFVdnLMDESVUJceJiRK0Hle/4vBLW5t8en8BGzDBhS+1lcPuH8g4Rdr3mRj23aFk
 tqISfFtaq3au+0f4MThAZA5gc0aDIJ+s7sHoWSWNQnw+MkPS0duhqqMfS3Qi2vtNAqms
 QhWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=fbwpp0M4v1byAZiU/BGu8FaK5TmPEA+B5cpzgIatva8=;
 b=fjK7QMq1BnktAGF9h3/p5PlnLbdgEPqeZtfW3bKiltjZL72ktJOzNbTv8iaIeBnzrb
 Id2S3C4bdRuOU5VEJp7ec16ThzmBMmfzOqsV+UrVNSpWXGZJthZLG1I6v7ecNVntVDlt
 CsiwLe4nAdlel4pQx764w3Zk6MS020OQA5A4jlYq/KvjgI0mycn+/F6s4jPjCLbxwAJ/
 dHfzAqQPXe92EhK3FPY3Ujzkf4a9uWWbj9Gdx5SmLGld+7FwZ01GdV+sPlvQoOYd1VvL
 MyzEE4NGRMM9Ax1D3R46acNSjQ/AUUXdoHcTeeaQXPTmBgZ0+hXEFNi/iukQTVOmzfdC
 MGpw==
X-Gm-Message-State: APjAAAVqX+uZb9jdD1AdFRzcHoRG/cc9j6g2c33tGus7UPqhgbrZBiCQ
 IQVYGwDsknN1a/gggekuFtH0uql8
X-Google-Smtp-Source: APXvYqxzFuEoEDE5aRnhbUnkq0ZcPdCD6qKxJM7JK/shVI0DVBSawIcq1pNCVsus0WmXcbIXuEdyVg==
X-Received: by 2002:a17:906:5399:: with SMTP id
 g25mr5845775ejo.121.1578703076971; 
 Fri, 10 Jan 2020 16:37:56 -0800 (PST)
Received: from [10.67.50.41] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id c19sm67925ejx.26.2020.01.10.16.37.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Jan 2020 16:37:56 -0800 (PST)
Subject: Re: [PATCH v2 2/6] thermal: brcmstb_thermal: Prepare to support a
 different process
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-arm-kernel@lists.infradead.org
References: <20191211203143.2952-1-f.fainelli@gmail.com>
 <20191211203143.2952-3-f.fainelli@gmail.com>
 <a8e6cb1a-fa03-a443-eaa2-2a6385ac6a37@linaro.org>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <5c1f1031-d5ad-a4fc-4b6e-195b0b0f37a7@gmail.com>
Date: Fri, 10 Jan 2020 16:37:51 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <a8e6cb1a-fa03-a443-eaa2-2a6385ac6a37@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_163759_785157_977AE4F4 
X-CRM114-Status: GOOD (  23.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/9/20 1:17 PM, Daniel Lezcano wrote:
> On 11/12/2019 21:31, Florian Fainelli wrote:
>> The driver is currently assuming that it is operating with a 28nm
>> process chip, which has a specific formula to convert temperature to a
>> code and vice versa. Update the code to support providing two key
>> values: offset and multiplier to derive the correct formulas.
>>
>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>> ---
>>  drivers/thermal/broadcom/brcmstb_thermal.c | 54 ++++++++++++++++------
>>  1 file changed, 39 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
>> index 680f1a070606..68f89f7c7e7f 100644
>> --- a/drivers/thermal/broadcom/brcmstb_thermal.c
>> +++ b/drivers/thermal/broadcom/brcmstb_thermal.c
>> @@ -102,18 +102,27 @@ static struct avs_tmon_trip avs_tmon_trips[] = {
>>  	},
>>  };
>>  
>> +struct brcmstb_thermal_params {
>> +	unsigned int offset;
>> +	unsigned int mult;
>> +};
>> +
>>  struct brcmstb_thermal_priv {
>>  	void __iomem *tmon_base;
>>  	struct device *dev;
>>  	struct thermal_zone_device *thermal;
>> +	/* Process specific thermal parameters used for calculations */
>> +	struct brcmstb_thermal_params temp_params;
>>  };
>>  
>>  /* Convert a HW code to a temperature reading (millidegree celsius) */
>> -static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
>> +static inline int avs_tmon_code_to_temp(struct brcmstb_thermal_priv *priv,
>>  					u32 code)
>>  {
>> -	return (AVS_TMON_TEMP_OFFSET -
>> -		(int)((code & AVS_TMON_TEMP_MAX) * AVS_TMON_TEMP_SLOPE));
>> +	int offset = priv->temp_params.offset;
>> +	int mult = priv->temp_params.mult;
>> +
>> +	return (offset - (int)((code & AVS_TMON_TEMP_MASK) * mult));
>>  }
>>  
>>  /*
>> @@ -122,21 +131,22 @@ static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
>>   * @temp: temperature to convert
>>   * @low: if true, round toward the low side
>>   */
>> -static inline u32 avs_tmon_temp_to_code(struct thermal_zone_device *tz,
>> +static inline u32 avs_tmon_temp_to_code(struct brcmstb_thermal_priv *priv,
>>  					int temp, bool low)
>>  {
>> +	int offset = priv->temp_params.offset;
>> +	int mult = priv->temp_params.mult;
>> +
>>  	if (temp < AVS_TMON_TEMP_MIN)
>> -		return AVS_TMON_TEMP_MAX;	/* Maximum code value */
>> +		return AVS_TMON_TEMP_MASK;	/* Maximum code value */
> 
> Why this change?

No reason to change, thanks.

> 
>>  
>> -	if (temp >= AVS_TMON_TEMP_OFFSET)
>> +	if (temp >= offset)
>>  		return 0;	/* Minimum code value */
>>  
>>  	if (low)
>> -		return (u32)(DIV_ROUND_UP(AVS_TMON_TEMP_OFFSET - temp,
>> -					  AVS_TMON_TEMP_SLOPE));
>> +		return (u32)(DIV_ROUND_UP(offset - temp, mult));
>>  	else
>> -		return (u32)((AVS_TMON_TEMP_OFFSET - temp) /
>> -			      AVS_TMON_TEMP_SLOPE);
>> +		return (u32)((offset - temp) / mult);
>>  }
>>  
>>  static int brcmstb_get_temp(void *data, int *temp)
>> @@ -154,7 +164,7 @@ static int brcmstb_get_temp(void *data, int *temp)
>>  
>>  	val = (val & AVS_TMON_STATUS_data_msk) >> AVS_TMON_STATUS_data_shift;
>>  
>> -	t = avs_tmon_code_to_temp(priv->thermal, val);
>> +	t = avs_tmon_code_to_temp(priv, val);
>>  	if (t < 0)
>>  		*temp = 0;
>>  	else
>> @@ -188,7 +198,7 @@ static int avs_tmon_get_trip_temp(struct brcmstb_thermal_priv *priv,
>>  	val &= trip->reg_msk;
>>  	val >>= trip->reg_shift;
>>  
>> -	return avs_tmon_code_to_temp(priv->thermal, val);
>> +	return avs_tmon_code_to_temp(priv, val);
>>  }
>>  
>>  static void avs_tmon_set_trip_temp(struct brcmstb_thermal_priv *priv,
>> @@ -201,7 +211,7 @@ static void avs_tmon_set_trip_temp(struct brcmstb_thermal_priv *priv,
>>  	dev_dbg(priv->dev, "set temp %d to %d\n", type, temp);
>>  
>>  	/* round toward low temp for the low interrupt */
>> -	val = avs_tmon_temp_to_code(priv->thermal, temp,
>> +	val = avs_tmon_temp_to_code(priv, temp,
>>  				    type == TMON_TRIP_TYPE_LOW);
>>  
>>  	val <<= trip->reg_shift;
>> @@ -218,7 +228,7 @@ static int avs_tmon_get_intr_temp(struct brcmstb_thermal_priv *priv)
>>  	u32 val;
>>  
>>  	val = __raw_readl(priv->tmon_base + AVS_TMON_TEMP_INT_CODE);
>> -	return avs_tmon_code_to_temp(priv->thermal, val);
>> +	return avs_tmon_code_to_temp(priv, val);
>>  }
>>  
>>  static irqreturn_t brcmstb_tmon_irq_thread(int irq, void *data)
>> @@ -282,19 +292,32 @@ static const struct thermal_zone_of_device_ops of_ops = {
>>  	.set_trips	= brcmstb_set_trips,
>>  };
>>  
>> +static const struct brcmstb_thermal_params brcmstb_28nm_params = {
>> +	.offset	= 410040,
>> +	.mult	= 487,
>> +};
>> +
>>  static const struct of_device_id brcmstb_thermal_id_table[] = {
>> -	{ .compatible = "brcm,avs-tmon" },
>> +	{ .compatible = "brcm,avs-tmon", .data = &brcmstb_28nm_params },
>>  	{},
>>  };
>>  MODULE_DEVICE_TABLE(of, brcmstb_thermal_id_table);
>>  
>>  static int brcmstb_thermal_probe(struct platform_device *pdev)
>>  {
>> +	const struct brcmstb_thermal_params *params;
>> +	const struct of_device_id *of_id = NULL;
>>  	struct thermal_zone_device *thermal;
>>  	struct brcmstb_thermal_priv *priv;
>>  	struct resource *res;
>>  	int irq, ret;
>>  
>> +	of_id = of_match_node(brcmstb_thermal_id_table, pdev->dev.of_node);
>> +	if (!of_id || !of_id->data)
>> +		return -EINVAL;
> 
> of_device_get_match_data(&pdev->dev) ?

Yes.

> 
>> +	params = of_id->data;
>> +
>>  	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
>>  	if (!priv)
>>  		return -ENOMEM;
>> @@ -304,6 +327,7 @@ static int brcmstb_thermal_probe(struct platform_device *pdev)
>>  	if (IS_ERR(priv->tmon_base))
>>  		return PTR_ERR(priv->tmon_base);
>>  
>> +	memcpy(&priv->temp_params, params, sizeof(priv->temp_params));
> 
> Do you really need a copy here? Why not convert to a pointer and assign it?

I would rather not reference data that is possibly __initconst or
__initdata, this is not the case here but I have been burned by this
before, I will change it to a pointer.

Thanks!
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
