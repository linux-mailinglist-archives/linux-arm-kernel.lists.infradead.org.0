Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF7717B844
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 09:23:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/S4//XCAdk8ZarRE/wIc9A2OWBwzY0DWsFBCAlDce4=; b=VicLNDFBPNzo9s
	O/K/MMHM5isvDRl6ofI3h2Ce5PVeb6hZta39P294onZi9guWfjmKxe78DjQ/WqNBAAEbCcapuGZgF
	GMhuls8naNM4Sr95Lr7qxnsoMFv/H0RuMKki2FuvDeGAKzbwFwgzqXkeP10MhfalFMMEKgwxNnpe9
	OQhW+NCZj1JHZT+pCpqBRfAEWIYau+90CYGD6JTpiBixIrk4PuqYPS4MB9yRgKTW/qIHLd12HDOKN
	kfK2Q80BSQm/AdLDkxLAm0G3Ttqf2wRFN8wPdrL5Oh7oZAWCl/ilKKcnnGy8EnkxL/gHkzr4ZH9bW
	CvRMvO3v8Nx9rTFURjhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA8Fz-0007UW-HI; Fri, 06 Mar 2020 08:22:55 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA8Fq-0007Tc-Ap
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 08:22:48 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0268JXJp011415; Fri, 6 Mar 2020 09:22:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : from : to : cc
 : references : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=vTDWnwvCoOz4QiLEmXQSrPQXtR3HRTg+87YDSnBz9WI=;
 b=agg/LyxR/G+ckCEJBpTv5VjR717mJ2lp8ki8jhXkHsU6n94y8SY3u4DgKC4N8KlYMVV2
 +VKk3ESuxU1QeEnuwWXaOZHK1A7Pacnjq7SokIMOk7cVahpC+qQGhD114cWvUTNKjMsg
 WzlxLV07Jcu9bMJQU8mNj8zOZLXAn7oKbI8Bc0kWr5YzolTgtKkuX2BMtt0g2XFQwNYM
 HL/97bb2/i4KmdBQo2xNzEorK7i6L1BKbAUDilQa5AKo869DqECQQ2057Jsr7Bg0KzUz
 Nsv+S4QIh7jScRqr5AGlqM4JnFdcwUa3vkRCqoymHCJXSNMXfCXJnQfpnJ1j6olMLGcg PA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yfdyde7ay-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 06 Mar 2020 09:22:37 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C646310002A;
 Fri,  6 Mar 2020 09:22:31 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id AEFBF21FE9B;
 Fri,  6 Mar 2020 09:22:31 +0100 (CET)
Received: from [10.48.0.71] (10.75.127.47) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 6 Mar
 2020 09:22:30 +0100
Subject: Re: [PATCH] iio: adc: stm32-adc: fix runtime autosuspend delay when
 slow polling
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: Jonathan Cameron <jic23@kernel.org>, "Rafael J. Wysocki"
 <rjw@rjwysocki.net>, <ulf.hansson@linaro.org>
References: <1579854369-7972-1-git-send-email-fabrice.gasnier@st.com>
 <20200202153354.3dae5863@archlinux>
 <d30cb29b-d15c-a9fe-8c95-7ce59ce15062@st.com>
Message-ID: <563e72b2-9bef-f00d-429c-db77d7689cc8@st.com>
Date: Fri, 6 Mar 2020 09:22:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d30cb29b-d15c-a9fe-8c95-7ce59ce15062@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-06_02:2020-03-05,
 2020-03-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_002246_818348_52CFA215 
X-CRM114-Status: GOOD (  29.30  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lars@metafoo.de, olivier.moysan@st.com, alexandre.torgue@st.com,
 linux-pm@vger.kernel.org, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 khilman@kernel.org, linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/12/20 3:02 PM, Fabrice Gasnier wrote:
> On 2/2/20 4:33 PM, Jonathan Cameron wrote:
>> On Fri, 24 Jan 2020 09:26:09 +0100
>> Fabrice Gasnier <fabrice.gasnier@st.com> wrote:
>>
>>> When the ADC is runtime suspended and starting a conversion, the stm32-adc
>>> driver calls pm_runtime_get_sync() that gets cascaded to the parent
>>> (e.g. runtime resume of stm32-adc-core driver). This also kicks the
>>> autosuspend delay (e.g. 2s) of the parent.
>>> Once the ADC is active, calling pm_runtime_get_sync() again (upon a new
>>> capture) won't kick the autosuspend delay for the parent (stm32-adc-core
>>> driver) as already active.
>>>
>>> Currently, this makes the stm32-adc-core driver go in suspend state
>>> every 2s when doing slow polling. As an example, doing a capture, e.g.
>>> cat in_voltageY_raw at a 0.2s rate, the auto suspend delay for the parent
>>> isn't refreshed. Once it expires, the parent immediately falls into
>>> runtime suspended state, in between two captures, as soon as the child
>>> driver falls into runtime suspend state:
>>> - e.g. after 2s, + child calls pm_runtime_put_autosuspend() + 100ms
>>>   autosuspend delay of the child.
>>> - stm32-adc-core switches off regulators, clocks and so on.
>>> - They get switched on back again 100ms later in this example (at 2.2s).
>>>
>>> So, add an explicit call to pm_runtime_mark_last_busy() for the parent
>>> driver (stm32-adc-core), synchronously with the child driver (stm32-adc),
>>> to avoid this.
>>>
>>> Fixes: 9bdbb1139ca1 ("iio: adc: stm32-adc: add power management support")
>>>
>>> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
>>
>> Hi Fabrice,
>>
>> Whilst this will clearly work, it seems like a somewhat adhoc solution.
>> Power management specialists (cc'd):  Is this what we should be doing, or
>> have Fabrice and I both missed something that we should be doing here?
> 
> Hi all, PM specialists,
> 
> As per my understanding, pm_runtime_mark_last_busy() doesn't cascade to
> the parent device:
> 
> - in pm_runtime.h:
> static inline void pm_runtime_mark_last_busy(struct device *dev)
> {
> 	WRITE_ONCE(dev->power.last_busy, ktime_get_mono_fast_ns());
> }

Hi all, PM specialists,

Gentle reminder on this topic.
There maybe several solutions to address this. Not sure what would be
an acceptable / preferred fix ?

Just to summarize:
---
A - Current post: I'm wondering if this is suitable to call
    pm_runtime_mark_last_busy() every time, for the parent device from
    child driver ?

---
B - Is it suitable to update the PM runtime, so it's recursive, to
    refresh "last_busy" for the parent(s) ? e.g. something like:

 static inline void pm_runtime_mark_last_busy(struct device *dev)
 {
        WRITE_ONCE(dev->power.last_busy, ktime_get_mono_fast_ns());
+       if (dev->parent)
+               pm_runtime_mark_last_busy(dev->parent);
 }

---
C - I find few drivers that rely on the rmp_idle() callback in the
    parent to call pm_runtime_mark_last_busy(), like:
  -> dwc3_runtime_idle()
  -> gb_bundle_idle()

  -> that may lead in the stm32-adc-core driver to add:

+static int stm32_adc_core_runtime_idle(struct device *dev)
+{
+       pm_runtime_mark_last_busy(dev);
+
+       return 0;
+}

 static const struct dev_pm_ops stm32_adc_core_pm_ops = {
        SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
                                pm_runtime_force_resume)
        SET_RUNTIME_PM_OPS(stm32_adc_core_runtime_suspend,
                           stm32_adc_core_runtime_resume,
-                          NULL)
+                          stm32_adc_core_runtime_idle)
 };


I've test all these solutions. Would you have some recommendations ?

Please advise,
Best regards,
Fabrice

> 
> STM32 ADC driver uses a model with an autosupsend delay for
> - a parent driver to handle common resources, registers etc.
> - child drivers for each ADC.
> 
> So the question is on how to fix the behavior I described:
> 1: Child  activity with "short" autosuspend_delay
> 2: Parent activity with "longer" autosuspend_delay
>      _     _     _     _     _       _     _     _
> 1: _| |___| |___| |___| |___| |_..._| |___| |___| |_...
> 
>     v v   v v   v v   v v   v v ... v v   v v   v v
>     | |                                     |   |
>     | +- pm_runtime_mark_last_busy()        |   |
>     | +- pm_runtime_put_autosuspend()       v   |
>     |                                       |   |
>     +--- pm_runtime_get_sync()              |   v
>     |                                       |   |
>     +---> expires after autosuspend_delay   |   |
>     |                                       |   |
>     v                                       v   v
>      _______________________________________     ___...
> 2: _|                           ...         |___|
> 
> Glitches on parent dev near autosuspend_delay ^
> 
> - does the child driver needs to "kick" parent driver with
> pm_runtime_mark_last_busy(), as proposed in current patch ?
> 
> - or is it something that should be done by PM runtime core routines ?
> e.g. make pm_runtime_mark_last_busy() recursive or something else ?
> 
> Please advise
> Best regards,
> Fabrice
> 
>>
>> Thanks,
>>
>> Jonathan
>>
>>> ---
>>>  drivers/iio/adc/stm32-adc.c | 6 ++++++
>>>  1 file changed, 6 insertions(+)
>>>
>>> diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
>>> index 3b291d7..670157e 100644
>>> --- a/drivers/iio/adc/stm32-adc.c
>>> +++ b/drivers/iio/adc/stm32-adc.c
>>> @@ -1157,6 +1157,7 @@ static int stm32_adc_single_conv(struct iio_dev *indio_dev,
>>>  
>>>  	stm32_adc_conv_irq_disable(adc);
>>>  
>>> +	pm_runtime_mark_last_busy(dev->parent);
>>>  	pm_runtime_mark_last_busy(dev);
>>>  	pm_runtime_put_autosuspend(dev);
>>>  
>>> @@ -1278,6 +1279,7 @@ static int stm32_adc_update_scan_mode(struct iio_dev *indio_dev,
>>>  	adc->num_conv = bitmap_weight(scan_mask, indio_dev->masklength);
>>>  
>>>  	ret = stm32_adc_conf_scan_seq(indio_dev, scan_mask);
>>> +	pm_runtime_mark_last_busy(dev->parent);
>>>  	pm_runtime_mark_last_busy(dev);
>>>  	pm_runtime_put_autosuspend(dev);
>>>  
>>> @@ -1329,6 +1331,7 @@ static int stm32_adc_debugfs_reg_access(struct iio_dev *indio_dev,
>>>  	else
>>>  		*readval = stm32_adc_readl(adc, reg);
>>>  
>>> +	pm_runtime_mark_last_busy(dev->parent);
>>>  	pm_runtime_mark_last_busy(dev);
>>>  	pm_runtime_put_autosuspend(dev);
>>>  
>>> @@ -1451,6 +1454,7 @@ static int __stm32_adc_buffer_postenable(struct iio_dev *indio_dev)
>>>  err_clr_trig:
>>>  	stm32_adc_set_trig(indio_dev, NULL);
>>>  err_pm_put:
>>> +	pm_runtime_mark_last_busy(dev->parent);
>>>  	pm_runtime_mark_last_busy(dev);
>>>  	pm_runtime_put_autosuspend(dev);
>>>  
>>> @@ -1487,6 +1491,7 @@ static void __stm32_adc_buffer_predisable(struct iio_dev *indio_dev)
>>>  	if (stm32_adc_set_trig(indio_dev, NULL))
>>>  		dev_err(&indio_dev->dev, "Can't clear trigger\n");
>>>  
>>> +	pm_runtime_mark_last_busy(dev->parent);
>>>  	pm_runtime_mark_last_busy(dev);
>>>  	pm_runtime_put_autosuspend(dev);
>>>  }
>>> @@ -1874,6 +1879,7 @@ static int stm32_adc_probe(struct platform_device *pdev)
>>>  		goto err_hw_stop;
>>>  	}
>>>  
>>> +	pm_runtime_mark_last_busy(dev->parent);
>>>  	pm_runtime_mark_last_busy(dev);
>>>  	pm_runtime_put_autosuspend(dev);
>>>  
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
