Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B521A963
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 22:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aPwjbEl/57IhOxAV6QHJR+ButaX5zgD3qDnsio9z/Ik=; b=s+O3/CQ+RLliTBCsoltFcrdH9
	sl0m65stQj3IfO+j9oXvVdTCZf4psSvsGU0WMJmuMPpd2d34Ln/nvXaqOgBw1JcM6HpNsEmKuoD2u
	fuAc3aKcF8deOuSWw+aJIHqjnVqf19l9MuuAxY3PLwstAZDHesDj/oQtyF28p6gOgY9zSYWzoumlS
	3fPB25qzEg/hHjFylRVr6BUZkRlocvETMy9l9aEb0g2WmChbBNzhK6fLGyrKWOZwsYZiLdGJh1/0Q
	K2qhHqZDP/GZLEqNgWH5itxH9Nmrh2ui34t12ILSDc9ddeI5Kdm0V/oMMy4igZBGydp8N2HxeZO1h
	49wbJQ3jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPYVs-00071P-KA; Sat, 11 May 2019 20:22:32 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPYVl-000712-SC
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 20:22:27 +0000
Received: by mail-pf1-x443.google.com with SMTP id l132so5011552pfc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 May 2019 13:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rLgXhVsDP/RzKSE+JdEI3qNT7K7MffBqtup5zZ8tHdc=;
 b=aM7dbPPsnspFks6phirtx9698Y0IsGto7C9UDT80WCowD101CpiPlyueVSOOSS4CfY
 rdUXmIGf4U5p2oHyI40ORwkVJPk6jMXUTME3sGn3ON5ZQ+XFLYiVN+Eu/fi6/9uZvkj5
 zRXR0e0BIzU6PM4HHEoI9hzRCtbvzL2zjiChylaRXSgxQw0UUV9NEL0sT1Ni0VDzhobJ
 BDqJEqRykfDS+779cLnXsMw+PlrBrlnoS7Ky8uYGGxYLiZNAtOfz2pMnhxNYIcuuAilI
 PQ+w3eqQj1Ju11J8TzECeV+wFqWMtZNpKrJ5OyEZHqZkmn3Zg70vXcdBYXtIItkdSiHv
 kJ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rLgXhVsDP/RzKSE+JdEI3qNT7K7MffBqtup5zZ8tHdc=;
 b=UAVd3/WB4nn7PwjeO6AZaP97Izet9x5PL/f49RJihFx5DkDZrNIXxhoTyIeVIhipJ5
 9gKC0VlF2U0I+9miCG3KWfDkzfCw+pZbf6AD0c58CNNpGnxiOXBg7wThAobFevpV6+YK
 viYsQxiWm63ppZ5nLxcKb9pSXuoaJlfLCajeXivhVQhnA3Ctm0UTLZ5dGZ46CvYVAmP+
 cdfQk35BV1AcoAIK5/ICCwfHYkKJ6aAvXiEfFM/COrr656uq0csziN5QQGwVYfs0I79A
 OR9ju42IJy/3pyK91gg67fdvejBMWxHRGO82zLYPgoYh/q/OOUe62vbEZAf99BeRnh7b
 4yWQ==
X-Gm-Message-State: APjAAAU5r1Mabz6qgWhdI+HnWtfrvhUDFnhTApTi5lgQvE6kr8v4jMDz
 3WRp6H280iQEzFaTCug/PEU=
X-Google-Smtp-Source: APXvYqw7yzV+NDnCGKPsyV6bDr4MyF9Eb869MU13gsl+ZlVdT1mderC/okBMSyIxf8Ec3QlKhM5xhQ==
X-Received: by 2002:a65:6658:: with SMTP id z24mr22907719pgv.323.1557606144344; 
 Sat, 11 May 2019 13:22:24 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 c23sm22145201pfp.0.2019.05.11.13.22.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 13:22:22 -0700 (PDT)
Subject: Re: [PATCH 1/6] thermal: Introduce
 devm_thermal_of_cooling_device_register
To: Eduardo Valentin <edubezval@gmail.com>
References: <1555617500-10862-1-git-send-email-linux@roeck-us.net>
 <1555617500-10862-2-git-send-email-linux@roeck-us.net>
 <20190511190415.GA22816@localhost.localdomain>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <4be54a9c-ccc9-5489-6938-c66229d361b3@roeck-us.net>
Date: Sat, 11 May 2019 13:22:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190511190415.GA22816@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_132225_957667_F2A6EC9B 
X-CRM114-Status: GOOD (  28.10  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Kamil Debski <kamil@wypas.org>, Tomer Maimon <tmaimon77@gmail.com>,
 linux-aspeed@lists.ozlabs.org, linux-pm@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, Patrick Venture <venture@google.com>,
 openbmc@lists.ozlabs.org, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, Tali Perry <tali.perry1@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Avi Fishman <avifishman70@gmail.com>, Joel Stanley <joel@jms.id.au>,
 Zhang Rui <rui.zhang@intel.com>, Nancy Yuen <yuenn@google.com>,
 linux-arm-kernel@lists.infradead.org, Benjamin Fair <benjaminfair@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eduardo,

On 5/11/19 12:04 PM, Eduardo Valentin wrote:
> Hello Guenter,
> 
> On Thu, Apr 18, 2019 at 12:58:15PM -0700, Guenter Roeck wrote:
>> thermal_of_cooling_device_register() and thermal_cooling_device_register()
>> are typically called from driver probe functions, and
>> thermal_cooling_device_unregister() is called from remove functions. This
>> makes both a perfect candidate for device managed functions.
>>
>> Introduce devm_thermal_of_cooling_device_register(). This function can
>> also be used to replace thermal_cooling_device_register() by passing a NULL
>> pointer as device node. The new function requires both struct device *
>> and struct device_node * as parameters since the struct device_node *
>> parameter is not always identical to dev->of_node.
>>
>> Don't introduce a device managed remove function since it is not needed
>> at this point.
> 
> I don't have any objection on adding this API. Only a minor thing below:
> 
> 
>>
>> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
>> ---
>>   drivers/thermal/thermal_core.c | 49 ++++++++++++++++++++++++++++++++++++++++++
>>   include/linux/thermal.h        |  5 +++++
>>   2 files changed, 54 insertions(+)
>>
>> diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
>> index 6590bb5cb688..e0b530603db6 100644
>> --- a/drivers/thermal/thermal_core.c
>> +++ b/drivers/thermal/thermal_core.c
>> @@ -1046,6 +1046,55 @@ thermal_of_cooling_device_register(struct device_node *np,
>>   }
>>   EXPORT_SYMBOL_GPL(thermal_of_cooling_device_register);
>>   
>> +static void thermal_cooling_device_release(struct device *dev, void *res)
>> +{
>> +	thermal_cooling_device_unregister(
>> +				*(struct thermal_cooling_device **)res);
>> +}
>> +
>> +/**
>> + * devm_thermal_of_cooling_device_register() - register an OF thermal cooling
>> + *					       device
>> + * @dev:	a valid struct device pointer of a sensor device.
>> + * @np:		a pointer to a device tree node.
>> + * @type:	the thermal cooling device type.
>> + * @devdata:	device private data.
>> + * @ops:	standard thermal cooling devices callbacks.
>> + *
>> + * This function will register a cooling device with device tree node reference.
>> + * This interface function adds a new thermal cooling device (fan/processor/...)
>> + * to /sys/class/thermal/ folder as cooling_device[0-*]. It tries to bind itself
>> + * to all the thermal zone devices registered at the same time.
>> + *
>> + * Return: a pointer to the created struct thermal_cooling_device or an
>> + * ERR_PTR. Caller must check return value with IS_ERR*() helpers.
>> + */
>> +struct thermal_cooling_device *
>> +devm_thermal_of_cooling_device_register(struct device *dev,
>> +				struct device_node *np,
>> +				char *type, void *devdata,
>> +				const struct thermal_cooling_device_ops *ops)
>> +{
>> +	struct thermal_cooling_device **ptr, *tcd;
>> +
>> +	ptr = devres_alloc(thermal_cooling_device_release, sizeof(*ptr),
>> +			   GFP_KERNEL);
>> +	if (!ptr)
>> +		return ERR_PTR(-ENOMEM);
>> +
>> +	tcd = __thermal_cooling_device_register(np, type, devdata, ops);
>> +	if (IS_ERR(tcd)) {
>> +		devres_free(ptr);
>> +		return tcd;
>> +	}
>> +
>> +	*ptr = tcd;
>> +	devres_add(dev, ptr);
>> +
>> +	return tcd;
>> +}
>> +EXPORT_SYMBOL_GPL(devm_thermal_of_cooling_device_register);
>> +
>>   static void __unbind(struct thermal_zone_device *tz, int mask,
>>   		     struct thermal_cooling_device *cdev)
>>   {
>> diff --git a/include/linux/thermal.h b/include/linux/thermal.h
>> index 5f4705f46c2f..43cf4fdd71d4 100644
>> --- a/include/linux/thermal.h
>> +++ b/include/linux/thermal.h
>> @@ -447,6 +447,11 @@ struct thermal_cooling_device *thermal_cooling_device_register(char *, void *,
>>   struct thermal_cooling_device *
>>   thermal_of_cooling_device_register(struct device_node *np, char *, void *,
>>   				   const struct thermal_cooling_device_ops *);
>> +struct thermal_cooling_device *
>> +devm_thermal_of_cooling_device_register(struct device *dev,
>> +				struct device_node *np,
>> +				char *type, void *devdata,
>> +				const struct thermal_cooling_device_ops *ops);
> 
> We need to stub this in case thermal is not selected.
> 

Yes. Sorry, that completely slipped my mind.

>>   void thermal_cooling_device_unregister(struct thermal_cooling_device *);
>>   struct thermal_zone_device *thermal_zone_get_zone_by_name(const char *name);
>>   int thermal_zone_get_temp(struct thermal_zone_device *tz, int *temp);
> 
> Something like:
> 
> 
> diff --git a/include/linux/thermal.h b/include/linux/thermal.h
> index 43cf4fd..9b1b365 100644
> --- a/include/linux/thermal.h
> +++ b/include/linux/thermal.h
> @@ -508,6 +508,14 @@ static inline struct thermal_cooling_device *
>   thermal_of_cooling_device_register(struct device_node *np,
>          char *type, void *devdata, const struct thermal_cooling_device_ops *ops)
>   { return ERR_PTR(-ENODEV); }
> +struct thermal_cooling_device *
> +devm_thermal_of_cooling_device_register(struct device *dev,
> +                               struct device_node *np,
> +                               char *type, void *devdata,
> +                               const struct thermal_cooling_device_ops *ops)
> +{
> +       return ERR_PTR(-ENODEV);
> +}
>   static inline void thermal_cooling_device_unregister(
>          struct thermal_cooling_device *cdev)
>   { }
> ~
> 
> 
> If you want I can amend this to your patch and apply it.
> 
Please do.

> Also, do you prefer me to collect only this patch and you would collect hwmon changes,
> or are you ok if I collect all the series?
> 

Please go ahead and collect the entire series.

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
