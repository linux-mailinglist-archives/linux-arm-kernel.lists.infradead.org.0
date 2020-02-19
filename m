Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D639416448E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 13:44:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wgztCaOD3bo+8LbFbHvaw1E0m89Cv/Ss+zlhW/a6SQU=; b=QbHJXSfqcZ7sTtTrdUrxiD2Un
	xIPOGjrIJq9TmJZTrSlh5TfIcMWiNIGVZaL+/E3eoulLPYFJmjMluOfAtQri9kHtMPr23hWLG1Vc2
	1lYL4UO47u7G8+R5xA3gFx685ntS8yeignm8nTy8BykuZ8kkEmdG28HUDcsXadxzR9EDPRA5G3uTX
	bkkGCpuimC/V1YcXpGdvK7IyIlqFSS0T025Z5+tvu1M/hwI432bcypAKoUUbQ0W19rt8cDg2i/ZSE
	Ld4F0b9XelcRXWQwmQOURzupGQ5ERM6nQH3p5K62cGVu1ujEv9A0jGZD0mOEGZDvw4pyA82CpC9mo
	TRhQpyoRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4OiL-0002V9-P5; Wed, 19 Feb 2020 12:44:29 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4OiB-0002Up-Dn
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 12:44:21 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01JChssQ013710;
 Wed, 19 Feb 2020 06:43:54 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582116234;
 bh=kuB+R4Zi2k9ASFrC2H+1rMHduNuNh5eA+AYg21v4g+Y=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=mgC9phzEV5AoGxOpxa9dqlRaMAh35GL8N/ozSJsrZkZ0AacLYwTRLnkd//EeSZ+td
 4y9qgpiinOlXbKtKlim4XT6T0fOxNVLMJQjrjnro6tthhrlsIJ3dfXHfXY5+ramSIm
 lh8X8J+xBm4c1c4M9+NFA94EAj0TX+F1dcjfFfqw=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01JChsaV064935
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 19 Feb 2020 06:43:54 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 19
 Feb 2020 06:43:54 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 19 Feb 2020 06:43:54 -0600
Received: from [10.24.69.174] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01JChowE126704;
 Wed, 19 Feb 2020 06:43:51 -0600
Subject: Re: [PATCH v3 2/4] thermal: k3: Add support for bandgap sensors
To: Randy Dunlap <rdunlap@infradead.org>, <rui.zhang@intel.com>,
 <robh+dt@kernel.org>, <daniel.lezcano@linaro.org>
References: <20200219074314.22829-1-j-keerthy@ti.com>
 <20200219074314.22829-3-j-keerthy@ti.com>
 <ab0bc84b-189f-a9be-e838-a38c14fa702a@infradead.org>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <6b4ce7aa-4211-218f-68c2-5c451d8b7677@ti.com>
Date: Wed, 19 Feb 2020 18:13:56 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <ab0bc84b-189f-a9be-e838-a38c14fa702a@infradead.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_044419_869865_8B26366F 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 19/02/20 1:20 pm, Randy Dunlap wrote:
> On 2/18/20 11:43 PM, Keerthy wrote:
>> The bandgap provides current and voltage reference for its internal
>> circuits and other analog IP blocks. The analog-to-digital
>> converter (ADC) produces an output value that is proportional
>> to the silicon temperature.
>>
>> Currently reading temperatures and trend computing is supported
>> as there are no active/passive cooling agent supported.
>>
>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>> ---
>>   drivers/thermal/Kconfig      |  12 ++
>>   drivers/thermal/Makefile     |   1 +
>>   drivers/thermal/k3_bandgap.c | 342 +++++++++++++++++++++++++++++++++++
>>   3 files changed, 355 insertions(+)
>>   create mode 100644 drivers/thermal/k3_bandgap.c
>>
>> diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
>> index 5a05db5438d6..fa598eddc7ac 100644
>> --- a/drivers/thermal/Kconfig
>> +++ b/drivers/thermal/Kconfig
>> @@ -251,6 +251,18 @@ config IMX_THERMAL
>>   	  cpufreq is used as the cooling device to throttle CPUs when the
>>   	  passive trip is crossed.
>>   
>> +config K3_THERMAL
>> +	bool "Texas Instruments K3 thermal support"
> 
> Hi,
> Why is this bool and not tristate?

Definitely can work as tristate. I will fix it next version.

> 
>> +	depends on THERMAL
>> +	depends on ARCH_K3 || COMPILE_TEST
>> +	help
>> +	  If you say yes here you get thermal support for the Texas Instruments
>> +	  K3 SoC family. The current chip supported is:
>> +	   - AM654
>> +
>> +	  This includes temperature reading functionality and also trend
>> +	  computation.
>> +
>>   config MAX77620_THERMAL
>>   	tristate "Temperature sensor driver for Maxim MAX77620 PMIC"
>>   	depends on MFD_MAX77620
> 
>> diff --git a/drivers/thermal/k3_bandgap.c b/drivers/thermal/k3_bandgap.c
>> new file mode 100644
>> index 000000000000..35d904eb9857
>> --- /dev/null
>> +++ b/drivers/thermal/k3_bandgap.c
>> @@ -0,0 +1,342 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * TI Bandgap temperature sensor driver for K3 SoC Family
>> + *
>> + * Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
>> + */
> 
>> +static int k3_bgp_read_temp(struct k3_thermal_data *devdata,
>> +			    int *temp)
>> +{
>> +	struct k3_bandgap *bgp;
>> +	unsigned int dtemp, s0, s1, s2;
>> +
>> +	bgp = devdata->bgp;
>> +	/**
> 
> "/**" is used to indicate kernel-doc notation in the Linux kernel source files,
> but this comment is not kernel-doc notation, so please just use "/*".

Okay

> 
>> +	 * Errata is applicable for am654 pg 1.0 silicon. There
>> +	 * is a variation of the order for 8-10 degree centigrade.
>> +	 * Work around that by getting the average of two closest
>> +	 * readings out of three readings everytime we want to
>> +	 * report temperatures.
>> +	 *
>> +	 * Errata workaround.
>> +	 */
> thanks.

Thanks for the review.

- Keerthy
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
