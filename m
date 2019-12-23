Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6EE129B51
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 22:59:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LeiJLXXp6/hjr9x+H8egroSSxn9Fbhkn5Hc68pKmGSo=; b=QufSROyQD3MGNc
	fSgoTgZNA3CqBCJS4LU7ba02rxT/ulUs8tTSvlT8okE0ufA+ChNmhSkvda49xC7mepGXr7Q7rW9A5
	yUR6HWasahVZnCNY5+hHpDqKMQMA+rgn7uLZqINcq2p5fX9eqb8tsXUkpJ0XR5C5EtvG6tiCriOL2
	q+PZF5ih/nYGuHIeU9dV+1fZsCsKi3TWIlS8d/Ds5fcMdAIpGnNIpEopwTxhqSQa7hO+VKfM7Fj5Y
	Yrw8lK6bIHBvBqcFGb+LK6MgZDK1uP/n8NOhBSo0G6Jl4Fwm0WC0Y93tttFIe2BIU49Lyt4+FXHen
	P72kTqCHNmHW0oDqIIww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijVjM-0005fY-6l; Mon, 23 Dec 2019 21:59:12 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijVjA-0005el-B4
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 21:59:02 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBNLwtxn036585;
 Mon, 23 Dec 2019 15:58:55 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1577138335;
 bh=9TpDm7eS6HN2w04yodlknk3nngqfWC6wufnnQos0dn8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=pzWn7xR9jggLLSJ1p74hAr0iXOs8Z4PWDBDA5hQk78buN009lG4KyBOoU6xKYt8yn
 d+0z9vhv8dOAi7x7y8b+duDf0cs5ZlgVr/4PJf8TnWvrH+E7Q92bXZh37VG/Lf1Wv0
 FOu4kuLIFczvflXWPFn9qhvvZAqKc0lrNG0uhvOU=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBNLwtAl096172;
 Mon, 23 Dec 2019 15:58:55 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 23
 Dec 2019 15:58:53 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 23 Dec 2019 15:58:53 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBNLwpqH086181;
 Mon, 23 Dec 2019 15:58:52 -0600
Subject: Re: [PATCH] iio: adc: stm32-dfsdm: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Jonathan Cameron <jic23@kernel.org>
References: <20191217075221.23895-1-peter.ujfalusi@ti.com>
 <20191223154538.74a76f94@archlinux>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <66c0d161-007f-5c92-01c8-d73ebca9f2cc@ti.com>
Date: Tue, 24 Dec 2019 00:00:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191223154538.74a76f94@archlinux>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_135900_484094_ABDB1610 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jonathan,

On 12/23/19 5:45 PM, Jonathan Cameron wrote:
> On Tue, 17 Dec 2019 09:52:21 +0200
> Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
> 
>> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
>> eating up the error code.
>>
>> By using dma_request_chan() directly the driver can support deferred
>> probing against DMA.
>>
>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> I don't think this one goes far enough.  
> 
> One of the paths does:
> 
> 	/* Optionally request DMA */
> 	if (stm32_dfsdm_dma_request(indio_dev)) {
> 		dev_dbg(&indio_dev->dev, "No DMA support\n");
> 		return 0;
> 	}
> 
> That needs specific handling for deferred probing.

Right, I have checked the stm32_dfsdm_audio_init() path, via that the
error is propagated correctly.

I'll send an update next year ;)

> 
>> ---
>>  drivers/iio/adc/stm32-dfsdm-adc.c | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
>> index e493242c266e..3aac1a21f9d0 100644
>> --- a/drivers/iio/adc/stm32-dfsdm-adc.c
>> +++ b/drivers/iio/adc/stm32-dfsdm-adc.c
>> @@ -1383,9 +1383,9 @@ static int stm32_dfsdm_dma_request(struct iio_dev *indio_dev)
>>  {
>>  	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
>>  
>> -	adc->dma_chan = dma_request_slave_channel(&indio_dev->dev, "rx");
>> -	if (!adc->dma_chan)
>> -		return -EINVAL;
>> +	adc->dma_chan = dma_request_chan(&indio_dev->dev, "rx");
>> +	if (IS_ERR(adc->dma_chan))
>> +		return PTR_ERR(adc->dma_chan);
>>  
>>  	adc->rx_buf = dma_alloc_coherent(adc->dma_chan->device->dev,
>>  					 DFSDM_DMA_BUFFER_SIZE,
> 

- Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
