Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26ECD15AAA9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 15:03:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=laQTKQsl68q629S7sQCWdITDpyJ+MNnRFXcqy3M//3s=; b=UNaGmZBrRHYfNO
	zn9fQFX9EJfPQ9ms4j3nSrJijmu2ZV+Re5vAklu9FQ5sXF2djMv7Oaz1gvuwFLCggZ1MSHaNJbtEW
	tBcl/ZHFFhxm2XPxME7FU50pdgm6TUdGkF4Y1V0f4zVADHJHmGz3o8cFpPxf9DwgWwdsEjRHd7NH+
	yu8NMcj0Idk1SWi8IW4GwA51Rf7kxZdMojI64zOd8+3+oWZEgquqcqjuollf3Og9GtIwILhTQsTYY
	UFvqkjJyEMkmcAsR+uYcfL/AX/5nQWTVYcM83wNkfipe/fQxEGL8tX4B7RFRk+KWHPeWRkhyOBwUt
	xbKxBAYu3mJmX+w3TD9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1sbQ-0006mi-Sb; Wed, 12 Feb 2020 14:02:56 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1sbH-0006m5-RJ
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 14:02:49 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01CDwcg2007768; Wed, 12 Feb 2020 15:02:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=/8l92jgFtvZ9KFonos6IeWCOhSFNRaH+VFtBAk4RDCo=;
 b=ChsTacUV8Q4OByXultemNzXtr/cnMMHJ5reMiF4MGcikCkWxcnKUlVuoy6Y4MVbdKGbx
 t4i83krf+dl603BYsHPaErugW3dvhWq3ky4tFZ2WQM8D1tUoFhp1A77Ob2IoKFUmGdO4
 vkBoLZc9dR93AKyH6kYU4kYlnWQf19PniZUn9xR5B5pE91j8iv7ZHafW+I+FSOkApOzf
 cOawaUAMuwgfk/+J2YDir6cFY3yUt0eLWxq5pxvuPfuXsdHDt11f/bAj8v0gdz/28iy7
 Fe9TsClg15V3akbq2jDD3oEPeGvE6YnjlBa/pycuGSAmRc69v7Tez1IRnn0fEKItvVPA TA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1urhet63-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 12 Feb 2020 15:02:39 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 62B8E10002A;
 Wed, 12 Feb 2020 15:02:38 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4D3452B46AE;
 Wed, 12 Feb 2020 15:02:38 +0100 (CET)
Received: from [10.48.0.71] (10.75.127.45) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 12 Feb
 2020 15:02:37 +0100
Subject: Re: [PATCH] iio: adc: stm32-adc: fix runtime autosuspend delay when
 slow polling
To: Jonathan Cameron <jic23@kernel.org>, "Rafael J. Wysocki"
 <rjw@rjwysocki.net>
References: <1579854369-7972-1-git-send-email-fabrice.gasnier@st.com>
 <20200202153354.3dae5863@archlinux>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <d30cb29b-d15c-a9fe-8c95-7ce59ce15062@st.com>
Date: Wed, 12 Feb 2020 15:02:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200202153354.3dae5863@archlinux>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-12_07:2020-02-11,
 2020-02-12 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_060248_178354_6D278E70 
X-CRM114-Status: GOOD (  21.66  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ulf.hansson@linaro.org, lars@metafoo.de, olivier.moysan@st.com,
 alexandre.torgue@st.com, linux-pm@vger.kernel.org, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, khilman@kernel.org, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/2/20 4:33 PM, Jonathan Cameron wrote:
> On Fri, 24 Jan 2020 09:26:09 +0100
> Fabrice Gasnier <fabrice.gasnier@st.com> wrote:
> 
>> When the ADC is runtime suspended and starting a conversion, the stm32-adc
>> driver calls pm_runtime_get_sync() that gets cascaded to the parent
>> (e.g. runtime resume of stm32-adc-core driver). This also kicks the
>> autosuspend delay (e.g. 2s) of the parent.
>> Once the ADC is active, calling pm_runtime_get_sync() again (upon a new
>> capture) won't kick the autosuspend delay for the parent (stm32-adc-core
>> driver) as already active.
>>
>> Currently, this makes the stm32-adc-core driver go in suspend state
>> every 2s when doing slow polling. As an example, doing a capture, e.g.
>> cat in_voltageY_raw at a 0.2s rate, the auto suspend delay for the parent
>> isn't refreshed. Once it expires, the parent immediately falls into
>> runtime suspended state, in between two captures, as soon as the child
>> driver falls into runtime suspend state:
>> - e.g. after 2s, + child calls pm_runtime_put_autosuspend() + 100ms
>>   autosuspend delay of the child.
>> - stm32-adc-core switches off regulators, clocks and so on.
>> - They get switched on back again 100ms later in this example (at 2.2s).
>>
>> So, add an explicit call to pm_runtime_mark_last_busy() for the parent
>> driver (stm32-adc-core), synchronously with the child driver (stm32-adc),
>> to avoid this.
>>
>> Fixes: 9bdbb1139ca1 ("iio: adc: stm32-adc: add power management support")
>>
>> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> 
> Hi Fabrice,
> 
> Whilst this will clearly work, it seems like a somewhat adhoc solution.
> Power management specialists (cc'd):  Is this what we should be doing, or
> have Fabrice and I both missed something that we should be doing here?

Hi all, PM specialists,

As per my understanding, pm_runtime_mark_last_busy() doesn't cascade to
the parent device:

- in pm_runtime.h:
static inline void pm_runtime_mark_last_busy(struct device *dev)
{
	WRITE_ONCE(dev->power.last_busy, ktime_get_mono_fast_ns());
}

STM32 ADC driver uses a model with an autosupsend delay for
- a parent driver to handle common resources, registers etc.
- child drivers for each ADC.

So the question is on how to fix the behavior I described:
1: Child  activity with "short" autosuspend_delay
2: Parent activity with "longer" autosuspend_delay
     _     _     _     _     _       _     _     _
1: _| |___| |___| |___| |___| |_..._| |___| |___| |_...

    v v   v v   v v   v v   v v ... v v   v v   v v
    | |                                     |   |
    | +- pm_runtime_mark_last_busy()        |   |
    | +- pm_runtime_put_autosuspend()       v   |
    |                                       |   |
    +--- pm_runtime_get_sync()              |   v
    |                                       |   |
    +---> expires after autosuspend_delay   |   |
    |                                       |   |
    v                                       v   v
     _______________________________________     ___...
2: _|                           ...         |___|

Glitches on parent dev near autosuspend_delay ^

- does the child driver needs to "kick" parent driver with
pm_runtime_mark_last_busy(), as proposed in current patch ?

- or is it something that should be done by PM runtime core routines ?
e.g. make pm_runtime_mark_last_busy() recursive or something else ?

Please advise
Best regards,
Fabrice

> 
> Thanks,
> 
> Jonathan
> 
>> ---
>>  drivers/iio/adc/stm32-adc.c | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
>> index 3b291d7..670157e 100644
>> --- a/drivers/iio/adc/stm32-adc.c
>> +++ b/drivers/iio/adc/stm32-adc.c
>> @@ -1157,6 +1157,7 @@ static int stm32_adc_single_conv(struct iio_dev *indio_dev,
>>  
>>  	stm32_adc_conv_irq_disable(adc);
>>  
>> +	pm_runtime_mark_last_busy(dev->parent);
>>  	pm_runtime_mark_last_busy(dev);
>>  	pm_runtime_put_autosuspend(dev);
>>  
>> @@ -1278,6 +1279,7 @@ static int stm32_adc_update_scan_mode(struct iio_dev *indio_dev,
>>  	adc->num_conv = bitmap_weight(scan_mask, indio_dev->masklength);
>>  
>>  	ret = stm32_adc_conf_scan_seq(indio_dev, scan_mask);
>> +	pm_runtime_mark_last_busy(dev->parent);
>>  	pm_runtime_mark_last_busy(dev);
>>  	pm_runtime_put_autosuspend(dev);
>>  
>> @@ -1329,6 +1331,7 @@ static int stm32_adc_debugfs_reg_access(struct iio_dev *indio_dev,
>>  	else
>>  		*readval = stm32_adc_readl(adc, reg);
>>  
>> +	pm_runtime_mark_last_busy(dev->parent);
>>  	pm_runtime_mark_last_busy(dev);
>>  	pm_runtime_put_autosuspend(dev);
>>  
>> @@ -1451,6 +1454,7 @@ static int __stm32_adc_buffer_postenable(struct iio_dev *indio_dev)
>>  err_clr_trig:
>>  	stm32_adc_set_trig(indio_dev, NULL);
>>  err_pm_put:
>> +	pm_runtime_mark_last_busy(dev->parent);
>>  	pm_runtime_mark_last_busy(dev);
>>  	pm_runtime_put_autosuspend(dev);
>>  
>> @@ -1487,6 +1491,7 @@ static void __stm32_adc_buffer_predisable(struct iio_dev *indio_dev)
>>  	if (stm32_adc_set_trig(indio_dev, NULL))
>>  		dev_err(&indio_dev->dev, "Can't clear trigger\n");
>>  
>> +	pm_runtime_mark_last_busy(dev->parent);
>>  	pm_runtime_mark_last_busy(dev);
>>  	pm_runtime_put_autosuspend(dev);
>>  }
>> @@ -1874,6 +1879,7 @@ static int stm32_adc_probe(struct platform_device *pdev)
>>  		goto err_hw_stop;
>>  	}
>>  
>> +	pm_runtime_mark_last_busy(dev->parent);
>>  	pm_runtime_mark_last_busy(dev);
>>  	pm_runtime_put_autosuspend(dev);
>>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
