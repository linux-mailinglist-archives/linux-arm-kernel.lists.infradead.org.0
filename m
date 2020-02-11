Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9630E1592F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:22:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHUB9x8kr23SzJbwt2kG7it9XJmrFE+u8wEb4ooxTzg=; b=bgWZmGkXlOHec5
	dSkv75L+K0zi+7wsaDjTK77UL1qtQYLKCa9LoVhJM1r9GKeSUb7b+6KDmiqS4XlNAhCAY8htpPWoR
	QGFAkXT9MEyaIvbC1nVh8fmvFULzJ0AKbtEl9zf0j0MoengPoyM+rX4q039utlX/qenKHrl/EpNp4
	SX6Vq3QSPnDg/OcblDF1g7pur9kSgBFbGNjT426qwUswnRzFehikNkzBxH4V/ivV+kym7aX0PfNny
	JdtSLBczC6hS3SQ9gfdabum+cnzhfdhbEzU2HFfUYUJOlq458DjVhWgO4NzZelDsFZWH4G72qwP6r
	BZmmm2dq0STt0okBiVMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1XMr-00013l-2Z; Tue, 11 Feb 2020 15:22:29 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1XMi-00011k-J7
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:22:22 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01BFESwq030309; Tue, 11 Feb 2020 16:22:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=8FH4GMVMTuncapNMvYvyQMea4jBp3XjADEQ2jECszFU=;
 b=ScAg1fvLVaFAAZXimfYb21JBP1d4QQQj1s0uks6rBNnzfQLuHQXsUNtylpyjkgcUYJVn
 Njozwi8ONYzJLKyL6RX2VwsabBjM0dLcKHN4yDkcU/wFf8tQAO0QZiQ6HZJyvG068lDh
 EyUzGDrvKSYPJqdsdJup1blUtb2C+ISMFrgKwXAKsFs1NqakT6y9w4AJU4NXLVLpBH1v
 Ly/dg27xrTNb4rlIa+asVVTsMWHm5rYf4ICihUnXU8+PoomtKJypfKrJfXpVSOPA4uUa
 fErCgGiQUud1hIk1p/LpbfohBl6F+a8/6MTLbcUQneLQF2NVlKMlLYKZpVRTG744wVFo ew== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1ufh6cdj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 11 Feb 2020 16:22:15 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BAF28100034;
 Tue, 11 Feb 2020 16:22:10 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A50532BEC61;
 Tue, 11 Feb 2020 16:22:10 +0100 (CET)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 11 Feb
 2020 16:22:10 +0100
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Tue, 11 Feb 2020 16:22:10 +0100
From: Olivier MOYSAN <olivier.moysan@st.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH 2/4] iio: adc: sd modulator: add scale support
Thread-Topic: [PATCH 2/4] iio: adc: sd modulator: add scale support
Thread-Index: AQHV3plRO+Mdv2KS6Eiey+LjbbRUC6gWEBeA
Date: Tue, 11 Feb 2020 15:22:10 +0000
Message-ID: <740eb007-3428-f336-fbe5-3713faaa6f4c@st.com>
References: <20200204101008.11411-1-olivier.moysan@st.com>
 <20200204101008.11411-3-olivier.moysan@st.com>
 <20200208160327.334da020@archlinux>
In-Reply-To: <20200208160327.334da020@archlinux>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.46]
Content-ID: <8FAC793B44188043905F2B2F239FEEA3@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-11_04:2020-02-10,
 2020-02-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_072220_937608_B22A2728 
X-CRM114-Status: GOOD (  26.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lars@metafoo.de" <lars@metafoo.de>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jonathan,

On 2/8/20 5:03 PM, Jonathan Cameron wrote:
> On Tue, 4 Feb 2020 11:10:06 +0100
> Olivier Moysan <olivier.moysan@st.com> wrote:
>
>> Add scale support to sigma delta modulator.
>>
>> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> I note below that there are probably some complexities around
> whether vref is used as you have it here or not.
>
> A few other bits inline around a race condition introduced in probe / remove.
>
> Thanks,
>
> Jonathan
>
>> ---
>>   drivers/iio/adc/sd_adc_modulator.c | 108 ++++++++++++++++++++++++++---
>>   1 file changed, 100 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/iio/adc/sd_adc_modulator.c b/drivers/iio/adc/sd_adc_modulator.c
>> index 560d8c7d9d86..a83f35832050 100644
>> --- a/drivers/iio/adc/sd_adc_modulator.c
>> +++ b/drivers/iio/adc/sd_adc_modulator.c
>> @@ -10,8 +10,7 @@
>>   #include <linux/iio/triggered_buffer.h>
>>   #include <linux/module.h>
>>   #include <linux/of_device.h>
>> -
>> -static const struct iio_info iio_sd_mod_iio_info;
>> +#include <linux/regulator/consumer.h>
>>   
>>   static const struct iio_chan_spec iio_sd_mod_ch = {
>>   	.type = IIO_VOLTAGE,
>> @@ -21,34 +20,126 @@ static const struct iio_chan_spec iio_sd_mod_ch = {
>>   		.realbits = 1,
>>   		.shift = 0,
>>   	},
>> +	.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
> This relies on generic sigma delta modulators using an external vref.
> They might have an internal always on regulator...
> I would suggest we only support scale for devices with explicitly
> defined compatibles where we can know what regulators are used etc.
>
> For many devices, there will be a single powersupply called vdd-supply
> or similar in DT.  It may also provide a reference voltage.
I will remove scale support for generic sd-modulator,
according to your comment on sd modulator bindings.
The DFSDM driver expects scale attribute from sd-modulator.
So, some rework of DFSDM driver will be required
to also support raw data reading.

>> +};
>> +
>> +static const struct iio_chan_spec iio_sd_mod_ch_ads = {
>> +	.type = IIO_VOLTAGE,
>> +	.indexed = 1,
>> +	.scan_type = {
>> +		.sign = 'u',
>> +		.realbits = 1,
>> +		.shift = 0,
>> +	},
>> +	.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
>> +	.differential = 1,
>> +};
>> +
>> +struct iio_sd_mod_priv {
>> +	struct regulator *vref;
>> +	int vref_mv;
>> +};
>> +
>> +static int iio_sd_mod_read_raw(struct iio_dev *indio_dev,
>> +			       struct iio_chan_spec const *chan, int *val,
>> +			       int *val2, long mask)
>> +{
>> +	struct iio_sd_mod_priv *priv = iio_priv(indio_dev);
>> +
>> +	switch (mask) {
>> +	case IIO_CHAN_INFO_SCALE:
>> +		*val = priv->vref_mv;
>> +		*val2 = chan->scan_type.realbits;
>> +		return IIO_VAL_INT;
>> +	}
>> +
>> +	return -EINVAL;
>> +}
>> +
>> +static const struct iio_info iio_sd_mod_iio_info = {
>> +	.read_raw = iio_sd_mod_read_raw,
>>   };
>>   
>>   static int iio_sd_mod_probe(struct platform_device *pdev)
>>   {
>>   	struct device *dev = &pdev->dev;
>> +	struct iio_sd_mod_priv *priv;
>>   	struct iio_dev *iio;
>> +	int ret;
>>   
>> -	iio = devm_iio_device_alloc(dev, 0);
>> +	iio = devm_iio_device_alloc(dev, sizeof(*priv));
>>   	if (!iio)
>>   		return -ENOMEM;
>>   
>> +	iio->channels = (const struct iio_chan_spec *)
>> +					of_device_get_match_data(&pdev->dev);
>> +
>> +	priv = iio_priv(iio);
>> +
>>   	iio->dev.parent = dev;
>>   	iio->dev.of_node = dev->of_node;
>>   	iio->name = dev_name(dev);
>>   	iio->info = &iio_sd_mod_iio_info;
>>   	iio->modes = INDIO_BUFFER_HARDWARE;
>> -
>>   	iio->num_channels = 1;
>> -	iio->channels = &iio_sd_mod_ch;
>>   
>>   	platform_set_drvdata(pdev, iio);
>>   
>> -	return devm_iio_device_register(&pdev->dev, iio);
>> +	priv->vref = devm_regulator_get_optional(dev, "vref");
>> +	if (IS_ERR(priv->vref)) {
>> +		ret = PTR_ERR(priv->vref);
>> +		if (ret != -ENODEV) {
>> +			if (ret != -EPROBE_DEFER)
>> +				dev_err(dev, "vref get failed, %d\n", ret);
>> +			return ret;
>> +		}
>> +	}
>> +
>> +	if (!IS_ERR(priv->vref)) {
>> +		ret = regulator_enable(priv->vref);
>> +		if (ret < 0) {
>> +			dev_err(dev, "vref enable failed %d\n", ret);
>> +			return ret;
>> +		}
>> +
>> +		ret = regulator_get_voltage(priv->vref);
>> +		if (ret < 0) {
>> +			dev_err(dev, "vref get failed, %d\n", ret);
>> +			goto err_regulator_disable;
>> +		}
>> +
>> +		priv->vref_mv = ret / 1000;
>> +		dev_dbg(dev, "vref+=%dmV\n", priv->vref_mv);
>> +	}
>> +
>> +	ret = devm_iio_device_register(&pdev->dev, iio);
> This exposes the userspace and in kernel interfaces.  Those
> are partly dependent on the regulator enable you have above.
>
> Using devm_ version fo this interface leaves you with a race in remove.
> The regulator is disabled before you have remove the interfaces that
> will only work if we assume it is still on.
>
> Hence, you should either use devm_add_action_or_reset magic
> to ensure we still do everything in the right order, or do it
> manually by using iio_device_register and iio_device_unregister.
>
I will fix this in v2.

Regards
Olivier
>> +	if (ret < 0) {
>> +		dev_err(dev, "Failed to register sd-modulator, %d\n", ret);
>> +		goto err_regulator_disable;
>> +	}
>> +
>> +	return 0;
>> +
>> +err_regulator_disable:
>> +	regulator_disable(priv->vref);
>> +
>> +	return ret;
>> +}
>> +
>> +static int iio_sd_mod_remove(struct platform_device *pdev)
>> +{
>> +	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
>> +	struct iio_sd_mod_priv *priv = iio_priv(indio_dev);
>> +
>> +	if (priv->vref)
>> +		return regulator_disable(priv->vref);
>> +
>> +	return 0;
>>   }
>>   
>>   static const struct of_device_id sd_adc_of_match[] = {
>> -	{ .compatible = "sd-modulator" },
>> -	{ .compatible = "ads1201" },
>> +	{ .compatible = "sd-modulator", .data = &iio_sd_mod_ch },
>> +	{ .compatible = "ads1201", .data = &iio_sd_mod_ch_ads },
>>   	{ }
>>   };
>>   MODULE_DEVICE_TABLE(of, sd_adc_of_match);
>> @@ -59,6 +150,7 @@ static struct platform_driver iio_sd_mod_adc = {
>>   		.of_match_table = of_match_ptr(sd_adc_of_match),
>>   	},
>>   	.probe = iio_sd_mod_probe,
>> +	.remove = iio_sd_mod_remove,
>>   };
>>   
>>   module_platform_driver(iio_sd_mod_adc);
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
