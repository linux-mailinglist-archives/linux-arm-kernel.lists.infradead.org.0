Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A86131089
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 11:25:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fHMUbFIVtlbNp78MczA82L8y27DYLZNUhtAPhCW2hLU=; b=O1q1YRGqKdDgOL
	FUkRZQQqHYInRe2iON4uI0Dipt/DfgBlrHINqjA1atuJT8m+MeVR/R1s+uRIg+ffZF3c1H2Hbvlt2
	Sbi3Gy3LKw7cduwHr2CwYPLOIbBkN7OXngny2oC7wEUSSzeryiUsagR4eSMCozr4G3US+NhYBfbc5
	d4UNCESp0xV9LFzMqbOJQEsFaZ+kX5+m5AguZauMFoiBH7mWPnmxbI8FhhouueBbKQvE/LYuLJEz3
	cvYKmP0WxKzuYqjSSucfzi0nEozvePnxnc43T6qoXHdCCMk6Vq2i3wjYdw3ZE8buv644wHBTv3XoH
	Ap4KSmXqljtNC4WTYHgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioPZk-0003Qc-Pr; Mon, 06 Jan 2020 10:25:32 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioPZb-0003PO-D5
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 10:25:25 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 006AHKbC028995; Mon, 6 Jan 2020 11:25:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=csKu8+UMH7YN+nRTevbWnuk0toNCOh+W9ovVroJG4Gs=;
 b=FC3Br8HlV5BIIQm0VeJ7roajgAUqSoCVTK35cV4/OxzRJ8jBa3EImWslq3jusdv/IP0q
 0wQQW5tUfoEu6NU/kjF63OabrvuDcdz3Ej5qRIO+hfNCC6Eg5G3z1M5mxo3qxmCRsElD
 irbTBS3HtyRpvonV+JnmDisXOWCbdnpQEE2oTk9AUYCvhldCI//iqPh8RfXTgsoWR+oq
 GwBqTXj9ErFNmrVqEehsAu98A7yto+aGeU71hYdgWEWcvr7MYr53viCmf6gbO3d/3J9D
 itdevHZiOMndqK++SW/QI1XKm1loG8SGq0iJyxAf6xLTa1LcieR8JLo5/4mkYVwKcxZy Zw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakuqfaab-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 06 Jan 2020 11:25:15 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 36A9210002A;
 Mon,  6 Jan 2020 11:25:14 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 27F172B088F;
 Mon,  6 Jan 2020 11:25:14 +0100 (CET)
Received: from [10.48.0.71] (10.75.127.44) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 6 Jan
 2020 11:25:12 +0100
Subject: Re: [PATCH] iio: adc: stm32-adc: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Jonathan Cameron <jic23@kernel.org>, Peter Ujfalusi <peter.ujfalusi@ti.com>
References: <20191217075153.23766-1-peter.ujfalusi@ti.com>
 <20191223154230.7fb2a988@archlinux>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <9f190583-824c-01a6-7da3-43065fde49c7@st.com>
Date: Mon, 6 Jan 2020 11:25:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191223154230.7fb2a988@archlinux>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-06_03:2020-01-06,2020-01-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_022523_813345_40F3BEAB 
X-CRM114-Status: GOOD (  23.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Olivier MOYSAN <olivier.moysan@st.com>, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/23/19 4:42 PM, Jonathan Cameron wrote:
> On Tue, 17 Dec 2019 09:51:53 +0200
> Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
> 
>> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
>> eating up the error code.
>>
>> By using dma_request_chan() directly the driver can support deferred
>> probing against DMA.
>>
>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> Hi Peter,
> 
> Change looks sensible to me, but I'd like to leave a little longer
> for others to look at this.
> 
> Give me a poke if I seem to have lost it by the end of the first
> week in Jan.
> 
> Thanks,
> 
> Jonathan
> 
>> ---
>>  drivers/iio/adc/stm32-adc.c | 10 ++++++++--
>>  1 file changed, 8 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
>> index 3b291d72701c..5dab23f1fdee 100644
>> --- a/drivers/iio/adc/stm32-adc.c
>> +++ b/drivers/iio/adc/stm32-adc.c
>> @@ -1746,9 +1746,15 @@ static int stm32_adc_dma_request(struct iio_dev *indio_dev)
>>  	struct dma_slave_config config;
>>  	int ret;
>>  
>> -	adc->dma_chan = dma_request_slave_channel(&indio_dev->dev, "rx");
>> -	if (!adc->dma_chan)
>> +	adc->dma_chan = dma_request_chan(&indio_dev->dev, "rx");
>> +	if (IS_ERR(adc->dma_chan)) {
>> +		if (PTR_ERR(adc->dma_chan) == -EPROBE_DEFER)
>> +			return -EPROBE_DEFER;

Hi Peter,

Thanks for the patch and sorry for the late reply.

I'd rather prefer to check explicitly for -ENODEV (as the DMA is
optional) to use the IRQ mode and treat all other codes (including
EPROBE_DEFER) as errors.

Rationale is: This can hide other errors e.g. like all DMA channels are
busy/reserved for other usage. So the user may wrongly think it's
probing the driver, with DMA. This may be a corner case, but still...
DMA channels are assigned via device tree. I'd rather prefer to avoid
depending of runtime (probe ordering) in such a case.

Can you update the patch considering this ?

Please find here an alternate proposal:

	adc->dma_chan = dma_request_chan(&indio_dev->dev, "rx");
	if (IS_ERR(adc->dma_chan)) {
		if (PTR_ERR(adc->dma_chan) != -ENODEV)
			return PTR_ERR(adc->dma_chan);

		/* DMA is optional: fall back to IRQ mode */
		adc->dma_chan = NULL;
		return 0;
	}

Best regards,
Fabrice

>> +
>> +		/* Ignore errors to fall back to IRQ mode */
>> +		adc->dma_chan = NULL;
>>  		return 0;
>> +	}
>>  
>>  	adc->rx_buf = dma_alloc_coherent(adc->dma_chan->device->dev,
>>  					 STM32_DMA_BUFFER_SIZE,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
