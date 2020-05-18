Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC661D73E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 11:23:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64Gvgfgv7+D0aO19PhZIfJ3rFF6qXJW4KpG97K6nYxA=; b=J2Z04YZGTtYNli
	7PVCPnt8T7J5o/iyxurfIQK7khNcovflgSDyTGkYV8/KJfx12BS2Ub7yXlIvXZ1fWNq08KqTXmb3N
	VA+nuKgitZgGrsb2u9SbYomyk/3R9bm1F4JlhE6j54a1lWInvyitI89994c4Bm4sp/mJKTyAGXGRe
	o++bxH23gSb7xyoYkTueS87mhlgI4d3BO6LqdncOt9OLpEky2TgEFDp/iQ5PWLrCDVG/BMP/5wrpy
	uCDfJtmVlYfOk8mzA/bnxNbSkPRwqESE87ZxSA53P4nPGGr51gydmox47gKN0ilS2ziDGP7Sq9mw+
	MfzVhZV9Pxu2tiZ56n5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jabzE-0005fb-JC; Mon, 18 May 2020 09:23:04 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jabz5-0005UY-Fb
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 09:22:57 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04I9H17F018541; Mon, 18 May 2020 11:22:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=ed8LSXnQG+tlux2FuhY3S6F1qF+O17NCCBESiZMzfGE=;
 b=khcA87sH9LWjScV6dovE2U6oev5OAExticOqX0cSt+p4QiY4ex87jHH3HhgebjiAOIsA
 FRyFF9cZUrrwiTkpk+ZC1F6h8z1HnannGbiQSmeF14JsINshSkROZPAWCZsuhBo+qj5M
 r2ZJwKCsEkS1UBDDZMRmxO1CNcakFxYd0YidEtnzSuHArvVuZmSBPhrbAemzbpo5dcXd
 V+c1hnIPSsL5yobGjEalTXk/RTBIAmvfmSB2WsrkCeA/eDDrsj7G8yVLoL7wW5MYtHaa
 0ap/LGgI3KIfH+TS9FQTsLhZeurf8R4++OxC1ZvvAVJGwHskkWuSxtU3uiyS7AtECIHq 7A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3125xxjta7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 18 May 2020 11:22:44 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C0E3E10002A;
 Mon, 18 May 2020 11:22:42 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node1.st.com [10.75.127.13])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A5CB42AE6BD;
 Mon, 18 May 2020 11:22:42 +0200 (CEST)
Received: from [10.211.8.57] (10.75.127.46) by SFHDAG5NODE1.st.com
 (10.75.127.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 18 May
 2020 11:22:41 +0200
Subject: Re: [PATCH] iio: stm32-dac: Replace indio_dev->mlock with own device
 lock
To: Jonathan Cameron <jic23@kernel.org>, Sergiu Cuciurean
 <sergiu.cuciurean@analog.com>
References: <20200514085018.79948-1-sergiu.cuciurean@analog.com>
 <20200516163521.2812cf86@archlinux>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <9f271d8d-4ee9-1633-fb90-faca53072716@st.com>
Date: Mon, 18 May 2020 11:22:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200516163521.2812cf86@archlinux>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG5NODE1.st.com
 (10.75.127.13)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-18_03:2020-05-15,
 2020-05-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_022256_003178_3814C871 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Hartmut Knaack <knaack.h@gmx.de>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/16/20 5:35 PM, Jonathan Cameron wrote:
> On Thu, 14 May 2020 11:50:12 +0300
> Sergiu Cuciurean <sergiu.cuciurean@analog.com> wrote:
> 
>> As part of the general cleanup of indio_dev->mlock, this change replaces
>> it with a local lock on the device's state structure.
>>
>> Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
>> ---
>>  drivers/iio/dac/stm32-dac.c | 12 ++++++++----
>>  1 file changed, 8 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/iio/dac/stm32-dac.c b/drivers/iio/dac/stm32-dac.c
>> index f22c1d9129b2..74b9474c8590 100644
>> --- a/drivers/iio/dac/stm32-dac.c
>> +++ b/drivers/iio/dac/stm32-dac.c
>> @@ -26,9 +26,11 @@
>>  /**
>>   * struct stm32_dac - private data of DAC driver
>>   * @common:		reference to DAC common data
>> + * @lock: lock to protect the data buffer during regmap ops
> 
> In this particular case I'm not sure that's what mlock was being used for.
> I think it's about avoiding races around checking if powered down and
> actually doing it.

Hi Sergiu,

Indeed, purpose is to protect against a race here when reading CR, and
updating it via regmap (this also makes the subsequent pm_runtime calls
to be balanced based on this).
(Side note: there is no data buffer involved for the DAC.)
Could you please update the comment ?

Thanks,
Fabrice

> 
> 
>>   */
>>  struct stm32_dac {
>>  	struct stm32_dac_common *common;
>> +	struct mutex		lock;
>>  };
>>  
>>  static int stm32_dac_is_enabled(struct iio_dev *indio_dev, int channel)
>> @@ -58,10 +60,10 @@ static int stm32_dac_set_enable_state(struct iio_dev *indio_dev, int ch,
>>  	int ret;
>>  
>>  	/* already enabled / disabled ? */
>> -	mutex_lock(&indio_dev->mlock);
>> +	mutex_lock(&dac->lock);
>>  	ret = stm32_dac_is_enabled(indio_dev, ch);
>>  	if (ret < 0 || enable == !!ret) {
>> -		mutex_unlock(&indio_dev->mlock);
>> +		mutex_unlock(&dac->lock);
>>  		return ret < 0 ? ret : 0;
>>  	}
>>  
>> @@ -69,13 +71,13 @@ static int stm32_dac_set_enable_state(struct iio_dev *indio_dev, int ch,
>>  		ret = pm_runtime_get_sync(dev);
>>  		if (ret < 0) {
>>  			pm_runtime_put_noidle(dev);
>> -			mutex_unlock(&indio_dev->mlock);
>> +			mutex_unlock(&dac->lock);
>>  			return ret;
>>  		}
>>  	}
>>  
>>  	ret = regmap_update_bits(dac->common->regmap, STM32_DAC_CR, msk, en);
>> -	mutex_unlock(&indio_dev->mlock);
>> +	mutex_unlock(&dac->lock);
>>  	if (ret < 0) {
>>  		dev_err(&indio_dev->dev, "%s failed\n", en ?
>>  			"Enable" : "Disable");
>> @@ -328,6 +330,8 @@ static int stm32_dac_probe(struct platform_device *pdev)
>>  	indio_dev->info = &stm32_dac_iio_info;
>>  	indio_dev->modes = INDIO_DIRECT_MODE;
>>  
>> +	mutex_init(&dac->lock);
>> +
>>  	ret = stm32_dac_chan_of_init(indio_dev);
>>  	if (ret < 0)
>>  		return ret;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
