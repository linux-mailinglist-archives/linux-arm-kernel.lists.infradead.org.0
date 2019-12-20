Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6586612778B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:54:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hy2Fm8L4hjIenoaZI+fXUM8oUKnTOqsPfG58v4LH9do=; b=jysFjccBbj7SNR
	Q4+IKrh8+3EviYaqA5x+Qr7S22Cvqat0LgPQH+o3rCMSGgDJEsvi01UDKQCN9ZUDEKzsZoiVX7BPn
	P8CNebqjur+M9k9FhFZktKfPaf+39xQSItatheczIkwBjMZsT78w+FCEdStexmZ1uUkSTUtgHH27d
	xFhKFL6GxQCS9ajRkkdVb/7WuA4V0C2dyTX4H/QebVk1QaykWuRzSVUHVaAdnU/NNsdw5r0+64Ctq
	uKtnqYL5buHvU2ga/vZrVBncc0sPeYMuq3E0+ySNDzKB45kmJBm8IM32Fp9Pi2cnl868aECugTAvg
	7KbmbhJlIGb0CsDmwFCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiE3C-0008Ma-QG; Fri, 20 Dec 2019 08:54:22 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiE32-0008LJ-Nf
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 08:54:14 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBK8qWWY020203; Fri, 20 Dec 2019 09:54:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=PcfeG+pEnfqZoplyh2mJwZoDJP91nvCA5+R9QZfb4uA=;
 b=N1KquULSGmOYmnS1gNcYj7SIWIGei/ZPj5GLEQISsGjGE7+qTS7qDIoNKDMDr0wtsB65
 XSBhmPVGWOkYTjcinSparSn/id3AjzTBcEB0jTn44rYhQX28YuplXJv23FUNQIFmReLH
 m3p5OMdeeXGXMJrt+xOfCBFxVE7oGCyiCh4C8akv3Kqs4TxGdN3MQm0HznNyGBr1eL2A
 dcWe/WQSRw0GvClEa+rAYSVngVfhC/br/PW/h/YUH1U0ObXcqibKC4Nko9uLpGGIavX0
 rJAqk0GU90LTltDoki9mBywai1nMvuJCb9q2a9BZ1+v6XAmlKbIA6U37qmDGhtO9S27t IQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wvqgq5x7j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 20 Dec 2019 09:54:03 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1B709100034;
 Fri, 20 Dec 2019 09:54:03 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 09494220841;
 Fri, 20 Dec 2019 09:54:03 +0100 (CET)
Received: from [10.201.23.55] (10.75.127.46) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 20 Dec
 2019 09:54:02 +0100
Subject: Re: [PATCH] mfd: stm32-timers: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <lee.jones@linaro.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
References: <20191217105240.25648-1-peter.ujfalusi@ti.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <a9184949-94e0-97fb-5fa8-77693e71e99a@st.com>
Date: Fri, 20 Dec 2019 09:54:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191217105240.25648-1-peter.ujfalusi@ti.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-19_08:2019-12-17,2019-12-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_005413_136253_ABC6F067 
X-CRM114-Status: GOOD (  22.13  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Benjamin GAIGNARD <benjamin.gaignard@st.com>, vkoul@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/17/19 11:52 AM, Peter Ujfalusi wrote:
> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
> 
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>  drivers/mfd/stm32-timers.c | 31 ++++++++++++++++++++++---------
>  1 file changed, 22 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/mfd/stm32-timers.c b/drivers/mfd/stm32-timers.c
> index efcd4b980c94..34747e8a4a40 100644
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
> @@ -179,14 +180,22 @@ static void stm32_timers_dma_probe(struct device *dev,
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
> +			if (PTR_ERR(ddata->dma.chans[i]) == -EPROBE_DEFER)> +				ret = -EPROBE_DEFER;

Hi Peter,

Thanks for the patch,

As the DMA is optional, I'd rather prefer to check explicitly there's no
device, and return any other error case, basically:

			if (PTR_ERR(ddata->dma.chans[i]) != -ENODEV)
				return PTR_ERR(ddata->dma.chans[i]);

> +
> +			ddata->dma.chans[i] = NULL;
> +		}
> +	}
> +
> +	return ret;

With that, return 0 here.

>  }
>  
>  static void stm32_timers_dma_remove(struct device *dev,
> @@ -230,7 +239,11 @@ static int stm32_timers_probe(struct platform_device *pdev)
>  
>  	stm32_timers_get_arr_size(ddata);
>  
> -	stm32_timers_dma_probe(dev, ddata);
> +	ret = stm32_timers_dma_probe(dev, ddata);
> +	if (ret) {
> +		stm32_timers_dma_remove(dev, ddata);

With that, stm32_timers_dma_remove() likely need to be updated:

-		if (ddata->dma.chans[i])
+		if (!IS_ERR_OR_NULL(ddata->dma.chans[i]))
			dma_release_channel(ddata->dma.chans[i]);

Best regards,
Fabrice

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
