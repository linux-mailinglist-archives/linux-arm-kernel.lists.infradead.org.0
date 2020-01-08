Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C68F133F06
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 11:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2yc6lRPesUFuhVI5bCnkVPCHbqw79ec9pNMxm2vU3c=; b=l5sJPXfwrQLSjH
	D5MR+gid3viVkVQJTGk970w7virF4x6Qpl62aUSaeeWbjIJq7i4h9uB4ryfEPheM6r0HYZzKnjdNN
	pTyZE2tHQ7J0FLQ4hAv8LJBvJ20MHYpNlVTDtVqXfXbaesqrvS2qxyDC5sRZHt6beSGi5oTJkvQGu
	5ifO8a8SjdVTqM3nKnyc4dNcMGGkJF0XygsuxVUWkGy8b6J9YZvb0w44fmarIYWlVLB9WhoB3dsaM
	dU67cESOOQpkP4Kb8uaF25VvUCBFTeoeh7CcE349X23aJCQeVRWIB397ZYgovcb97SV+lY3mgml45
	8fwMZAbwDu51mIwDlMZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip8KT-0006oU-I7; Wed, 08 Jan 2020 10:12:45 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip8KM-0006nd-3P
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 10:12:39 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 008A7mJC025426; Wed, 8 Jan 2020 11:12:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=UYgNiksioEkvd3yt5yhovqZ6cC0hS5UsTf9lSkGod5M=;
 b=HbuwWotc6FuFw1ysJGHMXrNEJS9gRx4kwrn7Lk2ryQPGouacnG05B56xQjauQDy+4IYz
 lgTKNzkScsF+cqVtKMx4U+hEgBaOiqG0VhyPJg3eColIBE9mqx0YTtmh1QyUGgPPV43+
 tdelAEdsTp/DtoVagRJFLv25DKcMy3Tk3bILcUGMPTzEZtf6eZGD4I7soouZkfFn+rcV
 D8/6lypDhBg/MI1upugWc9Q38In9ZQ17y83bebVs9bumj+Bf6IlSW+DlDjUV4YQmkfYo
 BHwpO6GRT0CtLbHLUa+VfFkeAe/9PSp/LZm7ObcaswGH0l9n1tHTNeiVdd6egjGwkz9F Lg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2xakkaudb8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2020 11:12:28 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EAE5D100034;
 Wed,  8 Jan 2020 11:12:23 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D91F62A8A74;
 Wed,  8 Jan 2020 11:12:23 +0100 (CET)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 8 Jan
 2020 11:12:23 +0100
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Wed, 8 Jan 2020 11:12:23 +0100
From: Olivier MOYSAN <olivier.moysan@st.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, "jic23@kernel.org"
 <jic23@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Fabrice GASNIER
 <fabrice.gasnier@st.com>
Subject: Re: [Linux-stm32] [PATCH v2] iio: adc: stm32-dfsdm: Use
 dma_request_chan() instead dma_request_slave_channel()
Thread-Topic: [Linux-stm32] [PATCH v2] iio: adc: stm32-dfsdm: Use
 dma_request_chan() instead dma_request_slave_channel()
Thread-Index: AQHVxgwegqXMFmu60kK3qJzHfvmj/g==
Date: Wed, 8 Jan 2020 10:12:23 +0000
Message-ID: <de420ff5-6513-4890-1dec-7253a3b0f903@st.com>
References: <20200107114532.6697-1-peter.ujfalusi@ti.com>
In-Reply-To: <20200107114532.6697-1-peter.ujfalusi@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <E6676CE30CC8664EA1C298C0E6F4514C@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-08_01:2020-01-08,
 2020-01-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_021238_508843_51244D6E 
X-CRM114-Status: GOOD (  21.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Acked-by: Olivier Moysan <olivier.moysan@st.com>

On 1/7/20 12:45 PM, Peter Ujfalusi wrote:
> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
>
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
>
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
> Hi,
>
> Changes since v1:
> - Fall back to IRQ mode for ADC only in case of ENODEV
>
> Regards,
> Peter
>
>   drivers/iio/adc/stm32-dfsdm-adc.c | 21 +++++++++++++++++----
>   1 file changed, 17 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/iio/adc/stm32-dfsdm-adc.c b/drivers/iio/adc/stm32-dfsdm-adc.c
> index e493242c266e..74a2211bdff4 100644
> --- a/drivers/iio/adc/stm32-dfsdm-adc.c
> +++ b/drivers/iio/adc/stm32-dfsdm-adc.c
> @@ -1383,9 +1383,13 @@ static int stm32_dfsdm_dma_request(struct iio_dev *indio_dev)
>   {
>   	struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
>   
> -	adc->dma_chan = dma_request_slave_channel(&indio_dev->dev, "rx");
> -	if (!adc->dma_chan)
> -		return -EINVAL;
> +	adc->dma_chan = dma_request_chan(&indio_dev->dev, "rx");
> +	if (IS_ERR(adc->dma_chan)) {
> +		int ret = PTR_ERR(adc->dma_chan);
> +
> +		adc->dma_chan = NULL;
> +		return ret;
> +	}
>   
>   	adc->rx_buf = dma_alloc_coherent(adc->dma_chan->device->dev,
>   					 DFSDM_DMA_BUFFER_SIZE,
> @@ -1509,7 +1513,16 @@ static int stm32_dfsdm_adc_init(struct iio_dev *indio_dev)
>   	init_completion(&adc->completion);
>   
>   	/* Optionally request DMA */
> -	if (stm32_dfsdm_dma_request(indio_dev)) {
> +	ret = stm32_dfsdm_dma_request(indio_dev);
> +	if (ret) {
> +		if (ret != -ENODEV) {
> +			if (ret != -EPROBE_DEFER)
> +				dev_err(&indio_dev->dev,
> +					"DMA channel request failed with %d\n",
> +					ret);
> +			return ret;
> +		}
> +
>   		dev_dbg(&indio_dev->dev, "No DMA support\n");
>   		return 0;
>   	}
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
