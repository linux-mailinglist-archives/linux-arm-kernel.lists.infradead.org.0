Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACAF132C79
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 18:05:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Gh6J1xI1drU5QlEssEuBmFfcJaEIM8KRK4KJkA+zKc=; b=gXHoHY3HqY50dS
	vumEt9rTSRWPXp7QyF3jCCAbuP04PMgXcRUk63HFjL0xxpMrX7Z3V6YsC3gir6X2AJ3m5UBkv2lLv
	xS2NUbBZtBdN+RVvoN4/DkNbODoCQi/cZb8yRQxjo0lUX2KPRwHfYNaNp7rlPamQvZU546Ik38qky
	qjSd2xPE+Cn/fr2VUiJhqO93euEn62ByzP7KPB0/Glf2OE7RZhhBN0CFFTjF6CRpd1hrSVk9EobMB
	VsKxH8xcB5xd+O2D6DGBN07fs4tChplU/rS5MOOt00kogN/0EgxPW9Qb1CJj/fAqxZc6OmMaJ+GY2
	yNCuQs2/XHkwlyyGyJyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iosI6-0006IY-Lj; Tue, 07 Jan 2020 17:05:14 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iosHu-0005jZ-Bp
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 17:05:04 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 007H3iei003491; Tue, 7 Jan 2020 18:04:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=k8Ykg5/Yo41lBC1coc/u/HSoyYnbdKASySt8c3gqmKA=;
 b=GrBVEeA5NA34R5VSWMl3O4ERGcHf2abU7Gi2f8Uo89Yn3uBxA4SdipU+KGxcmKIDyyUy
 kquhKIVr/y+2FkXO8vmDK+PCS8V4Lr2ydeUq5W3SH76nU9APrHnHwaNk325a7DlRox70
 WlEDTIV8IUTuye7wMMRgI/TiyFm6opkwVBuR/yz5DXgNyHqeWLNh+wvpXWUubl/mvFFH
 bUwqh/jP9rxYMxZc0vaV98aPx+LSgzPuK0qyvgdIYERz9diq03rJE+EYKi27CKLOK87G
 Rp3XdZz5edPzX39Jgzq9CwAF4JSkqjgbGtJ8Jf5xHxKnf4UlZ9+2id0c6cH5GLm7oUpd xA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakm5fhc9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2020 18:04:54 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BA55B10002A;
 Tue,  7 Jan 2020 18:04:53 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A8EAD21F704;
 Tue,  7 Jan 2020 18:04:53 +0100 (CET)
Received: from [10.48.0.71] (10.75.127.44) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 7 Jan
 2020 18:04:53 +0100
Subject: Re: [PATCH v2] mfd: stm32-timers: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <lee.jones@linaro.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
References: <20200107105959.18920-1-peter.ujfalusi@ti.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <af1040f5-4377-1466-7d82-b62004fedab8@st.com>
Date: Tue, 7 Jan 2020 18:04:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200107105959.18920-1-peter.ujfalusi@ti.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-07_05:2020-01-07,
 2020-01-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_090502_802699_8B82AC4F 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: vkoul@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/7/20 11:59 AM, Peter Ujfalusi wrote:
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
> - Fall back to PIO mode only in case of ENODEV and report all other errors
> 
> Regards,
> Peter

Hi Peter,

Thanks for the patch,

Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Best Regards,
Fabrice

> 
>  drivers/mfd/stm32-timers.c | 32 +++++++++++++++++++++++---------
>  1 file changed, 23 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/mfd/stm32-timers.c b/drivers/mfd/stm32-timers.c
> index efcd4b980c94..add603359124 100644
> --- a/drivers/mfd/stm32-timers.c
> +++ b/drivers/mfd/stm32-timers.c
> @@ -167,10 +167,11 @@ static void stm32_timers_get_arr_size(struct stm32_timers *ddata)
>  	regmap_write(ddata->regmap, TIM_ARR, 0x0);
>  }
>  
> -static void stm32_timers_dma_probe(struct device *dev,
> +static int stm32_timers_dma_probe(struct device *dev,
>  				   struct stm32_timers *ddata)
>  {
>  	int i;
> +	int ret = 0;
>  	char name[4];
>  
>  	init_completion(&ddata->dma.completion);
> @@ -179,14 +180,23 @@ static void stm32_timers_dma_probe(struct device *dev,
>  	/* Optional DMA support: get valid DMA channel(s) or NULL */
>  	for (i = STM32_TIMERS_DMA_CH1; i <= STM32_TIMERS_DMA_CH4; i++) {
>  		snprintf(name, ARRAY_SIZE(name), "ch%1d", i + 1);
> -		ddata->dma.chans[i] = dma_request_slave_channel(dev, name);
> +		ddata->dma.chans[i] = dma_request_chan(dev, name);
>  	}
> -	ddata->dma.chans[STM32_TIMERS_DMA_UP] =
> -		dma_request_slave_channel(dev, "up");
> -	ddata->dma.chans[STM32_TIMERS_DMA_TRIG] =
> -		dma_request_slave_channel(dev, "trig");
> -	ddata->dma.chans[STM32_TIMERS_DMA_COM] =
> -		dma_request_slave_channel(dev, "com");
> +	ddata->dma.chans[STM32_TIMERS_DMA_UP] = dma_request_chan(dev, "up");
> +	ddata->dma.chans[STM32_TIMERS_DMA_TRIG] = dma_request_chan(dev, "trig");
> +	ddata->dma.chans[STM32_TIMERS_DMA_COM] = dma_request_chan(dev, "com");
> +
> +	for (i = STM32_TIMERS_DMA_CH1; i < STM32_TIMERS_MAX_DMAS; i++) {
> +		if (IS_ERR(ddata->dma.chans[i])) {
> +			/* Save the first error code to return */
> +			if (PTR_ERR(ddata->dma.chans[i]) != -ENODEV && !ret)
> +				ret = PTR_ERR(ddata->dma.chans[i]);
> +
> +			ddata->dma.chans[i] = NULL;
> +		}
> +	}
> +
> +	return ret;
>  }
>  
>  static void stm32_timers_dma_remove(struct device *dev,
> @@ -230,7 +240,11 @@ static int stm32_timers_probe(struct platform_device *pdev)
>  
>  	stm32_timers_get_arr_size(ddata);
>  
> -	stm32_timers_dma_probe(dev, ddata);
> +	ret = stm32_timers_dma_probe(dev, ddata);
> +	if (ret) {
> +		stm32_timers_dma_remove(dev, ddata);
> +		return ret;
> +	}
>  
>  	platform_set_drvdata(pdev, ddata);
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
